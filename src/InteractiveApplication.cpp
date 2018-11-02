#include "InteractiveApplication.hpp"

#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"

InteractiveApplication::InteractiveApplication(const DisplayMode& aDisplayMode, const std::string& aName):
    Application(aDisplayMode, aName)
{
    // Capturing of new specifications will be done on a seperate thread
    newSpecificationThread = std::thread(&InteractiveApplication::readNewSpecifications, this);
}

InteractiveApplication::~InteractiveApplication()
{
    newSpecificationThread.join();
}

template<typename T>
void pop_front(std::vector<T>& vec)
{
    assert(!vec.empty());
    vec.front() = std::move(vec.back());
    vec.pop_back();
}

void InteractiveApplication::run()
{
    std::cout << "** Interactive app initiated **" << std::endl;
    Specification lastSpecification;

    // Keep the application running until the user specifies it should shutdown (or a fatal exception is thrown)
    while (active)
    {
        try {
            getNewFrame();
            
            m.lock();
            if (specifications.empty())
            {
                m.unlock();

                cv::imshow(windowName, frame);
                cv::waitKey(frameRefreshRate);
            }
            else if (!specifications.empty())
            {
                if (specifications.size() == 2)
                {
                    // Delete the oldest specification if a new specification has been entered
                    pop_front(specifications);
                }

                lastSpecification = *specifications.begin();
                m.unlock();

                filteredFrame = filterExecutor.filter(frame, lastSpecification);

                cv::imshow(windowName, filteredFrame);
                cv::waitKey(frameRefreshRate);
            }
        }
        catch (const std::runtime_error& error)
        {
            std::cout << "Runtime error: " << error.what() << std::endl;
            break;
        }
    }
}

void InteractiveApplication::readNewSpecifications()
{
    std::string input;
    Specification newSpecification;

    while (active)
    {
        getline(std::cin, input);

        if (input == "exit" || input == "Exit")
        {
            newSpecification.exit = true;

            m.lock();

            specifications.push_back(newSpecification);
            active = false;

            m.unlock();

            break;
        }
        try
        {
            m.lock();

            parser.tryParseSpecificationFromStr(input, newSpecification);
            specifications.push_back(newSpecification);

            m.unlock();
        }
        catch (const std::invalid_argument& reason)
        {
            m.unlock();
            std::cout << "WARNING: " << reason.what() << std::endl;
        }
    }
}
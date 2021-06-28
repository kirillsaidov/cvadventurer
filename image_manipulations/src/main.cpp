#include <iostream>
#include <opencv2/opencv.hpp>

// CUSTOM FUNCTIONS
void show(const std::string handle, const cv::Mat& img);
cv::Mat modify_img(const cv::Mat img, const char action_type);

// MAIN
int main(int argc, char** argv) {
    // basic interface
    if(argc > 1 && argv[1][0] == 'h') {
        std::cout << "Image manipulation:\n"
            << "\tUSAGE:\n"
            << "\t\timage_manipulation [path] [action]\n"
            << "\tACTION:\n"
            << "\t\t0 - Blur effect\n"
            << "\t\t1 - Canny Edge effect\n"
            << "\t\t2 - Erode filter\n"
            << "\t\t3 - Dilate filter\n"
            << "\t\t4 - Invert image\n"
            << "\t\t5 - Brightness effect\n"
            << "\t\t6 - Contrast effect\n"
            << "\n";
        return 0;
    } else if(argc < 2) {
        std::cout << "INFO: no image path provided!\n"
            << "\tTry \'image_manipulation help\'\n" 
            << "\n";
        return 0;
    }

    // important variables to work with
    const char* image_path = argv[1];
    const char action_type = ((argc < 3) ? ('0') : (argv[2][0]));

    // load image to memory
    cv::Mat img = cv::imread(image_path);
    if(img.empty()) {
        std::cout << "Could not load the image: " << image_path << "!\n";
        return 1;
    }

    // show original img
    show("Original image", img);
    
    // transform img
    cv::Mat img_modified = modify_img(img, action_type);    
    
    // show modified img
    show("Modified image", img_modified);

    // wait for key before closing
    cv::waitKey(0);

    // clean up
    cv::destroyAllWindows();

    return 0;
}

void show(const std::string handle, const cv::Mat& img) {
    cv::namedWindow(handle, cv::WINDOW_AUTOSIZE);
    cv::imshow(handle, img);
}

cv::Mat modify_img(const cv::Mat img, const char action_type) {
    // imgs
    cv::Mat img_bw;
    cv::Mat img_blurred;
    cv::Mat img_canny;
    cv::Mat img_erode;
    cv::Mat img_dilate;
    cv::Mat img_not;
    cv::Mat img_brightness;
    cv::Mat img_contrast;

    if(action_type == '1') {
        // convert to grayscale
        cv::cvtColor(img, img_bw, cv::COLOR_BGR2GRAY);
        
        // apply Blur effect
        cv::GaussianBlur(img_bw, img_blurred, cv::Size(5, 5), 1);
        
        // apply Canny Edge effect
        cv::Canny(img_blurred, img_canny, 10, 200);
        
        return img_canny;
    } else if(action_type == '2') {
        // applying Eroding effect
        cv::erode(img, img_erode, 
                cv::Mat(),          // 3x3 kernel 
                cv::Point(-1, -1),  // anchor is at the element center
                1,                  // iterations
                cv::BORDER_CONSTANT,// border
                1);                 // scalar

        return img_erode;
    } else if(action_type == '3') {
        // applying Dilating effect
        cv::dilate(img, img_dilate, 
                cv::Mat(),          // 3x3 kernel
                cv::Point(-1, -1),  // anchor is at the element center
                1,                  // iterations
                cv::BORDER_CONSTANT,// border
                1);                 // scalar

        return img_dilate;
    } else if(action_type == '4') {
        cv::bitwise_not(img, img_not);

        return img_not;
    } else if(action_type == '5') {
        img.convertTo(img_brightness, -1, 1, 50);
        
        return img_brightness;
    } else if(action_type == '6') {
        img.convertTo(img_contrast, -1, 3, 0);

        return img_contrast;
    } else {
        // action_type = 0 => Blur effect
        cv::GaussianBlur(img, img_blurred, cv::Size(9, 9), 0);
        
        return img_blurred; 
    }
}











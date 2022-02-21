#include <opencv2/opencv.hpp>

#include "fdetector.hpp"

int main(int argc, const char** argv) {
    cv::VideoCapture video_capture;
    if(!video_capture.open(0)) {
        return 0;
    }
    
    FDetector fdetector;

    cv::Mat frame;
    while(true) {
        video_capture >> frame;
        
        auto rects = fdetector.detect_face_rect(frame);
        
        cv::Scalar color(0, 105, 205);
        int frame_thickness = 4;
        for(const auto& r : rects) {
            cv::rectangle(frame, r, color, frame_thickness);
        }
        imshow("Image", frame);
        
        const int esc_key = 27;
        if(cv::waitKey(10) == esc_key) {
            break;
        }
    }

    cv::destroyAllWindows();
    video_capture.release();
    
    return 0;
}




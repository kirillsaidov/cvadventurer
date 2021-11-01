#ifndef FDETECTOR_HPP
#define FDETECTOR_HPP

#include <opencv2/dnn.hpp>
#include <iostream>

class FDetector {
public:
    explicit FDetector();
    std::vector<cv::Rect> detect_face_rect(const cv::Mat& frame);
private:
    cv::dnn::Net network;
    const int img_width = 300;
    const int img_height = 300;
    const double scale_factor = 1.0;
    const float confidence_threshold = 0.5;
    const cv::Scalar mean_values = {104.0, 177.0, 123.0};
};

#endif

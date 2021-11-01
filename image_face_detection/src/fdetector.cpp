#include "fdetector.hpp"

FDetector::FDetector() {
    // loading configurations
    network = cv::dnn::readNetFromCaffe(FACE_DETECTION_CONFIGURATION, FACE_DETECTION_WEIGHTS);
    
    if (network.empty()) {
        std::cout << "Failed to load prototxt file: \n"
            << "Configuration: " + std::string(FACE_DETECTION_CONFIGURATION) + "\n"
            << "Binary: " + std::string(FACE_DETECTION_WEIGHTS) + "\n";
    }
}

std::vector<cv::Rect> FDetector::detect_face_rect(const cv::Mat& frame) {
    cv::Mat input_blob = cv::dnn::blobFromImage(frame, scale_factor,
    cv::Size(img_width, img_height), mean_values, false, false);
    
    network.setInput(input_blob, "data");
    cv::Mat detection = network.forward("detection_out");
    cv::Mat detection_matrix(detection.size[2], detection.size[3], CV_32F, detection.ptr<float>());
    
    std::vector<cv::Rect> faces;
    for (int i = 0; i < detection_matrix.rows; i++) {
        float confidence = detection_matrix.at<float>(i, 2);

        if (confidence < confidence_threshold) {
            continue;
        }
        int x_left_bottom = static_cast<int>(detection_matrix.at<float>(i, 3) * frame.cols);

        int y_left_bottom = static_cast<int>(detection_matrix.at<float>(i, 4) * frame.rows);

        int x_right_top = static_cast<int>(detection_matrix.at<float>(i, 5) * frame.cols);

        int y_right_top = static_cast<int>(detection_matrix.at<float>(i, 6) * frame.rows);

        faces.emplace_back(x_left_bottom, y_left_bottom, (x_right_top - x_left_bottom), (y_right_top - y_left_bottom));
    }

    return faces;
}



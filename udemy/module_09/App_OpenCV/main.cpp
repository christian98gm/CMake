#include <opencv2/opencv.hpp>

int main()
{
    cv::Mat image;
    image = cv::imread("..\\bmp\\sample.jpg");

    cv::namedWindow("Display image", cv::WINDOW_AUTOSIZE);
    cv::imshow("Display Image", image);
    cv::waitKey(0);

    return 0;
}

require 'opencv'
include OpenCV

blank_img = CvMat.new(200, 300, CV_8U, 3).fill!(CvColor::White)

# GERMANY FLAG
germany = blank_img.copy

blackStart = CvPoint.new(0, 0)
blackEnd = CvPoint.new(300, 63)
germany.rectangle!(blackStart, blackEnd, color: CvColor::Black, thickness: -1)

redStart = CvPoint.new(0, 64)
redEnd = CvPoint.new(300, 126)
germany.rectangle!(redStart, redEnd, color: CvColor::Red, thickness: -1)

yellowStart = CvPoint.new(0, 127)
yellowEnd = CvPoint.new(300, 200)
germany.rectangle!(yellowStart, yellowEnd, color: CvColor::Yellow, thickness: -1)

window = GUI::Window.new('germany')
window.show(germany)
GUI::wait_key


# FRANCE FLAG
france = blank_img.copy

blueStart = CvPoint.new(0, 0)
blueEnd = CvPoint.new(100, 200)
france.rectangle!(blueStart, blueEnd, color: CvColor::Blue, thickness: -1)

redStart = CvPoint.new(200, 0)
redEnd = CvPoint.new(300, 200)
france.rectangle!(redStart, redEnd, color: CvColor::Red, thickness: -1)

window = GUI::Window.new('france')
window.show(france)
GUI::wait_key
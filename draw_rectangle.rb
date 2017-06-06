require 'opencv'
include OpenCV

img = CvMat.load("berlin.jpg", 1)

def draw_rectangle(img, start_row, end_row, start_column, end_column)
  point1 = CvPoint.new(start_column, start_row)
  point2 = CvPoint.new(end_column, end_row)
  img.rectangle!(point2, point1, color: CvColor::Blue, thickness: -1)
end

draw_rectangle(img, 0, 60, 50, 120)

window = GUI::Window.new('preview')
window.show(img)
GUI::wait_key
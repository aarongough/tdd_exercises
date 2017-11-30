require_relative "solutions/canvas"

OUTPUT_PATH = "/Users/agough/Desktop/example.svg"

canvas = Canvas.new

canvas.units = "cm"
canvas.width = 10.0
canvas.height = 10.0

canvas.paths << Path.new([
  Point.new(1.0, 1.0),
  Point.new(9.0, 1.0),
  Point.new(9.0, 9.0),
  Point.new(1.0, 9.0),
  Point.new(1.0, 1.0)
])

canvas.paths << Path.new([
  Point.new(5.0, 1.0),
  Point.new(9.0, 5.0),
  Point.new(5.0, 9.0),
  Point.new(1.0, 5.0),
  Point.new(5.0, 1.0)
])

canvas.paths << Path.new([
  Point.new(0.0, 0.0),
  Point.new(10.0, 10.0)
])

canvas.paths << Path.new([
  Point.new(10.0, 0.0),
  Point.new(0.0, 10.0)
])

File.open(OUTPUT_PATH, "w+") do |file|
  file.puts canvas.as_svg
end

`open -a "Google Chrome" #{OUTPUT_PATH}`
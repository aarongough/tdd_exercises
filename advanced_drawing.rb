require_relative "lib/canvas"

OUTPUT_PATH = "/Users/agough/Desktop/example.svg"

canvas = Canvas.new

canvas.units = "cm"
canvas.width = 10.0
canvas.height = 10.0

box_path = Path.new([
  Point.new(1.0, 1.0),
  Point.new(9.0, 1.0),
  Point.new(9.0, 9.0),
  Point.new(1.0, 9.0),
  Point.new(1.0, 1.0)
])

diamond_path = Path.new([
  Point.new(5.0, 1.0),
  Point.new(9.0, 5.0),
  Point.new(5.0, 9.0),
  Point.new(1.0, 5.0),
  Point.new(5.0, 1.0)
])

[0, 10, 20, 30, 40, 50, 60, 70, 80].each do |rotation_angle|
  canvas.paths << box_path.clone.rotate(5.0, 5.0, rotation_angle)
end

[0, 0.9, 0.8, 0.7].each do |scale_amount|
  canvas.paths << diamond_path.clone.scale(scale_amount)
end

File.open(OUTPUT_PATH, "w+") do |file|
  file.puts canvas.as_svg
end

`open -a "Google Chrome" #{OUTPUT_PATH}`
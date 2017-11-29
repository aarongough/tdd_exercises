require_relative "point"

class Path
  attr_accessor :points

  def initialize(points)
    @points = points
  end

  def append(point)
    @points << point
  end

  def ==(other)
    points == other.points
  end

  def as_svg_path
    coordinates = points.map { |point| "#{point.x} #{point.y}" }
    "<path d='M #{coordinates.join(' L ')}' fill='none' stroke='black' stroke-width='0.1' />"
  end
end



RSpec.describe(Path) do
  describe "#initialize" do
    it "takes an array of paths as it's only argument" do
      points = [Point.new(1.0, 2.0), Point.new(3.0, 4.0)]

      path = Path.new(points)
      expect(path.points).to eq(points)
    end
  end

  describe "#append" do
    it "adds a point to the path" do
      path = Path.new([Point.new(2.0, 3.0)])
      path.append(Point.new(4.0, 5.0))

      expect(path.points).to match_array([Point.new(2.0, 3.0), Point.new(4.0, 5.0)])
    end
  end

  describe "#==" do
    it "returns true when the paths have the same points" do
      path1 = Path.new([Point.new(1.0, 2.0), Point.new(3.0, 4.0)])
      path2 = Path.new([Point.new(1.0, 2.0), Point.new(3.0, 4.0)])

      expect(
        path1 == path2
      ).to be true
    end

    it "returns false when the paths have different points" do
      path1 = Path.new([Point.new(1.0, 2.0), Point.new(3.0, 4.0)])
      path2 = Path.new([Point.new(5.0, 6.0), Point.new(7.0, 8.0)])

      expect(
        path1 == path2
      ).to be false
    end

    it "returns true when both paths have no points" do
      path1 = Path.new([])
      path2 = Path.new([])

      expect(
        path1 == path2
      ).to be true
    end
  end

  describe "#as_svg_path" do
    it "returns an svg representation of the path" do
      path = Path.new([
        Point.new(0.0, 1.0),
        Point.new(1.0, 1.0),
        Point.new(0.0, 1.0)
      ])

      expect(path.as_svg_path).to eq("<path d='M 0.0 1.0 L 1.0 1.0 L 0.0 1.0' fill='none' stroke='black' stroke-width='0.1' />")
    end
  end
end
class Point
  attr_accessor :x, :y

  def initialize(x, y)
    raise ArgumentError.new("X and Y must be floats") unless x.is_a?(Float) && y.is_a?(Float)

    @x = x
    @y = y
  end

  def ==(other)
    x == other.x && y == other.y
  end
end



RSpec.describe(Point) do
  describe "#initialize" do
    it "takes x and y as parameters" do
      point = Point.new(2.0, 5.0)

      expect(point.x).to eq(2.0)
      expect(point.y).to eq(5.0)
    end

    it "raises an argument error when x is not a float" do
      expect { Point.new("foo", 3.0) }.to raise_error(ArgumentError)
    end

    it "raises an argument error when y is not a float" do
      expect { Point.new(2.0, "bar") }.to raise_error(ArgumentError)
    end
  end

  describe "#==" do
    it "returns true when the two points have the same coordinates" do
      expect(
        Point.new(2.0, 3.0) == Point.new(2.0, 3.0)
      ).to be true
    end

    it "returns false when the two points have different x coordinates" do
      expect(
        Point.new(2.0, 3.0) == Point.new(10.0, 3.0)
      ).to be false
    end

    it "returns false when the two points have differnt y coordinates" do
      expect(
        Point.new(2.0, 3.0) == Point.new(2.0, 15.0)
      ).to be false
    end
  end
end
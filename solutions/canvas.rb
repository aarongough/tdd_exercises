require "rspec"
require_relative "path"

class Canvas
  attr_accessor :width, :height, :paths, :units

  def initialize
    @paths = []
  end

  def as_svg
    <<~SVG
      <?xml version='1.0' standalone='no'?>
      <!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
      <svg x='0' y='0' width='#{width}#{units}' height='#{height}#{units}' viewBox='0 0 #{width} #{height}' xmlns='http://www.w3.org/2000/svg' version='1.1'>
      #{ paths.map(&:as_svg_path).join("\n") }
      </svg>
    SVG
  end
end



RSpec.describe(Canvas) do
  describe "#initialize" do
    it "takes no arguments" do
      Canvas.new
    end
  end

  describe "#width" do
    it "sets the width of the canvas" do
      canvas = Canvas.new
      canvas.width = 20.5

      expect(canvas.width).to eq(20.5)
    end
  end

  describe "#height" do
    it "sets the height of the canvas" do
      canvas = Canvas.new
      canvas.height = 212.5

      expect(canvas.height).to eq(212.5)
    end
  end

  describe "#units" do
    it "sets the units of the canvas" do
      canvas = Canvas.new
      canvas.units = "cm"

      expect(canvas.units).to eq("cm")
    end
  end

  describe "#paths" do
    it "returns an empty array for a blank canvas" do
      expect(Canvas.new.paths).to eq([])
    end

    it "allows setting the paths" do
      paths = [Path.new([])]
      canvas = Canvas.new
      canvas.paths = paths

      expect(canvas.paths).to eq(paths)
    end

    it "allows appending a path" do
      canvas = Canvas.new
      canvas.paths << Path.new([])

      expect(canvas.paths).to eq([Path.new([])])
    end
  end

  describe "#as_svg" do
    it "returns an SVG string representing the canvas" do
      canvas = Canvas.new
      canvas.units = "cm"
      canvas.width = 5.0
      canvas.height = 5.0

      canvas.paths << Path.new([
        Point.new(0.0, 0.0),
        Point.new(5.0, 5.0)
      ])

      expected_svg = <<~SVG
        <?xml version='1.0' standalone='no'?>
        <!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
        <svg x='0' y='0' width='5.0cm' height='5.0cm' viewBox='0 0 5.0 5.0' xmlns='http://www.w3.org/2000/svg' version='1.1'>
        <path d='M 0.0 0.0 L 5.0 5.0' fill='none' stroke='black' stroke-width='0.1' />
        </svg>
      SVG

      expect(canvas.as_svg).to eq(expected_svg)
    end
  end
end
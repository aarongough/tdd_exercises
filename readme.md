# Canvas

This exercise involves creating a `Canvas` object, that allows you to programatically make drawings and then ouput them as an SVG. The api is fairly simple overall with a `Canvas` having `Paths` and each `Path` has many `Points`.

Here's a simple description of the basic features of the Canvas:

### Canvas
 - Allows setting of width
 - Allows setting of height
 - Allows setting of units
 - Has many paths
 - Allows output of drawing to SVG

### Path
 - Has many points
 - Allow appending a point

### Point
 - Allow setting and reading of X
 - Allow setting and reading of Y

## SVG Format Quick Reference

SVG is a very simple XML based file format for making 'Scalable Vector Graphics', here's a simple example file that includes a few paths:

	<?xml version="1.0" standalone="no"?>
	<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
	<svg x="0" y="0" width="20in" height="30in" viewBox="0 0 20 30" xmlns="http://www.w3.org/2000/svg" version="1.1">
		<path d="M 0.0 0.0 L 1.0 1.0" fill="none" stroke="black" stroke-width="0.005" />
		<path d="M 1.0 0.0 L 0.0 1.0" fill="none" stroke="black" stroke-width="0.005" />
	</svg>

`path` elements contain commands in the `d` attribute that are fairly simple `M 1.0 2.0` means `move to X1.0 Y2.0`, while `L 1.0 2.0` means `draw a line from the current position to X1.0 Y2.0`.

## How to know if you're finished?

Run the `make_drawing.rb` script in this folder, if you see a nice SVG open up in Chrome then you're on track!

## Bonus round!

Implement extended features:

- Allow rotation of point (Point#rotate)
- Allow rotation of path (Path#rotate)
- Allow scaling of path (Path#scale)

Run the 'advanced_drawing.rb' script and reap the rewards!
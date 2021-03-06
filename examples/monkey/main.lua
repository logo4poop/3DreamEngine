--load the 3D lib
l3d = require("3DreamEngine")
love.window.setTitle("Monkey Example")

--settings
l3d.flat = true
l3d.objectDir = "examples/monkey/"

l3d.AO_enabled = true		--ambient occlusion?
l3d.AO_strength = 0.75		--blend strength
l3d.AO_quality = 24		--samples per pixel (8-32 recommended)
l3d.AO_quality_smooth = 2	--smoothing steps, 1 or 2 recommended, lower quality (< 12) usually requires 2 steps
l3d.AO_resolution = 0.5		--resolution factor

l3d:init()

monkey = l3d:loadObject("object")

love.graphics.setBackgroundColor(128/255, 218/255, 235/255)

function love.draw()
	l3d:prepare()

	l3d:draw(monkey, 0, 0, -2, 1, 1, 1, 0, love.timer.getTime())

	l3d:present()
end

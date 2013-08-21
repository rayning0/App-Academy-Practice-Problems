def rec_intersection(rect1, rect2)
	x1 = rect1[0][0]
	y1 = rect1[0][1]
	x2 = rect1[1][0]
	y2 = rect1[1][1]

	a1 = rect2[0][0]
	b1 = rect2[0][1]
	a2 = rect2[1][0]
	b2 = rect2[1][1]

	x_min = [x1, a1].max
  x_max = [x2, a2].min

  y_min = [y1, b1].max
  y_max = [y2, b2].min

	# If no intersection between? 2 rectangles, return nil
  return nil if ((x_max < x_min) || (y_max < y_min))

	[[x_min, y_min], [x_max, y_max]]
end
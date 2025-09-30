var textX, textY, textStr, textColor, outlineColor;
textX = argument0
textY = argument1
textStr = argument2
textColor = argument3
outlineColor = argument4
draw_set_color(outlineColor)
draw_text((textX - 1), (textY + 1), textStr)
draw_text((textX - 1), textY, textStr)
draw_text((textX - 1), (textY - 1), textStr)
draw_text((textX + 1), (textY + 1), textStr)
draw_text((textX + 1), textY, textStr)
draw_text((textX + 1), (textY - 1), textStr)
draw_text(textX, (textY + 1), textStr)
draw_text(textX, (textY - 1), textStr)
draw_set_color(textColor)
draw_text(textX, textY, textStr)
draw_set_color(c_white)

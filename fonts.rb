fonts  = Dir["*/*.ttf"]
css = ""
fonts.each do |font|
	fontStyle = "@font-face { \n"
	fontStyle += "    font-family: " + font.split("/")[0] + ";\n"
	fontStyle += "    src: url('/static/fonts/" + font.split("/")[1] + "');\n } \n"
	print fontStyle
	css+= fontStyle
end
File.write('fonts3.css', css)
print css

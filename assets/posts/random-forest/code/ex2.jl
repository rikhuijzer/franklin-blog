# This file was generated, do not modify it. # hide
uv = data(df) * mapping(:U, :V, color=:class)

Blog.makie_svg(@OUTPUT, "u-class", # hide
draw(uv)
; literate=true); # hide
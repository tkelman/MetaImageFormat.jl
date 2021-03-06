using MetaImageFormat, FileIO, Images, AxisArrays
using Base.Test

f = File(format"MetaImageFormat", "example.mhd")
img = MetaImageFormat.load(f)
@test pixelspacing(img) == (25, 20, 40)
@test axisnames(img) == (:R, :A, :I)
@test eltype(img) == N0f16
@test size(img) == (8, 9, 5)

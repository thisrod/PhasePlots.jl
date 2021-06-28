module PhasePlots

using RecipesBase, ColorTypes

@userplot PhasePlot

@recipe function f(p::PhasePlot; clim=nothing)
    x, y, z = p.args
    isnothing(clim) && (clim = maximum(abs, z))
    extend(x, n) = (h = (x[end]-x[begin])/2(n-1); [x[begin]-h, x[end]+h])
    x = extend(x, size(z,1))
    xlims --> x
    y = extend(y, size(z,2))
    ylims --> y
    # The docs say :yflip defaults to false, Plots.default agrees, but the plot with yflip omitted is the same as when it is set to true.
    xflip --> !issorted(x)
    yflip --> !issorted(y)
    aspect_ratio --> 1
    grid --> false
    tick_direction --> :out
    
    N = transpose(z)
    x, y, @. HSVA(360/2π*angle(N), 1, !iszero(N), abs(N)/clim)
end

@doc """
    phaseplot(x, y, z; clim=maximum(abs.(z)))

Plot a complex function with phase as hue

The fourth roots of unity are red, green, cyan and purple.  Modulus is mapped to the alpha channel, so the classic complex phase plot is `phaseplot(..., bg=:black)`.  Alpha becomes opaque at the modulus clim; this is useful when multiple plots should have the same brightness scale.

Plots.jl is dreadfully inconsistent at mapping points in the plane to raster indices.  For consistency, phaseplot has a different default to every existing function.  The first dimension is the real/horizontal axis, the second the imaginary/vertical one, and by default x increases rightward and y upward.

When Plots.jl draws a raster, the extrema of x and y are the coordinates of points half a pixel outside the edge of the grid.  This function moves them to the edges, which is almost always what you will want.
""" phaseplot

end # module

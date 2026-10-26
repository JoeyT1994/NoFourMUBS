# The whole-ball model, its patch groups and the cap checks again, in 256-bit intervals (Interval{BigFloat}; Julia's
# default BigFloat precision, which nothing here changes).  Return ZC's cap witnesses are certified with LDL pivots
# down to ~1e-11, below the width of the Float64 model's tensors; the same source files are included here with
# I64 = Interval{BigFloat}, so the two precisions share every formula.
module HP
using IntervalArithmetic, LinearAlgebra, Printf
import ..IndepSeed: Seed, Group, XferCtx, pg, ug, gsign, gtr, hproj, CORNER0, TM, QPAIRS
const I64 = Interval{BigFloat}
iv(x::Real) = interval(BigFloat, x)
ivq(q::Rational) = interval(BigFloat, q)
const PI_I = interval(BigFloat, π)
const TWOPI_I = 2 * PI_I
include("wholeball.jl")
include("patches.jl")
include("caps.jl")
end

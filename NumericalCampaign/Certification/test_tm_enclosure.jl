include("single_radical.jl")
include("single_radical_tm.jl")
th0 = [2.692, -1.5, -0.614, 1.884]
C0 = seed_coeffs(th0)
flat(C) = vcat(C.g, vec(C.JT), vec(C.v.NX), vec(C.h.NY), vec(C.v.NY), vec(C.h.NX), C.v.s, C.h.t, C.R)
c0 = flat(C0)
for order in (3, 5), rho in (1e-3, 1e-2, 3e-2, 6e-2)
    space = TS.JetSpace(2order, ["t1", "t2", "t3", "t4"])
    dom = fill(interval(-rho, rho), 4); x0 = fill(interval(0.0), 4)
    t = @elapsed begin
        th = [TaylorModelN(space, i, order, x0, dom) + th0[i] for i in 1:4]
        Ctm = seed_coeffs_tm(th)
        enc = [enclose(z, dom) for z in flat(Ctm)]
    end
    rad_(z) = z isa Complex ? max(radius(real(z)), radius(imag(z))) : radius(z)
    inside(v, z) = z isa Complex ? (in_interval(real(v), real(z)) && in_interval(imag(v), imag(z))) : in_interval(real(v), z)
    w = maximum(rad_.(enc)); ok = all(inside(c0[i], enc[i]) for i in eachindex(c0))
    # random interior points contained?
    okr = true
    for k in 1:10
        th1 = th0 .+ rho .* (2 .* rand(4) .- 1); c1 = flat(seed_coeffs(th1))
        okr &= all(inside(c1[i], enc[i]) for i in eachindex(c1))
    end
    println("order $order rho $rho: max half-width $(round(w, sigdigits=3)); centre in $(ok); 10 random pts in $(okr); R >= $(round(inf(real(enc[end])), sigdigits=5)); $(round(t, digits=2)) s")
end

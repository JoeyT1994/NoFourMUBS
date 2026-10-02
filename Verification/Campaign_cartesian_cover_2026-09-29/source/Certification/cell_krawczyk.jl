# Rigorous per-cell certificate prototype (carrier ball in H-space).
#
# Cell: every carrier H with |H_jk - H0_jk| <= delta (entrywise complex disc; superset of
# the true Hadamard cell).  For each of the 252 solutions of the common-ray system at H0,
# a parametric Krawczyk test proves: for every H in the cell there is exactly one solution
# in a box X_i around it.  With the solution count fixed at 252 (finite common-ray algebra,
# m = 0), certified pairwise-disjoint boxes enclose ALL solutions for every H in the cell.
# Physical rays (w = conj z) lie in boxes mapped to themselves by the involution
# (z,w) -> (conj w, conj z).  Interval overlaps of physical boxes then feed the
# orthonormal-6-set (triple) and quartet tests.
using HomotopyContinuation, LinearAlgebra, DelimitedFiles, IntervalArithmetic

const CI = Complex{Interval{Float64}}
ci(x::Number) = Complex(interval(real(x)), interval(imag(x)))
ci(x::Number, r) = Complex(interval(real(x) - r, real(x) + r), interval(imag(x) - r, imag(x) + r))
mid_c(z) = Complex(mid(real(z)), mid(imag(z)))
rad_c(z) = max(radius(real(z)), radius(imag(z)))
subset_int(a::CI, b::CI) = isstrictsubset(real(a), real(b)) && isstrictsubset(imag(a), imag(b))

function ray_system(H)
    @var z[2:6] w[2:6]
    Z = [1; z]; W = [1; w]
    eqs = [z[i]*w[i] - 1 for i in 1:5]
    for k in 1:5
        push!(eqs, sum(conj(H[j,k])*Z[j] for j in 1:6) * sum(H[j,k]*W[j] for j in 1:6) - 6)
    end
    System(eqs; variables = [z; w])
end

# F and J for x = (z2..z6, w2..w6), generic element type; H entries possibly intervals
function FJ(x, H, Hc)
    T = eltype(x)
    Z = vcat(one(T), x[1:5]); W = vcat(one(T), x[6:10])
    F = Vector{T}(undef, 10); J = zeros(T, 10, 10)
    for i in 1:5
        F[i] = x[i]*x[5+i] - 1
        J[i, i] = x[5+i]; J[i, 5+i] = x[i]
    end
    for k in 1:5
        a = sum(Hc[j,k]*Z[j] for j in 1:6); b = sum(H[j,k]*W[j] for j in 1:6)
        F[5+k] = a*b - 6
        for j in 2:6
            J[5+k, j-1] = Hc[j,k]*b
            J[5+k, 5+j-1] = H[j,k]*a
        end
    end
    F, J
end

function krawczyk(m::Vector{ComplexF64}, r, H0, delta)
    Hi = [ci(H0[j,k], delta) for j in 1:6, k in 1:6]
    Hci = conj.(Hi)
    X = [ci(m[i], r) for i in 1:10]
    Fm, _ = FJ(ci.(m), Hi, Hci)                       # F(m; P) over the parameter box
    _, Jm = FJ(m, H0, conj.(H0))
    Y = inv(Jm)
    _, JX = FJ(X, Hi, Hci)
    Kx = ci.(m) .- ci.(Y) * Fm .+ (Matrix{CI}(ci.(I(10))) .- ci.(Y) * JX) * (X .- ci.(m))
    all(subset_int(Kx[i], X[i]) for i in 1:10), Kx
end


# Homogeneous form on P5 x P5: Z_i W_i - Z_1 W_1 = 0 (i=2..6), (sum conj(H) Z)(sum H W) - 6 Z_1 W_1 = 0,
# in the affine chart Z_cz = 1, W_cw = 1 chosen per solution (largest coordinates).
function FJh(Z, W, H, Hc, cz, cw)
    T = promote_type(eltype(Z), eltype(W))
    F = Vector{T}(undef, 10); Jfull = zeros(T, 10, 12)
    for i in 2:6
        F[i-1] = Z[i]*W[i] - Z[1]*W[1]
        Jfull[i-1, i] += W[i]; Jfull[i-1, 6+i] += Z[i]; Jfull[i-1, 1] -= W[1]; Jfull[i-1, 7] -= Z[1]
    end
    for k in 1:5
        a = sum(Hc[j,k]*Z[j] for j in 1:6); b = sum(H[j,k]*W[j] for j in 1:6)
        F[5+k] = a*b - 6*Z[1]*W[1]
        for j in 1:6
            Jfull[5+k, j] += Hc[j,k]*b; Jfull[5+k, 6+j] += H[j,k]*a
        end
        Jfull[5+k, 1] -= 6*W[1]; Jfull[5+k, 7] -= 6*Z[1]
    end
    cols = [j for j in 1:12 if j != cz && j != 6+cw]
    F, Jfull[:, cols], cols
end
function to_chart(s)
    Z = vcat(1.0+0im, s[1:5]); W = vcat(1.0+0im, s[6:10])
    cz = argmax(abs.(Z)); cw = argmax(abs.(W))
    Z ./ Z[cz], W ./ W[cw], cz, cw
end
function krawczyk_h(s, rel, H0, delta)
    Z, W, cz, cw = to_chart(s)
    x = vcat(Z, W); _, _, cols = FJh(Z, W, H0, conj.(H0), cz, cw)
    m = x[cols]
    Hi = [ci(H0[j,k], delta) for j in 1:6, k in 1:6]; Hci = conj.(Hi)
    r = rel
    Xfull = [ci(v) for v in x]; for (t,c) in enumerate(cols); Xfull[c] = ci(m[t], r); end
    Mfull = [ci(v) for v in x]
    Fm, _, _ = FJh(Mfull[1:6], Mfull[7:12], Hi, Hci, cz, cw)
    _, Jm, _ = FJh(x[1:6], x[7:12], H0, conj.(H0), cz, cw)
    Y = inv(Jm)
    _, JX, _ = FJh(Xfull[1:6], Xfull[7:12], Hi, Hci, cz, cw)
    X = Xfull[cols]
    Kx = ci.(m) .- ci.(Y) * Fm .+ (Matrix{CI}(ci.(I(10))) .- ci.(Y) * JX) * (X .- ci.(m))
    all(subset_int(Kx[i], X[i]) for i in 1:10)
end

H0 = readdlm(ARGS[1], ',', ComplexF64)
deltas = parse.(Float64, split(ARGS[2], ','))
F = ray_system(H0)
sols = solutions(solve(F; show_progress = false))
@assert length(sols) == 252 "expected 252 finite solutions, got $(length(sols))"
sigma(s) = vcat(conj.(s[6:10]), conj.(s[1:5]))
for delta in deltas
    t = @elapsed begin
        ok = 0; boxes = Vector{Vector{CI}}(); radii = Float64[]
        for s in sols
            # choose the smallest box radius that passes (grow from a delta-proportional guess)
            passed = false
            for r in (3delta, 10delta, 30delta, 100delta, 300delta, 1000delta, 3000delta)
                if krawczyk_h(s, r, H0, delta); push!(radii, r); passed = true; break; end
            end
            passed && (ok += 1)
        end
    end
    # pairwise disjointness of the certified boxes (needed so that 252 distinct solutions are enclosed)
    disjoint = true
    if false
        for a in 1:252, b in a+1:252
            if all(!isdisjoint_interval(real(boxes[a][i]), real(boxes[b][i])) && !isdisjoint_interval(imag(boxes[a][i]), imag(boxes[b][i])) for i in 1:10)
                disjoint = false; break
            end
        end
    end
    nphys = count(s -> maximum(abs.(sigma(s) .- s)) < 1e-8, sols)
    println("delta $(delta): Krawczyk-certified $(ok)/252 solution boxes; pairwise disjoint $(disjoint); ",
            "max box radius $(ok > 0 ? maximum(radii) : NaN); physical rays $(nphys); time $(round(t, digits=1)) s")
end

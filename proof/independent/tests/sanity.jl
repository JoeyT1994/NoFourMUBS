# Soundness sanity checks (not part of the certificate check):
#  (a) sigma from interval Cholesky vs the float smallest singular value of J on N;
#  (b) at a centre equivalent to F6 (F2 (x) F3), the six vectors of a third MUB basis (D2 F2) (x) (D3 F3) must
#      survive every bin level, sit in labels, and those labels must stay pairwise O-adjacent after all edge tests
#      (Stage C must never discard a genuine configuration).
# julia --startup-file=no --project=<jlenv_cluster> tests/sanity.jl CERT.txt
using IntervalArithmetic, LinearAlgebra, Printf
include(joinpath(@__DIR__, "..", "src", "IndepAtlas.jl"))
const IA = IndepAtlas

recs = IA.read_certificate(ARGS[1])
println("(a) sigma vs float SVD on N")
for r in recs[1:5]
    nb = IA.normal_bound(r)
    J, _ = IA.jacobian_interval(r.P); Jf = mid.(J)
    T = mid.(IA.frame_interval(nb.T36))
    H = mid.(IA.HMAT)
    # orthonormal basis of N = range(H) minus span(T)
    Q = nullspace(vcat(transpose(T), transpose(I - H)))     # vectors orthogonal to T and horizontal
    smin = minimum(svdvals(Jf * Q))
    @printf("  record %d: certified sigma = %.10f, float svd min on N = %.10f, dim N = %d\n", r.idx, nb.sigma, smin, size(Q, 2))
end

println("(b) F2 (x) F3 centre with a known third MUB basis")
F2 = [0 0; 0 1/2]; F3 = [0 0 0; 0 1/3 2/3; 0 2/3 1/3]         # cycles
Pc = [F2[a, b] + F3[c, d] for a in 1:2, c in 1:3, b in 1:2, d in 1:3]
Pc = reshape(Pc, 6, 6)                                            # rows (a,c), cols (b,d)
# third basis: (D2 F2) (x) (D3 F3), D2 = diag(1, i), D3 = diag(1, 1, w)
d2 = [0, 1/4]; d3 = [0, 0, 1/3]
V = reshape([d2[a] + F2[a, b] + d3[c] + F3[c, d] for a in 1:2, c in 1:3, b in 1:2, d in 1:3], 6, 6)
# check MUB numerically
Hc = exp.(2π * im * Pc) / sqrt(6); Vc = exp.(2π * im * V) / sqrt(6)
@printf("  max | |<h,v>| - 1/sqrt6 | = %.2e, ||V*V - I|| = %.2e\n", maximum(abs.(abs.(Hc' * Vc) .- 1 / sqrt(6))), opnorm(Vc' * Vc - I))
P = 2π .* Pc
# frame = kernel of J on the horizontal space (F6 has defect 4)
J, _ = IA.jacobian_interval(P); Jf = mid.(J); H = mid.(IA.HMAT)
Bh = nullspace(I - H)                         # 36 x 25 horizontal basis
F = svd(Jf * Bh); Tk = Bh * F.V[:, end-3:end] # 4 smallest
println("  smallest singular values of J on horizontal: ", round.(F.S[end-5:end], sigdigits=4))
Tint = round.(Int64, Tk .* 2^30)
rec = IA.Rec(-1, true, 0.01, 0.03, P, Tint, IA.Target[])
nb = IA.normal_bound(rec)
println("  normal bound: ", nb.ok, " ", nb.msg, " sigma=", nb.sigma, " n=", nb.n)
Cf, Ci = IA.make_ctx(rec, nb)
bins, bst = IA.bin_cover(Cf, Ci, true)
println("  kept per level: ", bst.kept, "  overruled by intervals: ", bst.overruled)
# locate the 6 vectors (dephase by coordinate 0, phases in [0,1))
binset = Set(bins)
labels = IA.cluster(bins, 0.03)
function find_label(beta)
    # all M=96 bins (closed boxes) containing beta, retained ones, and their label
    cands = [((x = beta[j] * 96; b = floor(Int, x); f = x - b; f < 1e-9 ? [mod(b - 1, 96), b] : f > 1 - 1e-9 ? [b, mod(b + 1, 96)] : [b])) for j in 2:6]
    for b1 in cands[1], b2 in cands[2], b3 in cands[3], b4 in cands[4], b5 in cands[5]
        bt = UInt8.((b1, b2, b3, b4, b5))
        bt in binset || continue
        # label covering this bin: centre with ||h|| + X <= s
        m = (0, 2b1 + 1, 2b2 + 1, 2b3 + 1, 2b4 + 1, 2b5 + 1)
        for (li, l) in enumerate(labels)
            w = [IA.wrap192(m[j] - l.m[j]) for j in 1:6]
            num = 6sum(w .^ 2) - sum(w)^2
            if sqrt(num / (6 * 192^2)) + sqrt(29 / 6) / 192 <= l.s
                return bt, li
            end
        end
    end
    nothing
end
labs = Int[]
for k in 1:6
    beta = mod.(V[:, k] .- V[1, k], 1.0)
    fl = find_label(beta)
    println("  vector $k: ", fl === nothing ? "NOT FOUND (unsound!)" : "bin $(Int.(fl[1])) label $(fl[2])")
    fl === nothing || push!(labs, fl[2])
end
# a second third basis, (D2 F2) (x) (D3^2 F3): its vectors must be retained too
V2 = reshape([d2[a] + F2[a, b] + 2 * d3[c] + F3[c, d] for a in 1:2, c in 1:3, b in 1:2, d in 1:3], 6, 6)
V2c = exp.(2π * im * V2) / sqrt(6)
@printf("  second basis: max | |<h,v>| - 1/sqrt6 | = %.2e\n", maximum(abs.(abs.(Hc' * V2c) .- 1 / sqrt(6))))
for k in 1:6
    fl = find_label(mod.(V2[:, k] .- V2[1, k], 1.0))
    println("  second-basis vector $k: ", fl === nothing ? "NOT FOUND (unsound!)" : "label $(fl[2])")
end
# edges between their labels must survive (O)
wsf = [IA.compute_JB!(IA.compute_S!(IA.VW{Float64}(), Cf, l.m), Cf) for l in labels]
ef = IA.EW{Float64}()
allok = length(unique(labs)) == 6
for a in 1:6, b in a+1:6
    A = labs[a]; B = labs[b]; la = labels[A]; lb = labels[B]
    cO, cU = IA.edge_basic(ef, Cf, la.m, lb.m, la.s + lb.s)
    keep = cO == 0
    if keep
        IA.edge_S!(ef, Cf, la.m, lb.m)
        for lamf in (1.0, 1e-2, 1e2, 1e-4)
            Y = IA.propose_joint(wsf[A], wsf[B], ef, Cf, la.s, lb.s, :O, lamf)
            Y === nothing && continue
            lhs, rhs = IA.joint_lhs_rhs(wsf[A], wsf[B], ef, Cf, la.s, lb.s, :O, Y)
            IA.rejects(lhs, rhs) && (keep = false)
        end
    end
    keep || (global allok = false; println("  O edge $A-$B REJECTED (unsound!)"))
end
println(allok ? "  all 15 O edges among the six labels survive: OK" : "  FAILED")

println("(c) nonemptiness search finds F6 near a permuted, perturbed copy")
using Random
Random.seed!(1)
F6 = [mod(j * k, 6) * 2π / 6 for j in 0:5, k in 0:5]
rp = randperm(6); cp = randperm(6)
pert = IA.hproj(0.01 .* randn(6, 6))
Pt = -F6[rp, cp] .+ pert .+ 2π .* rand(-2:2, 6, 6) .+ (1:6) .* 0.3 .+ (1:6)' .* 0.7   # conj, windings, row/col phases
rect = IA.Rec(0, true, 0.08, 0.03, Pt, zeros(Int64, 36, 4), IA.Target[])
ne = IA.nonempty_F6([rect], [1])
println("  ", ne, "  expected distance ", sqrt(sum(abs2, pert)))
# the pre-filter of nonempty_F6: the minimum over the 120^2 classes equals the minimum over all 720^2 alignments
perms = IA.permutations6()
function f6_exhaustive_min(P)
    best = Inf
    for rp in perms, cp in perms
        D = IA.align(F6, 1, false, rp, cp) .- P
        Dp = [D[j, c] - D[j, 1] - D[1, c] + D[1, 1] for j in 1:6, c in 1:6]
        best = min(best, sqrt(sum(abs2, IA.hproj(D .- 2π .* round.(Dp ./ (2π))))))
    end
    best
end
gap = maximum(abs(IA.f6_class_min(P)[1] - f6_exhaustive_min(P)) for P in [[Pt]; [r.P for r in recs[1:3]]])
println(gap < 1e-12 ? "  F6 pre-filter: class minimum = exhaustive minimum (max gap $(gap)): OK" :
                      "  F6 pre-filter: class minimum differs from the exhaustive minimum by $(gap): FAILED")

println("(d) two-clique search on planted random graphs")
function planted(n, p, plant::Bool; drop_cross=false)
    O = falses(n, n); U = falses(n, n)
    for a in 1:n, b in a+1:n
        rand() < p && (O[a, b] = O[b, a] = true)
        rand() < p && (U[a, b] = U[b, a] = true)
    end
    if plant
        vs = randperm(n)[1:12]; A = vs[1:6]; B = vs[7:12]
        for X in (A, B), a in X, b in X
            a != b && (O[a, b] = true)
        end
        for a in A, b in B
            U[a, b] = U[b, a] = true
        end
        drop_cross && (U[A[1], B[1]] = U[B[1], A[1]] = false)
    end
    nw = (n + 63) >> 6
    tobits(M) = [begin
        b = zeros(UInt64, nw)
        for w in 1:n
            M[v, w] && (b[(w-1)>>6+1] |= UInt64(1) << ((w - 1) & 63))
        end
        b
    end for v in 1:n]
    IA.two_cliques(tobits(O), tobits(U), n)
end
Random.seed!(2)
ok = true
for trial in 1:20
    S1 = planted(150, 0.15, true); S2 = planted(150, 0.15, false); S3 = planted(150, 0.15, true; drop_cross=true)
    global ok &= S1.found !== nothing && !S1.capped
    global ok &= S2.found === nothing && !S2.capped     # p = 0.15: a random configuration is (very) unlikely
    global ok &= !S3.capped
end
println(ok ? "  planted configurations found; none reported in random graphs: OK" : "  FAILED")

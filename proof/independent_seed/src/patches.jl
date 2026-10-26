# General T1 transfers on sphere patches from the whole-ball normal form (return ZT, REPORT.md section 2).
#
# For a seed ball whose whole-ball certificate closes, Q(w) = Q0 + U w + H2[w, w]/2 + X z(w) with ||z|| <= tau on the
# whole ball, on the stored branch (wb_compute).  On a dyadic box with centre c and half-width h (all four axes) and
# w in the box and the ball, d = w - c has ||d|| <= 2h and, exactly, Q_p(w) = Q_p(c) + DQ_p(c) d + H2[d, d]/2.  So for
# a linear output A:  ||A(Q(w) - Q_p(c) - DQ_p(c) d)|| <= ||A H2|| (2h)^2/2 + ||A X|| tau.
#   - Target (corner seed, linear in Q): max over the 16 vertices of ||a + B (v - c)|| plus that error < r_t
#     (convexity of the affine part; the vertices bound the box, a superset of box cap sphere).
#   - Signs: psi = Im Psi of the side's 9 phases is sum_nu c_nu sin(nu.x) with sum_nu nu nu^T = 72 P3 (x) P3, so
#     |psi(x) - psi(x_c) - g.(x - x_c)| <= 36 ||R(x - x_c)||^2 (R = P3 (x) P3; psi(x) = psi(Rx)); with x - x_c
#     enclosed as above, sign o_t (horizontal side) and -o_t (vertical side) hold on the box.
# Written from return ZT's REPORT.md section 2 and Appendix A.  Floats only choose; every bound is an interval.

const PATCHES = Ref(get(ENV, "SEED_PATCHES", "1") != "0")    # SEED_PATCHES=0: box Taylor models only
const PATCH_MODELS = Dict{Int,Any}()
const PATCH_LOCK = ReentrantLock()

"""The ZT model of seed s (cached), or nothing when its whole-ball certificate or the lift identification fails."""
function patch_model(s::Seed)
    lock(PATCH_LOCK) do
        haskey(PATCH_MODELS, s.idx) && return PATCH_MODELS[s.idx]
    end
    m = try wb_compute(s)[2] catch; nothing end
    lock(PATCH_LOCK) do
        PATCH_MODELS[s.idx] = m
    end
    m
end

"""g acting on row-major phases as a 36 x 36 signed permutation (Q'_ab = +-Q_ab or +-Q_ba)."""
function gmat36(g::Symbol)
    G = zeros(I64, 36, 36); sg = gsign(g) == -1 ? -1.0 : 1.0
    for a in 0:5, b in 0:5
        G[6a+b+1, (gtr(g) ? 6b+a : 6a+b)+1] = iv(sg)
    end
    G
end

"""The corner seed at the ordered corner (I, J) (1-based) as a 4 x 36 integer matrix."""
function lcorner(I, J)
    L = zeros(I64, 4, 36)
    for (k, (a, b)) in enumerate(((2, 2), (2, 3), (3, 2), (3, 3)))
        for (r, c, v) in ((I[a], J[b], 1.0), (I[a], J[1], -1.0), (I[1], J[b], -1.0), (I[1], J[1], 1.0))
            L[k, 6(r-1)+c] += iv(v)
        end
    end
    L
end

"""H2[c, .] (36 x 4) and H2[c, c] (36) for the 36 x 16 tensor H2 (column 4(i-1)+j is the (i, j) slice)."""
h2c(H2, c) = [sum(H2[e, 4(i-1)+j] * c[i] for i in 1:4) for e in 1:36, j in 1:4]

nrm(A) = iv(wb_spectral(A))

const SG16 = [[(v >> (j - 1)) & 1 == 1 ? 1.0 : -1.0 for j in 1:4] for v in 0:15]

"""Box geometry in w: centre c (4 intervals, exact) and half-width h (interval, all axes), from the u-box [lo, hi]."""
function patch_box(r::I64, lo, hi)
    c = [r * (iv(lo[j]) + iv(hi[j])) / 2 for j in 1:4]
    h = r * (iv(hi[1]) - iv(lo[1])) / 2
    c, h
end

"""The patch test for a general T1 box: (ok, message, target value)."""
function patch_T1(m, lo, hi, g::Group, t::Seed, Mi)
    c, h = patch_box(m.r, lo, hi)
    Gg = gmat36(g.g)
    L = lcorner(g.rows, g.cols) * Gg
    A = Mi * L
    off = Mi * (TWOPI_I .* iv.(Float64.(g.wind[1:4])) .- iv.(t.theta0))
    Hc = h2c(m.H2, c)
    Qc = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2
    Dc = m.U .+ Hc
    a = A * Qc .+ off; B = A * Dc
    eps = nrm(A * m.H2) * (2h)^2 / 2 + nrm(A * m.X) * m.tau
    val = maximum(sup(sqrt(sum((a[i] + sum(B[i, j] * h * sg[j] for j in 1:4))^2 for i in 1:4))) for sg in SG16)
    tot = sup(iv(val) + eps)
    tot < t.r || return false, @sprintf("T1 patch: %.6g >= r_t", tot), tot
    ok, msg = patch_signs(m, Qc, Dc, c, h, g, t, Gg)
    ok || return false, msg, tot
    true, "ok (patch)", tot
end


"""The two Psi signs of a T1 target over the box: sign o_t for K[I, J^c] and -o_t for K[I^c, J]^T, with
|psi(x) - psi(x_c) - g.(x - x_c)| <= 36 ||R(x - x_c)||^2 and x - x_c enclosed from Q_p(c), DQ_p(c), H2 and X tau."""
function patch_signs(m, Qc, Dc, c, h, g::Group, t::Seed, Gg)
    Ic = [k for k in 1:6 if !(k in g.rows)]; Jc = [k for k in 1:6 if !(k in g.cols)]
    P3 = [ivq((i == j ? 1 : 0) // 1 - 1 // 3) for i in 1:3, j in 1:3]
    for (side, want) in ((:h, t.o), (:v, -t.o))
        inds = side == :h ? [6(i-1)+j for i in g.rows for j in Jc] : [6(i-1)+j for j in g.cols for i in Ic]
        S = zeros(I64, 9, 36)
        for (k, e) in enumerate(inds); S[k, e] = iv(1.0); end
        S = S * Gg
        R = [P3[(a-1)÷3+1, (b-1)÷3+1] * P3[(a-1)%3+1, (b-1)%3+1] for a in 1:9, b in 1:9] * S
        xc = S * Qc
        f = iv(0.0); gr = zeros(I64, 9)
        for (cν, ν) in WB_SIG_TERMS
            ph = sum(ν[k] * xc[k] for k in 1:9)
            f += cν * sin(ph)
            for k in 1:9; gr[k] += cν * ν[k] * cos(ph); end
        end
        RB = R * Dc
        eh = nrm(R * m.H2) * (2h)^2 / 2 + nrm(R * m.X) * m.tau
        ed = nrm(RB) * 2h + eh
        gRH = reshape(gr, 1, 9) * (R * m.H2)
        gh4 = [gRH[1, 4(i-1)+j] for i in 1:4, j in 1:4]
        eg = nrm(gh4) * (2h)^2 / 2 + nrm(reshape(gr, 1, 9) * (R * m.X)) * m.tau
        lin = reshape(gr, 1, 9) * RB
        lo_ = minimum(inf(want * (f + sum(lin[1, j] * h * sg[j] for j in 1:4))) for sg in SG16)
        margin = iv(lo_) - eg - 36 * ed^2
        inf(margin) > 0 || return false, "T1 patch: orientation ($(side))"
    end
    true, ""
end


# ---------------------------------------------------------------- per-group precomputation (the same tests, once per group)

"""Everything of a T1 group's patch test that does not depend on the box: the target map A = M_t^-1 L g and its
products with Q0, U, H2, and per side S, R = (P3 (x) P3) S and their products, with the norms ||A H2||, ||R H2||,
||R X||.  tauA is the normal error term of the target test (||A X|| tau, or the edge ball's output-weighted tau_A)."""
struct PatchGroup
    AQ0::Vector{I64}; AU::Matrix{I64}; AH2::Matrix{I64}; off::Vector{I64}; nAH2::I64; tauA::I64
    sides::Vector{Any}
end

function patch_group(m, g::Group, t::Seed, Mi; tauA=nothing)
    Gg = gmat36(g.g)
    A = Mi * (lcorner(g.rows, g.cols) * Gg)
    off = Mi * (TWOPI_I .* iv.(Float64.(g.wind[1:4])) .- iv.(t.theta0))
    ta = tauA === nothing ? nrm(A * m.X) * m.tau : tauA
    Ic = [k for k in 1:6 if !(k in g.rows)]; Jc = [k for k in 1:6 if !(k in g.cols)]
    P3 = [ivq((i == j ? 1 : 0) // 1 - 1 // 3) for i in 1:3, j in 1:3]
    P9 = [P3[(a-1)÷3+1, (b-1)÷3+1] * P3[(a-1)%3+1, (b-1)%3+1] for a in 1:9, b in 1:9]
    sides = Any[]
    for (side, want) in ((:h, t.o), (:v, -t.o))
        inds = side == :h ? [6(i-1)+j for i in g.rows for j in Jc] : [6(i-1)+j for j in g.cols for i in Ic]
        S = zeros(I64, 9, 36)
        for (k, e) in enumerate(inds); S[k, e] = iv(1.0); end
        S = S * Gg; R = P9 * S
        RH2 = R * m.H2; RX = R * m.X
        push!(sides, (want = want, SQ0 = S * m.Q0, SU = S * m.U, SH2 = S * m.H2, RU = R * m.U, RH2 = RH2, RX = RX,
                      nRH2 = nrm(RH2), nRXt = nrm(RX) * m.tau))
    end
    PatchGroup(A * m.Q0, A * m.U, A * m.H2, off, nrm(A * m.H2), ta, sides)
end

"""v[:, 4(i-1)+j] contracted with c: (rows x 4) slice M[c, .] and the quadratic M[c, c]."""
slice4(M, c) = [sum(M[e, 4(i-1)+j] * c[i] for i in 1:4) for e in 1:size(M, 1), j in 1:4]

"""The patch test of a T1 box from the group's precomputation: identical inequalities to patch_T1 / edge_patch_T1."""
function patch_box_test(pg::PatchGroup, m, lo, hi, tr)
    c, h = patch_box(m.r, lo, hi)
    Hc = slice4(pg.AH2, c)
    a = pg.AQ0 .+ pg.AU * c .+ (Hc * c) ./ 2 .+ pg.off
    B = pg.AU .+ Hc
    eps = pg.nAH2 * (2h)^2 / 2 + pg.tauA
    val = maximum(sup(sqrt(sum((a[i] + sum(B[i, j] * h * sg[j] for j in 1:4))^2 for i in 1:4))) for sg in SG16)
    tot = sup(iv(val) + eps)
    tot < tr || return false, @sprintf("T1 patch: %.6g >= r_t", tot), tot
    for sd in pg.sides
        Sc = slice4(sd.SH2, c)
        xc = sd.SQ0 .+ sd.SU * c .+ (Sc * c) ./ 2
        f = iv(0.0); gr = zeros(I64, 9)
        for (cν, ν) in WB_SIG_TERMS
            ph = sum(ν[k] * xc[k] for k in 1:9)
            f += cν * sin(ph)
            for k in 1:9; gr[k] += cν * ν[k] * cos(ph); end
        end
        RB = sd.RU .+ slice4(sd.RH2, c)
        eh = sd.nRH2 * (2h)^2 / 2 + sd.nRXt
        ed = nrm(RB) * 2h + eh
        gt = reshape(gr, 1, 9)
        gRH = gt * sd.RH2
        gh4 = [gRH[1, 4(i-1)+j] for i in 1:4, j in 1:4]
        eg = nrm(gh4) * (2h)^2 / 2 + nrm(gt * sd.RX) * m.tau
        lin = gt * RB
        lo_ = minimum(inf(sd.want * (f + sum(lin[1, j] * h * sg[j] for j in 1:4))) for sg in SG16)
        inf(iv(lo_) - eg - 36 * ed^2) > 0 || return false, "T1 patch: orientation", tot
    end
    true, "ok (patch)", tot
end


const PATCH_GROUPS = Dict{UInt,Any}()

"""patch_group for a seed's T1 group, computed once (cached by the group object)."""
function patch_group_cached(m, s::Seed, g::Group, t::Seed, Mi)
    key = objectid(g)
    v = lock(PATCH_LOCK) do; get(PATCH_GROUPS, key, missing); end
    v === missing || return v
    pg = try patch_group(m, g, t, Mi) catch; nothing end
    lock(PATCH_LOCK) do; PATCH_GROUPS[key] = pg; end
    pg
end

# ---------------------------------------------------------------- box Taylor models from the whole-ball model

const MODEL_TM_CACHE = Dict{UInt,Any}()

"""The dephasing map Z -> Z - Z[:, 0] - Z[0, :] + Z[0, 0] on row-major phases (36 x 36, exact)."""
function dephase36()
    Gd = zeros(I64, 36, 36)
    for i in 0:5, j in 0:5
        k = 6i + j + 1; Gd[k, k] += 1; Gd[k, 6i+1] -= 1; Gd[k, j+1] -= 1; Gd[k, 1] += 1
    end
    Gd
end

"""Taylor models (36) of the dephased phases Q over the box wc + u, |u_j| <= h_j, from the whole-ball model: the
dephased image of Q0 + U w + H2[w, w]/2 + X z(w), ||z|| <= tau (a quadratic polynomial in w plus the normal term):
constant G Q_p(c), linear G (U + H2[c, .]), quadratic G H2/2, remainder ||(G X)_e|| tau.  The continuous lift is
the stored one (wb_compute's lift gap < pi), so the stored windings apply."""
function model_box_tm(m, wc)
    key = objectid(m)
    pre = lock(PATCH_LOCK) do; get(MODEL_TM_CACHE, key, nothing); end
    if pre === nothing
        Gd = dephase36(); GX = Gd * m.X
        pre = (Gd = Gd, GU = Gd * m.U, GH = Gd * m.H2, GQ0 = Gd * m.Q0,
               rho = [sup(sqrt(sum(GX[e, k]^2 for k in 1:size(GX, 2))) * m.tau) for e in 1:36])
        lock(PATCH_LOCK) do; MODEL_TM_CACHE[key] = pre; end
    end
    c = collect(wc)
    Hc = slice4(pre.GH, c)
    C = pre.GQ0 .+ pre.GU * c .+ (Hc * c) ./ 2
    Dl = pre.GU .+ Hc
    quad(e, j, l) = j == l ? pre.GH[e, 4(j-1)+j] / 2 : (pre.GH[e, 4(j-1)+l] + pre.GH[e, 4(l-1)+j]) / 2
    [TM{I64}(C[e], ntuple(j -> Dl[e, j], 4), ntuple(k -> quad(e, QPAIRS[k]...), 10), pre.rho[e]) for e in 1:36]
end

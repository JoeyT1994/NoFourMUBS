# Claim C2 (SPEC §4, FORMAT.md §4-6): boundary transfers of seed balls (T0, T1, T2) and of records (rec, T1'), and the
# coverage of each boundary (the sphere ||w|| = r of a seed ball, the shell of a record) by the listed dyadic boxes.
#
# Boxes are dyadic in u = w / r (seed balls) or u = eta / eta_scale (records); the box in w (or eta) is the exact real
# box scale [lo, hi], handled in intervals.  Every transfer is decided in interval arithmetic.  The windings stored in
# the certificate are the ones checked; the checker chooses its own only where none is stored (any integer winding is
# valid).  A box whose transfer fails as a whole is split into its 16 halves (same target), down to `split_depth`
# levels: the claim is universal over the box, so it may be proved piece by piece.

# ---------------------------------------------------------------- helpers

"""Interval enclosure of M^{-1} for a float matrix M: X = inv(M) in floats, E = I - X M in intervals, q = ||E||_inf;
if q < 1 then M^{-1} = sum_k E^k X lies entrywise within q/(1 - q) ||X||_inf of X."""
function inv_enclosure(M::Matrix{Float64})
    n = size(M, 1)
    X = inv(M)
    all(isfinite, X) || return nothing
    Mi = iv.(M); Xi = iv.(X)
    E = [iv(i == k ? 1.0 : 0.0) for i in 1:n, k in 1:n] - Xi * Mi
    q = maximum(sup(sum(iv(mag(E[i, k])) for k in 1:n)) for i in 1:n)
    q < 1 || return nothing
    nX = maximum(sup(sum(iv(abs(X[i, k])) for k in 1:n)) for i in 1:n)
    d = sup(iv(q) / (iv(1.0) - iv(q)) * iv(nX))
    [Xi[i, k] + interval(-d, d) for i in 1:n, k in 1:n]
end

"""The box s [lo, hi] (s a positive float, lo, hi exact): interval centre and half-widths (upper bounds)."""
function scaled_dom(lo, hi, s::Float64)
    S = iv(s)
    ntuple(j -> S * ((iv(lo[j]) + iv(hi[j])) / iv(2.0)), 4), ntuple(j -> sup(S * (iv(hi[j]) - iv(lo[j])) / iv(2.0)), 4)
end
"""The 16 vertices of s [lo, hi], as interval vectors."""
scaled_vertices(lo, hi, s::Float64) =
    [ntuple(j -> iv(s) * iv((vb >> (j - 1)) & 1 == 1 ? hi[j] : lo[j]), 4) for vb in 0:15]

"""The 16 halves of a u-box (exact: midpoints of dyadic endpoints are floats)."""
function split_box(lo::NTuple{4,Float64}, hi::NTuple{4,Float64})
    m = ntuple(j -> (lo[j] + hi[j]) / 2, 4)
    [(ntuple(j -> (ch >> (j - 1)) & 1 == 1 ? m[j] : lo[j], 4), ntuple(j -> (ch >> (j - 1)) & 1 == 1 ? hi[j] : m[j], 4))
     for ch in 0:15]
end

mat6(Q::AbstractVector{TM{T}}) where {T} = [Q[6(a-1)+b] for a in 1:6, b in 1:6]

"""g . (phase matrix): id, conj (negate), T (transpose), conjT."""
function gact(X::AbstractMatrix, g::Symbol)
    Y = gtr(g) ? permutedims(X) : X
    gsign(g) == -1 ? map(-, Y) : Y
end

"""Dephased corner seed of the phase matrix X at rows I = (i0, i1, i2), columns J = (j0, j1, j2):
theta'_1 <-> (i1, j1), theta'_2 <-> (i1, j2), theta'_3 <-> (i2, j1), theta'_4 <-> (i2, j2)."""
function corner_seed(X::AbstractMatrix, I, J)
    d(a, b) = X[I[a], J[b]] - X[I[a], J[1]] - X[I[1], J[b]] + X[I[1], J[1]]
    [d(2, 2), d(2, 3), d(3, 2), d(3, 3)]
end

"""K[I, J^c] (horizontal side block) and K[I^c, J] (vertical side block)."""
function corner_blocks(X::AbstractMatrix, I, J)
    Ic = [k for k in 1:6 if !(k in I)]; Jc = [k for k in 1:6 if !(k in J)]
    X[collect(I), Jc], X[Ic, collect(J)]
end

"""The representative of FORMAT.md §3: each phase model shifted by 2 pi k so that its constant is nearest
(P + U wc)_e (chosen at the box centre; for points of the ball the residual is far below pi)."""
function representative(Q::Vector{TM{I64}}, P::Vector{Float64}, U::Matrix{Float64}, wc::NTuple{4,I64})
    map(1:36) do e
        t = Q[e]
        uw = mid(sum(iv(U[e, j]) * wc[j] for j in 1:4))
        k = round((P[e] + uw - mid(t.c)) / (2π))
        k == 0 ? t : addc(t, TWOPI_I * iv(k))
    end
end

"""Winding for a seed landing: the stored one, or the nearest integers."""
landing_wind(g::Group, thc::AbstractVector, t::Seed) =
    length(g.wind) == 4 ? Float64.(g.wind) : [round((t.theta0[k] - thc[k]) / (2π)) for k in 1:4]

"""sup over the box of ||Minv (theta' + 2 pi N - theta0_t)|| for seed models theta' (4 models)."""
function seed_landing(thp::Vector{TM{I64}}, N, t::Seed, Minv::Matrix{I64}, D::Dom)
    v = [addc(thp[k], TWOPI_I * iv(N[k]) - iv(t.theta0[k])) for k in 1:4]
    vecnorm_sup([lincomb(Minv[i, :], v) for i in 1:4], D)
end

# ---------------------------------------------------------------- seed-sphere transfers

struct XferCtx
    seeds::Vector{Seed}
    records::Vector{SRecord}
    minv::Vector{Union{Nothing,Matrix{I64}}}       # enclosures of Mth^{-1}, per seed
end
XferCtx(C::SeedCert) = XferCtx(C.seeds, C.records, Union{Nothing,Matrix{I64}}[inv_enclosure(s.Mth) for s in C.seeds])

"""T0: o_t = o_s, and all 16 vertices v of the box satisfy ||Mth_t^{-1}(theta0_s + Mth_s v + 2 pi N - theta0_t)|| < r_t.
E_t is convex, so the whole parallelotope theta_s(box) then lies in int E_t."""
function check_T0(s::Seed, lo, hi, g::Group, t::Seed, Minv::Matrix{I64})
    s.o == t.o || return false, "T0: orientation of the target differs", Inf
    wm = ntuple(j -> s.r * (lo[j] + hi[j]) / 2, 4)
    N = landing_wind(g, theta_f(s.theta0, s.Mth, wm), t)
    worst = 0.0
    for v in scaled_vertices(lo, hi, s.r)
        d = [iv(s.theta0[k]) + sum(iv(s.Mth[k, j]) * v[j] for j in 1:4) + TWOPI_I * iv(N[k]) - iv(t.theta0[k]) for k in 1:4]
        worst = max(worst, sup(sqrt(sum(x^2 for x in Minv * d))))
    end
    worst < t.r ? (true, "ok", worst) : (false, @sprintf("T0: %.6g >= r_t = %.6g", worst, t.r), worst)
end

const CORNER0 = Set(1:3)
"""The orientation of K = g . H_o at a corner inside rows and columns 0..2: its sides there are B and C up to
conjugation, transposition and order, so it is o for g in {id, conjT} and -o for g in {conj, T}; always matched."""
corner_orientation(o::Int, g::Symbol) = o * gsign(g) * (gtr(g) ? -1 : 1)

"""T1 at a corner inside rows and columns 0..2 (FORMAT.md §4, remark): the corner block of Q is
(0 0 0; 0 theta1 theta2; 0 theta3 theta4) exactly (each entry in the representative nearest P + U w), so theta' is an
affine function of w and the landing is checked at the 16 vertices (convexity), with no Taylor model.  The sides are
those of H_{o_s} itself, which exists with orientation o_s and matched for every point of the ball by C1."""
function check_T1_corner(s::Seed, lo, hi, g::Group, t::Seed, Minv::Matrix{I64})
    corner_orientation(s.o, g.g) == t.o || return false, "T1: orientation at the corner != o_t", Inf
    wm = ntuple(j -> s.r * (lo[j] + hi[j]) / 2, 4)
    thc = theta_f(s.theta0, s.Mth, wm)
    pos = ((2, 2), (2, 3), (3, 2), (3, 3))
    kq = [round((s.P[6(a-1)+b] + sum(s.U[6(a-1)+b, j] * wm[j] for j in 1:4) - thc[m]) / (2π)) for (m, (a, b)) in enumerate(pos)]
    function phases(v)          # the 6 x 6 phase matrix (only the corner block is used), interval entries
        X = fill(iv(0.0), 6, 6)
        for (m, (a, b)) in enumerate(pos)
            X[a, b] = iv(s.theta0[m]) + sum(iv(s.Mth[m, j]) * v[j] for j in 1:4) + TWOPI_I * iv(kq[m])
        end
        gact(X, g.g)
    end
    thp_c = corner_seed(phases(ntuple(j -> iv(wm[j]), 4)), g.rows, g.cols)
    N = landing_wind(g, mid.(thp_c), t)
    worst = 0.0
    for v in scaled_vertices(lo, hi, s.r)
        thp = corner_seed(phases(v), g.rows, g.cols)
        d = [thp[k] + TWOPI_I * iv(N[k]) - iv(t.theta0[k]) for k in 1:4]
        worst = max(worst, sup(sqrt(sum(x^2 for x in Minv * d))))
    end
    worst < t.r ? (true, "ok", worst) : (false, @sprintf("T1: landing %.6g >= r_t = %.6g", worst, t.r), worst)
end

"""T1 (general corner): with K = g . H_{o_s}(theta), theta in the box (Taylor models of the representative Q): the
corner seed of K at (I, J) lands in int E_t, and the sides of K there have orientation o_t and are matched."""
function check_T1(Q::Vector{TM{I64}}, D::Dom, g::Group, t::Seed, Minv::Matrix{I64})
    K = gact(mat6(Q), g.g)
    thp = corner_seed(K, g.rows, g.cols)
    N = landing_wind(g, [mid(x.c) for x in thp], t)
    land = seed_landing(thp, N, t, Minv, D)
    land < t.r || return false, @sprintf("T1: landing %.6g >= r_t = %.6g", land, t.r), land
    Bh, Bv = corner_blocks(K, g.rows, g.cols)
    imsign(psi_model(Bh, D), D) == t.o || return false, "T1: orientation of K's horizontal side != o_t", land
    imsign(psi_model(Bv, D), D) == -t.o || return false, "T1: K's vertical side not matched", land
    true, "ok", land
end

"""pi(X)_ab = X[rows[a], cols[b]]."""
permute6(X::AbstractMatrix, rows, cols) = [X[rows[a], cols[b]] for a in 1:6, b in 1:6]

"""h of a 6 x 6 matrix of models (row means, column means and the total mean removed), in interval coefficients."""
function hproj_models(Z::Matrix{TM{I64}})
    s6 = iv(1.0) / iv(6.0); s36 = iv(1.0) / iv(36.0)
    rs = [reduce(+, Z[a, :]) for a in 1:6]; cs = [reduce(+, Z[:, b]) for b in 1:6]
    tot = reduce(+, rs)
    [Z[a, b] - scale(rs[a], s6) - scale(cs[b], s6) + scale(tot, s36) for a in 1:6, b in 1:6]
end

"""Winding for a record target: the stored one, or the existing checker's choice (dephasing, then rounding)."""
record_wind(g::Group, D6::Matrix{Float64}) =
    length(g.wind) == 36 ? [Float64(g.wind[6(a-1)+b]) for a in 1:6, b in 1:6] : IA.choose_winding(D6)[1]

"""T2: sup over the box of ||hor(pi(g . Q) + 2 pi N - P_t)|| < R_t.  The polynomial part is projected and bounded by
vecnorm_sup; the remainders enter as ||(r_e)||_2, since ||hor(e)|| <= ||e||."""
function check_T2(Q::Vector{TM{I64}}, D::Dom, g::Group, rec::IA.Rec)
    A = permute6(gact(mat6(Q), g.g), g.rows, g.cols)
    Pt = rec.P
    N = record_wind(g, [mid(A[a, b].c) - Pt[a, b] for a in 1:6, b in 1:6])
    Z = [addc(polypart(A[a, b]), TWOPI_I * iv(N[a, b]) - iv(Pt[a, b])) for a in 1:6, b in 1:6]
    rem = sup(sqrt(sum(iv(A[a, b].r)^2 for a in 1:6, b in 1:6)))
    val = sup(iv(vecnorm_sup(vec(permutedims(hproj_models(Z))), D)) + iv(rem))
    val < rec.R ? (true, "ok", val) : (false, @sprintf("T2: %.6g >= R_t = %.6g", val, rec.R), val)
end

"""Check one seed-sphere box (u-box [lo, hi]) of group g, without splitting.  rec_ok(t): record t passed Step 3."""
function check_seed_box(s::Seed, root::BoxMap, g::Group, lo, hi, X::XferCtx, rec_ok::Function)
    if g.kind in (:T0, :T1)
        (0 <= g.target < length(X.seeds)) || return false, "$(g.kind): no such seed", Inf
        Mi = X.minv[g.target+1]; Mi === nothing && return false, "$(g.kind): target Mth not invertible", Inf
        t = X.seeds[g.target+1]
        g.kind == :T0 && return check_T0(s, lo, hi, g, t, Mi)
        (Set(g.rows) == CORNER0 && Set(g.cols) == CORNER0) && return check_T1_corner(s, lo, hi, g, t, Mi)
    elseif g.kind == :T2
        (0 <= g.target < length(X.records)) || return false, "T2: no such record", Inf
        rec_ok(g.target) || return false, "T2: target record did not pass Step 3", Inf
    end
    wc, h = scaled_dom(lo, hi, s.r)
    wcm = ntuple(j -> mid(wc[j]), 4)
    bm = box_map(s.theta0, s.Mth, s.o, s.P, wc, h, guess_at(root, wcm)...)
    bm.ok || return false, string(g.kind) * ": " * bm.why, Inf
    Q = representative(bm.Q, s.P, s.U, wc)
    D = Dom(h)
    g.kind == :T1 ? check_T1(Q, D, g, X.seeds[g.target+1], X.minv[g.target+1]) : check_T2(Q, D, g, X.records[g.target+1].rec)
end

"""Check a box, splitting it into halves (same target) where the whole box fails."""
function check_with_split(f::Function, lo, hi, depth::Int, split_depth::Int, stats)
    ok, msg, val = f(lo, hi)
    stats[1] += 1
    ok && return true, msg, val
    depth < split_depth || return false, msg, val
    stats[2] += 1
    worst = 0.0
    for (lo2, hi2) in split_box(lo, hi)
        ok2, msg2, v2 = check_with_split(f, lo2, hi2, depth + 1, split_depth, stats)
        ok2 || return false, msg2, v2
        worst = max(worst, v2)
    end
    true, "ok (split)", worst
end

# ---------------------------------------------------------------- coverage by dyadic boxes (FORMAT.md §4)

"""Top-down traversal from the level-0 box: a box is covered if it is listed, or if it certainly misses the region,
or if all 16 children are covered.  Below the deepest listed level nothing more can be listed, so a box there that
meets the region is a gap.  Returns (covered, nodes visited)."""
function dyadic_covered(listed::Set{NTuple{5,Int}}, misses::Function)
    maxm = isempty(listed) ? 0 : maximum(b[1] for b in listed)
    stack = [(0, 0, 0, 0, 0)]
    nodes = 0
    while !isempty(stack)
        b = pop!(stack); nodes += 1
        b in listed && continue
        misses(ubox(b)...) && continue
        b[1] < maxm || return false, nodes
        m = b[1] + 1
        for ch in 0:15
            push!(stack, (m, ntuple(a -> 2b[a+1] + ((ch >> (a - 1)) & 1), 4)...))
        end
    end
    true, nodes
end

"""Does the u-box certainly miss the unit sphere?"""
function misses_unit_sphere(lo, hi)
    lo2 = iv(0.0); hi2 = iv(0.0)
    for j in 1:4
        a = iv(lo[j]); b = iv(hi[j])
        lo2 += lo[j] > 0 ? a^2 : hi[j] < 0 ? b^2 : iv(0.0)
        hi2 += max(a^2, b^2)
    end
    inf(lo2) > 1 || sup(hi2) < 1
end

"""Does the box eta in s [lo, hi] certainly miss the shell {R^2 - n^2 <= ||T eta||^2 <= R^2}?"""
function misses_shell(lo, hi, s::Float64, Ti::Matrix{I64}, R::Float64, n::Float64)
    zc, h = scaled_dom(lo, hi, s)
    up = maximum(sup(sqrt(sum((sum(Ti[e, j] * v[j] for j in 1:4))^2 for e in 1:36))) for v in scaled_vertices(lo, hi, s))
    lo2 = iv(0.0)
    for e in 1:36
        x = sum(Ti[e, j] * zc[j] for j in 1:4)
        lo2 += max(iv(0.0), iv(mig(x)) - sum(iv(mag(Ti[e, j])) * iv(h[j]) for j in 1:4))^2
    end
    inner = iv(R)^2 - iv(n)^2
    inf(sqrt(lo2)) > R || (inf(inner) > 0 && up^2 < inf(inner))
end

# ---------------------------------------------------------------- C2 for a seed ball

struct C2Result
    ok::Bool
    msg::String
    nbox::Int
    counts::Dict{Symbol,Int}      # boxes per kind
    nchecks::Int                  # box checks run (including split halves)
    nsplit::Int
    worst::Dict{Symbol,Float64}   # worst landing value per kind (T0, T1: ||w_t|| vs r_t; T2, rec: vs R_t; T1p)
    cover_nodes::Int
    seconds::Float64
end

function check_c2_seed(s::Seed, X::XferCtx, rec_ok::Function; split_depth::Int=2)
    t0 = time()
    counts = Dict(:T0 => 0, :T1 => 0, :T2 => 0); worst = Dict(:T0 => 0.0, :T1 => 0.0, :T2 => 0.0)
    nb = sum(length(g.boxes) for g in s.groups; init=0)
    res(ok, msg, st=[0, 0], cn=0) = C2Result(ok, msg, nb, counts, st[1], st[2], worst, cn, time() - t0)
    listed = Set{NTuple{5,Int}}(b for g in s.groups for b in g.boxes)
    cov, cn = dyadic_covered(listed, misses_unit_sphere)
    cov || return res(false, "the boxes do not cover the sphere ||w|| = r", [0, 0], cn)
    root = root_predictor(s)
    root === nothing && return res(false, "no float side solution at theta0", [0, 0], cn)
    st = [0, 0]
    for (gi, g) in enumerate(s.groups)
        f = (lo, hi) -> check_seed_box(s, root, g, lo, hi, X, rec_ok)
        for b in g.boxes
            ok, msg, val = check_with_split(f, ubox(b)..., 0, g.kind == :T0 ? 0 : split_depth, st)
            ok || return res(false, "group $(gi-1) ($(g.kind) -> $(g.target)), box $b: " * msg, st, cn)
            counts[g.kind] += 1; worst[g.kind] = max(worst[g.kind], val)
        end
    end
    res(true, "ok", st, cn)
end

# ---------------------------------------------------------------- C2 for a record (rec and T1' boxes)

"""Rigorous lower bound of lambda_min(G) for an exact rational symmetric G: lambda = (1 - 1e-9) x the float estimate,
accepted if G - lambda I has an exact LDL^T factorisation with positive pivots; else the Gershgorin bound."""
function lambda_min_lower(G::Matrix{Rational{BigInt}})
    lf = eigmin(Symmetric(Float64.(G)))
    if lf > 0
        lam = Rational{BigInt}(lf * (1 - 1e-9))
        A = G - lam * I
        n = size(A, 1); ok = true
        for k in 1:n
            A[k, k] > 0 || (ok = false; break)
            for i in k+1:n
                f = A[i, k] / A[k, k]
                for j in k:n
                    A[i, j] -= f * A[k, j]
                end
            end
        end
        ok && return lam
    end
    IA.gershgorin_exact(G)[2]
end

struct RecCtx
    Ti::Matrix{I64}      # the exact frame, enclosed
    n::Float64           # normal bound (radians)
    rHt::Float64         # rigorous upper bound of max ||eta|| on {||T eta|| <= R}
end

function RecCtx(sr::SRecord, nb::IA.NormalBound)
    G = IA.gram_exact(nb.T36)
    lam = lambda_min_lower(G)
    rHt = lam > 0 ? sup(iv(sr.rec.R) / sqrt(IA.ivq(lam))) : Inf
    RecCtx(IA.frame_interval(nb.T36), nb.n, rHt)
end

"""The corner map L (4 x 36, entries 0, +-1) of the ordered corner (I, J): theta' = L vec(X), row-major."""
function corner_L(I, J)
    L = zeros(4, 36)
    at(a, b) = 6(a - 1) + b
    for (k, (a, b)) in enumerate(((2, 2), (2, 3), (3, 2), (3, 3)))
        L[k, at(I[a], J[b])] += 1; L[k, at(I[a], J[1])] -= 1; L[k, at(I[1], J[b])] -= 1; L[k, at(I[1], J[1])] += 1
    end
    L
end
"""g acting on a row-major 36-vector of phases, as a signed permutation matrix."""
function g_matrix(g::Symbol)
    G = zeros(36, 36)
    for a in 1:6, b in 1:6
        G[6(a-1)+b, gtr(g) ? 6(b - 1) + a : 6(a - 1) + b] = gsign(g)
    end
    G
end

"""Phase models of P + T eta on an eta-box (centre zc, an interval vector), with per-entry remainder rem."""
rec_phase_models(P::Matrix{Float64}, Ti::Matrix{I64}, zc, rem::Float64) =
    [TM{I64}(iv(P[a, b]) + sum(Ti[6(a-1)+b, j] * zc[j] for j in 1:4), ntuple(j -> Ti[6(a-1)+b, j], 4),
             ntuple(_ -> iv(0.0), 10), rem) for a in 1:6 for b in 1:6]

"""T1': for every K = e^{i(P + T eta + nu)}, eta in the box, ||nu|| <= n: the corner seed of g . K at (I, J) lands in
int E_t, and the sides of g . K there have orientation o_t and are matched.  The models carry the per-entry remainder
|nu_e| <= n (for Psi); the landing adds ||Minv_t L g||_2 n for the nu part of theta' (only ||nu|| <= n is used)."""
function check_T1p(sr::SRecord, rc::RecCtx, lo, hi, g::Group, t::Seed, Minv::Matrix{I64})
    zc, h = scaled_dom(lo, hi, sr.eta_scale)
    D = Dom(h)
    K = gact(mat6(rec_phase_models(sr.rec.P, rc.Ti, zc, rc.n)), g.g)
    thp = corner_seed(map(polypart, K), g.rows, g.cols)
    N = landing_wind(g, [mid(x.c) for x in thp], t)
    land0 = seed_landing(thp, N, t, Minv, D)
    ML = Minv * iv.(corner_L(g.rows, g.cols) * g_matrix(g.g))
    land = sup(iv(land0) + iv(IA.opnorm_upper(ML)) * iv(rc.n))
    land < t.r || return false, @sprintf("T1': landing %.6g >= r_t = %.6g", land, t.r), land
    Bh, Bv = corner_blocks(K, g.rows, g.cols)
    imsign(psi_model(Bh, D), D) == t.o || return false, "T1': orientation of K's horizontal side != o_t", land
    imsign(psi_model(Bv, D), D) == -t.o || return false, "T1': K's vertical side not matched", land
    true, "ok", land
end

"""rec: sup over eta in the box of ||hor(pi(g . (P_s + T eta)) + 2 pi N - P_t)|| + n_s < R_t (COVERAGE.md lemma).
The map is affine in eta, so its norm is largest at a vertex."""
function check_rec(sr::SRecord, rc::RecCtx, lo, hi, g::Group, dst::IA.Rec)
    Ps = permute6(gact(sr.rec.P, g.g), g.rows, g.cols)
    N = record_wind(g, Ps .- dst.P)
    worst = 0.0
    for v in scaled_vertices(lo, hi, sr.eta_scale)
        X = [iv(sr.rec.P[a, b]) + sum(rc.Ti[6(a-1)+b, j] * v[j] for j in 1:4) for a in 1:6, b in 1:6]
        Z = permute6(gact(X, g.g), g.rows, g.cols) .+ TWOPI_I .* iv.(N) .- iv.(dst.P)
        worst = max(worst, sup(sqrt(sum(x^2 for x in IA.hproj(Z)))))
    end
    val = sup(iv(worst) + iv(rc.n))
    val < dst.R ? (true, "ok", val) : (false, @sprintf("rec: %.6g >= R_t = %.6g", val, dst.R), val)
end

function check_c2_record(sr::SRecord, nb::IA.NormalBound, X::XferCtx, rec_ok::Function; split_depth::Int=2)
    t0 = time()
    counts = Dict(:rec => 0, :T1p => 0); worst = Dict(:rec => 0.0, :T1p => 0.0)
    nbx = sum(length(g.boxes) for g in sr.groups; init=0)
    res(ok, msg, st=[0, 0], cn=0) = C2Result(ok, msg, nbx, counts, st[1], st[2], worst, cn, time() - t0)
    rc = RecCtx(sr, nb)
    sr.eta_scale >= rc.rHt || return res(false, @sprintf("eta_scale %.6g < r_H %.6g: the cube may not contain the shell", sr.eta_scale, rc.rHt))
    listed = Set{NTuple{5,Int}}(b for g in sr.groups for b in g.boxes)
    cov, cn = dyadic_covered(listed, (lo, hi) -> misses_shell(lo, hi, sr.eta_scale, rc.Ti, sr.rec.R, rc.n))
    cov || return res(false, "the boxes do not cover the shell", [0, 0], cn)
    st = [0, 0]
    for (gi, g) in enumerate(sr.groups)
        if g.kind == :rec
            (0 <= g.target < length(X.records)) || return res(false, "group $(gi-1): no such record", st, cn)
            rec_ok(g.target) || return res(false, "group $(gi-1): target record $(g.target) did not pass Step 3", st, cn)
            f = (lo, hi) -> check_rec(sr, rc, lo, hi, g, X.records[g.target+1].rec)
        else
            (0 <= g.target < length(X.seeds)) || return res(false, "group $(gi-1): no such seed", st, cn)
            Mi = X.minv[g.target+1]
            Mi === nothing && return res(false, "group $(gi-1): target Mth not invertible", st, cn)
            f = (lo, hi) -> check_T1p(sr, rc, lo, hi, g, X.seeds[g.target+1], Mi)
        end
        for b in g.boxes
            ok, msg, val = check_with_split(f, ubox(b)..., 0, split_depth, st)
            ok || return res(false, "group $(gi-1) ($(g.kind) -> $(g.target)), box $b: " * msg, st, cn)
            counts[g.kind] += 1; worst[g.kind] = max(worst[g.kind], val)
        end
    end
    res(true, "ok", st, cn)
end

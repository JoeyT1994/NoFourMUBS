# Boundary transfers on spherical caps (return ZC, proof/theorems/ZC_cap_transfers: cap_theory.md, CAP_FORMAT.md).
#
# A cap is {x : ||x|| = 1, v.x >= h} in x = w / r (v four integers, 0 < h < ||v||).  For a T0/T1 transfer the target
# quantity is a quadratic polynomial in w plus the normal term; on the cap it is enclosed by the affine model at the
# cap-rim anchor c = r h v / (v.v) with error ||A H2|| Delta^2/2 + (normal error), Delta^2 = r^2 (1 - h^2/(v.v)).
# Normalised by the target radius it is d + F x, and the witness (lambda, mu, s, optional a) certifies ||d + F x||^2 <= s
# on the cap through the 5 x 5 matrix
#     [ lambda I - F^T F - sym(e a^T)      -F^T d - (mu e - t a)/2 ]
#     [ *                                   s - ||d||^2 + t mu - lambda ]
# positive definite (strict interval LDL), mu >= ||a||; then r_t (1 - sqrt s) > error.  The Psi signs: the linear
# cap minimum of the gradient term minus the quadratic and normal remainders and 36 (phase distance)^2.  The caps cover
# S^3 exactly when every vertex of {y : v_i.y <= h_i} lies in the closed unit ball: the certificate lists the facets of
# the polar hull (four caps each, exact dual vertex), each strictly supporting, with every triangular ridge shared by
# exactly two facets (a complete enumeration), all checked in integer arithmetic.

# ---------------------------------------------------------------- exact coverage of S^3

"""An exact binary64 hex string (or integer) as a rational."""
cap_rational(x) = x isa Integer ? Rational{BigInt}(x) : Rational{BigInt}(parse(Float64, x))

function cap_rows(caps)
    rows = Vector{NTuple{5,BigInt}}()
    for c in caps
        v = c["v"]; length(v) == 4 && all(x -> x isa Integer, v) || error("cap: v must be four integers")
        rr = [Rational{BigInt}.(v); cap_rational(c["h"])]
        rr[5] > 0 || error("cap: positive threshold required")
        den = lcm(denominator.(rr)); row = [numerator(a) * (den ÷ denominator(a)) for a in rr]
        g = gcd(abs.(row)); row = row .÷ g
        any(!iszero, row[1:4]) || error("cap: zero normal")
        push!(rows, Tuple(row))
    end
    rows
end

det4(M) = sum(sign_perm(p) * prod(M[i][p[i]] for i in 1:4) for p in PERMS4)
const PERMS4 = [p for p in Iterators.product(1:4, 1:4, 1:4, 1:4) if allunique(p)]
sign_perm(p) = (-1)^count(p[i] > p[j] for i in 1:4 for j in i+1:4)

"""The exact dual vertex of the facet on caps vs (0-based): Cramer's rule, denominator > 0."""
function cap_dual_vertex(rows, vs)
    M = [collect(rows[i+1][1:4]) for i in vs]; rhs = [rows[i+1][5] for i in vs]
    den = det4(M); den == 0 && return nothing
    num = [det4([[k == c ? rhs[i] : M[i][c] for c in 1:4] for i in 1:4]) for k in 1:4]
    den < 0 && (den = -den; num = -num)
    num, den
end

"""An exact outward dyadic box tree over the points q_i = row_i[1:4] / row_i[5] (scale 2^32): a subtree is skipped
only when an exact integer upper bound already proves q . num < den for all its points (return ZC2a)."""
struct CapTree
    lo::Vector{NTuple{4,BigInt}}; hi::Vector{NTuple{4,BigInt}}
    nodes::Vector{Tuple{NTuple{4,BigInt},NTuple{4,BigInt},Int,Int,Vector{Int}}}   # (lower, upper, left, right, leaf indices)
end
function CapTree(rows; leaf=8)
    S = BigInt(2)^32
    lo = [Tuple(fld(r[k] * S, r[5]) for k in 1:4) for r in rows]; hi = [Tuple(cld(r[k] * S, r[5]) for k in 1:4) for r in rows]
    nodes = Tuple{NTuple{4,BigInt},NTuple{4,BigInt},Int,Int,Vector{Int}}[]
    function build(ix)
        L = Tuple(minimum(lo[i][k] for i in ix) for k in 1:4); U = Tuple(maximum(hi[i][k] for i in ix) for k in 1:4)
        if length(ix) <= leaf
            push!(nodes, (L, U, 0, 0, ix)); return length(nodes)
        end
        ax = argmax([U[k] - L[k] for k in 1:4])
        sort!(ix, by = i -> lo[i][ax] + hi[i][ax]); h = length(ix) ÷ 2
        l = build(ix[1:h]); r = build(ix[h+1:end])
        push!(nodes, (L, U, l, r, Int[])); length(nodes)
    end
    build(collect(1:length(rows)))
    CapTree(lo, hi, nodes)
end
"""(true) if every non-member point is strictly supported: row[5] den - row[1:4] . num > 0; exact."""
function tree_supports(T::CapTree, rows, num, den, members)
    S = BigInt(2)^32; limit = den * S; stack = [length(T.nodes)]
    while !isempty(stack)
        L, U, l, r, ix = T.nodes[pop!(stack)]
        bound = sum((num[k] >= 0 ? U[k] : L[k]) * num[k] for k in 1:4)
        bound < limit && continue
        if l != 0
            push!(stack, l, r); continue
        end
        for i in ix
            (i - 1) in members && continue
            rows[i][5] * den - sum(rows[i][k] * num[k] for k in 1:4) > 0 || return false
        end
    end
    true
end

"""(ok, message): the caps cover S^3, by the exact polar-facet certificate: schema rational-s3-cap-cover-v1 (facets with
stored dual vertices) or rational-s3-cap-cover-index-v1 (index quadruples; each dual vertex rebuilt by Cramer's rule)."""
function cap_coverage(caps, cert)
    try
        sch = get(cert, "schema", "")
        (sch in ("rational-s3-cap-cover-v1", "rational-s3-cap-cover-index-v1") && get(cert, "dimension", 0) == 4) ||
            return false, "coverage: schema"
        compact = sch == "rational-s3-cap-cover-index-v1"
        rows = cap_rows(caps); n = length(rows)
        (n >= 5 && get(cert, "cap_count", -1) == n) || return false, "coverage: cap count"
        facets = cert["facets"]; isempty(facets) && return false, "coverage: no facets"
        tree = n >= 256 ? CapTree(rows) : nothing
        seen = Set{NTuple{4,Int}}(); ridges = Dict{NTuple{3,Int},Int}(); maxn = Rational{BigInt}(0)
        for f in facets
            vs = Tuple(sort(Int.(compact ? f : f["vertices"])))
            (length(vs) == 4 && allunique(vs) && all(0 .<= vs .< n)) || return false, "coverage: facet indices"
            vs in seen && return false, "coverage: duplicate facet"
            push!(seen, vs)
            det4([collect(rows[i+1][1:4]) for i in vs]) != 0 || return false, "coverage: dependent facet rows"
            if compact
                nd = cap_dual_vertex(rows, vs); nd === nothing && return false, "coverage: dependent facet rows"
                num, den = nd
            else
                num = BigInt.(f["numerator"]); den = BigInt(f["denominator"])
            end
            (length(num) == 4 && den > 0) || return false, "coverage: dual vertex"
            for i in vs
                rows[i+1][5] * den - sum(rows[i+1][k] * num[k] for k in 1:4) == 0 || return false, "coverage: dual vertex off an incident cap"
            end
            if tree === nothing
                for (j, row) in enumerate(rows)
                    (j - 1) in vs && continue
                    row[5] * den - sum(row[k] * num[k] for k in 1:4) > 0 || return false, "coverage: facet not strictly supporting"
                end
            else
                tree_supports(tree, rows, num, den, vs) || return false, "coverage: facet not strictly supporting"
            end
            for rd in ((vs[1], vs[2], vs[3]), (vs[1], vs[2], vs[4]), (vs[1], vs[3], vs[4]), (vs[2], vs[3], vs[4]))
                ridges[rd] = get(ridges, rd, 0) + 1
            end
            maxn = max(maxn, sum(num .^ 2) // den^2)
        end
        all(==(2), values(ridges)) || return false, "coverage: incomplete facet enumeration"
        maxn <= 1 || return false, "coverage: a polar vertex lies outside the unit ball"
        true, "ok"
    catch err
        false, "coverage: malformed (" * sprint(showerror, err)[1:min(end, 100)] * ")"
    end
end

# ---------------------------------------------------------------- one cap transfer

cap_num(x) = x isa Integer ? (BigInt(Float64(x)) == x ? iv(Float64(x)) : error("cap: integer not exact in binary64")) : iv(parse(Float64, x))
dotv(a, b) = sum(a[i] * b[i] for i in eachindex(a))

"""Lower bound of b.x over the cap ||x|| = 1, e.x >= t (the boundary formula only where its branch is certified)."""
function linear_cap_lower(b, e, t)
    all(x -> x == 0, b) && return iv(0.0)
    b2 = dotv(b, b); inf(b2) > 0 || return -sqrt(iv(sup(b2)))
    bn = sqrt(b2); be = dotv(b, e)
    inf(-be - t * bn) > 0 && return -bn
    if sup(-be - t * bn) < 0
        tr2 = iv(max(0.0, sup(b2 - be^2)))
        return t * be - sqrt((1 - t^2) * tr2)
    end
    -bn
end

"""Strict interval LDL of a symmetric interval matrix: positive definite?"""
function ldl_pd(M)
    n = size(M, 1); L = zeros(I64, n, n); d = I64[]
    for i in 1:n
        di = M[i, i] - sum((L[i, k]^2 * d[k] for k in 1:i-1); init=iv(0.0))
        inf(di) > 0 || return false
        push!(d, di)
        for j in i+1:n
            L[j, i] = (M[j, i] - sum((L[j, k] * L[i, k] * d[k] for k in 1:i-1); init=iv(0.0))) / di
        end
    end
    true
end

"""The output-weighted normal bounds for an output C = A X (ZT_REPORT (25)-(29); ZC weighted.py), from the seed
model's centre tensors: T0 = min(b0 + k0 tau + (d + L3 x^2 base) tau^2/2 + L3 x^3 tau^3/6, ||C|| tau) bounds ||C z||
and T2 = min(b2 + m2 tau + 2 m1 Z1 + mzz Z1^2 + k Z2, ||C|| Z2) bounds ||C D^2 z||."""
function seed_weighted(m, C)
    key = objectid(m)
    pre = lock(PATCH_LOCK) do; get(WEIGHT_CACHE, key, nothing); end
    if pre === nothing
        nn = size(m.X, 2)
        kr = zeros(I64, nn, 90); ki = zeros(I64, nn, 90)
        for i in 1:nn, a in 1:90
            p = (a - 1) ÷ 6 + 1
            qv = complex(m.W[i, p], -m.W[i, 15+p]) * m.zz[a]
            kr[i, a] = real(qv); ki[i, a] = imag(qv)
        end
        triples = [(i, j, k) for i in 1:4 for j in 1:4 for k in 1:4]
        quads = [(i, j, k, l) for i in 1:4 for j in 1:4 for k in 1:4 for l in 1:4]
        p3r = zeros(I64, 90, 64); p3i = zeros(I64, 90, 64); p4r = zeros(I64, 90, 256); p4i = zeros(I64, 90, 256)
        a2r = zeros(I64, 90, 16nn); a2i = zeros(I64, 90, 16nn); w5 = I64[]; w3 = I64[]
        for a in 1:90
            sa = m.sd[a, :]; ta = [m.td[a, 4(i-1)+j] for i in 1:4, j in 1:4]
            for (cc, (i, j, k)) in enumerate(triples)
                p3r[a, cc] = -(ta[i, j] * sa[k] + ta[i, k] * sa[j] + ta[j, k] * sa[i]); p3i[a, cc] = -sa[i] * sa[j] * sa[k]
            end
            for (cc, (i, j, k, l)) in enumerate(quads)
                p4r[a, cc] = sa[i] * sa[j] * sa[k] * sa[l] - ta[i, j] * ta[k, l] - ta[i, k] * ta[j, l] - ta[i, l] * ta[j, k]
                p4i[a, cc] = -(ta[i, j] * sa[k] * sa[l] + ta[i, k] * sa[j] * sa[l] + ta[i, l] * sa[j] * sa[k] +
                               ta[j, k] * sa[i] * sa[l] + ta[j, l] * sa[i] * sa[k] + ta[k, l] * sa[i] * sa[j])
            end
            for i in 1:4, j in 1:4, k in 1:nn
                cc = ((i - 1) * 4 + (j - 1)) * nn + k
                a2r[a, cc] = -ta[i, j] * m.dx[a, k]; a2i[a, cc] = -sa[i] * sa[j] * m.dx[a, k]
            end
            sn = sqrt(sum(v^2 for v in sa)); tn = nrm(ta); an = sn + m.r * tn
            push!(w5, an^5 + 10tn * an^3 + 15tn^2 * an)
            push!(w3, sqrt(sum(m.dx[a, k]^2 for k in 1:nn)) * (an^3 + 3tn * an))
        end
        pre = (kr = kr, ki = ki, R3 = kr * p3r - ki * p3i, R4 = kr * p4r - ki * p4i, A2 = kr * a2r - ki * a2i,
               mUX = m.W * wb_d2(m.zz, m.sd, m.dx), mXX = m.W * wb_d2(m.zz, m.dx, m.dx), w5 = w5, w3 = w3)
        lock(PATCH_LOCK) do; WEIGHT_CACHE[key] = pre; end
    end
    r = m.r; tau = m.tau; x = m.x; u = m.u; beta = m.beta
    c = nrm(C * pre.mUX); d = nrm(C * pre.mXX); t3 = nrm(C * pre.R3); t4 = nrm(C * pre.R4); a2 = nrm(C * pre.A2)
    L3 = 2 * sqrt(iv(6.0)) * nrm(C * m.W)
    ckr = C * pre.kr; cki = C * pre.ki
    L5 = iv(0.0); L3a = iv(0.0)
    for a in 1:90
        amp = nrm(hcat(ckr[:, a], -cki[:, a]))
        L5 += amp * pre.w5[a]; L3a += amp * pre.w3[a]
    end
    b0 = t3 * r^3 / 6 + t4 * r^4 / 24 + L5 * r^5 / 120
    base = u * r + beta * r^2 / 2
    k0 = c * r + a2 * r^2 / 2 + L3a * r^3 / 6
    raw0 = b0 + k0 * tau + (d + L3 * x^2 * base) * tau^2 / 2 + L3 * x^3 * tau^3 / 6
    L2 = 2 * sqrt(iv(3.0)) * nrm(C * m.W)
    b2 = t3 * r + t4 * r^2 / 2 + L5 * r^3 / 6
    slope = u + beta * r
    k = k0 + (d + L3 * x^2 * base) * tau + L3 * x^3 * tau^2 / 2
    m1 = c + a2 * r + L3a * r^2 / 2 + L3 * x^2 * slope * tau
    m2 = L3 * x * slope^2 + L2 * x * beta
    mzz = d + L3 * x^2 * (base + x * tau)
    raw2 = b2 + m2 * tau + 2 * m1 * m.Z1 + mzz * m.Z1^2 + k * m.Z2
    cn = nrm(C)
    (T0 = iv(min(sup(raw0), sup(cn * tau))), T2 = iv(min(sup(raw2), sup(cn * m.Z2))))
end

"""Row orthogonality at a phase enclosure q (36): the 30 residuals (15 row pairs, real and imaginary) and their Jacobian."""
function phase_resjac(q)
    ee = wb_cexp.(q)
    zz = [ee[6i+k+1] * conj(ee[6l+k+1]) for (i, l) in WB_PAIRS for k in 0:5]
    sm = [sum(zz[6(p-1)+1:6p]) for p in 1:15]
    [real.(sm); imag.(sm)], wb_realjac(zz)
end

"""Enclosures of Q(c), DQ(c) at a point c of the ball (ZT's centre_jet): a float Newton proposal for the normal
coordinate, its residual through the whole-ball contraction (eta = ||W F|| / (1 - q)), and DQ by the implicit
function theorem on the resulting enclosure."""
function centre_jet(m, c)
    Hc = slice4(m.H2, c)
    qp = m.Qbase .+ m.U * c .+ (Hc * c) ./ 2; qph = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2; P1 = m.U .+ Hc
    nn = size(m.X, 2); zm = zeros(typeof(mid(m.tau)), nn)
    resjac = phase_resjac
    for _ in 1:(I64 == Interval{Float64} ? 5 : 8)
        F, J = resjac(qp .+ m.X * iv.(zm))
        zm = zm - mid.(m.W * J * m.X) \ mid.(m.W * F)
    end
    sqrt(sum(zm .^ 2)) < inf(m.tau) || error("centre proposal outside the normal tube")
    F, _ = resjac(qp .+ m.X * iv.(zm))
    eta = sup(sqrt(sum(iv(mag(f))^2 for f in m.W * F)) / (1 - m.q))
    zc = [interval(zm[i] - eta, zm[i] + eta) for i in 1:nn]
    _, Jc = resjac(qp .+ m.X * zc)
    Ki = wb_inv(m.W * Jc * m.X)
    Ki === nothing && error("centre jet: W J X not certified invertible")
    Dz = -(Ki * (m.W * Jc * P1))
    qph .+ m.X * zc, P1 .+ m.X * Dz
end

const WEIGHT_CACHE = Dict{UInt,Any}()
const CAP_DEBUG = Ref(false)
const MI_CACHE = Dict{Int,Any}()

"""(ok, message): one cap of a T0/T1 group, in the polynomial, local (centre jet at the rim anchor) or local_sphere
(centre jet at r e, Delta^2 = 2 r^2 (1 - t)) mode of CAP_FORMAT.md."""
function check_cap_jl(m, s, g::Group, t::Seed, Mi, cap; edge::Bool=false)
    mode = get(cap, "mode", "polynomial")
    mode in ("polynomial", "local", "local_sphere") || return false, "cap: unknown mode"
    v = cap["v"]; (length(v) == 4 && all(x -> x isa Integer, v)) || return false, "cap: v"
    vv = iv.(Float64.(v)); n2 = dotv(vv, vv); h = cap_num(cap["h"])
    (inf(h) > 0 && sup(h^2) < inf(n2)) || return false, "cap: 0 < h < ||v|| required"
    nv = sqrt(n2); e = vv ./ nv; tt = h / nv
    r = m.r; c = vv .* (r * h / n2); delta2 = r^2 * (1 - h^2 / n2)
    mode == "local_sphere" && (c = e .* r; delta2 = 2 * r^2 * (1 - tt))
    delta = sqrt(delta2)
    lam = cap_num(get(cap, "lambda", get(cap, "lambda_", 0))); mu = cap_num(cap["mu"]); sv = cap_num(cap["s"])
    av = [cap_num(x) for x in get(cap, "multiplier_vec", [0, 0, 0, 0])]
    (inf(mu) >= 0 && inf(sv) >= 0 && inf(mu^2 - dotv(av, av)) >= 0) || return false, "cap: multiplier SOC"
    wt = get(cap, "weighted_target", false); wt isa Bool || return false, "cap: weighted_target"
    rt = iv(t.r)
    linear = !edge && (g.kind == :T0 || (Set(g.rows) == CORNER0 && Set(g.cols) == CORNER0))
    off = Mi * (TWOPI_I .* iv.(Float64.(g.wind[1:4])) .- iv.(t.theta0))
    if linear
        if g.kind == :T0
            t.o == s.o || return false, "cap: T0 orientation"
            a0 = Mi * collect(iv.(s.theta0)) .+ off; B0 = Mi * iv.(s.Mth)
        else
            so = s.o * (g.g in (:id, :conjT) ? 1 : -1)
            t.o == so || return false, "cap: corner symmetry orientation"
            Emb = zeros(I64, 36, 4)
            for (k, (i, j)) in enumerate(WB_SEEDS); Emb[6i+j+1, k] = iv(1.0); end
            LL = lcorner(g.rows, g.cols) * gmat36(g.g) * Emb
            a0 = Mi * LL * collect(iv.(s.theta0)) .+ off; B0 = Mi * LL * iv.(s.Mth)
        end
        d = a0 ./ rt; F = B0 .* (r / rt); eps = iv(0.0)
    else
        pgr = edge ? edge_group_cached(m, g, t, Mi) : patch_group_cached(m, s, g, t, Mi)
        pgr === nothing && return false, "cap: group setup"
        L = Mi * (lcorner(g.rows, g.cols) * gmat36(g.g)); AX = L * m.X
        # weighted target bounds: the seed model's T0/T2 (ZC), or the X-ball's tau_A and full weighted Hessian (ZC2a)
        W = !wt ? nothing : edge ? edge_weighted_cached(m, g, L) : seed_weighted(m, AX)
        if mode == "polynomial"
            hc = slice4(pgr.AH2, c)
            d = (pgr.AQ0 .+ pgr.off .- (hc * c) ./ 2) ./ rt
            F = (pgr.AU .+ hc) .* (r / rt)
            Hc = slice4(m.H2, c)
            qc = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2; dc = m.U .+ Hc
            eps = pgr.nAH2 * delta2 / 2 + (!wt ? nrm(AX) * m.tau : edge ? W.tau : W.T0)
        else
            qc, dc = edge ? edge_centre_jet(m, c) : centre_jet(m, c)
            bb = L * dc
            d = (L * qc .+ pgr.off .- bb * c) ./ rt
            F = bb .* (r / rt)
            eps = (!wt ? pgr.nAH2 + nrm(AX) * m.Z2 : edge ? W.hessian : pgr.nAH2 + W.T2) * delta2 / 2
        end
    end
    CAP_DEBUG[] && println("capdbg kind=$(g.kind) linear=$linear wt=$wt h=$(mid(h)) d=$(mid.(d)) F=$(mid.(F)) eps=$(sup(eps)) e=$(mid.(e))")
    G = transpose(F) * F; b = transpose(F) * d
    M5 = zeros(I64, 5, 5)
    for i in 1:4
        for j in 1:4
            M5[i, j] = (i == j ? lam : iv(0.0)) - G[i, j] - (e[i] * av[j] + av[i] * e[j]) / 2
        end
        M5[i, 5] = -b[i] - (mu * e[i] - tt * av[i]) / 2; M5[5, i] = M5[i, 5]
    end
    M5[5, 5] = sv - dotv(d, d) + tt * mu - lam
    if CAP_DEBUG[]
        Mf = Float64.(mid.(M5)); println("capdbg M5 mid eig=", eigvals(Symmetric(Mf)), " maxdiam=", maximum(diam.(M5)), " lam=$(mid(lam)) mu=$(mid(mu)) s=$(mid(sv)) a=$(mid.(av)) t=$(mid(tt))")
    end
    ldl_pd(M5) || return false, "cap: target PSD witness"
    inf(rt * (1 - sqrt(sv)) - eps) > 0 || return false, "cap: target remainder"
    linear && return true, "ok"
    for sd in pgr.sides
        xc = sd.S * qc
        f = iv(0.0); gr = zeros(I64, 9)
        for (cν, ν) in WB_SIG_TERMS
            ph = sum(ν[k] * xc[k] for k in 1:9)
            f += cν * sin(ph)
            for k in 1:9; gr[k] += cν * ν[k] * cos(ph); end
        end
        gt = reshape(gr, 1, 9)
        rb = sd.R * dc
        lin = gt * rb
        linv = [lin[1, j] * sd.want * r for j in 1:4]
        cst = sd.want * (f - sum(lin[1, j] * c[j] for j in 1:4))
        gRH = gt * sd.RH2; gh4 = [gRH[1, 4(i-1)+j] for i in 1:4, j in 1:4]
        if mode == "polynomial"
            eg = nrm(gh4) * delta2 / 2 + nrm(gt * sd.RX) * m.tau
            ep = sd.nRH2 * delta2 / 2 + sd.nRXt
        else
            eg = (nrm(gh4) + nrm(gt * sd.RX) * m.Z2) * delta2 / 2
            ep = (sd.nRH2 + nrm(sd.RX) * m.Z2) * delta2 / 2
        end
        pdist = nrm(rb) * delta + ep
        margin = cst + linear_cap_lower(linv, e, tt) - eg - 36 * pdist^2
        inf(margin) > 0 || return false, "cap: orientation"
    end
    true, "ok"
end

"""(ok, reason, margin): the 5 x 5 witness bounds ||d + F x|| <= sqrt(s) on the cap, and 1 - sqrt(s) - err > 0."""
function cap_witness_ok(d, F, e, tt, err, w)
    lam = cap_num(get(w, "lambda", get(w, "lambda_", 0))); mu = cap_num(w["mu"]); sv = cap_num(w["s"])
    av = [cap_num(x) for x in get(w, "multiplier_vec", [0, 0, 0, 0])]
    (inf(mu) >= 0 && inf(sv) >= 0 && inf(mu^2 - dotv(av, av)) >= 0) || return false, "multiplier SOC"
    G = transpose(F) * F; b = transpose(F) * d
    M5 = zeros(I64, 5, 5)
    for i in 1:4
        for j in 1:4
            M5[i, j] = (i == j ? lam : iv(0.0)) - G[i, j] - (e[i] * av[j] + av[i] * e[j]) / 2
        end
        M5[i, 5] = -b[i] - (mu * e[i] - tt * av[i]) / 2; M5[5, i] = M5[i, 5]
    end
    M5[5, 5] = sv - dotv(d, d) + tt * mu - lam
    ldl_pd(M5) || return false, "PSD witness"
    inf(1 - sqrt(sv) - err) > 0 || return false, "remainder"
    true, "ok"
end

"""(ok, message): one T3 cap (return ZC2b): over the whole cap, (a) the corner parameter p' lies in the X-ball's
ellipsoid, ||Mth_e^-1 p'|| < r_e, and (b) the source is within phase distance 3/20 of F6, each by its own 5 x 5 witness
on an affine predictor from the seed ball's model, with the remainders of T3_THEOREM.md: the Q remainders of the
composite output, and for y' = -2 Im Psi the signature remainder 72 ||M^-1 e_4|| D_R^2 (or the local-Hessian bound)."""
function check_cap_t3(m, s, g::Group, eb, Mie, cap)
    mode = get(cap, "mode", "polynomial")
    mode in ("polynomial", "local", "local_sphere") || return false, "T3 cap: unknown mode"
    v = cap["v"]; (length(v) == 4 && all(x -> x isa Integer, v)) || return false, "T3 cap: v"
    vv = iv.(Float64.(v)); n2 = dotv(vv, vv); h = cap_num(cap["h"])
    (inf(h) > 0 && sup(h^2) < inf(n2)) || return false, "T3 cap: 0 < h < ||v|| required"
    nv = sqrt(n2); e = vv ./ nv; tt = h / nv
    r = m.r; c = vv .* (r * h / n2); delta2 = r^2 * (1 - h^2 / n2)
    mode == "local_sphere" && (c = e .* r; delta2 = 2 * r^2 * (1 - tt))
    delta = sqrt(delta2)
    wt = get(cap, "weighted_target", false); wt isa Bool || return false, "T3 cap: weighted_target"
    psirem = get(cap, "psi_remainder", "global"); psirem in ("global", "local_hessian") || return false, "T3 cap: psi_remainder"
    al = cap["t3_alignment"]; arows = Int.(al["rows"]) .+ 1; acols = Int.(al["cols"]) .+ 1; awind = Int.(al["wind"])
    (sort(arows) == 1:6 && sort(acols) == 1:6 && length(awind) == 36) || return false, "T3 cap: alignment"
    rows3 = g.rows[1:3]; cols3 = g.cols[1:3]
    Gg = gmat36(g.g)
    L3 = (lcorner(rows3, cols3) * Gg)[1:3, :]
    off3 = [TWOPI_I * iv(Float64(g.wind[k])) - PI_I * iv(Float64((1, 2, 2)[k])) / 3 for k in 1:3]
    re = iv(eb.r); lc = sqrt(sum(Mie[i, 4]^2 for i in 1:4))
    Jc = [k for k in 1:6 if !(k in cols3)]
    S = zeros(I64, 9, 36)
    for (k, idx) in enumerate([6(i-1)+j for i in rows3 for j in Jc]); S[k, idx] = iv(1.0); end
    S = S * Gg
    P3 = [ivq((i == j ? 1 : 0) // 1 - 1 // 3) for i in 1:3, j in 1:3]
    R = [P3[(a-1)÷3+1, (b-1)÷3+1] * P3[(a-1)%3+1, (b-1)%3+1] for a in 1:9, b in 1:9] * S
    if mode == "polynomial"
        Hc = slice4(m.H2, c); qc = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2; dc = m.U .+ Hc
    else
        qc, dc = centre_jet(m, c)
    end
    nb(C, poly) = !wt ? nrm(C) * (poly ? m.tau : m.Z2) : (W = seed_weighted(m, C); poly ? W.T0 : W.T2)
    poly = mode == "polynomial"
    # Psi of the side block at the anchor, its gradient and Hessian
    xs = S * qc; f = iv(0.0); gr = zeros(typeof(f), 9); Hpsi = zeros(typeof(f), 9, 9)
    for (cν, ν) in WB_SIG_TERMS
        ph = sum(ν[k] * xs[k] for k in 1:9); sn, cs = sin(ph), cos(ph)
        f += cν * sn
        for k in 1:9; gr[k] += cν * ν[k] * cs; end
        for i in 1:9, j in 1:9; Hpsi[i, j] -= cν * sn * ν[i] * ν[j]; end
    end
    jac = vcat(L3, -2 * (reshape(gr, 1, 9) * R))
    pc = vcat(L3 * qc .+ off3, [-2 * f])
    A = Mie * jac; B = A * dc
    pd = (Mie * pc .- B * c) ./ re; pF = B .* (r / re)
    phess = nrm(A * m.H2) / re; pnorm = nb(A * m.X, poly) / re
    rh = nrm(R * m.H2); rn = nb(R * m.X, poly); slope = nrm(R * dc)
    H36 = [ivq((36 * (i == j) - 6 * ((i - 1) ÷ 6 == (j - 1) ÷ 6) - 6 * ((i - 1) % 6 == (j - 1) % 6) + 1) // 36) for i in 1:36, j in 1:36]
    Pm = zeros(I64, 36, 36)
    for a in 1:6, b in 1:6; Pm[6(a-1)+b, 6(arows[a]-1)+acols[b]] = iv(1.0); end
    D = H36 * Pm * Gg
    doff = H36 * [TWOPI_I * iv(Float64(awind[k])) - PI_I * iv(Float64(mod(((k - 1) ÷ 6) * ((k - 1) % 6), 6))) / 3 for k in 1:36]
    lim = iv(3.0) / 20
    DB = D * dc
    dd = (D * qc .+ doff .- DB * c) ./ lim; dF = DB .* (r / lim)
    dhess = nrm(D * m.H2) / lim; dnorm = nb(D * m.X, poly) / lim
    if poly
        D_R = slope * delta + rh * delta2 / 2 + rn
        perr = phess * delta2 / 2 + pnorm; derr = dhess * delta2 / 2 + dnorm
    else
        D_R = slope * delta + (rh + rn) * delta2 / 2
        perr = (phess + pnorm) * delta2 / 2; derr = (dhess + dnorm) * delta2 / 2
    end
    psierr = 72 * lc / re * D_R^2
    if psirem == "local_hessian"
        loc = lc / re * (nrm(Hpsi) + 24 * sqrt(iv(18.0)) * D_R) * D_R^2
        psierr = iv(min(sup(psierr), sup(loc)))
    end
    ok, msg = cap_witness_ok(pd, pF, e, tt, perr + psierr, cap["t3_parameter"])
    ok || return false, "T3 parameter " * msg
    ok, msg = cap_witness_ok(dd, dF, e, tt, derr, cap["t3_distance"])
    ok || return false, "T3 phase distance " * msg
    true, "ok"
end

const EDGE_MI = Dict{Int,Any}()

"""(ok, message, ncaps): every cap of a seed and the coverage of its sphere (returns ZC and ZC2b: T0, T1 and T3 caps,
one coverage certificate).  A T3 cap needs its target X-ball to have passed C1e and to lie in W's E_{1/5}."""
function check_seed_caps(s::Seed, X, caps)
    m = patch_model(s)
    m === nothing && return false, "caps: the whole-ball model does not certify", 0
    cl = caps["caps"]
    for (k, cap) in enumerate(cl)
        gi = cap["group_index"]
        (gi isa Integer && 0 <= gi < length(s.groups)) || return false, "caps: no such group", k
        g = s.groups[gi+1]
        if g.kind == :T3
            haskey(cap, "t3_parameter") || return false, "caps: a T3 group needs a T3 cap", k
            (0 <= g.target < length(X.edges)) || return false, "caps: T3 target", k
            X.edge_leaves[g.target+1] === nothing && return false, "caps: the T3 target X-ball did not pass C1e", k
            eb = X.edges[g.target+1]
            edge_in_W(eb) || return false, "caps: the X-ball's ellipsoid is not certified inside W's E_1/5", k
            Mie = lock(PATCH_LOCK) do; get!(() -> wb_inv(iv.(eb.Mth)), EDGE_MI, g.target); end
            Mie === nothing && return false, "caps: X-ball Mth", k
            ok, msg = try check_cap_t3(m, s, g, eb, Mie, cap) catch err; (false, "T3 cap: " * sprint(showerror, err)[1:min(end, 80)]) end
            ok || return false, "cap $(k-1): " * msg, k
            continue
        end
        g.kind in (:T0, :T1) || return false, "caps: only T0, T1, T3", k
        haskey(cap, "t3_parameter") && return false, "caps: a T3 cap on a T0/T1 group", k
        (0 <= g.target < length(X.seeds)) || return false, "caps: target", k
        Mi = lock(PATCH_LOCK) do; get!(() -> wb_inv(iv.(X.seeds[g.target+1].Mth)), MI_CACHE, g.target); end   # this module's precision
        Mi === nothing && return false, "caps: target Mth", k
        ok, msg = try check_cap_jl(m, s, g, X.seeds[g.target+1], Mi, cap) catch err; (false, "cap: " * sprint(showerror, err)[1:min(end, 80)]) end
        ok || return false, "cap $(k-1): " * msg, k
    end
    ok, msg = cap_coverage(cl, get(caps, "coverage", Dict()))
    ok, msg, length(cl)
end

const EDGE_MODELS = Dict{Int,Any}()

"""(ok, message, ncaps checked): the X-ball's sphere by caps (return ZC2a): every cap (or, with part = (k, m), the caps
with index i, i mod m = k) by the cap test on the X-ball's whole-ball model, then (cover = true) the sphere's coverage."""
function check_edge_caps(eb, X; part::Tuple{Int,Int}=(0, 1), cover::Bool=true)
    m = lock(PATCH_LOCK) do; get!(() -> (try edge_wholeball_model(eb) catch; nothing end), EDGE_MODELS, eb.idx); end
    m === nothing && return false, "edge caps: the X-ball's whole-ball model does not certify", 0
    cl = eb.caps["caps"]
    idx = [k for k in eachindex(cl) if (k - 1) % part[2] == part[1]]
    res = Vector{Tuple{Bool,String}}(undef, length(idx))
    Threads.@threads :greedy for n in eachindex(idx)
        k = idx[n]; cap = cl[k]
        res[n] = try
            gi = cap["group_index"]
            (gi isa Integer && 0 <= gi < length(eb.groups)) || error("no such group")
            g = eb.groups[gi+1]
            g.kind == :T1 || error("an X-ball cap needs a T1 group")
            haskey(cap, "t3_parameter") && error("a T3 cap on the X-ball")
            (0 <= g.target < length(X.seeds)) || error("target")
            t = X.seeds[g.target+1]
            Mi = lock(PATCH_LOCK) do; get!(() -> wb_inv(iv.(t.Mth)), MI_CACHE, g.target); end
            Mi === nothing && error("target Mth")
            ok, msg = check_cap_jl(m, nothing, g, t, Mi, cap; edge=true)
            (ok, ok ? "ok" : "cap $(k-1): " * msg)
        catch err
            (false, "cap $(k-1): " * sprint(showerror, err)[1:min(end, 100)])
        end
    end
    bad = findfirst(r -> !r[1], res)
    bad === nothing || return false, "edge caps: " * res[bad][2], length(idx)
    cover || return true, "ok", length(idx)
    ok, msg = cap_coverage(cl, get(eb.caps, "coverage", Dict()))
    ok, ok ? "ok" : "edge caps: " * msg, length(idx)
end

"""Read the text form of a cap certificate (caps_to_txt.py) into the Dict layout of CAP_FORMAT.md (FACET lines, or
SIMPLEX lines for the index-only schema, both kept under "facets"; CAPT3 lines: T3 caps of theorem ZC2b)."""
function read_caps(lines::Vector{<:AbstractString})
    hd = split(lines[1]); hd[1] == "CAPS" || error("caps: header")
    nc, nf = parse(Int, hd[2]), parse(Int, hd[3])
    length(lines) == 1 + nc + nf || error("caps: line count")
    sc(x) = startswith(lstrip(lowercase(x), ['+', '-']), "0x") ? String(x) : parse(BigInt, x)
    wit(p) = Dict{String,Any}("lambda" => sc(p[1]), "mu" => sc(p[2]), "s" => sc(p[3]), "multiplier_vec" => [sc(x) for x in p[4:7]])
    caps = Any[]
    for l in lines[2:1+nc]
        p = split(l)
        head(p) = Dict{String,Any}("group_index" => parse(Int, p[2]), "v" => [parse(BigInt, x) for x in p[3:6]],
                                   "h" => sc(p[7]), "mode" => String(p[8]))
        if p[1] == "CAP"
            (length(p) == 16 && p[16] in ("0", "1")) || error("caps: CAP line")
            push!(caps, merge(head(p), wit(p[9:15]), Dict{String,Any}("weighted_target" => p[16] == "1")))
        elseif p[1] == "CAPT3"
            (length(p) == 75 && p[9] in ("0", "1") && p[11] == "P" && p[19] == "D" && p[27] == "AL") || error("caps: CAPT3 line")
            al = parse.(Int, p[28:75])
            push!(caps, merge(head(p), Dict{String,Any}("weighted_target" => p[9] == "1", "psi_remainder" => String(p[10]),
                "t3_parameter" => wit(p[12:18]), "t3_distance" => wit(p[20:26]),
                "t3_alignment" => Dict{String,Any}("rows" => al[1:6], "cols" => al[7:12], "wind" => al[13:48]))))
        else
            error("caps: unknown cap line")
        end
    end
    compact = hd[4] == "rational-s3-cap-cover-index-v1"
    facets = Any[]
    for l in lines[2+nc:end]
        p = split(l)
        if compact
            (p[1] == "SIMPLEX" && length(p) == 5) || error("caps: SIMPLEX line")
            push!(facets, [parse(Int, x) for x in p[2:5]])
        else
            (p[1] == "FACET" && length(p) == 10) || error("caps: FACET line")
            push!(facets, Dict{String,Any}("vertices" => [parse(Int, x) for x in p[2:5]], "denominator" => parse(BigInt, p[6]),
                                           "numerator" => [parse(BigInt, x) for x in p[7:10]]))
        end
    end
    Dict{String,Any}("caps" => caps, "coverage" => Dict{String,Any}("schema" => String(hd[4]), "dimension" => parse(Int, hd[5]),
                                                                  "cap_count" => parse(Int, hd[6]), "facets" => facets))
end

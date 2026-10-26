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

"""(ok, message): the caps cover S^3, by the exact polar-facet certificate."""
function cap_coverage(caps, cert)
    try
        (get(cert, "schema", "") == "rational-s3-cap-cover-v1" && get(cert, "dimension", 0) == 4) || return false, "coverage: schema"
        rows = cap_rows(caps); n = length(rows)
        (n >= 5 && get(cert, "cap_count", -1) == n) || return false, "coverage: cap count"
        facets = cert["facets"]; isempty(facets) && return false, "coverage: no facets"
        seen = Set{NTuple{4,Int}}(); ridges = Dict{NTuple{3,Int},Int}(); maxn = Rational{BigInt}(0)
        for f in facets
            vs = Tuple(sort(Int.(f["vertices"])))
            (length(vs) == 4 && allunique(vs) && all(0 .<= vs .< n)) || return false, "coverage: facet indices"
            vs in seen && return false, "coverage: duplicate facet"
            push!(seen, vs)
            det4([collect(rows[i+1][1:4]) for i in vs]) != 0 || return false, "coverage: dependent facet rows"
            num = BigInt.(f["numerator"]); den = BigInt(f["denominator"])
            (length(num) == 4 && den > 0) || return false, "coverage: dual vertex"
            for (j, row) in enumerate(rows)
                slack = row[5] * den - sum(row[k] * num[k] for k in 1:4)
                if (j - 1) in vs
                    slack == 0 || return false, "coverage: dual vertex off an incident cap"
                else
                    slack > 0 || return false, "coverage: facet not strictly supporting"
                end
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

"""Enclosures of Q(c), DQ(c) at a point c of the ball (ZT's centre_jet): a float Newton proposal for the normal
coordinate, its residual through the whole-ball contraction (eta = ||W F|| / (1 - q)), and DQ by the implicit
function theorem on the resulting enclosure."""
function centre_jet(m, c)
    Hc = slice4(m.H2, c)
    qp = m.Qbase .+ m.U * c .+ (Hc * c) ./ 2; qph = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2; P1 = m.U .+ Hc
    nn = size(m.X, 2); zm = zeros(typeof(mid(m.tau)), nn)
    function resjac(q)
        ee = wb_cexp.(q)
        zz = [ee[6i+k+1] * conj(ee[6l+k+1]) for (i, l) in WB_PAIRS for k in 0:5]
        sm = [sum(zz[6(p-1)+1:6p]) for p in 1:15]
        [real.(sm); imag.(sm)], wb_realjac(zz)
    end
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
function check_cap_jl(m, s::Seed, g::Group, t::Seed, Mi, cap)
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
    linear = g.kind == :T0 || (Set(g.rows) == CORNER0 && Set(g.cols) == CORNER0)
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
        pgr = patch_group_cached(m, s, g, t, Mi)
        pgr === nothing && return false, "cap: group setup"
        L = Mi * (lcorner(g.rows, g.cols) * gmat36(g.g)); AX = L * m.X
        W = wt ? seed_weighted(m, AX) : nothing
        if mode == "polynomial"
            hc = slice4(pgr.AH2, c)
            d = (pgr.AQ0 .+ pgr.off .- (hc * c) ./ 2) ./ rt
            F = (pgr.AU .+ hc) .* (r / rt)
            Hc = slice4(m.H2, c)
            qc = m.Q0 .+ m.U * c .+ (Hc * c) ./ 2; dc = m.U .+ Hc
            eps = pgr.nAH2 * delta2 / 2 + (wt ? W.T0 : nrm(AX) * m.tau)
        else
            qc, dc = centre_jet(m, c)
            bb = L * dc
            d = (L * qc .+ pgr.off .- bb * c) ./ rt
            F = bb .* (r / rt)
            eps = (pgr.nAH2 + (wt ? W.T2 : nrm(AX) * m.Z2)) * delta2 / 2
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

"""(ok, message, ncaps): every cap of a seed and the coverage of its sphere (return ZC)."""
function check_seed_caps(s::Seed, X, caps)
    m = patch_model(s)
    m === nothing && return false, "caps: the whole-ball model does not certify", 0
    cl = caps["caps"]
    for (k, cap) in enumerate(cl)
        gi = cap["group_index"]
        (gi isa Integer && 0 <= gi < length(s.groups)) || return false, "caps: no such group", k
        g = s.groups[gi+1]
        g.kind in (:T0, :T1) || return false, "caps: only T0, T1", k
        (0 <= g.target < length(X.seeds)) || return false, "caps: target", k
        Mi = lock(PATCH_LOCK) do; get!(() -> wb_inv(iv.(X.seeds[g.target+1].Mth)), MI_CACHE, g.target); end   # this module's precision
        Mi === nothing && return false, "caps: target Mth", k
        ok, msg = try check_cap_jl(m, s, g, X.seeds[g.target+1], Mi, cap) catch err; (false, "cap: " * sprint(showerror, err)[1:min(end, 80)]) end
        ok || return false, "cap $(k-1): " * msg, k
    end
    ok, msg = cap_coverage(cl, get(caps, "coverage", Dict()))
    ok, msg, length(cl)
end

"""Read the text form of a cap certificate (caps_to_txt.py) into the Dict layout of CAP_FORMAT.md."""
function read_caps(lines::Vector{<:AbstractString})
    hd = split(lines[1]); hd[1] == "CAPS" || error("caps: header")
    nc, nf = parse(Int, hd[2]), parse(Int, hd[3])
    length(lines) == 1 + nc + nf || error("caps: line count")
    sc(x) = startswith(lstrip(lowercase(x), ['+', '-']), "0x") ? String(x) : parse(BigInt, x)
    caps = Any[]
    for l in lines[2:1+nc]
        p = split(l); (p[1] == "CAP" && length(p) == 16 && p[16] in ("0", "1")) || error("caps: CAP line")
        push!(caps, Dict{String,Any}("group_index" => parse(Int, p[2]), "v" => [parse(BigInt, x) for x in p[3:6]], "h" => sc(p[7]),
                                     "mode" => String(p[8]), "lambda" => sc(p[9]), "mu" => sc(p[10]), "s" => sc(p[11]),
                                     "multiplier_vec" => [sc(x) for x in p[12:15]], "weighted_target" => p[16] == "1"))
    end
    facets = Any[]
    for l in lines[2+nc:end]
        p = split(l); (p[1] == "FACET" && length(p) == 10) || error("caps: FACET line")
        push!(facets, Dict{String,Any}("vertices" => [parse(Int, x) for x in p[2:5]], "denominator" => parse(BigInt, p[6]),
                                       "numerator" => [parse(BigInt, x) for x in p[7:10]]))
    end
    Dict{String,Any}("caps" => caps, "coverage" => Dict{String,Any}("schema" => String(hd[4]), "dimension" => parse(Int, hd[5]),
                                                                  "cap_count" => parse(Int, hd[6]), "facets" => facets))
end

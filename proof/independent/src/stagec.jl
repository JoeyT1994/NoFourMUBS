# Step 3, second half: Stage C (STAGEC.md C1-C5), recomputed from P and the exact frame.
#
# Phases are in cycles here.  Each bin / edge test is written ONCE, generically in the number type T, and is
# evaluated either in Float64 (fast path; a rejection needs lhs > rhs + MARGIN, see README "Float error budget")
# or in Interval{Float64} (a rejection needs inf(lhs) > sup(rhs), no margin).  With `replay = true` every
# float rejection is re-evaluated in intervals and a rejection that intervals do not confirm is overruled
# (the bin / edge is kept).

const MARGIN = 1e-8
const SQ6 = sqrt(6.0)

rejects(lhs::Float64, rhs::Float64) = lhs > rhs + MARGIN
rejects(lhs::I64, rhs::I64) = inf(lhs) > sup(rhs)

conv(::Type{Float64}, x::Real) = Float64(x)
conv(::Type{I64}, x::Float64) = iv(x)
conv(::Type{I64}, x::I64) = x

# ---------------------------------------------------------------- context

struct SCtx{T}
    ePre::Matrix{T}; ePim::Matrix{T}   # [j,i] = e(-P_ji)/sqrt6 = (cos P_ji - i sin P_ji)/sqrt6
    Ere::Vector{T}; Eim::Vector{T}     # [k+1] = e(k/192)
    Tf::Matrix{T}                      # 36x4 frame
    pi::T; s6::T
    # rigorous upper bounds (cycles), as Float64
    K::Float64; rH::Float64; n::Float64; r::Float64; rF::Float64
end

function exp_tables_float()
    setprecision(BigFloat, 256) do
        Ere = [Float64(cos(2 * big(π) * k / 192)) for k in 0:191]
        Eim = [Float64(sin(2 * big(π) * k / 192)) for k in 0:191]
        Ere, Eim
    end
end
const EXPF = exp_tables_float()
const EXPI = ([cos(TWOPI_I * k / 192) for k in 0:191], [sin(TWOPI_I * k / 192) for k in 0:191])

"""K >= ||e(P)/sqrt6||_2 via ||A||^2 <= max_i sum_j |(A^*A)_ij|, in intervals."""
function Kbound(P)
    Mr = [cos(iv(P[j, c])) / sqrt(iv(6.0)) for j in 1:6, c in 1:6]
    Mi = [sin(iv(P[j, c])) / sqrt(iv(6.0)) for j in 1:6, c in 1:6]
    m = 0.0
    for i in 1:6
        s = iv(0.0)
        for k in 1:6
            re = sum(Mr[j, i] * Mr[j, k] + Mi[j, i] * Mi[j, k] for j in 1:6)
            im = sum(Mr[j, i] * Mi[j, k] - Mi[j, i] * Mr[j, k] for j in 1:6)
            s += sqrt(re^2 + im^2)
        end
        m = max(m, sup(s))
    end
    sup(sqrt(iv(m)))
end

function make_ctx(rec::Rec, nb::NormalBound)
    K = Kbound(rec.P)
    cyc(x) = sup(iv(x) / TWOPI_I)
    rH = cyc(nb.rH); n = cyc(nb.n); r = cyc(nb.rcol); rF = cyc(nb.rF)
    Ti = frame_interval(nb.T36)
    Tf = mid.(Ti)                       # float rounding of the exact frame (|error| <= 2^-53 |T|)
    ePre_f, ePim_f = setprecision(BigFloat, 256) do
        ([Float64(cos(big(rec.P[j, i])) / sqrt(big(6))) for j in 1:6, i in 1:6],
         [Float64(-sin(big(rec.P[j, i])) / sqrt(big(6))) for j in 1:6, i in 1:6])
    end
    s6i = sqrt(iv(6.0))
    ePre_i = [cos(iv(rec.P[j, i])) / s6i for j in 1:6, i in 1:6]
    ePim_i = [-sin(iv(rec.P[j, i])) / s6i for j in 1:6, i in 1:6]
    Cf = SCtx{Float64}(ePre_f, ePim_f, EXPF[1], EXPF[2], Tf, Float64(π), SQ6, K, rH, n, r, rF)
    Ci = SCtx{I64}(ePre_i, ePim_i, EXPI[1], EXPI[2], Ti, PI_I, s6i, K, rH, n, r, rF)
    Cf, Ci
end

# Level constants (C1).  a = 1/(2M); X = sqrt(29/6) a; L1 = 5a; Iinf = 3a/2 (all exact or upper bounds).
struct Level
    M::Int; a::Float64; X::Float64; L1::Float64; Iinf::Float64
    tau::Float64       # 2 pi (L1/sqrt6 + r)
    rvec::Float64      # 2 pi (K X + rF)
end
function Level(M::Int, C::SCtx)
    ai = iv(1.0) / iv(Float64(2M))          # 1/(2M) is not dyadic: keep an enclosure, use upper bounds
    a = sup(ai)
    X = sup(sqrt(iv(29.0) / iv(6.0)) * ai)
    L1 = sup(5 * ai); Iinf = sup(iv(1.5) * ai)
    tau = sup(TWOPI_I * (5 * ai / sqrt(iv(6.0)) + iv(C.r)))
    rvec = sup(TWOPI_I * (iv(C.K) * iv(X) + iv(C.rF)))
    Level(M, a, X, L1, Iinf, tau, rvec)
end

# ---------------------------------------------------------------- single-vector quantities at a phase vector u

struct VW{T}
    qre::Matrix{T}; qim::Matrix{T}     # q_ji = e(u_j - P_ji)/sqrt6
    Sre::Vector{T}; Sim::Vector{T}; S2::Vector{T}; absS::Vector{T}
    c::Vector{T}; J::Matrix{T}; B::Matrix{T}
end
VW{T}() where {T} = VW{T}(zeros(T, 6, 6), zeros(T, 6, 6), zeros(T, 6), zeros(T, 6), zeros(T, 6), zeros(T, 6),
                          zeros(T, 6), zeros(T, 6, 6), zeros(T, 6, 4))

"""m: 6 numerators in units of 1/192 (m[1] = 0)."""
function compute_S!(w::VW{T}, C::SCtx{T}, m) where {T}
    @inbounds for j in 1:6
        k = mod(m[j], 192) + 1
        er = C.Ere[k]; ei = C.Eim[k]
        for i in 1:6
            a = C.ePre[j, i]; b = C.ePim[j, i]
            w.qre[j, i] = er * a - ei * b
            w.qim[j, i] = er * b + ei * a
        end
    end
    @inbounds for i in 1:6
        sr = zero(T); si = zero(T)
        for j in 1:6
            sr += w.qre[j, i]; si += w.qim[j, i]
        end
        w.Sre[i] = sr; w.Sim[i] = si
        w.S2[i] = sr * sr + si * si
        w.absS[i] = sqrt(w.S2[i])
    end
    w
end

"""c_i = (|S_i|^2 - 1)/(4 pi), J_ij = -Im(conj(S_i) q_ji), B_ik = sum_j J_ij T_{(j,i),k}."""
function compute_JB!(w::VW{T}, C::SCtx{T}) where {T}
    @inbounds for i in 1:6
        w.c[i] = (w.S2[i] - 1) / (4 * C.pi)
        for j in 1:6
            w.J[i, j] = w.Sim[i] * w.qre[j, i] - w.Sre[i] * w.qim[j, i]
        end
        for k in 1:4
            s = zero(T)
            for j in 1:6
                s += w.J[i, j] * C.Tf[6(j-1)+i, k]
            end
            w.B[i, k] = s
        end
    end
    w
end

# C2a.  Returns 0 (kept), 1 (per-column direct test), 2 (vector test).
function test_direct(w::VW{T}, lev::Level) where {T}
    tau = conv(T, lev.tau)
    @inbounds for i in 1:6
        rejects(abs(w.absS[i] - 1), tau) && return 1
    end
    s = zero(T)
    @inbounds for i in 1:6
        s += (w.absS[i] - 1)^2
    end
    rejects(sqrt(s), conv(T, lev.rvec)) && return 2
    0
end

"""The remainder E(y) of C2b without the n N_y term: pi[ min(||y||_inf (KX + rF)^2, ||y||_1 (KX + r)^2)
 + pure-x + (2/sqrt6) X min(||S o y||_2 rF, ||S o y||_1 r) + (1/sqrt6) min(||S o y||_inf rF^2, ||S o y||_1 r^2) ].
 ball=false: pure-x = min(G_y X^2, K ||S o y|| I X) (bin);  ball=true: pure-x = G_y X^2 (label ball, X = s)."""
function Erem(w::VW{T}, C::SCtx{T}, y, X::T, Iinf::T, ball::Bool) where {T}
    K = conv(T, C.K); r = conv(T, C.r); rF = conv(T, C.rF)
    yinf = zero(T); y1 = zero(T); sy2 = zero(T); sy1 = zero(T); syinf = zero(T)
    @inbounds for i in 1:6
        ay = abs(y[i]); yinf = max(yinf, ay); y1 += ay
        s = w.absS[i] * ay
        sy2 += s^2; sy1 += s; syinf = max(syinf, s)
    end
    sy2 = sqrt(sy2)
    Gy = zero(T)
    @inbounds for j in 1:6
        gr = zero(T); gi = zero(T)
        for i in 1:6   # y_i conj(S_i) q_ji
            gr += y[i] * (w.Sre[i] * w.qre[j, i] + w.Sim[i] * w.qim[j, i])
            gi += y[i] * (w.Sre[i] * w.qim[j, i] - w.Sim[i] * w.qre[j, i])
        end
        Gy = max(Gy, sqrt(gr^2 + gi^2))
    end
    t1 = min(yinf * (K * X + rF)^2, y1 * (K * X + r)^2)
    t2 = ball ? Gy * X^2 : min(Gy * X^2, K * sy2 * Iinf * X)
    t3 = 2 / C.s6 * X * min(sy2 * rF, sy1 * r)
    t4 = 1 / C.s6 * min(syinf * rF^2, sy1 * r^2)
    C.pi * (t1 + t2 + t3 + t4)
end

"""N_y = (sum_ij y_i^2 J_ij^2)^{1/2}."""
function Ny(w::VW{T}, y) where {T}
    s = zero(T)
    @inbounds for i in 1:6, j in 1:6
        s += (y[i] * w.J[i, j])^2
    end
    sqrt(s)
end

# Scalar test (6.12): y = e_i, delta not decomposed: |c_i| <= a sum_{j>0}|J_ij| + r ||J_i.|| + E(e_i).
function test_scalar(w::VW{T}, C::SCtx{T}, lev::Level) where {T}
    a = conv(T, lev.a); X = conv(T, lev.X); Iinf = conv(T, lev.Iinf); r = conv(T, C.r)
    y = zeros(T, 6)
    @inbounds for i in 1:6
        fill!(y, zero(T)); y[i] = one(T)
        lin = zero(T); nrm = zero(T)
        for j in 1:6
            j > 1 && (lin += abs(w.J[i, j]))
            nrm += w.J[i, j]^2
        end
        rhs = a * lin + r * sqrt(nrm) + Erem(w, C, y, X, Iinf, false)
        rejects(abs(w.c[i]), rhs) && return true
    end
    false
end

# Tangent test (C2b) for a given real y.
function tangent_lhs_rhs(w::VW{T}, C::SCtx{T}, lev::Level, y) where {T}
    a = conv(T, lev.a); X = conv(T, lev.X); Iinf = conv(T, lev.Iinf)
    rH = conv(T, C.rH); n = conv(T, C.n)
    lhs = zero(T)
    @inbounds for i in 1:6
        lhs += y[i] * w.c[i]
    end
    lin = zero(T)
    @inbounds for j in 2:6
        s = zero(T)
        for i in 1:6
            s += w.J[i, j] * y[i]
        end
        lin += abs(s)
    end
    bt = zero(T)
    @inbounds for k in 1:4
        s = zero(T)
        for i in 1:6
            s += w.B[i, k] * y[i]
        end
        bt += s^2
    end
    rhs = a * lin + rH * sqrt(bt) + n * Ny(w, y) + Erem(w, C, y, X, Iinf, false)
    abs(lhs), rhs
end

# Regularised least-squares direction: y = (W W^T + lam I)^{-1} c, W = [a J_{:,2:6} | rH B]; max|y| = 1.
function propose_y!(y::Vector{Float64}, Mat::Matrix{Float64}, w::VW{Float64}, a::Float64, rH::Float64, lam::Float64)
    @inbounds for i in 1:6, i2 in i:6
        s = 0.0
        for j in 2:6
            s += a^2 * w.J[i, j] * w.J[i2, j]
        end
        for k in 1:4
            s += rH^2 * w.B[i, k] * w.B[i2, k]
        end
        Mat[i, i2] = s; Mat[i2, i] = s
    end
    @inbounds for i in 1:6
        Mat[i, i] += lam
    end
    # Cholesky solve (6x6, SPD by construction)
    @inbounds for k in 1:6
        d = Mat[k, k]
        for m in 1:k-1
            d -= Mat[k, m]^2
        end
        d = sqrt(max(d, 1e-300)); Mat[k, k] = d
        for i in k+1:6
            s = Mat[i, k]
            for m in 1:k-1
                s -= Mat[i, m] * Mat[k, m]
            end
            Mat[i, k] = s / d
        end
    end
    @inbounds for i in 1:6
        s = w.c[i]
        for m in 1:i-1
            s -= Mat[i, m] * y[m]
        end
        y[i] = s / Mat[i, i]
    end
    @inbounds for i in 6:-1:1
        s = y[i]
        for m in i+1:6
            s -= Mat[m, i] * y[m]
        end
        y[i] = s / Mat[i, i]
    end
    mx = maximum(abs, y)
    (mx > 0 && isfinite(mx)) || (fill!(y, 0.0); y[1] = 1.0; return y)
    y ./= mx
    y
end

function eps_scale(w::VW{Float64}, C::SCtx{Float64}, lev::Level)
    jn = maximum(sqrt(sum(w.J[i, j]^2 for j in 1:6)) for i in 1:6)
    smax = maximum(w.absS)
    C.n * jn + π * ((C.K * lev.X + C.rF)^2 + smax / SQ6 * lev.X^2 + 2 / SQ6 * lev.X * smax * C.rF + smax / SQ6 * C.rF^2)
end

const LAMS = (1.0, 1e-2, 1e2)

"""Float evaluation of one bin.  Returns (code, y): 0 kept, 1/2 direct, 3 scalar, 4 tangent (with the y used)."""
function bin_float!(w::VW{Float64}, ybuf, Mat, C::SCtx{Float64}, lev::Level, m)
    compute_S!(w, C, m)
    code = test_direct(w, lev)
    code != 0 && return code
    compute_JB!(w, C)
    test_scalar(w, C, lev) && return 3
    e = eps_scale(w, C, lev)
    for f in LAMS
        propose_y!(ybuf, Mat, w, lev.a, C.rH, (f * e)^2)
        lhs, rhs = tangent_lhs_rhs(w, C, lev, ybuf)
        rejects(lhs, rhs) && return 4
    end
    0
end

"""Interval confirmation of a float rejection with code `code` (and direction y for code 4)."""
function bin_interval!(w::VW{I64}, C::SCtx{I64}, lev::Level, m, code::Int, y)
    compute_S!(w, C, m)
    if code == 1 || code == 2
        # either direct test proved in intervals is a valid rejection (near a threshold the float path, which
        # carries MARGIN, may pick the vector test while the margin-free interval path proves the column test)
        return test_direct(w, lev) != 0
    end
    compute_JB!(w, C)
    code == 3 && return test_scalar(w, C, lev)
    lhs, rhs = tangent_lhs_rhs(w, C, lev, iv.(y))
    rejects(lhs, rhs)
end

# ---------------------------------------------------------------- C1/C2: the bin cover

struct BinStats
    levels::Vector{Int}; tested::Vector{Int}; kept::Vector{Int}; bycode::Vector{Vector{Int}}
    overruled::Int
end

midnum(b::Integer, M::Int) = (2b + 1) * (96 ÷ M)   # midpoint (2b+1)/(2M) in units of 1/192

function bin_cover(Cf::SCtx{Float64}, Ci::SCtx{I64}, replay::Bool)
    wf = VW{Float64}(); wi = VW{I64}(); ybuf = zeros(6); Mat = zeros(6, 6)
    cur = NTuple{5,UInt8}[]
    levels = [12, 24, 48, 96]; tested = Int[]; kept = Int[]; bycode = Vector{Int}[]
    overruled = 0
    for (li, M) in enumerate(levels)
        lev = Level(M, Cf)
        nxt = NTuple{5,UInt8}[]
        cnt = zeros(Int, 4); ntest = 0
        function visit(bt::NTuple{5,UInt8})
            ntest += 1
            m = (0, midnum(bt[1], M), midnum(bt[2], M), midnum(bt[3], M), midnum(bt[4], M), midnum(bt[5], M))
            code = bin_float!(wf, ybuf, Mat, Cf, lev, m)
            if code != 0 && replay
                if !bin_interval!(wi, Ci, lev, m, code, ybuf)
                    overruled += 1; code = 0
                end
            end
            code == 0 ? push!(nxt, bt) : (cnt[code] += 1)
        end
        if li == 1
            for b1 in 0:M-1, b2 in 0:M-1, b3 in 0:M-1, b4 in 0:M-1, b5 in 0:M-1
                visit((UInt8(b1), UInt8(b2), UInt8(b3), UInt8(b4), UInt8(b5)))
            end
        else
            for p in cur, ch in 0:31
                visit(ntuple(d -> UInt8(2 * p[d] + ((ch >> (d - 1)) & 1)), 5))
            end
        end
        push!(tested, ntest); push!(kept, length(nxt)); push!(bycode, cnt)
        cur = nxt
    end
    cur, BinStats(levels, tested, kept, bycode, overruled)
end

# ---------------------------------------------------------------- C3: labels

struct Label
    m::NTuple{6,Int}    # centre numerators (units 1/192), m[1] = 0
    s::Float64          # radius, rigorous upper bound of max||h|| + X_96
end

wrap192(d::Int) = (x = mod(d, 192); x > 96 ? x - 192 : x)     # representative in (-96, 96]

"""Greedy clustering.  6 * 192^2 * ||h||^2 = 6 sum w^2 - (sum w)^2 (exact integers, w_0 = 0)."""
function cluster(bins::Vector{NTuple{5,UInt8}}, lr::Float64)
    ms = [(0, Int(2b[1] + 1), Int(2b[2] + 1), Int(2b[3] + 1), Int(2b[4] + 1), Int(2b[5] + 1)) for b in sort(bins)]
    N = length(ms)
    assigned = falses(N)
    thr = 6 * 192.0^2 * lr^2
    X96 = sup(sqrt(iv(29.0) / iv(6.0)) / iv(192.0))
    labels = Label[]; owner = zeros(Int, N)
    for i in 1:N
        assigned[i] && continue
        v = ms[i]; maxnum = 0
        for k in i:N
            assigned[k] && continue
            sw = 0; sw2 = 0
            for j in 2:6
                wv = wrap192(ms[k][j] - v[j]); sw += wv; sw2 += wv^2
            end
            num = 6sw2 - sw^2
            if num <= thr
                assigned[k] = true; owner[k] = length(labels) + 1
                maxnum = max(maxnum, num)
            end
        end
        s = sup(sqrt(iv(Float64(maxnum)) / iv(6 * 192.0^2)) + iv(X96)) + 1e-12
        push!(labels, Label(v, s))
    end
    labels
end

# ---------------------------------------------------------------- C4: edges

struct EW{T}
    Qre::Vector{T}; Qim::Vector{T}
end
EW{T}() where {T} = EW{T}(zeros(T, 6), zeros(T, 6))

function edge_S!(e::EW{T}, C::SCtx{T}, mA, mB) where {T}
    sr = zero(T); si = zero(T)
    @inbounds for j in 1:6
        k = mod(mA[j] - mB[j], 192) + 1
        e.Qre[j] = C.Ere[k]; e.Qim[j] = C.Eim[k]
        sr += e.Qre[j]; si += e.Qim[j]
    end
    sr, si
end

"""D_U,j = (Re S (-Im Q_j) + Im S Re Q_j)/6; returns ||D_U||."""
function DUnorm(e::EW{T}, sr, si) where {T}
    s = zero(T)
    @inbounds for j in 1:6
        s += ((-sr * e.Qim[j] + si * e.Qre[j]) / 6)^2
    end
    sqrt(s)
end

"""Direct and support tests.  Returns (O possible, U possible, codeO, codeU) with codes 1 direct, 2 support."""
function edge_basic(e::EW{T}, C::SCtx{T}, mA, mB, re::T) where {T}
    sr, si = edge_S!(e, C, mA, mB)
    S2 = sr^2 + si^2; aS = sqrt(S2)
    tp = 2 * C.pi
    du = DUnorm(e, sr, si)
    codeO = rejects(aS, tp * C.s6 * re) ? 1 :
            rejects(S2 / tp, 6 * re * du + C.pi * re^2 * aS) ? 2 : 0
    codeU = rejects(abs(aS - C.s6), tp * C.s6 * re) ? 1 :
            rejects(abs((S2 / 6 - 1) / (4 * C.pi)), re * du + C.pi * re^2 * (1 + aS / 6)) ? 2 : 0
    codeO, codeU
end

"""Joint test (C4) for an edge of type E (:O or :U) between labels A and B, for a given direction
Y = (yA (6), yB (6), ye (2 for O, 1 for U))."""
function joint_lhs_rhs(wA::VW{T}, wB::VW{T}, e::EW{T}, C::SCtx{T}, sA::T, sB::T, E::Symbol, Y) where {T}
    sr = zero(T); si = zero(T)
    @inbounds for j in 1:6
        sr += e.Qre[j]; si += e.Qim[j]
    end
    S2 = sr^2 + si^2; aS = sqrt(S2)
    re = sA + sB
    rH = conv(T, C.rH); n = conv(T, C.n)
    yA = view(Y, 1:6); yB = view(Y, 7:12)
    # edge pieces
    if E === :O
        ye1 = Y[13]; ye2 = Y[14]
        qe = ye1 * sr / (2 * C.pi) + ye2 * si / (2 * C.pi)
        Dty = [ye1 * (-e.Qim[j]) + ye2 * e.Qre[j] for j in 1:6]
        EE = C.pi * re^2 * sqrt(ye1^2 + ye2^2)
    else
        ye = Y[13]
        qe = ye * (S2 / 6 - 1) / (4 * C.pi)
        Dty = [ye * (-sr * e.Qim[j] + si * e.Qre[j]) / 6 for j in 1:6]
        EE = C.pi * re^2 * (1 + aS / 6) * abs(ye)
    end
    lhs = qe
    @inbounds for i in 1:6
        lhs += yA[i] * wA.c[i] + yB[i] * wB.c[i]
    end
    nA = zero(T); nB = zero(T)
    @inbounds for j in 1:6
        sa = Dty[j]; sb = -Dty[j]
        for i in 1:6
            sa += wA.J[i, j] * yA[i]; sb += wB.J[i, j] * yB[i]
        end
        nA += sa^2; nB += sb^2
    end
    bt = zero(T)
    @inbounds for k in 1:4
        s = zero(T)
        for i in 1:6
            s += wA.B[i, k] * yA[i] + wB.B[i, k] * yB[i]
        end
        bt += s^2
    end
    rhs = sA * sqrt(nA) + sB * sqrt(nB) + rH * sqrt(bt) +
          n * Ny(wA, yA) + Erem(wA, C, yA, sA, sA, true) +
          n * Ny(wB, yB) + Erem(wB, C, yB, sB, sB, true) + EE
    abs(lhs), rhs
end

"""Least-squares proposal for the joint test."""
function propose_joint(wA::VW{Float64}, wB::VW{Float64}, e::EW{Float64}, C::SCtx{Float64}, sA, sB, E::Symbol, lamf)
    d = E === :O ? 14 : 13
    sr = sum(e.Qre); si = sum(e.Qim); S2 = sr^2 + si^2
    W = zeros(d, 16)
    for j in 1:6, i in 1:6
        W[i, j] = sA * wA.J[i, j]
        W[6+i, 6+j] = sB * wB.J[i, j]
    end
    for k in 1:4, i in 1:6
        W[i, 12+k] = C.rH * wA.B[i, k]; W[6+i, 12+k] = C.rH * wB.B[i, k]
    end
    if E === :O
        for j in 1:6
            W[13, j] = sA * (-e.Qim[j]); W[13, 6+j] = -sB * (-e.Qim[j])
            W[14, j] = sA * e.Qre[j];    W[14, 6+j] = -sB * e.Qre[j]
        end
        g = vcat(wA.c, wB.c, [sr / (2π), si / (2π)])
    else
        for j in 1:6
            dj = (-sr * e.Qim[j] + si * e.Qre[j]) / 6
            W[13, j] = sA * dj; W[13, 6+j] = -sB * dj
        end
        g = vcat(wA.c, wB.c, [(S2 / 6 - 1) / (4π)])
    end
    re = sA + sB
    epsA = C.n + π * (C.K * sA + C.rF)^2; epsB = C.n + π * (C.K * sB + C.rF)^2
    epsE = π * re^2 * 2
    reg = vcat(fill(epsA^2, 6), fill(epsB^2, 6), fill(epsE^2, d - 12)) .* lamf
    Mt = W * W' + Diagonal(reg)
    Y = try
        Symmetric(Mt) \ g
    catch
        return nothing
    end
    mx = maximum(abs, Y)
    (mx > 0 && isfinite(mx)) || return nothing
    Y ./ mx
end

# ---------------------------------------------------------------- C5: the two-clique search

mutable struct Search
    steps::Int
    cap::Int
    capped::Bool
    found::Union{Nothing,Tuple{Vector{Int},Vector{Int}}}
    ncliqueA::Int
end

popc(b::Vector{UInt64}) = sum(count_ones, b)
band(a, b) = a .& b
function bits_above(v::Int, nw::Int)    # vertices > v (1-based)
    b = zeros(UInt64, nw)
    for w in v+1:64nw
        b[(w-1)>>6+1] |= UInt64(1) << ((w - 1) & 63)
    end
    b
end
function each_bit(f, b::Vector{UInt64})
    for (wi, x) in enumerate(b)
        while x != 0
            t = trailing_zeros(x)
            f(64(wi - 1) + t + 1) === :stop && return :stop
            x &= x - 1
        end
    end
    nothing
end

"""Is there a k-clique of O inside P (bitset)?  Exhaustive."""
function has_clique(O, P::Vector{UInt64}, k::Int, S::Search, above, acc::Vector{Int})
    S.steps += 1
    S.steps > S.cap && (S.capped = true; return false)
    k == 0 && return true
    popc(P) < k && return false
    res = false
    each_bit(P) do v
        Pn = P .& O[v] .& above[v]
        push!(acc, v)
        if has_clique(O, Pn, k - 1, S, above, acc)
            res = true; return :stop
        end
        pop!(acc)
        S.capped && return :stop
        nothing
    end
    res
end

"""Enumerate every 6-clique A of O (from its least vertex up); for each, search the common U-neighbourhood for a
6-clique of O."""
function two_cliques(O::Vector{Vector{UInt64}}, U::Vector{Vector{UInt64}}, n::Int; cap::Int=50_000_000)
    nw = max(1, (n + 63) >> 6)
    S = Search(0, cap, false, nothing, 0)
    above = [bits_above(v, nw) for v in 1:n]
    A = Int[]
    function extend(cand::Vector{UInt64}, D::Vector{UInt64})
        S.steps += 1
        S.steps > S.cap && (S.capped = true; return)
        if length(A) == 6
            S.ncliqueA += 1
            acc = Int[]
            if has_clique(O, D, 6, S, above, acc)
                S.found = (copy(A), acc)
            end
            return
        end
        popc(cand) + length(A) < 6 && return
        each_bit(cand) do v
            Dn = D .& U[v]
            if popc(Dn) >= 6
                push!(A, v)
                extend(cand .& O[v] .& above[v], Dn)
                pop!(A)
            end
            (S.found !== nothing || S.capped) && return :stop
            nothing
        end
    end
    full = zeros(UInt64, nw)
    for v in 1:n
        full[(v-1)>>6+1] |= UInt64(1) << ((v - 1) & 63)
    end
    extend(full, copy(full))
    S
end

# ---------------------------------------------------------------- Stage C driver

struct StageCResult
    ok::Bool
    msg::String
    bins::BinStats
    nlabels::Int; maxs::Float64
    nO::Int; nU::Int; nO_joint::Int; nU_joint::Int; overruled_edges::Int
    ncore::Int; ncliqueA::Int; steps::Int
    seconds::Float64
end

function stage_c(rec::Rec, nb::NormalBound; replay::Bool=false, cap::Int=50_000_000)
    t0 = time()
    Cf, Ci = make_ctx(rec, nb)
    bins, bst = bin_cover(Cf, Ci, replay)
    labels = cluster(bins, rec.lr)
    nL = length(labels)
    maxs = nL == 0 ? 0.0 : maximum(l.s for l in labels)
    fail(msg, a...) = StageCResult(false, msg, bst, nL, maxs, a..., time() - t0)
    if maxs >= 0.1
        return fail("label radius $(maxs) >= 0.1", 0, 0, 0, 0, 0, 0, 0, 0)
    end
    # per-label single-vector data (float and, if needed, interval)
    wsf = [compute_JB!(compute_S!(VW{Float64}(), Cf, l.m), Cf) for l in labels]
    wsi = replay ? [compute_JB!(compute_S!(VW{I64}(), Ci, l.m), Ci) for l in labels] : VW{I64}[]
    Oadj = [Int[] for _ in 1:nL]; Uadj = [Int[] for _ in 1:nL]
    ef = EW{Float64}(); ei = EW{I64}()
    nO = nU = nOj = nUj = 0; overr = 0
    for A in 1:nL, B in A+1:nL
        la = labels[A]; lb = labels[B]
        cO, cU = edge_basic(ef, Cf, la.m, lb.m, la.s + lb.s)
        if replay && (cO != 0 || cU != 0)
            ciO, ciU = edge_basic(ei, Ci, la.m, lb.m, iv(la.s) + iv(lb.s))
            (cO != 0 && ciO == 0) && (cO = 0; overr += 1)
            (cU != 0 && ciU == 0) && (cU = 0; overr += 1)
        end
        for (E, code) in ((:O, cO), (:U, cU))
            code == 0 || continue
            E === :O ? (nO += 1) : (nU += 1)
            edge_S!(ef, Cf, la.m, lb.m)
            keep = true
            for lamf in (1.0, 1e-2, 1e2, 1e-4)
                Y = propose_joint(wsf[A], wsf[B], ef, Cf, la.s, lb.s, E, lamf)
                Y === nothing && continue
                lhs, rhs = joint_lhs_rhs(wsf[A], wsf[B], ef, Cf, la.s, lb.s, E, Y)
                if rejects(lhs, rhs)
                    if replay
                        edge_S!(ei, Ci, la.m, lb.m)
                        li, ri = joint_lhs_rhs(wsi[A], wsi[B], ei, Ci, iv(la.s), iv(lb.s), E, iv.(Y))
                        if !rejects(li, ri)
                            overr += 1; continue
                        end
                    end
                    keep = false; break
                end
            end
            if keep
                if E === :O
                    nOj += 1; push!(Oadj[A], B); push!(Oadj[B], A)
                else
                    nUj += 1; push!(Uadj[A], B); push!(Uadj[B], A)
                end
            end
        end
    end
    # core: a vertex of a solution has >= 5 O-neighbours and >= 6 U-neighbours inside the solution
    alive = trues(nL)
    changed = true
    while changed
        changed = false
        for v in 1:nL
            alive[v] || continue
            dO = count(w -> alive[w], Oadj[v]); dU = count(w -> alive[w], Uadj[v])
            if dO < 5 || dU < 6
                alive[v] = false; changed = true
            end
        end
    end
    ids = findall(alive); nc = length(ids)
    pos = zeros(Int, nL); pos[ids] = 1:nc
    nw = max(1, (nc + 63) >> 6)
    mk(adj) = begin
        bs = [zeros(UInt64, nw) for _ in 1:nc]
        for (k, v) in enumerate(ids), w in adj[v]
            alive[w] || continue
            p = pos[w]; bs[k][(p-1)>>6+1] |= UInt64(1) << ((p - 1) & 63)
        end
        bs
    end
    S = nc >= 12 ? two_cliques(mk(Oadj), mk(Uadj), nc; cap=cap) : Search(0, cap, false, nothing, 0)
    t = time() - t0
    if S.capped
        return StageCResult(false, "clique search hit the step cap", bst, nL, maxs, nO, nU, nOj, nUj, overr, nc, S.ncliqueA, S.steps, t)
    elseif S.found !== nothing
        A, B = S.found
        return StageCResult(false, "two-clique configuration found: A=$(ids[A]) B=$(ids[B])", bst, nL, maxs, nO, nU, nOj, nUj, overr, nc, S.ncliqueA, S.steps, t)
    end
    StageCResult(true, "ok", bst, nL, maxs, nO, nU, nOj, nUj, overr, nc, S.ncliqueA, S.steps, t)
end

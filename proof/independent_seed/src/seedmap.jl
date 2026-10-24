# The matched completion H_o(theta) on a box of seed space, as second-order Taylor models of its 36 entry phases.
#
# Conventions (SPEC §1), 1-based here: E = [1 1 1; 1 a b; 1 c d] with (a, b, c, d) = e^{i theta}; the horizontal side
# B has rows 1, e^{i phi_h[1:3]}, e^{i phi_h[4:6]} and B B* = 6I - E E*; the vertical side V = C^T has the same shape
# with V V* = 6I - E^T conj(E); D = -C E* (B*)^{-1}; H = [E B; C D].  Q[a, b] is the phase of H[a, b].
#
# On a box the seed is theta(u) = theta_c + Mth u, |u_j| <= h_j.  Each side solves F(phi; theta) = 0 with
#   F = (Re f01, Re f02, Re f12, Im f01, Im f02, Im f12),
#   f01 = sum_{k<=3} e^{-i phi_k} + gamma01,  f02 = sum_{k<=3} e^{-i phi_{3+k}} + gamma02,
#   f12 = sum_{k<=3} e^{i(phi_k - phi_{3+k})} + gamma12,
# i.e. the upper off-diagonal entries of S S* - G, where gamma = (E E*)_{01,02,12} for B and (E^T conj E)_{01,02,12}
# for V (the diagonal of S S* - G vanishes identically).

# ---------------------------------------------------------------- float helpers (predictors only; never trusted)

"""gamma_h, gamma_v (3 complex numbers each) at a float seed."""
function gammas_f(th)
    a, b, c, d = cis(th[1]), cis(th[2]), cis(th[3]), cis(th[4])
    gh = (1 + conj(a) + conj(b), 1 + conj(c) + conj(d), 1 + a * conj(c) + b * conj(d))
    gv = (1 + conj(a) + conj(c), 1 + conj(b) + conj(d), 1 + a * conj(b) + c * conj(d))
    gh, gv
end

function sideF_f(phi, gam)
    f01 = cis(-phi[1]) + cis(-phi[2]) + cis(-phi[3]) + gam[1]
    f02 = cis(-phi[4]) + cis(-phi[5]) + cis(-phi[6]) + gam[2]
    f12 = cis(phi[1] - phi[4]) + cis(phi[2] - phi[5]) + cis(phi[3] - phi[6]) + gam[3]
    [real(f01), real(f02), real(f12), imag(f01), imag(f02), imag(f12)]
end

"""dF/dphi (6 x 6) at a float side (see the module comment for the row order)."""
function sideJ_f(phi)
    J = zeros(6, 6)
    for k in 1:3
        em = cis(-phi[k]); em2 = cis(-phi[3+k]); ed = cis(phi[k] - phi[3+k])
        J[1, k] = imag(em);      J[4, k] = -real(em)            # d/dphi_k of -> -i e^{-i phi_k}
        J[2, 3+k] = imag(em2);   J[5, 3+k] = -real(em2)
        J[3, k] = -imag(ed);     J[6, k] = real(ed)             #  i e^{i(phi_k - phi_{3+k})}
        J[3, 3+k] = imag(ed);    J[6, 3+k] = -real(ed)          # -i e^{i(phi_k - phi_{3+k})}
    end
    J
end

"""Newton's method for one side at a float seed.  Returns the side or nothing."""
function side_newton_f(phi0, gam; iters=40)
    phi = collect(Float64, phi0)
    for _ in 1:iters
        F = sideF_f(phi, gam)
        maximum(abs, F) < 1e-14 && return phi
        J = sideJ_f(phi)
        abs(det(J)) < 1e-14 && return nothing
        phi .-= J \ F
    end
    maximum(abs, sideF_f(phi, gam)) < 1e-11 ? phi : nothing
end

# ---------------------------------------------------------------- side models (generic: float or interval)

"""e^{-i phi_k} (k = 1..6) and e^{i(phi_k - phi_{3+k})} (k = 1..3) for a side model."""
function side_exps(phi, D::Dom)
    em = [exp_i(-phi[k], D) for k in 1:6]
    ed = [exp_i(phi[k] - phi[3+k], D) for k in 1:3]
    em, ed
end

function side_F(em, ed, gam)
    f01 = em[1] + em[2] + em[3] + gam[1]
    f02 = em[4] + em[5] + em[6] + gam[2]
    f12 = ed[1] + ed[2] + ed[3] + gam[3]
    [re(f01), re(f02), re(f12), imp(f01), imp(f02), imp(f12)]
end

"""The nonzero entries of dF/dphi, column by column: Jcols[k] = [(row, model), ...]."""
function side_Jcols(em, ed)
    T = typeof(re(em[1]))
    cols = [Tuple{Int,T}[] for _ in 1:6]
    for k in 1:3
        push!(cols[k], (1, imp(em[k])));       push!(cols[k], (4, -re(em[k])))
        push!(cols[3+k], (2, imp(em[3+k])));   push!(cols[3+k], (5, -re(em[3+k])))
        push!(cols[k], (3, -imp(ed[k])));      push!(cols[k], (6, re(ed[k])))
        push!(cols[3+k], (3, imp(ed[k])));     push!(cols[3+k], (6, -re(ed[k])))
    end
    cols
end

"""gamma_h, gamma_v as complex models from the seed models th (4 real models)."""
function gammas(th, D::Dom)
    e1, e2, e3, e4 = (exp_i(-th[k], D) for k in 1:4)
    gh = (addc(e1 + e2, one(e1.c)), addc(e3 + e4, one(e1.c)),
          addc(exp_i(th[1] - th[3], D) + exp_i(th[2] - th[4], D), one(e1.c)))
    gv = (addc(e1 + e3, one(e1.c)), addc(e2 + e4, one(e1.c)),
          addc(exp_i(th[1] - th[2], D) + exp_i(th[3] - th[4], D), one(e1.c)))
    gh, gv
end

"""Second-order predictor of a side (float models): Newton in the space of truncated models,
phi <- phi - Y F(phi), Y = J(phi_c)^{-1}, started from the constant phi_c.  Each step gains one order."""
function side_predictor_f(phic::Vector{Float64}, gam, Y::Matrix{Float64}, D::Dom; steps=3)
    phi = [tmconst(phic[k]) for k in 1:6]
    for _ in 1:steps
        em, ed = side_exps(phi, D)
        F = side_F(em, ed, gam)
        phi = [phi[i] - lincomb(view(Y, i, :), F) for i in 1:6]
    end
    phi
end

"""Parametric Krawczyk test for one side on the box.  phip: the predictor (thin interval models), gam: the Gram
data (interval models), Y: a float approximation of J(phi_c)^{-1}.
  b_i >= sup_box |Y F(phip(u); theta(u))|_i,   A_ik >= sup |I - Y J(phip(u) + [-rho, rho]^6)|_ik.
If b + A rho < rho componentwise, then for every u in the box F(.; theta(u)) has exactly one zero in
phip(u) + [-rho, rho]^6, and it lies in phip(u) + [-(b + A rho), b + A rho].  (Mean-value form of
K(phi) = phi - Y F(phi); A rho < rho with rho > 0 gives ||D^-1 A D||_inf < 1, D = diag(rho), so every matrix of the
hull of J is nonsingular, and Y too.)  Returns the side models phip with remainder b + A rho, or nothing."""
function side_tube(phip::Vector{TM{I64}}, gam, Y::Matrix{Float64}, D::Dom)
    em, ed = side_exps(phip, D)
    F = side_F(em, ed, gam)
    b = [bound(lincomb(view(Y, i, :), F), D) for i in 1:6]
    rho = [sup(iv(2.0) * iv(b[i]) + iv(1e-300)) for i in 1:6]
    for _ in 1:12
        tube = [withrem(phip[k], rho[k]) for k in 1:6]
        em2, ed2 = side_exps(tube, D)
        cols = side_Jcols(em2, ed2)
        A = zeros(6, 6)
        for k in 1:6
            for i in 1:6
                acc = tmconst(iv(i == k ? 1.0 : 0.0))
                for (l, t) in cols[k]
                    acc = acc - scale(t, iv(Y[i, l]))
                end
                A[i, k] = bound(acc, D)
            end
        end
        need = [sup(iv(b[i]) + sum(iv(A[i, k]) * iv(rho[k]) for k in 1:6)) for i in 1:6]
        all(need[i] < rho[i] for i in 1:6) && return [withrem(phip[k], need[k]) for k in 1:6]
        any(sum(A[i, :]) >= 1 for i in 1:6) && return nothing
        rho = [max(rho[i], 1.5 * need[i]) for i in 1:6]
        maximum(rho) > 0.5 && return nothing
    end
    nothing
end

# ---------------------------------------------------------------- the side signature Psi

const PERMS3 = ((1, 2, 3), (1, 3, 2), (2, 1, 3), (2, 3, 1), (3, 1, 2), (3, 2, 1))
const SIGN3 = (1, -1, -1, 1, 1, -1)

"""Psi(S) = perm(S) det(S)^2 / prod_ab S_ab for S = e^{i X} (X a 3 x 3 matrix of real phase models).
perm and det are sums of e^{i(X_1s1 + X_2s2 + X_3s3)}; prod_ab S_ab = e^{i sum X}, of modulus 1."""
function psi_model(X::AbstractMatrix{TM{T}}, D::Dom) where {T}
    perm = nothing; dt = nothing
    for (s, sg) in zip(PERMS3, SIGN3)
        x = exp_i(X[1, s[1]] + X[2, s[2]] + X[3, s[3]], D)
        perm = perm === nothing ? x : perm + x
        y = sg == 1 ? x : -x
        dt = dt === nothing ? y : dt + y
    end
    tot = X[1, 1]
    for a in 1:3, b in 1:3
        (a, b) == (1, 1) && continue
        tot = tot + X[a, b]
    end
    mul(mul(perm, mul(dt, dt, D), D), exp_i(-tot, D), D)
end

"""Rigorous range [lo, hi] of a real model over the box."""
function tmrange(t::TM{I64}, D::Dom)
    v = iv(varb(t, D))
    inf(t.c - v), sup(t.c + v)
end

"""The sign of Im Psi on the box: +1 or -1 if certified, 0 if the range of Im Psi contains 0."""
function imsign(psi::TM{CI64}, D::Dom)
    lo, hi = tmrange(imp(psi), D)
    lo > 0 ? 1 : hi < 0 ? -1 : 0
end

"""Phase matrix of a side model: rows 0, phi[1:3], phi[4:6]."""
function side_phase_matrix(phi::Vector{TM{T}}) where {T}
    z = tmzero(T)
    [z z z; phi[1] phi[2] phi[3]; phi[4] phi[5] phi[6]]
end

# ---------------------------------------------------------------- 3 x 3 complex model matrices (nothing = exact 1)

const MaybeTM{T} = Union{Nothing,TM{T}}

mulm(a::Nothing, b, D) = b
mulm(a, b::Nothing, D) = a
mulm(a::Nothing, b::Nothing, D) = nothing
mulm(a::TM, b::TM, D) = mul(a, b, D)
cj(x::Nothing) = nothing
cj(x::TM) = conj(x)
addm(acc, x::TM) = acc === nothing ? x : acc + x
addm(acc, x::Nothing) = acc === nothing ? error("exact 1 summand") : addc(acc, one(acc.c))

"""(X Y*)_jl = sum_k X_jk conj(Y_lk) for 3 x 3 matrices of models (nothing = 1); the result has no exact ones."""
function mul_adj(X, Y, D::Dom, T)
    R = Matrix{TM{T}}(undef, 3, 3)
    for j in 1:3, l in 1:3
        acc = nothing
        for k in 1:3
            p = mulm(X[j, k], cj(Y[l, k]), D)
            acc = p === nothing ? (acc === nothing ? tmconst(one(T)) : addc(acc, one(T))) : addm(acc, p)
        end
        R[j, l] = acc
    end
    R
end

cmat(::Type{T}, f) where {T} = (M = Matrix{Union{Nothing,TM{T}}}(undef, 3, 3); for j in 1:3, k in 1:3; M[j, k] = f(j, k); end; M)
ctype(x::TM{T}) where {T} = Complex{T}
E_models(th, D) = (e = [exp_i(th[k], D) for k in 1:4];
                   cmat(ctype(th[1]), (j, k) -> (j == 1 || k == 1) ? nothing : e[2(j-2)+k-1]))
B_models(ph, D) = (e = [exp_i(ph[k], D) for k in 1:6]; cmat(ctype(ph[1]), (j, k) -> j == 1 ? nothing : e[3(j-2)+k]))
C_models(pv, D) = (e = [exp_i(pv[k], D) for k in 1:6]; cmat(ctype(pv[1]), (j, k) -> k == 1 ? nothing : e[3(k-2)+j]))

"""Second-order predictor of D (float models): Newton for the linear equation X B* = -C E*,
X <- X - (X B* + C E*) A0 with A0 = (B*_c)^{-1}, started from the centre value.  Each step gains one order."""
function D_predictor_f(Ef, Bf, Cf, D::Dom; steps=3)
    Bc = [x === nothing ? 1.0 + 0im : x.c for x in Bf]
    Ec = [x === nothing ? 1.0 + 0im : x.c for x in Ef]
    Cc = [x === nothing ? 1.0 + 0im : x.c for x in Cf]
    A0 = inv(Matrix(Bc'))
    X0 = -Cc * Ec' * A0
    X = [tmconst(X0[j, k]) for j in 1:3, k in 1:3]
    CE = mul_adj(Cf, Ef, D, ComplexF64)
    for _ in 1:steps
        XB = mul_adj(X, Bf, D, ComplexF64)
        Rm = [XB[j, l] + CE[j, l] for j in 1:3, l in 1:3]
        X = [X[j, k] - lincomb([A0[l, k] for l in 1:3], [Rm[j, l] for l in 1:3]) for j in 1:3, k in 1:3]
    end
    X
end

"""D as models: D = X_p - (C E* + X_p B*) (B*)^{-1}.  The residual R = C E* + X_p B* is evaluated in models and
bounded entrywise; |(B*)^{-1}| is bounded entrywise on the box by a Neumann series around A0 = (mid B*_c)^{-1}:
with E = I - A0 B*(u), |E| <= |I - A0 B*_c| + |A0| var(B*), q = ||E||_inf < 1,
|(B*)^{-1}| <= |A0| + q/(1 - q) ||A0||_inf (entrywise).  Then |D - X_p|_jk <= sum_l |R|_jl |(B*)^{-1}|_lk."""
function D_models(Ei, Bi, Ci, Xp, D::Dom)
    XpI = [toiv(Xp[j, k]) for j in 1:3, k in 1:3]
    CE = mul_adj(Ci, Ei, D, CI64)
    XB = mul_adj(XpI, Bi, D, CI64)
    Rb = [bound(CE[j, l] + XB[j, l], D) for j in 1:3, l in 1:3]
    # B*_jk = conj(B_kj)
    Bsc = Matrix{CI64}(undef, 3, 3); Bsv = zeros(3, 3)
    for j in 1:3, k in 1:3
        x = Bi[k, j]
        if x === nothing
            Bsc[j, k] = Complex(iv(1.0), iv(0.0)); Bsv[j, k] = 0.0
        else
            Bsc[j, k] = conj(x.c); Bsv[j, k] = varb(x, D)
        end
    end
    A0 = inv([Complex(mid(real(z)), mid(imag(z))) for z in Bsc])
    A0i = civ.(A0)
    q = 0.0
    for i in 1:3
        s = iv(0.0)
        for k in 1:3
            e = (i == k ? Complex(iv(1.0), iv(0.0)) : Complex(iv(0.0), iv(0.0))) - sum(A0i[i, l] * Bsc[l, k] for l in 1:3)
            s += iv(absup(e)) + sum(iv(abs(A0[i, l])) * iv(Bsv[l, k]) for l in 1:3)
        end
        q = max(q, sup(s))
    end
    q < 1 || return nothing
    nA0 = maximum(sup(sum(iv(abs(A0[i, l])) for l in 1:3)) for i in 1:3)
    tailb = sup(iv(q) / (iv(1.0) - iv(q)) * iv(nA0))
    Mb = [sup(iv(abs(A0[l, k])) + iv(tailb)) for l in 1:3, k in 1:3]
    [withrem(XpI[j, k], sup(sum(iv(Rb[j, l]) * iv(Mb[l, k]) for l in 1:3))) for j in 1:3, k in 1:3]
end

"""arg of a complex model on the branch near the float phase p: returns a real model whose value at each u is
p + Arg(D(u) e^{-ip}), Arg the principal argument.  With D e^{-ip} = c (1 + v), v = (D e^{-ip} - c)/c (no constant
term), Arg = Arg c + Im(v - v^2/2) + R with |R| <= |v|^3 / (3 (1 - |v|)) (the series of log(1 + v)).
Requires Re c > 0 and sup|v| < 1/2 on the box."""
function arg_near(Dm::TM{CI64}, p::Float64, D::Dom)
    pI = iv(p)
    Dp = scale(Dm, Complex(cos(pI), -sin(pI)))
    c0 = Dp.c
    inf(real(c0)) > 0 || return nothing
    a0 = atan(imag(c0), real(c0))
    d = real(c0)^2 + imag(c0)^2
    ic = Complex(real(c0) / d, -imag(c0) / d)                  # 1/c
    clo = abslo(c0)
    clo > 0 || return nothing
    v = TM{CI64}(Complex(iv(0.0), iv(0.0)), map(x -> ic * x, Dp.g), map(x -> ic * x, Dp.q), sup(iv(Dp.r) / iv(clo)))
    V = bound(v, D)
    V < 0.5 || return nothing
    w = v - scale(mul(v, v, D), iv(0.5))
    Rlog = sup(iv(V)^3 / (iv(3.0) * (iv(1.0) - iv(V))))
    TM{I64}(pI + a0 + imag(w.c), map(imag, w.g), map(imag, w.q), addu(w.r, Rlog))
end

# ---------------------------------------------------------------- the whole map on one box

struct BoxMap
    ok::Bool
    why::String
    Q::Vector{TM{I64}}                  # 36 phase models (row-major), radians
    ph::Vector{TM{Float64}}             # float side predictors centred at wcm (guesses for nearby boxes)
    pv::Vector{TM{Float64}}
    wcm::NTuple{4,Float64}
end
BoxFail(why) = BoxMap(false, why, TM{I64}[], TM{Float64}[], TM{Float64}[], (0.0, 0.0, 0.0, 0.0))

"""Float seed theta0 + Mth w."""
theta_f(theta0, Mth, w) = [theta0[k] + sum(Mth[k, j] * w[j] for j in 1:4) for k in 1:4]

"""Seed models on the box {wc + u : |u_j| <= h_j}: theta_k(u) = theta0_k + (Mth wc)_k + (Mth u)_k.  wc may be an
interval vector: then the models hold for every point of it."""
function theta_models(theta0, Mth, wc::NTuple{4,I64})
    [TM{I64}(iv(theta0[k]) + sum(iv(Mth[k, j]) * wc[j] for j in 1:4), ntuple(j -> iv(Mth[k, j]), 4),
             ntuple(_ -> iv(0.0), 10), 0.0) for k in 1:4]
end
theta_models_f(theta0, Mth, wcm::NTuple{4,Float64}) =
    [TM{Float64}(theta0[k] + sum(Mth[k, j] * wcm[j] for j in 1:4), ntuple(j -> Mth[k, j], 4), ntuple(_ -> 0.0, 10), 0.0)
     for k in 1:4]

"""Side guesses at the float point w from a float predictor centred at wcm."""
function guess_at(bm::BoxMap, w)
    u = ntuple(j -> w[j] - bm.wcm[j], 4)
    [peval(t, u) for t in bm.ph], [peval(t, u) for t in bm.pv]
end

"""The 36 phase models of H_o(theta) for theta in {theta0 + Mth (wc + u) : |u_j| <= h_j}.  Certifies on the way:
both sides by parametric Krawczyk, sign Im Psi(B) = o and sign Im Psi(V) = -o, the forced block D, and its args.
P (36, radians) fixes the branches of arg D; gh0, gv0 are float guesses for the sides at the box centre."""
function box_map(theta0, Mth, o::Int, P::Vector{Float64}, wc::NTuple{4,I64}, h::NTuple{4,Float64}, gh0, gv0)
    D = Dom(h)
    wcm = ntuple(j -> mid(wc[j]), 4)
    thc = theta_f(theta0, Mth, wcm)
    ghf, gvf = gammas_f(thc)
    phc = side_newton_f(gh0, ghf); pvc = side_newton_f(gv0, gvf)
    (phc === nothing || pvc === nothing) && return BoxFail("float Newton at the centre")
    Jh = sideJ_f(phc); Jv = sideJ_f(pvc)
    (abs(det(Jh)) > 1e-12 && abs(det(Jv)) > 1e-12) || return BoxFail("singular side Jacobian at the centre")
    Yh = inv(Jh); Yv = inv(Jv)
    # float predictors
    thf = theta_models_f(theta0, Mth, wcm)
    ghF, gvF = gammas(thf, D)
    phF = side_predictor_f(phc, ghF, Yh, D)
    pvF = side_predictor_f(pvc, gvF, Yv, D)
    # rigorous sides
    th = theta_models(theta0, Mth, wc)
    gh, gv = gammas(th, D)
    ph = side_tube(map(toiv, phF), gh, Yh, D)
    ph === nothing && return BoxFail("Krawczyk (horizontal side)")
    pv = side_tube(map(toiv, pvF), gv, Yv, D)
    pv === nothing && return BoxFail("Krawczyk (vertical side)")
    # orientation and matching
    imsign(psi_model(side_phase_matrix(ph), D), D) == o || return BoxFail("orientation: sign Im Psi(B) != o")
    imsign(psi_model(side_phase_matrix(pv), D), D) == -o || return BoxFail("matching: sign Im Psi(V) != -o")
    # forced block
    Ef = E_models(thf, D); Bf = B_models(phF, D); Cf = C_models(pvF, D)
    Xp = D_predictor_f(Ef, Bf, Cf, D)
    Ei = E_models(th, D); Bi = B_models(ph, D); Ci = C_models(pv, D)
    Dm = D_models(Ei, Bi, Ci, Xp, D)
    Dm === nothing && return BoxFail("Neumann bound for (B*)^-1")
    Q = Vector{TM{I64}}(undef, 36)
    z = tmzero(I64)
    for e in 1:36
        Q[e] = z
    end
    at(a, b) = 6(a - 1) + b
    Q[at(2, 2)] = th[1]; Q[at(2, 3)] = th[2]; Q[at(3, 2)] = th[3]; Q[at(3, 3)] = th[4]
    for k in 1:3
        Q[at(2, 3 + k)] = ph[k]; Q[at(3, 3 + k)] = ph[3+k]
        Q[at(3 + k, 2)] = pv[k]; Q[at(3 + k, 3)] = pv[3+k]
    end
    for j in 1:3, k in 1:3
        a = arg_near(Dm[j, k], P[at(3 + j, 3 + k)], D)
        a === nothing && return BoxFail("arg of D")
        Q[at(3 + j, 3 + k)] = a
    end
    BoxMap(true, "ok", Q, phF, pvF, wcm)
end

"""Float side guesses at theta0 read off the centre P: phi_h = (P[2,4:6], P[3,4:6]), phi_v = (P[4:6,2], P[4:6,3])."""
function guess_from_P(P::Vector{Float64})
    at(a, b) = P[6(a - 1) + b]
    [at(2, 4), at(2, 5), at(2, 6), at(3, 4), at(3, 5), at(3, 6)], [at(4, 2), at(5, 2), at(6, 2), at(4, 3), at(5, 3), at(6, 3)]
end

# Tao's zero-dimensional record (SPEC §3, FORMAT.md §2 "tao"; the lemma of proof/atlas/tao.py's docstring):
# the ball B = {e^{i(P + delta)} : delta horizontal, ||delta|| <= R} around P, the binary64 value of 2 pi K / 3
# computed as (2 pi) K / 3 with 2 pi = 2 Float64(pi), K the integer matrix of S6.  With no tangent directions every
# delta of a Hadamard in B is "normal", so the record lemma reads: sigma ||delta|| - (L/2) ||delta||^2 <= e0.
#   * containment: R > ||2 pi K/3 - P|| (in intervals), so S6 itself, as e^{i(P + h(2 pi K/3 - P))}, lies in B.
#   * sigma: ||J nu|| >= sigma ||nu|| on the whole horizontal space, by the interval Cholesky factorisation of
#     h J^T J h + mu (I - h) - sigma^2 I (as in the existing normal bound, with the projector h in place of Pi).
#   * isolation: L R < sigma, so B holds no Hadamard other than the one at ||delta|| <= n; in particular its boundary
#     holds none, and the record needs no boundary transfers.
#   * the normal bound n = 2 e0 / (sigma + sqrt(sigma^2 - 2 L e0)) and Stage C on B (the existing Stage C with a zero
#     frame: rH = 0, rcol = n, rF = min(R, n)).

const TAO_K = [0 0 0 0 0 0; 0 0 1 1 2 2; 0 1 0 2 2 1; 0 1 2 0 1 2; 0 2 2 1 0 1; 0 2 1 2 1 0]

struct TaoResult
    ok::Bool
    msg::String
    sigma::Float64
    e0::Float64
    n::Float64
    stagec::Union{Nothing,IA.StageCResult}
end

function check_tao(R::Float64, lr::Float64; replay::Bool=true)
    P = [2 * Float64(π) * TAO_K[a, b] / 3 for a in 1:6, b in 1:6]
    bad(msg, s=NaN, e=NaN) = TaoResult(false, msg, s, e, NaN, nothing)
    d0 = sup(sqrt(sum((TWOPI_I * iv(Float64(TAO_K[a, b])) / iv(3.0) - iv(P[a, b]))^2 for a in 1:6, b in 1:6)))
    d0 < R || return bad(@sprintf("the ball does not contain S6: R = %.3g <= ||2 pi K/3 - P|| <= %.3g", R, d0))
    J, Phi0 = IA.jacobian_interval(P)
    Hm = IA.HMAT
    A = Hm * (transpose(J) * J) * Hm
    Jf = mid.(J); Hf = mid.(Hm)
    mu = opnorm(Jf)^2 + 1.0
    lmin = eigmin(Symmetric(Hf * (Jf' * Jf) * Hf + mu * (I - Hf)))
    lmin > 0 || return bad("sigma: no positive smallest eigenvalue")
    s2 = lmin * (1 - 1e-6); certified = false
    for _ in 1:12
        M = Matrix{I64}(A + iv(mu) * (I - Hm) - iv(s2) * I)
        if IA.interval_cholesky_pd(M)
            certified = true; break
        end
        s2 *= 0.999
    end
    certified || return bad("sigma: interval Cholesky failed")
    sigma = inf(sqrt(iv(s2)))
    e0 = sup(sqrt(sum(x^2 for x in Phi0)))
    L = IA.L_I
    sup(L * iv(R)) < sigma || return bad(@sprintf("isolation: L R = %.6g >= sigma = %.6g", sup(L * iv(R)), sigma), sigma, e0)
    disc = iv(sigma)^2 - 2 * L * iv(e0)
    inf(disc) > 0 || return bad("sigma^2 - 2 L e0 not positive", sigma, e0)
    n = sup(2 * iv(e0) / (iv(sigma) + sqrt(disc)))
    rec = IA.Rec(-1, true, R, lr, P, zeros(Int64, 36, 4), IA.Target[])
    nb = IA.NormalBound(true, "tao", sigma, e0, 0.0, 0.0, 0.0, 0.0, e0, n, 0.0, n, min(R, n), zeros(Int64, 36, 4))
    sc = IA.stage_c(rec, nb; replay=replay)
    TaoResult(sc.ok, sc.ok ? "ok" : "Stage C: " * sc.msg, sigma, e0, n, sc)
end

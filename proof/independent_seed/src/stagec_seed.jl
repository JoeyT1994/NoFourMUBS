# Stage C on a seed ball's enclosure (SPEC §2): every Hadamard of the ball is e^{i(P + delta)}, delta = U w + nu,
# ||w|| <= r, ||nu|| <= n.  The existing Stage C (IndepAtlas.stage_c, unchanged) takes a record and its normal bound
# with an integer frame T = T36 / (36 * 2^30).  We pass T36 = round(U * 36 * 2^30) and absorb the frame rounding into
# the normal term:
#     delta = T w + nu',   nu' = (U - T) w + nu,   ||nu'|| <= n' = n + ||U - T||_F r   (computed exactly, in intervals).
# The enclosure for Stage C therefore contains the spec's enclosure, so its exclusion covers every delta of the ball.
# The column and Frobenius bounds are those of the spec, for delta itself (all upper bounds, in intervals):
#     rcol = max_i ||U_(.,i)||_2 r + n   (U_(.,i): the 6 x 4 block of rows e = 6j + i, i.e. column i of the matrix),
#     rF   = ||U||_2 r + n.
# Stage C converts these radians to cycles itself (dividing by 2 pi, upward), and reads label_radius in cycles.

struct SeedStageInputs
    T36::Matrix{Int64}
    nprime::Float64
    rcol::Float64
    rF::Float64
    frame_err::Float64     # upper bound of ||U - T||_F
end

function seed_stage_inputs(s::Seed)
    T36 = round.(Int64, s.U .* Float64(IA.FRAME_DEN))
    Ti = IA.frame_interval(T36)                       # encloses T36 / (36 2^30) exactly
    Ui = iv.(s.U)
    err = sup(sqrt(sum((Ui[e, k] - Ti[e, k])^2 for e in 1:36, k in 1:4)))
    nprime = sup(iv(s.n) + iv(err) * iv(s.r))
    tcol = maximum(IA.opnorm_upper(Ui[[6(j-1)+i for j in 1:6], :]) for i in 1:6)
    rcol = sup(iv(tcol) * iv(s.r) + iv(s.n))
    rF = sup(iv(IA.opnorm_upper(Ui)) * iv(s.r) + iv(s.n))
    SeedStageInputs(T36, nprime, rcol, rF, err)
end

"""Run the existing Stage C on the seed ball's enclosure.  replay = true re-decides every float rejection in
interval arithmetic (the default of the existing checker)."""
function seed_stage_c(s::Seed; replay::Bool=true)
    si = seed_stage_inputs(s)
    P6 = [s.P[6(j-1)+c] for j in 1:6, c in 1:6]
    rec = IA.Rec(s.idx, true, NaN, s.lr, P6, zeros(Int64, 36, 4), IA.Target[])
    # NormalBound(ok, msg, sigma, e0, j1, lam_max, gH, rH, b, n, tcol, rcol, rF, T36): Stage C reads rH, n, rcol, rF, T36
    nb = IA.NormalBound(true, "seed ball", NaN, NaN, NaN, NaN, NaN, s.r, NaN, si.nprime, NaN, si.rcol, si.rF, si.T36)
    IA.stage_c(rec, nb; replay=replay), si
end

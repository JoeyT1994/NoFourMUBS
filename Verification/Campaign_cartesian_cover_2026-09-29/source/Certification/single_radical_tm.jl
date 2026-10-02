# Taylor-model version of the seed coefficients of single_radical.jl.
include("ctm.jl")

function adj3_tm(A)
    [begin
        rows = [r for r in 1:3 if r != j]; cols = [c for c in 1:3 if c != i]
        m = A[rows, cols]; (-1)^(i + j) * (m[1,1]*m[2,2] - m[1,2]*m[2,1])
     end for i in 1:3, j in 1:3]
end

function moment_side_tm(K, zeta, g)
    s, t, r = K[2,1], K[3,1], K[3,2]
    X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    P = [r*s*s + conj(r)*t*t + (3 - Z)*s*t,
         t*conj(s)*conj(s) + r*r*conj(t) + (3 - Y)*r*conj(s),
         s*conj(t)*conj(t) + conj(r)*conj(r)*conj(s) + (3 - X)*conj(r)*conj(t)]
    c = [9 - Z, 9 - Y, 9 - X]
    lam = [cdiv_tm(g + c[j]*conj(zeta), conj(P[j])) for j in 1:3]
    ux = lam[1]*conj(lam[2]); uy = lam[1]*conj(lam[3]); Pi = zeta*lam[1]
    sx2 = s*s - 2*ux*conj(s); sy2 = t*t - 2*uy*conj(t); sxy = s*t - Pi
    three = one(s)*3
    NX = [s three conj(r); sx2 s s*conj(r)-ux*conj(Pi); sxy t s]
    NY = [t r three; sxy t s; sy2 t*r-uy*conj(Pi) t]
    (s = s, t = t, NX = NX, NY = NY)
end

function seed_coeffs_tm(theta)
    a, b, c, d = cex_tm.(theta)
    o = one(a)
    E = [o o o; o a b; o c d]
    EE = mmul(E, cadj(E)); EtE = mmul(cadj(E), E)
    G = [(i == j ? 6 - EE[i, j] : -EE[i, j]) for i in 1:3, j in 1:3]
    T = [(i == j ? 6 - EtE[i, j] : -EtE[i, j]) for i in 1:3, j in 1:3]
    s, t, r = G[2,1], G[3,1], G[3,2]
    X, Y, Z = absq_tm(s), absq_tm(t), absq_tm(r)
    p = X + Y + Z; J = 2*real(s*r*conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4*g*g*eta - chi*chi
    zeta = CTM(chi / (2g), sqrt(R) / (2g))
    (E = E, g = g, R = R, JG = adj3_tm(G), JT = adj3_tm(T),
     h = moment_side_tm(G, zeta, g), v = moment_side_tm(T, zeta, g))
end

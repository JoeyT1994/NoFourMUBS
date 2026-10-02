# Julia port of MinimalConstruction/Implementation/single_radical.py (positive sheet),
# generic over Float64 / Interval (and ForwardDiff duals of either).  Branch-free:
# complex division is a*conj(b)/|b|^2 and the only root is the real sqrt(R), R > 0.
#
# Seed coefficients  C(theta) = (g, E, JG, JT, sides G/T with s, t, NX, NY)
# Ray variables      phi in R^5:  x = (1, e^{i phi1}, e^{i phi2}),  p = (e^{i phi3}, e^{i phi4}, e^{i phi5})
# Equations (all real): N, and Re/Im of F_{X,v}, F_{Y,v}, F_{X,h}, F_{Y,h}  (9 real, rank 5 on rays)
# Overlap:           <v, v'> = [ g <x,x'> + <z, JT z'> ] / g,   z = sqrt6 p - E^dag x.
using LinearAlgebra

absq(z) = real(z)^2 + imag(z)^2
cdiv(a, b) = a * conj(b) / absq(b)
cex(t) = Complex(cos(t), sin(t))
hdot(a, b) = sum(conj(a[i]) * b[i] for i in eachindex(a))      # <a,b> = a^dag b

function adj3(A)
    B = similar(A)
    for i in 1:3, j in 1:3
        rows = [r for r in 1:3 if r != j]; cols = [c for c in 1:3 if c != i]
        m = A[rows, cols]; B[i, j] = (-1)^(i + j) * (m[1,1]*m[2,2] - m[1,2]*m[2,1])
    end
    B
end

function moment_side(K, zeta, g)
    s, t, r = K[2,1], K[3,1], K[3,2]
    X, Y, Z = absq(s), absq(t), absq(r)
    P = [r*s*s + conj(r)*t*t + (3 - Z)*s*t,
         t*conj(s)*conj(s) + r*r*conj(t) + (3 - Y)*r*conj(s),
         s*conj(t)*conj(t) + conj(r)*conj(r)*conj(s) + (3 - X)*conj(r)*conj(t)]
    c = [9 - Z, 9 - Y, 9 - X]
    lam = [cdiv(g + c[j]*conj(zeta), conj(P[j])) for j in 1:3]
    ux = lam[1]*conj(lam[2]); uy = lam[1]*conj(lam[3]); Pi = zeta*lam[1]
    sx2 = s*s - 2*ux*conj(s); sy2 = t*t - 2*uy*conj(t); sxy = s*t - Pi
    o = one(s)
    NX = [s 3o conj(r); sx2 s s*conj(r)-ux*conj(Pi); sxy t s]
    NY = [t r 3o; sxy t s; sy2 t*r-uy*conj(Pi) t]
    (s = s, t = t, NX = NX, NY = NY)
end

function seed_coeffs(theta)
    a, b, c, d = cex.(theta)
    o = one(a); E = [o o o; o a b; o c d]
    G = 6I - E*E'; T = 6I - E'*E
    s, t, r = G[2,1], G[3,1], G[3,2]
    X, Y, Z = absq(s), absq(t), absq(r)
    p = X + Y + Z; J = 2*real(s*r*conj(t)); W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4g^2*eta - chi^2
    zeta = Complex(chi, sqrt(R)) / (2g)
    (E = E, g = g, R = R, JG = adj3(G), JT = adj3(T),
     h = moment_side(G, zeta, g), v = moment_side(T, zeta, g))
end

function xp_of(phi)
    x = [one(cex(phi[1])), cex(phi[1]), cex(phi[2])]
    p = [cex(phi[3]), cex(phi[4]), cex(phi[5])]
    x, p
end

"""9 real equations of a common-unbiased ray (zero exactly on physical rays)."""
function ray_eqs(phi, C)
    x, p = xp_of(phi)
    z = sqrt(6)*p - C.E'*x; h = sqrt(6)*x - C.E*p
    av = C.JT*z; ah = C.JG*h; g = C.g
    N = real(hdot(z, C.JT*z)) - 3g
    fx_v = hdot(av, C.v.NX*av) - g*g*C.v.s; fy_v = hdot(av, C.v.NY*av) - g*g*C.v.t
    fx_h = hdot(ah, C.h.NX*ah) - g*g*C.h.s; fy_h = hdot(ah, C.h.NY*ah) - g*g*C.h.t
    [N, real(fx_v), imag(fx_v), real(fy_v), imag(fy_v), real(fx_h), imag(fx_h), real(fy_h), imag(fy_h)]
end

"""<v,v'> for two rays given by phase vectors (raw unimodular rays)."""
function overlap(phi, phi2, C)
    x, p = xp_of(phi); x2, p2 = xp_of(phi2)
    z = sqrt(6)*p - C.E'*x; z2 = sqrt(6)*p2 - C.E'*x2
    (C.g*hdot(x, x2) + hdot(z, C.JT*z2)) / C.g
end

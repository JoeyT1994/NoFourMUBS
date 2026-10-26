# Exact certificate format and kernel replay

## Status — CERTIFIED

The certificate is `certificates/hodge_integer_cofactors.json`. Its coefficients are integers; it contains no floating-point numbers, tolerance bounds, point evaluations, inferred ranks, or opaque algebra-system results.

## Variables and polynomial representation — CERTIFIED

Variable IDs 0–17 are `A_00,...,A_25` in row-major order; 18–35 are `C_00,...,C_25`; ID 36 is `kappa`.

A polynomial is an array of terms `[coefficient, monomial]`. A monomial is a sorted list of variable IDs with repetitions. For example `[ -1, [0,19] ]` encodes `-A_00*C_01`; `[1,[36]]` encodes `kappa`. An empty monomial encodes the constant one. Zero coefficients and duplicate monomials are not needed. The checker validates the encoding and regenerates all data canonically.

This encoding is readily convertible to ordinary exponent vectors or Horner expressions for a proof assistant. The delivered checker uses only a dictionary, integer addition, multiplication and exact coefficient comparison.

## Residual generators — CERTIFIED

For each increasing three-subset `J` of `{0,...,5}`, the certificate explicitly expands

    r_J = det(A[:,J]) - kappa * (-1)^(sum(J)-3) * det(C[:,J^c]).

There are twenty such generators. Each has twelve monomials: six from each determinant, with `kappa` attached to the second group.

## Cofactor identities — CERTIFIED

For every increasing pivot triple `P=(j0,j1,j2)` and every `r,s in {0,1,2}`, the target is

    kappa * det(C[:,P]) * sum_k A[r,k] C[s,k].

The record contains twelve explicit polynomial cofactors multiplying residual generators. The complete identity is

    kappa det(C[:,P]) (A C^T)[r,s]
      = sum_(t=0..2) sum_(k in K_t)
           (-1)^(t+sum(L_t)+1+pos_(K_t)(k))
           C[s,j_t] A[r,k] r_(K_t \ {k}),

where `L_t=P\{j_t}` and `K_t=L_t^c`. Every cofactor is `+A[r,k] C[s,j_t]` or its negative, with the actual indices and sign stored. There are 20*9=180 identities and 180*12=2160 cofactor records.

A kernel port need only expand determinants, multiply the explicit cofactors, collect integer coefficients and verify equality. Applying the identities analytically requires only a nonzero `kappa` and one nonzero pivot of `C`. Those nonzero facts are proved, not certified by samples, in REPORT.md §§4–7.

## Complementary inverse identity — PROVED / CERTIFIED

The checker independently expands, for all twenty `I` and twenty `K`,

    sum_(|J|=3) eps(K) eps(J)
        det(H[I,J]) det(H[K^c,J^c])
       = (det H if I=K else 0),

where `eps(J)=(-1)^(sum(J)-3)`. Thus the matrix with `(J,K)` entry

    eps(K) eps(J) det(H[K^c,J^c])

is `det(H)` times the inverse of the third compound matrix. The code also expands the universal Cauchy–Binet identity. Under `HH†=6I`, Cauchy–Binet supplies the alternative inverse with entries `conj(det H[K,J])/216`. Equality of these inverses proves the complementary-minor formula with every sign fixed. Determinants of a unitary-scaled matrix are nonzero by the usual determinant product identity.

## Other replayed identities — CERTIFIED

The code additionally reconstructs the nine-variable determinant/permanent identity (REPORT §3), the scalar complementary-Psi reduction with explicit cofactor `-2*d*db` multiplying `tau*taubar-1`, and three twelve-variable row-replacement Cramer identities. It checks all finite moment-label and sign bookkeeping, and does exact arithmetic for Fourier and Tao in the quadratic ring `Z[omega]/(omega^2+omega+1)`.

The certificate data do not attempt to encode the whole analytical proof or the already permitted upstream inputs. The copied upstream files and their provenance are separate. A Lean port would combine those results with the elementary paper lemmas and these exact finite identities; no assertion that such a port has already been compiled is made.

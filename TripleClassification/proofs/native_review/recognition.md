# Recognition audit: questions 2–6

Reviewed package: `TC_native_review_20261101`. Its frozen files were not modified.

## Result and scope

The recognition implication is valid under the project's stated use of common
ambient unitaries, independent column monomials, and permutations of the three
bases. It was checked directly here, rather than treating the prior audit as
evidence. The word "nearby" in the checkpoint's introduction of the block form
(the SM's Fourier block form) does not restrict the argument:
the same form follows globally from unitarity. The positive-amplitude bound
applies to every transition obtained this way. There are no omitted zero
denominators or dependent cases.

There is a **minor exposition defect** in the last product-case equivalence:
`refs/01_recognition_CHECKPOINT_r0153.md:645` invokes simultaneous complex
conjugation, although the supplied theorem statement does not explicitly add
antiunitaries to its equivalence relation. No antiunitary is necessary. The
explicit unitary identity below repairs this sentence, using the exchange of
the first two bases already permitted by the project reduction. This is not a
counterexample or an obstruction to either classification claim of the certifier.

This audit does not independently reprove the full Jacobian-rank, crossing,
or product-isolation theorems. None of those is required to show that a triple
with the forced symmetry belongs to the asserted two classes. The adjective
"isolated" is inherited from the separate rank-55 computation.

| Question | Assessment | Reason |
|---|---|---|
| 2: global cyclic form and block form (the SM's cyclic form and Fourier block form) | **Verified** | Orbit normalization and row orthogonality give the cyclic form, and any unitary 2-by-2 block has the block form. |
| 3: amplitudes and dependent cases | **Verified** | The top unit-entry circulants alone imply both discriminant inequalities, and the resulting strict amplitude bound makes all divisions legal. Both alternatives for w_t (the SM's paragraph on the algebraic recognition of the symmetric triples) follow from an equilateral-triple argument. |
| 4: equivalence of product signs | **Verified after replacing the conjugation sentence by the unitary identity below** | The supplied statement does not explicitly authorize complex conjugation, but F̂₂ ⊗ F̂₃ and a swap of bases give the equivalence without it. |
| 5: all anchors and permutations of bases | **Verified for the intended equivalence** | Reanchoring uses one common ambient unitary and reorders the three bases. Those operations are explicitly used in `refs/06_TripleClassification_README.md:83–92`. The target is the union of their equivalence classes. |
| 6: fixed phase arrays imply an actual balanced symmetry | **Verified for every admissible action** | Explicit unitaries are diagonal at anchor I₆ and row-permutation matrices at anchors H/K, and common row-gauge conjugation returns the symmetry to the original triple. |

## 1. Global derivation of cyclic coordinates

The hypotheses are an actual MUB triple and a unitary T whose cube is scalar,
whose normalized eigenvalues are 1, omega, omega-squared each with multiplicity
two, which fixes one basis as rays and acts on each other basis by two
three-cycles. Normalize the scalar so T cubed is the identity. Apply the
adjoint of the anchor basis as **one common** ambient unitary, then order its
coordinate rays by the three eigenvalues. Thus rows are indexed by
`(t,a) in Z3 x Z2` and T acts by multiplication by `omega^t`, so that T is the
paper's diag(1,1,ω,ω,ω²,ω²).

For every three-cycle of either non-anchor basis, choose a first vector and
take its successive images under T as the other two vectors. These differ
from the original vectors only by column phases and a column order. This is
consistent around the cycle because T cubed is the identity. The unit-entry
matrices therefore have the form

    H_(ta,sb) = omega^(ts) h_(ta,b),
    K_(ta,sb) = omega^(ts) k_(ta,b),

with every h and k of unit modulus. A shared row phase makes `h_(ta,0)=1`.
Orthogonality of the two H rows `(t,0)` and `(t,1)` now reads

    3 [1 + h_(t0,1) conjugate(h_(t1,1))] = 0.

Hence `h_(t1,1)=-h_(t0,1)` and the H formula of the SM's cyclic form follows with
`x_t=h_(t0,1)`. The same K row orthogonality, after putting
`u_t=k_(t0,0)` and `v_t=k_(t1,0)`, gives

    k_(t0,1)/u_t = - k_(t1,1)/v_t = y_t.

This is exactly the K formula of the SM's cyclic form. All divisions are by unit entries.
There is no generic-position assumption and no independent ambient
normalization of H and K. This supplies the omitted algebra behind
`CHECKPOINT:29–46`.

The common cyclic action on both non-anchor column orbits makes their
transition matrix a two-by-two matrix of three-by-three circulants. It is
unitary and, by mutual unbiasedness, all its entries have modulus
`1/sqrt(6)`. Write its top blocks as `C(a)/sqrt(6), C(b)/sqrt(6)` for unit
triples a and b. Fourier diagonalization of the circulants gives unitary
two-by-two matrices with top row `(alpha_t,beta_t)`.

Every two-by-two unitary with that top row has bottom row

    (z_t conjugate(beta_t), -z_t conjugate(alpha_t)),  |z_t|=1.

For example `z_t=-det(C_t)` establishes this without dividing by alpha or
beta. This proves the SM's Fourier block form **globally**, even before establishing that the
amplitudes are nonzero. The original wording "general nearby cyclic
transition" at `CHECKPOINT:510` describes the use made of it in the tangent
calculation, and its algebraic derivation does not require nearness.

## 2. The amplitude inequalities apply globally

The top-row norm of every Fourier block gives
`|alpha_t|^2+|beta_t|^2=1`. Fourier inversion is exactly
`gamma(a)+gamma(b)=0`, independently of the phases z. Thus the hypotheses of
the discriminant calculation in `CHECKPOINT:250–274` apply to the top
circulants of every symmetric triple.

For clarity, let the three unit ratios of a be d0,d1,d2 with product one.
Their elementary symmetric functions are `gamma, conjugate(gamma), 1`, so
they are the roots of

    f(z) = z^3 - gamma z^2 + conjugate(gamma) z - 1.

Their squared Vandermonde is nonpositive real: writing each d as a unit
phase turns its product into minus 64 times a product of squared real sine
terms. The cubic discriminant is

    disc(f) = q^2 + 18q - 27 - 8p,
    q=|gamma|^2, p=Re(gamma^3).

Applying the same argument to b, whose correlation is minus gamma, proves
both inequalities 27 − 18q − q² ± 8p ≥ 0 of the SM's amplitude bounds. Adding them gives

    q^2 + 18q - 27 <= 0,
    0 <= q <= 6 sqrt(3)-9 < 3/2.

The exact Fourier amplitudes are those of the SM's amplitude bounds, so each of alpha and beta satisfies

    |alpha_t|^2, |beta_t|^2
       >= [3 - 2 sqrt(6 sqrt(3)-9)]/6 > 0.

Even the weaker bound `> 1/2 - 1/sqrt(6) > 0` is sufficient. Consequently
all amplitude ratios used in the checkpoint's Section 6.2, all `r_t=|alpha_t beta_t|`, and
all divisions in the flat lift are strictly nonzero. Repeated roots of the
ratio polynomial and vanishing discriminants cause no exception.

## 3. Bottom flatness, dependence, and completeness of the alternatives for w

Flatness of the top unit-entry circulants gives

    sum_t conjugate(alpha_t) alpha_(t+1) = 0,
    sum_t conjugate(beta_t) beta_(t+1) = 0.

The lower Fourier rows of the block form give exactly the bottom-flatness equations
of the SM's recognition equations, with
`w_t=z_t conjugate(z_(t+1))`. The sign/conjugation is correct: for the lower
beta block its cyclic correlation is

    sum_t z_t conjugate(z_(t+1)) conjugate(beta_t) beta_(t+1).

Also `|w_t|=1` and `product_t w_t=1`.

If the two coefficient rows A and B are linearly independent, their common
kernel is one-dimensional and already contains `(1,1,1)`, hence w is
constant. Product one makes it a cube root. A cyclic row shift of the lower
transition orbit and a scalar orbit phase turn z into the constant one.
These are column monomials of the original H basis. The resulting
transition is the complementary-circulant form.

If A and B are dependent, none of their entries vanishes. Put
`rho_t=|alpha_t|^2/|beta_t|^2>0`. Dependence implies
`rho_t rho_(t+1)` is constant. Dividing its three equalities gives all rho
equal. Parseval gives equal total squared norms `sum |alpha_t|^2 =
sum |beta_t|^2 = 3/2`, so rho is one and every amplitude square is 1/2.
The SM's amplitude formula then gives gamma zero. This is a global argument, not just the
tangent conclusion originally drawn at `CHECKPOINT:528–538`.

After allowed scalar orbit phases normalize `a_0=b_0=1`, a zero-correlation
unit triple is necessarily

    a_s=omega^(epsilon s^2 + ell s),
    b_s=omega^(eta s^2 + m s),

where epsilon and eta are plus or minus one. Indeed, its consecutive ratios
are three unit numbers of zero sum and product one, hence a permutation of
the three cube roots, and every permutation of three elements is affine over
Z3. The Gauss sums are exactly those of the SM's paragraph on the algebraic recognition of the symmetric triples. They give
`A_t = constant * omega^(epsilon t)` and
`B_t = constant * omega^(eta t)`, so dependence means epsilon equals eta.

The remaining equation is an equal-modulus zero sum

    sum_t w_t omega^(epsilon t)=0.

Its three terms must be an equilateral triple. Write their permutation as
`omega^(a t+b)` with `a=+1` or `-1`. The common scalar is a cube root because
the product of the w's is one. If `a=epsilon`, w is constant. If
`a=-epsilon`, its exponent slope is `-2epsilon=epsilon` modulo three.
This proves precisely the two alternatives w_t = ω^j and w_t = ω^j ω^(εt) of
the SM's paragraph on the algebraic recognition of the symmetric triples. No third alternative
or continuous residual phase remains.

## 4. Why recognition of the transition recognizes the full triple

This can be verified without assuming uniqueness of an arbitrary unitary
factorization. In the cyclic coordinates, a local flat factorization of a
Fourier block is

    H_t = (1/sqrt(2)) [[1,x_t],[1,-x_t]],
    K_t = (1/sqrt(2)) [[u_t,u_t y_t],[v_t,-v_t y_t]].

Equating H_t†K_t with the SM's Fourier block form gives

    u_t = alpha_t + x_t z_t conjugate(beta_t),
    v_t = alpha_t - x_t z_t conjugate(beta_t).

The unit moduli of u and v, together with the nonzero amplitudes, force

    x_t z_t = +/- i alpha_t beta_t / |alpha_t beta_t|.

The positive choice is exactly the SM's canonical lift, with x
replaced by `z_t^-1 x_t`, which is the SM's dependent lift.
The negative choice is a common interchange of the two anchor coordinates
in that eigenspace. It swaps u and v and changes both x and y in sign.
It therefore supplies no additional class. This proves the asserted lift
uniqueness up to the permitted gauges and row-pair swaps.

In the nonconstant dependent case, integrate w as in the checkpoint:

    z_t = scalar * omega^(-j t - epsilon t(t-1)/2).

Modulo three, its quadratic coefficient is epsilon. The canonical x has
that same coefficient, so `z_t^-1 x_t` is a scalar times a cubic linear
character. The canonical y is also such a character, while

    u_t = scalar * omega^(-epsilon (t+ell)^2),
    v_t = -i u_t.

Independent cyclic shifts and phases of H and K's column orbits remove the
linear characters and constants. Reordering tensor factors if desired,
the triple becomes, with F̂ₙ = Fₙ/√n the normalized Fourier matrix,

    I₆,
    F̂₂ ⊗ F̂₃,
    (diag(1,-i) F̂₂) ⊗ (D_sigma F̂₃),

where `D_sigma=diag(omega^(sigma t^2))`, `sigma=-epsilon`.
The qubit bases diag(1,−i)F̂₂ and diag(1,i)F̂₂ differ only by a swap of
their two columns. This is the product type claimed by the checkpoint.

## 5. Explicit product-sign equivalence without conjugation

Let Y2 = diag(1,i)F̂₂, and let `P_sigma e_s=e_(sigma s)` for qutrit indices.
The normalized Fourier matrix F̂₃ obeys (the SM's product equivalence)

    F̂₃ D_sigma F̂₃ = i sigma D_-sigma F̂₃ P_sigma D_-sigma.

This is the elementary three-term Gauss sum, valid for both sigma signs.
It follows by expanding `(r+s)^2`, using `-2=1` modulo three. The rightmost
two factors are a column monomial. The qubit identity is

    F̂₂ Y2 = Y2 X diag(exp(i pi/4), exp(-i pi/4)),

where X interchanges the two columns. Hence the single common ambient
unitary U = F̂₂ ⊗ F̂₃ sends the ray bases as follows:

    I₆                 -> F̂₂ ⊗ F̂₃,
    F̂₂ ⊗ F̂₃            -> I₆,
    Y2 ⊗ D_sigma F̂₃    -> Y2 ⊗ D_-sigma F̂₃.

Here F̂₃² is a permutation of coordinate rays. Exchange the first two
bases afterward. This is an equivalence from either sign to the other
using only a unitary, column monomials, and one basis transposition.
It replaces `CHECKPOINT:645`'s unneeded appeal to complex conjugation.

The exact check `recognition_checks/check_product_signs.py` verifies both
Gauss identities in the integer ring Z[omega], the qubit identity in
Gaussian integers, and the explicit orbit-column normalization of all 54
normalized nonconstant dependent cases `(epsilon,ell,m,j)`. Its output is
PASS. No floating-point arithmetic is used.

## 6. All three anchors and the code's actual fixed points

The project reduction explicitly reorders bases and then applies the
adjoint of the new first basis (`README:83–92`). The same operation takes a
symmetry at H or K to the first-anchor hypothesis used above. Membership
in the asserted union of equivalence classes is unchanged. The theorem
statement should spell out those permitted operations. Treating it as a
classification of strictly ordered triples while silently forbidding
basis permutations would be a different statement.

For completeness, the code's fixed point supplies the actual unitary
directly. Let `Rop X[r,c]=X[Rr,c]`, `D=diag(omega^labels)`. From
`moving_symmetry.py:103–111`, exponentiating `b+P(x-b)` gives the table below. Here `S` and
`T` are the code's H-column and K-column permutations, not the symmetry T.

| Anchor | H action | K action |
|---|---|---|
| I₆ | `D H[:,S]` | `D K[:,T]` |
| H | `Rop H D^-1` | `Rop K[:,T]` |
| K | `Rop H[:,S]` | `Rop K D^-1` |

The wrap-around of the cycle positions changes the lifted phase by an
integer multiple of `2 pi`, so these equalities are exact upon
exponentiation, for every balanced label assignment.

At an I₆-anchor fixed point, choose T = `D`. Then T sends the non-anchor
columns by the inverse three-cycle permutations. At an H-anchor fixed
point choose T = `Rop`. The equations give TH = HD and send K's columns by
`T^-1`, the inverse of the code's K-column permutation, while the symmetry T
itself permutes the coordinate rays by `R^-1`. At a K-anchor fixed point the
argument interchanges H and K. In all cases T³ = I₆, its eigenvalues have multiplicity two, and the two non-anchor
ray permutations each consist of two three-cycles. The code checks these
cycle structures and the balanced labels at `moving_symmetry.py:87–91`.

The projector W in `moving_symmetry.py:94–96` is the projection off a
shared row-phase direction and the independent column-phase directions.
Consequently replacing the original lifted array y by
`x=b+W(y-b)` is exactly a permitted gauge transformation. If the original
bases are obtained from the fixed ones by common row unitary Drow and
independent column phases, conjugate T by Drow. That is an actual unitary
symmetry of the original triple, with the same cube, spectrum and ray
cycle structure. Arbitrary integer windings make no change to those
physical matrices.

This establishes question 6 for the entire action class accepted by
`group`, not only for the product-point numerical unit test.

## Suggested frozen-source documentation patch

No frozen file was edited. In a new version, replace the sentence at
`CHECKPOINT:645` about simultaneous conjugation with the identity and
basis transposition of Section 5 above. Add the orbit-normalization
derivation and general unitary-block explanation to Sections 1 and 8,
and state explicitly that equivalence allows permutations of the three
bases. These changes make the already valid global recognition argument
independent of an unstated antiunitary convention.

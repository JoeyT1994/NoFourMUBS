# Five distinct character values are impossible

**Statement.** Take a triangle with exactly two matchings, no zero 3-by-3
minor, and irreducible (M4) residual algebra in direction 1. Then the
character lambda of direction 1 does not take exactly five distinct values.

**Status.** Proved. A referee subagent reread the archive proof line by line
and confirmed it. Independent checks are in `collisions_five_checks.py`
(see "Referee notes"). The archive verifier `five_value_exclusion/verify.py`
reproduces controls identical to its receipt, apart from source-hash drift.

**Dependencies.**
- [ResidualSetup.md](ResidualSetup.md): Sections 6-7, including the filter
  lemma.
- [Collisions.md](Collisions.md): items 1-3 with m = 5, so d = 2.
- The three-Hermitian-error case of [FourValue.md](FourValue.md), Section 2.
- [ReducibleExclusion.md](ReducibleExclusion.md): irreducibility.

**Provenance.** Archive `03_algebraic/core/five_value_exclusion/PROOF.md`
and `m4_channel_frontier/SIX_DIMENSIONAL_FILTER.md`.

---

## 1. Normalization

Here there is one pair, so d = 2. By [Collisions.md](Collisions.md) the mean
span has dimension 3. The mean polynomial M(t) of degree two has three
independent real coefficients and scalar Gram. Every normalized slice
satisfies U J U^T = J_out for one unitary alternating J.

The paired mean 2F is unitary. Left multiply by (2F)*. The paired slices
become (I +/- i sqrt(3) A)/2 with A a balanced involution, and every element
of V becomes quaternionic-linear for the single form J. Moreover, the
difference i A lies in V, so A J + J A^T = 0.

Choose a real orthonormal basis I, iA, E_1, E_2 of V (norm tr(X*X)/4), with
I, E_1, E_2 spanning the mean space. The slice Gram is tight with value 3/2
(Setup 7.1). Summing the six left and right unitarity equations gives

    E_1* E_1 + E_2* E_2 = E_1 E_1* + E_2 E_2* = 2I.                    (1.1)

## 2. Quaternionic two-Kraus lemma

**Lemma.** Let E_1, E_2 be quaternionic-linear, orthogonal, of squared norm
4, and satisfy (1.1). Then some real rotation of (E_1, E_2) makes both
unitary.

*Proof.* A quaternionic SVD of E_1 has singular values r, s, each of even
multiplicity, with r^2 + s^2 = 2. If r = s = 1 there is nothing to prove.
Otherwise E_2 commutes with the distinct-block Gram, so it is block diagonal
with quaternionic-scalar blocks. Hence

    E_1*E_1 - I = alpha Q,   E_2*E_2 - I = -alpha Q,   E_1*E_2 + E_2*E_1 = beta Q,

with Q a balanced involution. A rotation by theta changes the first norm to
I + [alpha cos 2theta + (beta/2) sin 2theta] Q. Choose theta to kill the
bracket; then (1.1) makes the second matrix unitary too. Singular endpoints
(r = 0 or s = 0) obey the same formulas. QED.

Call the resulting unitaries B and C. The channel is

    Phi(X) = X + A X A + B X B* + C X C*.

Here B and C preserve J, while A reverses it up to sign.

## 3. The mean conic forces two fixed quaternionic planes

The projectivized mean curve in span_R{I, B, C} is a nondegenerate conic.
Its ideal is spanned by one nondegenerate quadric q, and

    (xI + yB + zC)* (xI + yB + zC) = (x^2 + y^2 + z^2) I + q(x, y, z) F

for a fixed traceless Hermitian F.

- If F = 0, then B and C are anti-Hermitian. Rephased, they give three
  trace-orthogonal balanced involutions, and the three-Hermitian-error case
  of [FourValue.md](FourValue.md) Section 2 gives a contradiction. So
  F != 0.
- Since I, B, C are unitary, q has zero diagonal coefficients.
  Nondegeneracy then makes all three cross coefficients nonzero:

      B + B* = alpha F,   C + C* = beta F,   B*C + C*B = gamma F,
      alpha beta gamma != 0.

F is Theta-even and traceless, so F^2 is scalar; normalize F^2 = I. Its
eigenspaces are quaternionic lines. Since B and C commute with their own
Hermitian parts, they commute with F. So

    F = diag(I2, -I2),  B = diag(B_+, B_-),  C = diag(C_+, C_-),

with unit-quaternion blocks. Moreover Re tr(B_+* C_+) = -Re tr(B_-* C_-),
and both are nonzero.

## 4. The physical frames force A to commute with F

Work on the five-dimensional traceless Theta-even space. Split off the unit
direction F and identify the complement with the quaternions. Conjugation
by B and C fixes F and acts on a quaternion x as R_B(x) = B_+ x B_-* and
R_C(x) = C_+ x C_-*.

Conjugation by A has eigenvalues (+1, +1, +1, -1, -1) on the five-space.
Equivalently, it acts as minus wedge^2 A on the six-dimensional fixed
space, with the scalar direction removed. So

    Phi_5 = D0 - 2P,   D0 = diag(4, 2I + R_B + R_C),

with P a rank-two real orthogonal projection.

D0 is invertible. If (2I + R_B + R_C) x = 0 with x != 0, the equality case
of the triangle inequality forces R_B x = R_C x = -x. Then
B_+ = -x B_- x^{-1} and C_+ = -x C_- x^{-1}, so the two real product traces
are equal. They are opposite and nonzero, a contradiction.

For a perfect input ray rho = psi psi*, Phi(rho) = I is a sum of the four
rank-one projections onto the unit vectors psi, A psi, B psi, C psi. Taking
the trace of the square of this identity forces these vectors to be
orthonormal (Setup 7.1). So psi* B psi = 0, and likewise
psi* B* psi = 0. Hence tr((B + B*) rho) = alpha tr(F rho) = 0, and
alpha != 0 gives tr(F rho) = 0. So Z_rho lies in F-perp and in ker Phi_5. By the
filter lemma (Setup 7.3; q is nonbinary), the physical Z_rho span at least
two dimensions.

Write P = U U^T with U a real orthonormal 5-by-2 matrix, and let u_0 be its
row in the F coordinate. On ker Phi_5 the map x -> U^T x is injective,
since D0 x = 2 U U^T x and D0 is invertible. Two independent physical kernel
vectors have F-coordinate zero, so u_0 U^T x_1 = u_0 U^T x_2 = 0 with
U^T x_1 and U^T x_2 independent. Hence u_0 = 0, so PF = 0 and conjugation by
A fixes F, i.e. AF = FA.

Now all four Kraus operators commute with the nonscalar F. The residual
algebra is reducible, a contradiction. QED.

## Referee notes

- **Repaired gap.** The archive asserts "for every perfect physical rho,
  the expectation of B is zero" without justification. The justification
  is the orthonormality of the four error images of a perfect ray (see
  Setup 7.1 and the four-value proof, Section 1), and it is now written out
  in Section 4.
- The hypotheses of the F = 0 case match [FourValue.md](FourValue.md)
  Section 2.2. There B = iB_h and C = iC_h with B_h, C_h balanced and
  trace-orthogonal, the span is irreducible, and the frames are
  transported with it.
- Exact and numerical checks are in `collisions_five_checks.py`: the
  two-Kraus lemma including singular endpoints, D0 invertibility, the u_0
  argument, the multiplicities (+1,+1,+1,-1,-1), and the full chain on six
  irreducible m = 5 families. These families are abstract and nonphysical.
  They show that Sections 1-3 are consistent and that the physical frame
  step of Section 4 is where the contradiction comes from.

# A ternary character direction is impossible

**Statement.** Take a triangle with exactly two matchings, no zero 3-by-3
minor, and irreducible (M4) residual algebra in every direction. Then the
character of direction 1 does not take exactly three distinct values.

The same holds for any three balanced involutions A, B, C whose channel
Phi(X) = X + AXA + BXB + CXC has perfect input and output frames with
the matching Gram (6.1) of [ResidualSetup.md](ResidualSetup.md), when the
triple is irreducible. Section 3 shows that such a triple forces BOTH
adjacent characters to be ternary. [FourValue.md](FourValue.md) and
[FiveValue.md](FiveValue.md) use this form as the "three Hermitian errors"
case.

**Status.** Proved. A referee subagent reread the archive proof line by
line and found it correct; one statement is only reworded (see the referee
notes). Independent exact checks T1-T12 are in `ternary_four_checks.py`.
The archive verifier `ternary_channel/verify.py` reproduces its receipt
controls exactly. It fails only on the hash of `COORDINATE_PROGRAMME.md`,
which was edited after the receipt was frozen.

**Dependencies.**
- [ResidualSetup.md](ResidualSetup.md).
- [Collisions.md](Collisions.md), at m = 3.
- [ReducibleExclusion.md](ReducibleExclusion.md).
- [TernaryMatchingRigidity.md](../../EdgeRigidity/TernaryMatchingRigidity.md)
  and [NegativeCubicMatchingExclusion.md](../../EdgeRigidity/NegativeCubicMatchingExclusion.md),
  which together exclude a triangle that is three-valued in all three
  directions on the no-zero-3-minor domain.

The archive's "ternary duality" input is used there only to get count
exactly two, which is a hypothesis here, so it is not needed.

**Provenance.** Archive `03_algebraic/core/ternary_channel/PROOF.md`
(Sections 1-4) and `TERNARY_EXCLUSION.md`.

---

## 1. The channel of a ternary direction

By (R5) and zero sum, lambda is a rotation of (1, 1, omega, omega, omega^2,
omega^2). [Collisions.md](Collisions.md) at m = 3 (so d = 0 and M is the
constant rho U) gives

    R_(a,+/-) = z_a U (I +/- i sqrt(3) A_a)/2,   tr(A_a A_b) = 4 delta_ab,

with A_0, A_1, A_2 balanced involutions. The pair means recover U and the
differences recover U A_a. So irreducibility of the residual algebra is
irreducibility of {A_0, A_1, A_2}.

Up to Ad(U), the physical channel (Setup 7.1) is

    Phi(Z) = Z + sum_a A_a Z A_a.

The input frame is perfect for Phi. After transport by U*, the output frame
is perfect for Phi* = Phi. A unit psi is perfect if and only if
[psi, A psi, B psi, C psi] is unitary, where A = A_0, B = A_1, C = A_2.

The centered projectors Q_j = psi_j psi_j* - I/4 of a frame with Gram (6.1)
have real Gram (3/4) I + (1/8) Re(eta eta*) - (1/8) 1 1^T, which is positive
definite on 1-perp. Hence dim_R ker(Phi on Hermitian 4-by-4) >= 5.

## 2. A perfect-ray chart

Pick a perfect psi and use its orbit basis. Then

    A = [0 1 0 0; 1 0 0 0; 0 0 a z; 0 0 z^ -a],
    B = [0 0 1 0; 0 b 0 w; 1 0 0 0; 0 w^ 0 -b],
    C = [0 0 0 1; 0 c u 0; 0 u^ -c 0; 1 0 0 0],

with a, b, c real and a^2 + |z|^2 = b^2 + |w|^2 = c^2 + |u|^2 = 1. (Here ^
denotes complex conjugation.) Trace orthogonality gives ab = ac = bc = 0,
so after a permutation b = c = 0 and |u| = |w| = 1.

**Two reducibility lemmas.**
1. *Anticommuting star.* If one involution anticommutes with the other two,
   the algebra is reducible.
2. *Zero partial mean.* If B and C anticommute and
   A + BAB + CAC + (iBC)A(iBC) = 0, then in the Pauli picture
   A = sigma_x (x) X + sigma_y (x) Y + sigma_z (x) Z. Squaring A forces X, Y,
   Z to commute, and the algebra is reducible.

**Case a != 0, uw != 1.** The 01 and 10 entries of Phi(rho) = I, together
with the 22 and 23 entries (checks T3), give rho_01 = 0. So every perfect
ray lies in the 0-2-3 or the 1-2-3 coordinates.

A mixed perfect ray forces u = -w and Im z = -Im w (T4). In the x_1 = 0
chart this comes from a r = (w - z^) s. In the x_0 = 0 chart the equations
reduce to the same form once u = -w.

At u = -w, B and C anticommute, and the partial mean equals
(-z^ w + w^2 + wz - 1) times a fixed matrix (T5). The condition
Im z = -Im w is exactly z^ = z + w - 1/w, which makes the mean vanish, so
the algebra is reducible.

Without mixed rays there are at most two perfect rays in each coordinate
plane, four in all. Six distinct frame rays are needed, a contradiction.

**Case a != 0, uw = 1.** Every cos(theta) e_0 + i sin(theta) e_1 is perfect.
Re-basing at such a ray keeps b' = c' = 0 and changes
a' = a cos 2theta - Im(uz) sin 2theta (T6). Choose theta with a' = 0; the
frames are carried along.

## 3. The zero-diagonal chart forces the adjacent characters to be ternary

With a = b = c = 0, Phi splits into a rank-one diagonal block and three
coherence blocks, with determinants (T7)

    -(uw-1)^2 (uz^2-w)^2 / (u^2 w^2 z^2),
    -(z-u)^2 (uz-w^2)^2 / (u^2 w^2 z^2),
    -(u^2 z-w)^2 (wz-1)^2 / (u^2 w^2 z^2).

This gives six relations, grouped by block:

    A: uw = 1,    B: uz^2 = w;
    C: z = u,     D: uz = w^2;
    E: u^2 z = w, F: wz = 1.

A single relation leaves its block with rank exactly 3 (T8). Two relations
in one block make one involution commute with, or anticommute with, the
other two (T9). Commuting contradicts irreducibility, and anticommuting is
excluded by lemma 1.

The kernel has dimension at least 5, so two different blocks are singular.
Every such pair of relations implies one of the four triads ACF, ADE, BCE,
BDF (T10). In each case the kernel is the real traceless diagonals plus a
star i(E_cj - E_jc) about a centre c, after a harmless diagonal rephasing
(T11).

So every perfect ray lies on a circle cos(theta) e_c + i sin(theta) e_j, and
a six-ray tight frame must be, up to phases,

    psi_(j,+/-) = (1/2) e_c +/- i (sqrt(3)/2) e_j   (two rays per leaf).

This follows from the weight count: each leaf carries weight 3/2, and
r + s = 3/2 with r(1-r) = s(1-s) gives r = s = 3/4 (T12).

The resulting Gram moduli are 1/2 within a pair and 1/4 across pairs.
Comparing with (6.1), each adjacent character takes equal values within a
pair, and every cross quotient has real part -1/2. So both adjacent
characters are ternary; this applies to the output frame as well.

## 4. Conclusion

All three directions are therefore three-valued. By TernaryMatchingRigidity
(positive cubic sign) and NegativeCubicMatchingExclusion (negative sign),
every edge is then monomially equivalent to F2 (x) F3, which has a zero
3-by-3 minor. This contradicts the hypothesis. QED.

## Referee notes

- In the x_0 = 0 chart, the general equations are a r = (uz/w - 1/u) s and
  a s = (1/w - w z^/u) r. The archive's "a r = (1/w - z) s" is their form
  after u = -w. This is wording only; the conclusion is unchanged (T4b).
- The perfect-orbit chart, the two reducibility lemmas, the triad
  enumeration of all 12 cross-block pairs and the star frames were checked
  by hand and exactly (T1-T12).

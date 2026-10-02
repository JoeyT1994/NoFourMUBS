# Four distinct character values are impossible

**Statement.** Take a triangle with exactly two matchings, no zero 3-by-3
minor, and irreducible (M4) residual algebra in every direction. The
character of direction 1 does not take exactly four distinct values. This
includes the antipodal pattern (alpha, alpha, -alpha, -alpha, beta, -beta).

**Status.** Proved. A referee subagent reread the archive proofs line by
line, and all load-bearing identities were rechecked exactly in
`ternary_four_checks.py`:
- F1-F5: the product formula, the error form (4), all expectation equations
  (5), the final contradiction, the zero-diagonal chart (9)-(11), and the
  five-minor (12), via the proof's two-step reduction;
- P1-P6: the antipodal chart (5), det (6), both seven-minors and kernel
  blocks (8), and the w = +/-1 case (9).

No gap was found. The archive verifiers `m4_channel_frontier/verify.py` and
`antipodal_four/verify.py` reproduce their receipt controls exactly. They
fail only on the hash of `COORDINATE_PROGRAMME.md`, which was edited after
the receipts were frozen.

**Dependencies.**
- [ResidualSetup.md](ResidualSetup.md).
- [Collisions.md](Collisions.md), at m = 4, d = 1.
- [TernaryDirection.md](TernaryDirection.md), for the three-Hermitian-error
  case.
- [ReducibleExclusion.md](ReducibleExclusion.md), for irreducibility.

**Provenance.** Archive `03_algebraic/core/m4_channel_frontier/PROOF.md`
(Sections 1-5), `m4_channel_frontier/SIX_DIMENSIONAL_FILTER.md` and
`antipodal_four/PROOF.md`.

---

## 1. The four-unitary channel

The character has two repeated values and two single values, so d = 1.
[Collisions.md](Collisions.md) supplies the mean span {I, A} after a common
left unitary, with A a balanced involution, and paired differences
proportional to exp(i phi_j A) H_j. A unitary change of Kraus basis gives
an orthonormal unitary basis

    I, A, B, C,   C = (cI + isA) D,   c^2 + s^2 = 1,

where A, B, D are balanced involutions and tr AB = tr AD = tr BC = 0. The
two distinct mean nodes give s != 0. The two means are orthogonal exactly
when the repeated values are opposite, which is the case c = 0 (Section 6).
Collisions item 3 gives a common J with AJ + JA^T = BJ + JB^T = DJ + JD^T = 0.

The channel is Phi(X) = X + AXA + BXB + CXC*. The input frame is perfect
for Phi, and the output frame is perfect for Phi*. Both have the Gram (6.1)
of the setup. A unit psi is perfect iff (psi, A psi, B psi, C psi) is
orthonormal.

## 2. Two owned sub-cases

1. **A, B commute or anticommute.** Every perfect psi then has C psi
   proportional to AB psi, so each physical ray is an eigenvector of the
   fixed unitary (AB)* C. Two occupied eigenspaces make the adjacent
   character binary. One occupied eigenspace forces C to be proportional
   to AB, and the algebra is reducible. The same holds with D in place of B,
   after left multiplication by (cI - isA) and a remix of I, A.
2. **Three Hermitian errors.** If the basis can be rephased to I plus three
   balanced involutions, [TernaryDirection.md](TernaryDirection.md) applies.
   Its classification gives one of three outcomes:
   - reducibility;
   - at most four perfect rays;
   - a star, whose tight frame makes an adjacent character ternary, so that
     direction is ternary.

   Each outcome is impossible.

## 3. A perfect chart with nonzero diagonal is impossible

In a perfect-orbit basis, A = diag(X, [[a, z], [z^, -a]]) with a real. Here
^ denotes complex conjugation. Suppose a != 0.

Trace orthogonality makes B, and then D and C, interchange the two
coordinate planes. Normalize B = [[0, I], [I, 0]]. Then A = diag(N, E) and

    C = [[0, g^ R], [g Q, 0]],   R = (cI + isN) Q (cI + isE),

with N = uZ + vX, E = uZ - vX (u, v > 0) and Q = pX + qY + rZ. The trace
condition forces cr = svq and R = -ZQZ (check F1). The four errors become

    I4,   I (x) N,   X (x) Z,   P (x) V,
    P = dX + eY,   V = rI + i(pY - qX),

with e != 0, since otherwise X (x) I lies in the commutant.

If q = r = 0, Section 2.2 applies. Otherwise qr != 0. For a pure two-qubit
state with Bloch vectors x, y and correlation matrix T, the perfect-orbit
expectation equations (5) together with TT^T = (1 - |x|^2) I + xx^T and
T^T x = y leave no entangled perfect state (F2-F3; the last equation gives
e kappa u/h != 0). There are then at most four product perfect states,
fewer than the six required.

## 4. A rank bound from the common form

Theta(X) = J X^T J* commutes with Phi. For a perfect rho, the matrix
Z_rho = rho + Theta(rho) - I/2 lies in the kernel of Phi on the
five-dimensional traceless Theta-fixed space. By the filter lemma (Setup
7.3) these Z_rho span at least two dimensions. So

    rank(Phi on the traceless Theta-fixed space) <= 3.

Identify a Theta-fixed X with the alternating matrix Omega = XJ. Then Phi
becomes W = I6 - wedge^2 A - wedge^2 B - wedge^2 C, with J an eigenvector
of eigenvalue 4. Hence rank W <= 4.

## 5. The zero-diagonal chart has a positive five-minor

With a = 0, write B with parameters (b, w) and the D-block with (d, k):
b^2 + |w|^2 = d^2 + |k|^2 = 1. The matrix C is then (9) of the archive,
and the remaining trace equation is

    bd + is(z^ + w^)(1 + k) = 0.                                       (5.1)

If bd = 0, then either w = -z (and AB = -BA) or k = -1 (and AD = -DA).
Both are covered by Section 2.1.

If bd != 0, put F = z^ + w^, f = |F|^2 > 0, R0 = b^2 + f and
Delta = b^2 + s^2 f. Then

    d = 2bs Im(F)/Delta,   k = i bd/(sF) - 1,

and the minor of W on wedge coordinates (01, 02, 03, 13, 23) is

    det = 2 c^2 b^2 d^2 R0 Delta / (s^2 f^2) > 0

(check F5). So rank W >= 5, contradicting Section 4.

## 6. The antipodal case c = 0

Here C = iAD. The input frame has a ray with a != 0: otherwise all rays are
eigenvectors of BD, which forces a binary character or reducibility. In its
orbit basis, B = [[0, 0, 1, 0], [0, 0, 0, w], [1, 0, 0, 0], [0, 1/w, 0, 0]]
and

    C = [[0, 0, -a/w, -z/w], [0, 0, -z^, a], [0, w, 0, 0], [1, 0, 0, 0]].

At w = +/-i, Im(C) commutes with A, B and C. It is either nonscalar
(reducible) or zero, and then C anticommutes with A and B (the star lemma).

A block-confined adjoint-perfect ray is one of at most four rays. Two
independent traceless Hermitian constraints per plane, independent because
a != 0, leave at most two rays in each plane.

A mixed ray is impossible. The off-diagonal block O of Phi* has

    det O = 4 (2 Re w)^6 [Re(z/w)^2 - (Im w)^2]

(check P4). Where this is nonzero, O has no kernel. On its zero locus the
kernel's Hermitian elements have invertible upper-right blocks, because the
kernel blocks X_+/- (w generic) and X_0 (w = 1; w = -1 reduces to it) have
nonzero determinants (P5, P6). A pure projector mixing the two planes would
instead have a nonzero rank-one upper-right block.

So Phi* has at most four perfect rays, but the output frame needs six. This
is a contradiction.

Sections 2-6 exhaust the four-value case. QED.

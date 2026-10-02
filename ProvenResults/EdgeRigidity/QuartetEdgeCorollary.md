# No quartet edge has a zero 3-by-3 minor

**Statement.** Let I, B_1, B_2, B_3 be four pairwise mutually unbiased bases
of C^6 and let R = sqrt(6) B_a* B_b (a != b, B_0 = I) be any of the twelve
directed transitions, as a phase Hadamard. Then:

1. no 3-by-3 submatrix of R, in any of its 400 positions, is singular;
2. R has no antipodal row or column quotient (three +1 and three -1, up to scalar);
3. R has no 3-by-3 Hadamard submatrix;
4. every 3-by-3 submatrix F of R has spectral slack det(6I - FF*) > 0.

**Status.** Proved, conditional only on the two published exclusions below.
Every step inside this library is an analytic proof with exact checks.

**Dependencies.**
- [BlockZero3Equivalence.md](BlockZero3Equivalence.md) (unconditional:
  zero 3-minor => antipodal quotient => 3-by-3 Hadamard block).
- [FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md)
  (active theorem, proved: a 3-by-3 Hadamard block forces equivalence to N(p,q), N(p,q)^T or Tao).
- [Jaming, Matolcsi, Mora, Szollosi, Weiner](https://arxiv.org/abs/0902.0882):
  the Fourier family F_6^(2)(a,b) and its transpose do not extend to four MUBs
  containing the standard basis (published; accepted in
  [RESEARCH_BRIEF.md](../../RESEARCH_BRIEF.md)).
- Tao: [Brierley-Weigert](https://arxiv.org/abs/0901.4051) (published), or the
  self-contained [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md) of this
  library, which is conditional on a frozen external elimination (see that file).
  Tao is needed only for item 3. Items 1, 2 and 4 do not use it.

The balanced theorem and the reconstruction inputs are **not** used.

**Provenance.** New write-up requested for this import. It assembles the archive
statements "zero3 has an accepted quartet owner"
(`03_algebraic/core/BLOCK_ZERO3_EQUIVALENCE.md`, Section 4, and
`90_replay_library/05_remaining_D2/spectral_forcing/quartet_coupling/BOUNDARY_SCOPE.md`,
where the archive cited Chen-Yu, arXiv:1610.04875, Lemma 11(v)). Here the route goes
through the active Fourier-block theorem and Jaming et al.

## Derivation

**Step 0: edges, equivalence and frames.** Write R_ab = sqrt(6) B_a* B_b. Reordering or
rephasing the vectors of B_a or B_b replaces R_ab by P D R_ab D' P', a monomial
equivalence. Such relabellings do not change the quartet. Multiplying all four
bases on the left by B_a* is a unitary change of frame. It preserves mutual
unbiasedness and gives a quartet {I, R_ab/sqrt(6), ...} that contains the standard
basis and R_ab/sqrt(6). The reverse edge is R_ba = R_ab*. Therefore, if R_ab is
monomially equivalent to a matrix M, then the columns of M/sqrt(6) form one basis
of a quartet that contains the standard basis.

The properties in items 1 to 3 are invariant under monomial equivalence and
transposition. A row or column permutation moves a 3-by-3 submatrix in one position
to a submatrix in another position. Diagonal phases multiply a 3-minor by a unit.
Transposition exchanges rows and columns. So it is enough to exclude each property
for one representative of the equivalence class of R_ab or R_ab^T.

**Step 1: zero minor => block.** Suppose some 3-by-3 submatrix of R = R_ab is singular,
in any position (I, J). [BlockZero3Equivalence.md](BlockZero3Equivalence.md) Sections 1
to 3 show the following. The dephased singular corner has two proportional rows or
columns. Full orthogonality makes the complete quotient of those two rows (or columns)
antipodal. The antipodal pair then produces a 3-by-3 Hadamard submatrix of R. These
arguments are stated for a submatrix placed first by permutations, so they cover every
position (I, J) and both orientations.

**Step 2: block => Fourier family or Tao.** The Fourier-block theorem moves the assumed
3-by-3 Hadamard block to the upper left by a row and a column permutation. Its first
sentence is "Move the assumed Hadamard block to the upper left", so no position is
excluded. The theorem then gives that R is equivalent to N(p,q), to N(p,q)^T, or to
Tao, where

    N(p,q) = [[F, diag(1,p,q) F], [F, -diag(1,p,q) F]],   F = (omega^(ij)).

**Step 3: the Tao branch cannot come from a zero minor.** The exact Tao representative
has no zero 3-minor in any of its 400 positions (`quartet_corollary.py`, and
independently `block_zero3.py`). This property is invariant under equivalence and
transposition (Step 0). So if R has a zero 3-minor, it is equivalent to N(p,q) or to
N(p,q)^T. N(p,q) itself has the antipodal row pair 0, 3. So N(p,q) and its transpose
really do have zero 3-minors, and the two branches are consistent.

**Step 4: identification with the published families.** Write zeta = exp(i pi/3). In the
Tadej-Zyczkowski parametrization F_6^(2)(a,b) = F_6 o EXP(i R(a,b)), R(a,b) has rows
(0,a,b,0,a,b) at odd indices and zero rows at even indices. Reordering the rows as
(0,2,4,1,3,5) gives exactly

    F_6^(2)(a,b)[(0,2,4,1,3,5), :] = N(zeta e^{ia}, zeta^2 e^{ib})^T.

This is checked as an identity in the formal phases e^{ia}, e^{ib} by `quartet_corollary.py`.
As a and b range over R, (p,q) = (zeta e^{ia}, zeta^2 e^{ib}) ranges over the whole torus.
So {N(p,q)^T} is the Fourier family and {N(p,q)} is its transpose, up to equivalence.
Both families are excluded by Jaming et al. The corollary therefore does not depend on
which of the two is called "Fourier" in a given convention.

**Step 5: conclusion.** Combining Steps 0 to 4: a zero 3-minor on any edge R_ab gives a
quartet containing I and a member of the Fourier family or its transpose, which
contradicts Jaming et al. This proves item 1.

Item 2 follows from item 1, because an antipodal row pair makes the two rows proportional
on three columns ([BlockZero3Equivalence.md](BlockZero3Equivalence.md), Section 2).

For item 3, a 3-by-3 Hadamard block gives N, N^T or Tao by Step 2. N and N^T are
excluded as above. Tao is excluded by Brierley-Weigert, or by the local
[Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md), which shows that {I, Tao}
does not even extend to three MUBs.

For item 4, 6I - FF* = BB*, where B is the complementary 3-by-3 block in the same rows
([SpectralSlackIdentities.md](SpectralSlackIdentities.md)). So det(6I - FF*) = |det B|^2,
which is positive by item 1.

## Independent second route

[SingularCornerNormalForm.md](SingularCornerNormalForm.md) proves directly, without the
Fourier-block theorem, that a singular 3-by-3 submatrix forces R or R^T to be monomially
equivalent to [[F3,F3],[F3 Z,-F3 Z]] = N(z,w)^T. The proof uses a sign-allocation count
and a normal-form Gram identity, checked exactly by `quartet_boundary.py`. Together with
Step 4 and Jaming et al., this gives item 1 again.

## Scope

This corollary excludes a stratum. It does not force any quartet edge into that stratum.
In particular, it gives strict inequalities on every quartet edge:

    Delta_rs(R) > 0 (FourierBlocks, Section 4),
    |sum_j r_j^3| < 6 (CubicPairRigidity.md, with the Tao exclusion),
    rank of every balanced product matrix = 3 (BalancedRankTwoRigidity.md, conditional on the balanced theorem).

None of these inequalities comes with a uniform gap.

Replay: `python3 verify.py` in this folder (sub-checks `quartet_edge_corollary_conventions`,
`zero3_antipodal_block_equivalence`, `singular_corner_fourier_normal_form`).

# Strict three-row Gram bound S>126 on quartet edges

**Statement.** Let I, B_1, B_2, B_3 be four pairwise mutually unbiased bases
of C^6, and let R=sqrt(6) B_a* B_b (a != b, B_0=I) be any of the twelve
directed transitions, written as a phase Hadamard. Then for every choice of
three rows X of R,

    S(X) = sum_(j!=k) |(X*X)_jk|^4 > 126.

Since R_ba=R_ab*, the same holds for every three columns. The universal
bound S>=126 is [SharpBound.md](SharpBound.md), so the content here is that
equality never occurs on a quartet edge.

**Status.** Proved, subject to the dependencies below. One of them,
PositiveWeightEquality, is a supplied proof: it was independently re-read
for this import and found correct, and its author's verifier was never run.
No uniform gap above 126 is claimed. A proof that a quartet forces S=126 on
some edge would finish the problem, but no such forcing is known; that step
is **open**.

**Dependencies.**
- [SharpBound.md](SharpBound.md): the SOS and its equality moments. Unconditional.
- [EqualityBranches.md](EqualityBranches.md): support two is impossible,
  support one gives a zero3, and equal weights give the H8 class.
  Unconditional.
- [PositiveWeightEquality.md](PositiveWeightEquality.md): three positive
  weights must be equal. Unconditional. **Supplied proof, re-read at import;
  verdict correct.**
- [H8Mates.md](H8Mates.md): the four mates of H8 are pairwise not unbiased.
  This uses [../../CommonRays/FiniteCommonRayAlgebra.md](../../CommonRays/FiniteCommonRayAlgebra.md)
  (analytic).
- For the support-one branch only:
  [../../EdgeRigidity/QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md),
  which says no quartet edge has a zero 3-minor. That corollary uses
  [FourierBlocks](../../FourierBlocks/FourierBlockClassification.md) and the
  published Fourier-family exclusion of Jaming et al.
  ([arXiv:0902.0882](https://arxiv.org/abs/0902.0882)).

No reconstruction input and no balanced theorem is used.

**Provenance.** This corollary is assembled for this import from archive
`03_algebraic/core/phase_reduction/positive_weight_equality/README.md`
("every three-row block of every actual quartet transition must satisfy
S>126"), `gram_forcing/EQUALITY_BRANCHES.md`, `gram_forcing/H8_ALL_MATES.md`
and `gram_forcing/H8_QUARTET_EXCLUSION.md`.

## Proof

Multiplying all four bases by B_a* and relabelling basis vectors, we may
assume the quartet is I, R/sqrt6, K/sqrt6, L/sqrt6. Here K and L are mates
of R, meaning they are unbiased to I and to R/sqrt6, and they are mutually
unbiased. Suppose three rows X of R have S(X)=126, with kernel weights t_i as
in SharpBound.md.

By EqualityBranches.md (support two is impossible) and
PositiveWeightEquality.md (three positive weights are equal), the weights
are, up to order, (1,0,0) or (1/3,1/3,1/3).

- **(1,0,0).** Two rows of X have a binary quotient, three +1 and three -1
  up to a scalar, so R has a singular 3-by-3 submatrix. This contradicts
  QuartetEdgeCorollary.md, item 1.
- **(1/3,1/3,1/3).** By EqualityBranches.md, Section 4, R is monomially
  equivalent, allowing entrywise conjugation, to H8: R = M_1 H8^(c) M_2,
  with M_1, M_2 monomial and (c) either nothing or conjugation. Mates
  transform accordingly: K is a mate of R iff M_1^(-1) K (conjugated if c
  applies) is a mate of H8, and mutual unbiasedness of two mates is
  preserved. So K and L would give two mutually unbiased mates of H8. By
  H8Mates.md, item 2, H8 has exactly four mates up to column monomials, and
  no two of them are mutually unbiased. This is a contradiction.
  (Alternatively, each mate of H8 has a zero3, so the edge I-K would have a
  zero3, again contradicting QuartetEdgeCorollary.md.)

Hence S(X)>126. The column statement follows by applying this to the
reverse edge R_ba=R_ab*, whose rows are the conjugated columns of R_ab. QED.

## Verification

This file has no computation of its own. The ingredients are checked by
[SharpBound.py](SharpBound.py), [EqualityBranches.py](EqualityBranches.py),
[PositiveWeight.py](PositiveWeight.py) and [H8Mates.py](H8Mates.py) in this
folder, and by the verifiers of the cited EdgeRigidity and CommonRays files.

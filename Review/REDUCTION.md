# Referee note: REDUCTION.md (a)--(f)

**Verdict:** the conditional argument is correct when “completion
exhaustion” includes matched recovery at the selected sorted maximal
frame. Opposite-corner sheet reversal is redundant. Global positive-sheet
surjectivity alone is insufficient. See DEPENDENCY_MAP.md for the exact
weaker hypothesis and the part of input 4 proved here.

* **(a), confirmed.** Left monomials act on the whole quartet and fix I
  as rays; right monomials change the carrier's column representatives.
  Conjugation preserves all absolute overlaps. Apply H*/sqrt(6) to the
  quartet and reorder the first two bases to obtain the reverse edge;
  conjugating gives the transpose. All normalizations are correct.
* **(b), external/conditional.** Jaming et al., arXiv:0902.0882, explicitly
  exclude a quartet containing I and any member of the Fourier family;
  this covers F6, and transpose follows from (a). This review verified
  the cited theorem's scope, not its computer-assisted computation.
  The local Tao exclusion explicitly depends on an unchecked frozen
  elimination step. Its root verifier is not an independent proof of
  that step. The reduction must retain the published Tao exclusion as an
  external input or supply an ideal-membership/elimination certificate.
  This is an existing disclosed dependency, not a counterexample to Tao
  exclusion. The larger local PracticalTube theorem is another possible
  route for excluding F6, but was not re-audited here.
* **(c), confirmed.** Re-dephasing cancels all row and column phases.
  Row/column permutations biject the 20 by 20 positional corners;
  transpose swaps the indexing subsets; conjugation maps each seed to
  its conjugate. The exact Laurent identities then give multiset
  invariance with multiplicity. The supplied verifier was replayed and
  passed all 36 orderings, transpose, conjugation, and Gram bookkeeping.
* **(d), confirmed conditional on positive-corner existence.** Maximize
  over a finite set, order the three row pairs, then the three column
  pairs. Those actions are independent. If necessary transpose to order
  the two sorted triples lexicographically. Ties need no special choice.
* **(e), qualified as above.** A selected frame must recover the original
  carrier, not simply some completion of its seed. Side-fibre exhaustion
  gives four candidate pairings; ruling out unmatched non-Tao carriers
  at this frame is additionally needed. The strong fixed-frame assertion
  in RECONSTRUCTION.md §4 supplies it as an accepted input. Conjugation
  then replaces the negative sheet and retains both F and maximal R.
* **(f), confirmed.** Monomial equivalence preserves the whole corner
  multiset even when it does not fix the leading block. The constructor
  does fix its own leading seed block, which has the original maximum R.
  These two facts, taken together, imply membership in D0.

## “Fundamental domain” qualification

Only **orbit coverage** by F is required or proved in the reduction.
For distinct entries in each modulus triple and distinct sorted triples,
the 36 corner reorders followed by transpose (or adjoint) give a unique
sorting choice. Boundary ties can give multiple representatives. If
conjugation is also included in the group, F retains conjugate seeds:
it does not choose a unique representative of the full 144-map orbit.
The sampling script uses 72 maps with adjoint; the written proof uses
transpose. Either supplies the required coverage because their action on
the moduli is the same. No uniqueness assertion is used downstream.

The reported Monte Carlo volumes and product estimate are not certified
domain measures. In particular, multiplying marginal volume estimates
requires additional invariance or independence if it is to be justified;
no such probabilistic assertion is a step in Q's reduction. The numerical
minimum R=54 in that table is not a lower bound (the repository already
contains a small-R Fourier curve).

External scope check: [Jaming et al.](https://arxiv.org/abs/0902.0882).
Tao dependency inspected in
ProvenResults/ExceptionalEndpoints/Tao/TaoExclusion.md §1.

# Task A: the exact reconstruction dependency

Review of the supplied 29 September 2026 snapshot. This note is an audit,
not an assertion that the accepted inputs have all been proved.

## Where the four inputs enter

| Accepted input | Use in REDUCTION.md | What is actually needed |
|---|---|---|
| 1. Strict-corner coverage | (d), first bullet: obtain a positive maximum among the 400 physical corners | One positive corner on a quartet edge; coverage of every non-F6 Hadamard is stronger |
| 2. Strict side/completion exhaustion | (e), first bullet: identify the **already chosen and sorted** corner's carrier with a matched reconstruction | At one maximal corner, after sorting into F, the physical completion is equivalent to one of H+ or H- at those same seeds |
| 3. Positive-sheet coverage | Named in (e), first bullet, but opposite-corner reversal is never performed in the displayed proof | The opposite-corner reversal and global positive-sheet surjection are unnecessary. The assertion that unmatched completions introduce only Tao must still come from the fixed-corner pairing theorem; a class-level surjection alone cannot provide it |
| 4. Side formulas and denominators | Implicit in the definition of H±, in (e)'s identification and conjugation lemma, and in (f)'s claim that the reconstructed top-left block is the selected seed | Valid formulas at the selected physical strict frames and their conjugates; root changes preserve the needed extension property. The campaign separately needs its analytic continuation to represent these matrices |

The Sheets conjugation identity uses the local formulas and their root
permutation identities, not strict-corner coverage, side exhaustion, or
opposite-corner reversal. Its published dependency paragraph is stronger
than necessary when using the reduction's maximal-corner argument.

## A sufficient weaker hypothesis, with the framing qualification

Call the following statement M_F:

> If a quartet exists, some edge, after monomial operations and possibly
> transpose, has a maximal positional corner framed at the upper left,
> whose dephased seed theta lies in F, has R(theta)>0, and whose physical
> carrier is equivalent to H_e(theta) for e=+ or -.

Together with the local conjugation identity and the elementary invariances,
M_F is enough. In the positive case the corner multiset of H+(theta) equals
the physical carrier's, and its leading corner attains the maximum. Thus
theta is in D0 intersect F. In the negative case conjugate the carrier and
the seeds; F, R, and the multiset are preserved, and conjugation gives
H+(bar(theta)). This again lies in D0 intersect F and contradicts Q.
This proves the conditional implication with **no opposite-corner theorem**.

A less quartet-specific, useful target is the same statement for every
non-F6, non-Tao Hadamard. This is a sharpened version of the proposed star
statement: say explicitly that the successful maximal frame can be sorted
into F while retaining matched reconstruction. Merely exhibiting an
unsorted maximal seed and class equivalence at that seed does not establish
this. The reduction itself warns that corner seed maps need not preserve
the class of the positive reconstruction. Full fixed-corner exhaustion at
every ordered strict frame supplies the missing covariance, but an
existential global surjection does not.

In particular, one cannot replace (e) by “positive-sheet coverage supplies
some new seed”: the new seed need not attain the maximum of its carrier.
Opposite-corner strictness alone likewise does not assert maximality.

## Unconditional partial removal of input 4

[StrictSideGuards](../ProvenResults/StrictSideGuards/README.md) proves,
without classification or any reconstruction input:

* for every Hermitian diagonal-three Gram with R>0, g is nonzero, eta>0,
  every P_j is nonzero, and all three lambda_j are unit phases;
* the quantitative estimate |P_j|^2 >= R/(4 eta);
* on physical strict corners, G is positive definite, g>0 and n>0;
* the square-root radicand has modulus g/27 on those physical corners.

This discharges the g, P_j, n guards and the lambda phase assertion on the
physical domain needed by M_F. It does **not** prove real dF, positive rho,
the sigma/xi identities, flatness of S, exhaustion of the side fibres,
matched completion, or strict-corner coverage. No assertion that arbitrary
unit seeds with R>0 have positive definite G is used or proved here.

## Choice of work

After this map, Task B provides the fastest further unconditional progress:
its finite cover theorem and analytic remainder identities can be audited
without resolving global classification. The classification paper has not
been used as an input to any new result in this review. Task C's uniform
seed lifting and R=0 completion problem remain open in this deliverable.

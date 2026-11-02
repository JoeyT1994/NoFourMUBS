# The classification of MUB triples in dimension six

**The conjecture** (Matolcsi, Matszangosz, Varga and Weiner). Every triple of mutually unbiased bases in ℂ⁶ is
equivalent either to a triple of the continuous construction (Zauner; Szöllősi; Jaming–Matolcsi–Móra–Szöllősi–Weiner)
or to the isolated Fourier triple.

**The reduction.** Up to equivalence a triple is (I, H/√6, K/√6), with H, K and H*K/√6 complex Hadamard. The atlas of
the no-four-MUBs proof ([`../PhaseCover/`](../PhaseCover/README.md)) covers every Hadamard class except Tao's S₆. It
does so by 2,775 seed balls and one ball at F₆. Every triple has a transition in one of these pieces, so the
conjecture follows from three statements:
- **(A)** for every seed ball and every H in it, every third basis K completing (I, H/√6) gives a triple of known
  type, or there is none;
- **(B)** the same on the ball at F₆;
- **(C)** S₆ has no third basis.

With the theorem of Jaming, Matolcsi, Móra, Szöllősi and Weiner that no Fourier-family pair extends to four MUBs,
this proves that ℂ⁶ has no four MUBs, independently of [`../QuartetExclusion/`](../QuartetExclusion/README.md).

## Status

STATUS_PLACEHOLDER

## (A): one certificate per ball

[`certifier/`](certifier/README.md) proves (A) for one ball and writes a certificate that anyone can check from its
files alone. The certificate is a dyadic tree over the ball's chart. Every node is one of four kinds:
- **16 children**;
- **outside** the ball, checked in exact rational arithmetic;
- a **native leaf**: the frozen whole-ball certifier
  ([`family_neighbourhoods/`](../proof/theorems/TC_triple_classification/family_neighbourhoods/PROOF.md)) closes the
  cell. For most balls the whole certificate is one native leaf on the ball itself;
- a **normal-form leaf**: the cubic normal-form witness ([`proofs/normal_form/`](proofs/normal_form/PROOFS.md)) closes
  the cell pattern by pattern. It holds the cell's record and, for every pattern of six columns of K the cell's
  complete cover allows, the exact data that replay the pattern's proof.

Both leaves rebuild, from the cell's record alone, C1, the normal form H = exp(iQ),
Q = Q₀ + Uw + ½H₂(w⊗w) + Xξ, and the complete cover of the possible columns of K. Each pattern is then either
**excluded** (no K has these columns) or **classified**: an exact order-three action and a contraction q < 1 force
every K in it to have the balanced order-three symmetry, which identifies the triple as a member of the family. Below
the whole ball a leaf's record must also contain its cell (Arb) and lie on the ball's analytic branch (the overlap
witness of [`proofs/NATIVE_REVIEW.md`](proofs/NATIVE_REVIEW.md)), and every record must satisfy Stage C's input
preconditions. Every acceptance is exact or in Arb interval arithmetic; floating point only proposes.

A certificate verified CLOSED proves (A) for its ball, for every triple: there is no restricted scope.

## (B) and (C)

- **(B) The ball at F₆: certified, subject to review.** Every completing third basis for every H in the ball at F₆ is
  of known type. This is where the isolated triple and the continuous family meet
  ([`../proof/theorems/TC_triple_classification/xball/REPORT.md`](../proof/theorems/TC_triple_classification/xball/REPORT.md)).
- **(C) S₆: certified.** Tao's matrix has no third basis
  ([`../proof/theorems/TC_triple_classification/tao.py`](../proof/theorems/TC_triple_classification/tao.py)).

## What the proof of (A) relies on

| Ingredient | Where | Review |
|---|---|---|
| The atlas covers every Hadamard class but S₆ | [`../PhaseCover/`](../PhaseCover/README.md) | the no-four-MUBs proof |
| C1 and Stage C, and Stage C's input preconditions | [`../proof/atlas/`](../proof/atlas/) (`STAGEC.md`, `RIGOUR.md`) | the no-four-MUBs proof |
| The native certifier and its recognition argument; the overlap witness | [`family_neighbourhoods/PROOF.md`](../proof/theorems/TC_triple_classification/family_neighbourhoods/PROOF.md), [`certifier/certifier/overlap.py`](certifier/certifier/overlap.py) | independent review, 1 November 2026 ([`proofs/NATIVE_REVIEW.md`](proofs/NATIVE_REVIEW.md)) |
| The cubic normal-form witness | [`proofs/normal_form/PROOFS.md`](proofs/normal_form/PROOFS.md), with the localisation and Gram bounds it extends (`PROOF_815.md`, `AUDIT_815.md`, `BASELINE_PROOFS_P1_P2.md`) | independent algebraic review, 2 November 2026, which found and repaired one sign error ([`proofs/normal_form/review/REVIEW.md`](proofs/normal_form/review/REVIEW.md)); the certifier runs the repaired code, byte-identical |

## Where everything is

| Path | What |
|---|---|
| [`certifier/`](certifier/README.md) | The certifier: `certify.py close`, `verify` and `verify-all`, its tests, and its speed |
| [`proofs/`](proofs/) | The normal-form witness's statements and proofs, its review, and the native certifier's review |
| [`results/`](results/) | Per ball: verdict, leaves, certificate size, search and check time; the atlas summary |
| [`../proof/theorems/TC_triple_classification/`](../proof/theorems/TC_triple_classification/README.md) | The native whole-ball certifier, the F₆ ball's classification and their receipts (hash-bound, so kept at this path) |

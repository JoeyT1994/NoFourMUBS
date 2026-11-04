# The classification of MUB triples in dimension six

Matolcsi, Matszangosz, Varga and Weiner conjectured that every triple of mutually unbiased bases in ℂ⁶ is equivalent
either to a member of the continuous two-parameter family (Zauner, Szöllősi, and Jaming, Matolcsi, Móra, Szöllősi and
Weiner) or to the isolated Fourier triple. This folder proves it. Equivalence here allows a common unitary,
rephasing and permuting the vectors of each basis, and permuting the three bases.

## How the problem reduces to finitely many checks

Up to equivalence, a triple is {I₆, H/√6, K/√6}, where the three transitions H, K and H†K/√6 are complex Hadamard
matrices. The atlas of [`../PhaseCover/`](../PhaseCover/README.md) covers every Hadamard class except Tao's matrix 𝒯,
using 2,775 seed balls and one ball at F₆. Every triple has a transition in one of these pieces, so the conjecture
follows from three statements:
- **(A)** For every seed ball and every H in it, every third basis K completing {I₆, H/√6} gives a triple of known type,
  or there is no such K.
- **(B)** The same holds on the ball at F₆.
- **(C)** Tao's matrix 𝒯 has no third basis.

Combined with the theorem of Jaming, Matolcsi, Móra, Szöllősi and Weiner that no Fourier-family pair extends to four
MUBs, this also proves that ℂ⁶ has no four MUBs. That proof is independent of the direct one in
[`../QuartetExclusion/`](../QuartetExclusion/README.md).

## Status

All 2,775 seed balls are certified, and so are the ball at F₆ and Tao's matrix.

| Seed balls | Count |
|---|---:|
| Closed in one step by the whole-ball certifier | 2,373 |
| Closed by refining into smaller cells | 402 |
| **Closed** | **2,775** |
| of which every completing triple is classified | 2,771 |
| of which the triples whose first transition has the least Γ_F are classified (balls 1035, 1217, 1622, 2705) | 4 |

For about four-fifths of the balls, the certificate rules out every candidate third basis, so no pair from those
balls extends to a triple at all. The certificates total 3.3 GB. Checking all of them takes about 900 core-hours,
under five hours on sixteen 128-core nodes.
- The certificates are published with the release
  [`tc-verification-2026-11-04`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-verification-2026-11-04).
- [`../VERIFY.md`](../VERIFY.md) explains how to check them.
- [`results/`](results/README.md) lists each ball's verdict, size and timings.
- [`proofs/`](proofs/README.md) indexes the proofs the certifier rests on.

## (A): one certificate per seed ball

The [`certifier/`](certifier/README.md) proves (A) for one ball. It writes a certificate that anyone can check from its
files alone. The certificate is a dyadic tree over the ball's coordinates, and every node is one of four kinds.
- **Children**: the 16 half-size cells of the node.
- **Outside**: the cell misses the ball, which is checked in exact rational arithmetic.
- **Native leaf**: the original whole-ball certifier
  ([`family_neighbourhoods/`](../proof/theorems/TC_triple_classification/family_neighbourhoods/PROOF.md)) closes the
  cell. For most balls the whole certificate is a single native leaf.
- **Normal-form leaf**: the Normal-form localisation test ([`proofs/normal_form/`](proofs/normal_form/PROOFS.md)),
  followed by the Symmetry test, closes the cell one pattern at a time, from exact data stored in the leaf.

Each leaf starts from the cell's record and rebuilds two things: the enclosure of H over the cell, H = exp(iQ) with
Q = Q₀ + Uw + ½H₂(w⊗w) + Xz, and the complete cover of the vectors a third basis could use. Every
possible choice of six such vectors (a *pattern*) is then either excluded, because no K has those columns, or
classified. Classification means that an exact order-three action, together with a contraction bound q < 1, forces
every K in the pattern to have the order-three symmetry that identifies a known triple.

Below the whole ball, two more checks apply. The leaf's record must contain its cell, checked in Arb, and must lie on
the ball's own analytic branch, checked by the overlap witness ([`proofs/NATIVE_REVIEW.md`](proofs/NATIVE_REVIEW.md)).
Every acceptance is an exact or Arb comparison, except a few floating-point comparisons in the graph-search tests,
which carry proved error margins ([`../QuartetExclusion/ROUNDING.md`](../QuartetExclusion/ROUNDING.md)). Floating point
otherwise only proposes.

**Four balls need one extra argument.** In balls 1035, 1217, 1622 and 2705, some patterns lie along a nearly flat
direction, and the Exclusion, Normal-form localisation and Symmetry tests do not resolve them at the cell sizes used.
There, the Ordering test discharges a pattern instead, by comparing the score Γ_F of the three transitions of the
triple ([`proofs/ORDERING.md`](proofs/ORDERING.md)). Those four certificates classify every triple whose first
transition has the least Γ_F of its three. That is enough, because the bases of any triple can be reordered so that
this holds, and the score does not change under equivalence.

## (B) and (C)

**(B), the ball at F₆, is certified.** This is where the isolated triple and the continuous family meet
([`../proof/theorems/TC_triple_classification/xball/REPORT.md`](../proof/theorems/TC_triple_classification/xball/REPORT.md)).
- A certified core is surrounded by 383,829 shell cells, each certified by the shell certifier.
- The verdicts of the original run, hash-matched to `results/sharded_20261028/manifest_sharded.json`, are published as
  `fourier-shell-rows.tar`.
- On 3–4 November 2026, every shell cell was certified again from scratch, and the accounting was done from the new
  verdicts alone: 383,829 of 383,829 closed, in 1,538 core-hours
  ([`results/fourier_shell_replay_20261104.json`](results/fourier_shell_replay_20261104.json)).
- The fresh verdicts are published as `fourier-shell-replay.tar`.

**(C), Tao's matrix, is certified.** It has no third basis
([`../proof/theorems/TC_triple_classification/tao.py`](../proof/theorems/TC_triple_classification/tao.py)).

## What the proof of (A) relies on

| Ingredient | Where it is proved |
|---|---|
| The atlas covers every Hadamard class except Tao's matrix | [`../PhaseCover/`](../PhaseCover/README.md) |
| The enclosure of H over each ball, and the graph-search tests with their input checks | [`../proof/atlas/`](../proof/atlas/) (`STAGEC.md`, `RIGOUR.md`, with the rounding corrected in [`ROUNDING.md`](../QuartetExclusion/ROUNDING.md)) |
| The whole-ball certifier, its recognition argument and the overlap witness | [`family_neighbourhoods/PROOF.md`](../proof/theorems/TC_triple_classification/family_neighbourhoods/PROOF.md), [`certifier/certifier/overlap.py`](certifier/certifier/overlap.py) |
| The ordering argument, used in four balls only | [`proofs/ORDERING.md`](proofs/ORDERING.md), [`certifier/certifier/ordering.py`](certifier/certifier/ordering.py) |
| The Normal-form localisation test | [`proofs/normal_form/PROOFS.md`](proofs/normal_form/PROOFS.md), with the bounds it builds on (`PROOF_815.md`, `BASELINE_PROOFS_P1_P2.md`) |

## Where everything is

| Path | What it holds |
|---|---|
| [`certifier/`](certifier/README.md) | The certifier (`certify.py close`, `verify` and `verify-all`), its tests and its timings |
| [`proofs/`](proofs/README.md) | The proofs the certifier rests on |
| [`results/`](results/README.md) | Each ball's verdict, leaves, certificate size and timings, and the atlas summary |
| [`../proof/theorems/TC_triple_classification/`](../proof/theorems/TC_triple_classification/README.md) | The whole-ball certifier and the classification of the ball at F₆, with the records of their runs. Its own README describes an earlier stage of the work |

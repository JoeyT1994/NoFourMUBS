# Handoff L: every MUB triple in ℂ⁶ has a Fourier-type transition

## Definitions
- A **triple** is {I, H/√6, K/√6} with all three pairs mutually unbiased; its **transitions** are H, K and
  L = H*K/√6 (all three are order-6 complex Hadamard matrices).
- A Hadamard matrix is of **Fourier type** if it has a singular 3×3 submatrix. By
  `MinimalConstruction/Proofs/FOURIER_ROUTING.md` this is equivalent to membership (up to equivalence) of the
  two-parameter Fourier family N(z, w) or its transpose; N(z, w) is defined in `FOURIER_CRITICAL_LOCUS.md`.

## Statements
> **F (CONJECTURE).** Every MUB triple in ℂ⁶ has a transition of Fourier type.

> **F′ (enough for the theorem).** Every MUB quartet in ℂ⁶ has an edge of Fourier type.

F implies F′, since every triangle of the quartet's K₄ then contains a Fourier-type edge. Given F′, rotate the quartet
so that pair is (I, ·); then "no four MUBs" reduces to Tao's matrix (already excluded, Remark 4.3) and **the absence of
quartet edges in the two-parameter family N(z, w) ∪ Nᵀ**.

## What it would remove
The four-dimensional atlas (12,021 Records: ~23 CPU-h in Arb, ~1,000 thread-h in Julia, ~20k core-h in the kernel)
together with Step 1, matched existence (returns E and F), MC1, Theorem 1.4 steps 1–4 and the boundary transfers. They
would be replaced by a 2-D cover of the (z, w)-torus: Lipschitz containment of N(z, w) in certified Records, in the
style of `proof/atlas/nonempty.py`. The atlas survey suggests a few hundred to ~1,500 Records lie near the family (368
with d₃ < 0.03, 1,540 with d₃ < 0.1; `explorations/atlas_survey/`). Part of the 2-D exclusion may already exist in the
literature on the Fourier family (Jaming et al. 2009); its exact statement needs checking.

## Evidence — NUMERICAL
- The atlas-wide triple search (`explorations/triple_test/README.md`): 379,944 distinct triples (381,890 converged runs from 615,734 starts) at all
  12,021 centres, none unexplained; continuous triples have exactly two Fourier-type transitions (75 near F₆ have three).
- The Diţă triple (route-2 return B: `proof/atlas/route2/returns/B_pairing/REPORT.md` §3.1 and `EXACT_TRIPLE.json`, at
  git tag `archive-2026-10-17`): D has min |3×3 minor| = 2, while K and L have
  exactly singular minors and 3×3 Hadamard blocks — consistent with F.
- F follows from the triple-classification conjecture of Matolcsi et al. (Conjecture 1 of the paper draft); route-2
  return B lists the inclusion T₃ ⊂ H₂ as not established.

## Suggested angles
1. Apply the corner reconstruction to K and L simultaneously, using corner identities that link H, K and L.
2. Prove F′ directly, using all four triangles of a quartet.
3. Rigidity of the known triple families plus a global (connectedness or degree) argument.

## Deliverables
A labelled proof with exact certificates; separately, the 2-D exclusion certificate for N(z, w) ∪ Nᵀ.

**Risk.** F could fail away from the sampled set: the triple search is dense, not exhaustive. Even a proof of F′ alone,
or of F on an explicit region, would be valuable.

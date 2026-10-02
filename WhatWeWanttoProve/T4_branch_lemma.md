# T4. The branch lemma

**Status: proved (28 September 2026).** See [ProvenResults/Sheets/BRANCH_LEMMA.md](../ProvenResults/Sheets/BRANCH_LEMMA.md)
(exact replay `side_branch_lemma`). δ-sign and cube-root changes act by **plain permutations** of
columns 3–5 (h side) or rows 3–5 (v side), including at dF = 0.

**Details.** The [exact verifier](../ProvenResults/Sheets/verify_branch_lemma.py)
replays the proof. It uses the accepted
sign-selected side identities, but no side-fibre exhaustion or assumed
branch invariance.

The core argument was already embedded in
[BalancedAllPartitionsExtension.md §2](../ProvenResults/BalancedProducts/BalancedAllPartitionsExtension.md).
The standalone proof recovers it and supplies the chart qualification,
dedicated replay, and campaign references; the original "pending" status
had overlooked that existing argument.

**Domain qualification.** A δ reversal is defined when the side's `s ≠ 0`;
at `s = 0` its raw formula has `ρ′ = 0`, even at some strict seeds. Both
signs are regular at every strict `dF = 0` point. Consequently the theorem
closes the gap for every certified cell with nonzero formula divisors,
including cells crossing `dF = 0`. It does not authorize evaluating the
singular alternative chart. The original target and motivation follow.

## What we want

**Branch lemma.** In the side constructor of the reconstruction:
- **h side.** Changing the sign of the side square root δ, or changing the cube root w of ξ,
  acts on H₊ by a column monomial on columns 3–5: H ↦ H·Q, where Q is monomial and fixes
  columns 0–2.
- **v side.** The same choices act by a row monomial on rows 3–5.

## Why it matters

- **Where branches come from.** The certification continues each root analytically across a
  seed cell from the choice made at the centre ([Certification/fasthplus.jl](../NumericalCampaign/Certification/fasthplus.jl),
  header). model.py instead fixes the δ sign pointwise by dF ≥ 0.
- **Where the two differ.** On cells meeting dF = 0, the continued branch and model.py's
  branch differ on part of the cell.
- **What the lemma buys.** Everything the certificate uses is invariant under row and column
  monomials: the common-ray overlap moduli, and the corner-R multiset. So the lemma makes the
  continued branch a valid representative of H₊ everywhere on the cell.
- **The cube-root half** is essentially the accepted statement "root choices act through the
  stated side permutations" ([ASSUMPTIONS.md](../MinimalConstruction/ASSUMPTIONS.md), last
  row). The δ-sign half is what is missing.

## Evidence

- [Domain/branch_lemma.py](../NumericalCampaign/Domain/branch_lemma.py) verifies it numerically at random strict
  seeds, at 30 digits. For each flip, H_flip = H·Q with Q monomial fixing columns 0–2 (or rows
  0–2 on the v side).

## Suggested route

The proof instead gives an explicit transformation:
`t = q/conj(q)`, `ξ′ = t³ conj(ξ)`, and
`w′ = ωᵇ t conj(w)` sends column `j` to `b−j` modulo 3.
In particular, reversing δ does not exchange the two sheet orbits at
fixed seeds. The earlier proposed route below is retained as context,
not used as an input.

- The two-orbit side-fibre input, plus continuity; see
  [INPUTS.md](../NumericalCampaign/INPUTS.md) §2.
- Concretely: the side constructor S(G, z) = M·P(w)·F3 has fibre over (G, z) consisting of
  two orbits.
  - A δ flip should exchange the orbits' representatives by a permutation of the three side
    columns, with phases.
  - A w change multiplies by a cyclic permutation of those columns.

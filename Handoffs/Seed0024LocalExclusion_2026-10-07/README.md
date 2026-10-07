# A connected Lean theorem for all 36 seed0024 boxes

Lean now proves the complete box-specific geometric reduction:

> Every physical, dephased order-six Hadamard whose indicated corner is maximal
> among all 400 corners and whose actual phase coordinates belong to any of the
> 36 retained closed boxes has maximum-column projector operator distance
> **strictly less than 3/100 from one monomial Fourier-matrix reference**.

The result is about the original matrix, with one common row gauge and one
fixed pair of row/column permutations for all six columns. It includes closed
box faces, maximality ties and zero-invariant corners. It does not assume a
reconstruction chart, a supplied R cap, the global averaging lemma, or the
supplier's `PRACTICAL_LOCAL.tex`.

The final theorem is
`Seed0024Mathematical20261007.retained36_inside_f6_tube` in
[Retained36FourierTube.lean](lean/Retained36FourierTube.lean).
`retained36_inside_one_thirtieth` supplies the slightly larger radius used by
the supplier's Fourier-neighbourhood exclusion theorem.

## What this finishes, and what it does not

The estimate is

    distance(H, F6 monomial orbit) < 1/75 + 1/60 = 3/100 < 1/30.

Consequently, **accepting the supplier's stated ClusterTube 1/30 exclusion,
all 36 boxes are excluded by this mathematical argument**. No further
subdivision or two-parameter Arb cover of these boxes is needed for this route.

The ClusterTube exclusion itself is still a separate Lean obligation. This
packet does not turn its C++/Arb receipts into kernel proof. Therefore it
records **zero fully Lean-closed boxes** and does not claim the full no-four-MUB
theorem. Global physical coverage, soundness of other terminal types and their
finite certificates also remain separate obligations. [STATUS.json](STATUS.json)
preserves these distinctions explicitly.

## Why the argument works

1. The literal rational box bounds make two entries of the second row very
   close to one. Orthogonality forces the other three close to minus one.
2. Each remaining row has two nearly equilateral triples. Orthogonality forces
   their orientations into two pairs, with almost opposite right-half phases.
3. Those actual pairs construct a Fourier-family matrix within normalized
   Frobenius distance 1/75 of the original Hadamard after explicit permutations.
4. Four actual corner witnesses, using maximality on the original matrix,
   force the same two Fourier parameters close to an explicit integer lattice.
5. Every lattice reference is literally a permuted F6. One exhibited half-phase
   row gauge puts every column within projector distance 1/60 of that reference.
6. The exact Euclidean rank-one-projector norm identity, triangle inequality
   and row-permutation invariance yield the bound above in original coordinates.

The complete analytic derivation and constants remain in
[PROPOSED_PROOF.md](PROPOSED_PROOF.md); its historical filename is preserved.
The metric is the continuous-linear-map operator norm on complex Euclidean
six-space, not the supremum norm on raw six-entry functions.

## Evidence and independent review

The packet contains **48 checked new modules with 305 theorem declarations**,
and their custom import closure (67 mathematical source modules plus the
aggregate audit). Independent reviews
check the physical hypotheses, shared midpoint witnesses, exact Fourier
identification, scalar bounds, operator metric and final statement. Successful
check receipts and extracted axiom outputs are under `checks/`; reviews are
under `reviews/`. The aggregate root audit checks all 83 root declarations.
No `sorry`, custom axiom or native-decide oracle is used by the reported results.

The prior Mathlib source/cache authenticity caveat remains: these local kernel
receipts are not evidence of a fresh full rebuild of Mathlib. The pinned source
closure and build configuration are supplied for independent reproduction.

## Exact input and collaborator reconciliation

The input is `RouteC/band/seed0024/seed_boxes38.jsonl` at commit `c885a39`, SHA-256
`61e7b3e36415d453ea9b3d1b181a22c166343de80add425bf97afb79bebf1da5`.
It has 38 rows: the 36 retained class0024 boxes, plus IDs 6491830 and 17434864
assigned by the supplier to the separate class2442 route. The exact split and
all rational coordinates are in [INPUT_BINDINGS.json](INPUT_BINDINGS.json).

All 36 satisfy, directly or with the first two coordinates swapped,
`|theta_0| <= 2*77/100000`, `|theta_1| <= 77/100000`.
No restriction on the third row of the leading corner enters this estimate.

Supplier commit `02e2615` independently claims the same 36 boxes via a
numerical Fourier-family cover. We checked its exact IDs and geometry hash;
our proof does not use that cover or its additional local-classification
premise. The later supplier ledger claim at `55de0ca` also remains a research
input, with its unproved Lean obligations documented in
[the supplier audit](reviews/SUPPLIER_55DE0CA_AUDIT.md).
No production closure ledger or cluster queue is changed by this handoff.

## Reproduction

- `python3 verify_inventory.py` checks hashes, exact geometry and explicit
  non-exclusion status. It is an inventory verifier, not a mathematical checker.
- `python3 check_algebra.py` runs supplementary exact research checks and
  requires SymPy. Their results are separate from the Lean theorem.
- With the pinned Lean toolchain and Mathlib dependency, `lake build` checks
  the listed Lean modules, including the connected physical theorem.
- Foundation sources originate in `Handoffs/PopeyeLeanCompletion_2026-10-06`
  at commit `3832737`; the included closure pins each copied source.

The remaining local formal task is to prove the supplier's expanded
ClusterTube theorem in Lean and connect its quartet-edge formulation to this
explicit monomial-reference metric.

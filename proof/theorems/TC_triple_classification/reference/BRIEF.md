# Handoff TC: classifying the MUB triples of ℂ⁶ with the certified atlas

## Goal

Prove the conjecture of Matolcsi, Matszangosz, Varga and Weiner: **every MUB triple in ℂ⁶ is equivalent either to a
triple of the continuous construction or to the isolated Fourier triple.** (Paper, main text §"Mutually unbiased
triples and constellations"; SM §"Known MUB triples". The continuous construction has two Fourier-type transitions
(F₆⁽²⁾ or its transpose) and a third in the two-circulant family X⁽²⁾; the isolated triple has three
Fourier-equivalent transitions.)

This is new mathematics. The point of this handoff is a precise local statement that, combined with the certified
atlas we already have, would prove the conjecture, together with a plan to prove and certify it.

## What we have

1. **A certified atlas of the whole space.** Every class of order-six complex Hadamard matrices other than Tao's lies in
   one of 2,775 seed balls or the X-ball at F6 (`PROOF.md` Step 5; certificate
   `proof/seed_atlas/results/seed_atlas_certificate.json.gz`, certified by Arb and Julia). Each seed ball carries a
   certified enclosure of its phases, Q(w) = P + U w + ν, ‖w‖ ≤ r, ‖ν‖ ≤ n (C1, Lemma 3.1). The X-ball has its chart
   (Theorem 4.2) and a whole-ball model.
2. **Certified exclusion of triples away from the triple locus** (`explorations/triples_seed/` on the `research`
   branch, `nothird.py`). Each seed ball's parameter cube is subdivided into dyadic cells. On each cell, Stage C's
   one-clique test (`proof/atlas/stagec.py`, `stage_c_triple`; `STAGEC.md`) certifies that no matrix in the cell's
   image extends to a MUB triple: a third basis would be a 6-clique of the orthogonality graph of the
   I/H-unbiased labels, and the complete search finds none. Cells that still fail at radius r/16 are recorded; they
   form the **triple neighbourhood** 𝒩, a finite union of small cells around the triple-edge locus.
   **Result:** running now (rusty job 7346573, cells down to radius r/8); per-ball rows in
   `explorations/triples_seed/results/nothird_w*.jsonl` (`ok`, `failed_cells`). Use the failed cells as 𝒩.
3. **A numerical census** (`explorations/triples_seed/census.py`; earlier, on a 12,021-ball atlas,
   `explorations/triple_test/`). A triple search started from every ball centre finds triples near every centre, and
   every triple found is of a conjectured form, with wide classification margins (invariants f6, d₃, x₂ in
   `triple_test/triples.py`). **Result on the seed atlas:** running now (same job); rows in `explorations/triples_seed/results/census_w*.jsonl`.

## The missing statement

Write 𝒯 for the set of *triple edges*: Hadamard classes [H] such that {I, H/√6} extends to a MUB triple (I, H/√6, K).
By item 2, 𝒯 ⊂ 𝒩 ∪ (X-ball). What is missing is a **local classification inside 𝒩 and the X-ball**:

> **(L)** For every cell C of 𝒩 (and the X-ball): every MUB triple (I, H/√6, K) with [H] in the image of C is
> equivalent to a triple of the continuous construction or to the isolated Fourier triple.

With (L), the conjecture follows: any triple has a transition [H] ∈ X ∪ {Tao}; Tao is not a triple edge (check this,
or certify it the same way), and [H] lies in a seed ball or the X-ball, hence in 𝒩 or the X-ball by item 2.

### Suggested routes to (L)

- **Local uniqueness around the known families.** The known triples form explicit two-parameter families. Show that
  the triple equations (orthogonality of H and K and |H*K|² = 6, in a dephased chart; `triples.py`, `residuals`) are
  regular along these families, with a kernel of exactly the family's dimension, and certify a tube of explicit
  radius around each family that contains no other solutions: a Krawczyk or Newton–Kantorovich certificate for the
  equations restricted to a transversal slice. Then show that each cell of 𝒩 lies in such a tube, using its
  certified enclosure.
- **Clique-by-clique.** On a cell of 𝒩, the 6-cliques that survive are few. Each fixes K's columns to small
  label boxes. For each surviving clique, solve the triple system on the cell by interval Newton, and show that its
  solution set is the known family's piece through the cell.
- **The X-ball.** It contains F6, where the isolated triple and the continuous family meet; near F6 the census found
  75 triples with three Fourier-type transitions. This region needs its own argument: the edge chart's coordinates
  (`proof/theorems/W_f6_neighbourhood_chart/`, `U_fold_at_edge/`) may make the families explicit there.
- **Equivalence of triples, not just of H.** (L) is about triples. Given H on a known family, the third basis K must
  also be one of the known ones. Watch for several K per H (the census distinguishes them by f6 of K).

## Deliverables

- The statement of (L), in a form checkable cell by cell, and its proof, with every analytic constant explicit.
- A certifier for (L) on concrete cells (Arb or exact arithmetic; no float acceptance), run on all of 𝒩 and the
  X-ball, or a precise account of what is left.
- If (L) fails anywhere: the counterexample (a certified triple not of the known forms).
- Labels on every claim: **PROVED**, **CERTIFIED** (interval or exact replay), **NUMERICAL**, **NOT ESTABLISHED**.

## Where things are

- Repository `/Users/jtindall/Projects/NoFourMUBS` (branch `main`): `PROOF.md`; the certificate and its format
  (`proof/seed_atlas/FORMAT.md`); the checker (`proof/seed_atlas/cert/`; `seedcert.stage_c_args` builds a ball's Stage C
  enclosure); Stage C (`proof/atlas/stagec.py`, `STAGEC.md`, `RIGOUR.md`); the edge chart theorems in
  `proof/theorems/`.
- Branch `research`: `explorations/triple_test/` (the triple search and classifier) and `explorations/triples_seed/`
  (`census.py`, `nothird.py`, their results). Read it in a worktree; do not edit other sessions' worktrees.
- The paper's SM section "Known MUB triples" (the constructions, the triple search's classification rule).
- Rusty: `/mnt/ceph/users/jtindall/seed_atlas_build/`; put your work under `.../triples_tc/`.

## Constraints

- Commit on a branch of your own; do not push. Only exact or interval arithmetic decides anything.

# Symmetry between seed balls (triple classification)

1 November 2026. Question: of the ~400 seed balls whose triple-classification certificate (`code/onetree.py`) needs a
tree, how many are genuinely different up to the symmetries of the seed torus and of the triple problem? Could one
certificate plus an exact transport cover several of them?

**Short answer.**
- **Up to symmetry the tree balls are all different.** The 403 tree balls fall into 402 classes; the one coincidence
  is a pair of duplicate balls. No hard ball (768, 815, 825, 1016, 905, 2320, 1861, …) is an image of another, and no
  ball of the atlas, under any symmetry, lies inside another ball. The atlas was grown symmetry-reduced (its spheres
  are closed by T1 corner-symmetry transfers), so this is expected.
- **Cells, however, are shared heavily.** The tree balls form one connected region of seed space, overlapping each
  other directly and through symmetric images. 62% of all tree bytes are leaves whose whole cell lies, after a
  symmetry or the identity, inside *another* tree ball. With an acyclic order, **31% of the bytes (23.5 GB of 75.9 GB,
  303k of 1.04M leaves)** could be replaced by transfer leaves into closed balls. The identity (plain overlap) gives
  11.7 GB and the nontrivial symmetries add 13.8 GB on top.
- **The 18 open balls** are 57% covered, at level 5, by cells inside images of closed balls; the symmetries roughly
  double what the identity gives (499: 88%, 2320: 85%, 2324: 77%, 1861: 45%).
- **Spot check:** 120 sampled transfers (60 identity, 60 nontrivial symmetry) all pass the existing Arb transfer
  check, `code/ext_transfer.check` (the atlas's own `patches.Transfer`), in 0.9 s each.
- **What it needs:** a transfer node in `onetree.py` and an acyclic assembly. Both exist in the old pipeline
  (`ext_transfer.py`, `assemble.resolve_transfers`) but not in `onetree.py`. The transport lemma (§1.4) is for the
  user to review before any code uses it.

## 1. The symmetries and how they act

### 1.1 The group
A **corner symmetry** is g = (I, J, γ): I, J orderings of (0, 1, 2) and γ ∈ Γ = {id, conj, T, conjT}. It acts on
the phases Q of a dephased H by γ (FORMAT.md §4: Q′_ab = Q_ab, −Q_ab, Q_ba, −Q_ba) and then reads off the seed of
the ordered corner (I, J):

  θ′_k = Q′_{i j} − Q′_{i j0} − Q′_{i0 j} + Q′_{i0 j0}, (i, j) = (i1, j1), (i1, j2), (i2, j1), (i2, j2).

The corner block of Q is (0, 0, 0; 0, θ₁, θ₂; 0, θ₃, θ₄) up to 2π, so θ′ ≡ L_g θ (mod 2π) with L_g ∈ GL₄(ℤ)
(the FORMAT.md T1 remark; `seedcert.corner_symmetry`). Computed (`code/symmetry_census/ops.py`):
- the 144 maps L_g are pairwise distinct and closed under composition: a group G ⊂ GL₄(ℤ) of order 144 (det ±1).
  These are the "144 seed symmetries" of Theorem 1. −I ∈ G is conj with the identity corner.
- **orientation character** s(g) = +1 for γ ∈ {id, conjT}, −1 for γ ∈ {conj, T}: the corner (I, J) of γ·H₊(θ) is
  matched with orientation s(g) (its sides are B, C up to order and conjugation; conj flips Im Ψ).
- G⁺ = ker s has order 72 (the "72 seed symmetries" of FORMAT.md). The atlas has o = +1 on every ball, so only G⁺
  maps balls to balls. An element with s = −1 lands on the o = −1 sheet, and composing it with conj (−I, s = −1)
  gives the element −L_g of G⁺. So passing through conj gives nothing new, and **transport inside this atlas uses
  only γ ∈ {id, conjT}**.

### 1.2 Action on seeds and balls
A seed ball is E_B = {θ₀ + M w : ‖w‖ ≤ r} (FORMAT.md §3). For g ∈ G⁺ and a winding N ∈ ℤ⁴, its image is the
ellipsoid L_g θ₀ + 2πN + L_g M {‖w‖ ≤ r}. In the target ball B′'s normalised chart u = M′⁻¹(θ − θ₀′)/r′, the image
of a point is c + A u with

  c = M′⁻¹(L_g θ₀ + 2πN − θ₀′)/r′,  A = M′⁻¹ L_g M · r/r′.

- **Whole-ball containment:** g(E_B) + 2πN ⊆ E_B′ iff ρ = max_{‖x‖≤1} ‖c + A x‖ ≤ 1. Computed exactly by the
  trust-region dual ρ² = inf_{λ>σ_max(A)²} ‖c‖² + λ + bᵀ(λ − D)⁻¹b. Any λ gives an upper bound, so a containment
  found this way is genuine up to float rounding.
- **Cell containment:** for a dyadic cell of B's chart, the 16 vertex images lie inside E_B′ (convexity). This is
  exactly the atlas's T0 test (identity) and T1-symmetry test, so `ext_transfer.check` decides it in Arb.

### 1.3 Action on the ball record
The record's normal form Q = Q₀ + U w + ½H₂(w⊗w) + Xξ is **not** needed for transport. The target ball's own
certificate covers all of E_B′, so the transported cell only has to land in E_B′ at the level of seeds. The record
matters only on the source side, and only if one wants the image of a cell's H enclosure. `patches.Transfer` uses
the linear seed map for exactly these g (its "exact linear seed map" branch), so H₂ and X never enter.

### 1.4 Action on triples: the transport lemma

> **PROPOSAL (new lemma, for the user to review; not used in any code).**
> *Transport.* Let g = (I, J, γ) ∈ G⁺ and N ∈ ℤ⁴, and let C be a closed set of seeds with L_g C + 2πN ⊆ E_B′.
> Suppose (A) holds on ball B′: every third basis completing (I, H/√6), for every H in B′, gives a triple of known
> type, or there is none. Then (A) holds for every H = H₊(θ), θ ∈ C. The same holds in minimum-transition scope.
>
> *Argument.*
> 1. Put K = γ(H): K = H for γ = id, K = H* for γ = conjT.
> 2. Moving rows I and columns J of K to the front and dephasing is an equivalence K ≅ H′. H′ has leading corner
>    E(θ′) with θ′ ≡ L_g θ, and is matched with orientation s(g) = +1 (§1.1).
> 3. θ′ + 2πN ∈ E_B′, so by Theorem 2.3 (matched uniqueness) H′ ≅ H₊(θ′ + 2πN), which lies in B′.
> 4. **Triples (γ = id).** If H′ = P D₁ H D₂ Q, then K₃ ↦ P D₁ K₃ is a bijection between third bases of (I, H) and
>    of (I, H′). The two triples are unitarily equivalent: apply P D₁, and note that right phases and orders do not
>    change a basis.
> 5. **Triples (γ = conjT).** K₃ ↦ H*K₃/√6 is a bijection between third bases of (I, H) and of (I, H*). Applying the
>    unitary H*/√6 to {I, H/√6, K₃/√6} gives {H*/√6, I, H*K₃/6}, the same three bases reordered, so the triples are
>    equivalent.
> 6. Known type is a property of the equivalence class of the unordered triple, so it transfers.
> 7. **Minimum-transition scope.** The three transitions of a triple are its pairwise classes, each up to adjoint,
>    and Γ_F is invariant under permutations, phases, conjugation, transpose and adjoint (GAMMA_PROOF.md Γ1). So
>    "the H-transition has least Γ_F" is preserved, and a minimum-transition certificate on B′ transports with the
>    same scope.
>
> *Points to check:*
> - that the triple-equivalence used by "known type" includes reordering the three bases (step 5 needs it; step 4
>   does not);
> - that (A) on B′ is certified on the closed ball, so ≤ suffices in step 3 (the tool tests strict < anyway).
>
> No conjugation of triples is needed, since conj and T alone never occur in G⁺.

## 2. The census

**Data.**
- `code/symmetry_census/out/best_certs.tsv`: the best onetree certificate per ball, chosen as in
  `closer/status_tmp.py` (CLOSED first, then the smallest proof).
- A tree ball is one with leaves > 1 or leaves > native leaves, plus the 18 balls still OPEN after their native
  attempt. That makes **403 tree balls**: 385 closed (1,043,832 leaves, 75.9 GB) and 18 open (499, 595, 666, 692,
  835, 848, 852, 918, 1600, 1733, 1861, 1871, 1880, 2262, 2320, 2324, 2339, 2342).
- Leaf cells come from each certificate's `tree.json`: `leaves.py`, a Slurm job; its output stays on rusty in
  `$B/symmetry_census/leaves.tsv.gz`.

**Pairs.** Every source ball, every target ball, every g ∈ G⁺ and the nearest winding: 87,927 (source, target, g)
triples whose images meet (`geom.py`).

### 2.1 Orbits

| Relation between tree balls B, B′ | classes among the 403 |
|---|---:|
| g(θ₀) = θ₀′ exactly (to 10⁻⁶ in B′'s chart) | 402 |
| image centre within 0.1 chart radii of B′'s centre | 402 |
| image centre inside B′ | 268 |
| same, identity only | 335 |
| image meets B′ (any overlap) | 11 (one region of 296 balls, 75.5 GB) |
| same, identity only | 102 (largest: 146 balls, 54.7 GB) |

Every hard ball is alone in its class under the first two relations. They differ only through overlap: under
"image centre inside", 815 shares a class with 133, 636, 641, 837, 874, 995, 1035, 1213, 1227, 1265 and 2558, and
363 with 588, 875, 878 and 895. 768, 825 and 1016 stay singletons even then.

**Exact coincidences** are duplicate balls in the atlas, all small (r 0.015–0.056):
- identity: 1884 = 1885, 1887 = 1888, 1889 = 1890, 1897 = 1898, 2762 = 2763, 2769 = 2771, 2773 = 2774;
- conjT: 1883 ↦ 1886, 1891 ↦ 1893, 1892 ↦ 1894, 1895 ↦ 1896, 1899 ↦ 1901, 1900 ↦ 1902, 2729 ↦ 2752.

The centres agree to 10⁻¹⁵ and the radii exactly, but the frames M agree only to about 10⁻⁹ relative, so ρ = 1 +
O(10⁻⁹). A whole-ball transfer therefore fails by about 10⁻⁹ r at the rim, though interior cells transfer. Only six
of these are tree balls (1886, 1887, 1888, 1895, 1901, 1902): about 2,100 leaves and 11 MB in all. Not worth a
special case, but the duplicates may interest whoever maintains the atlas (they are harmless for soundness).

**Self-symmetry.** Two involutions of G⁺ map large parts of several hard balls into themselves. Each fixes a 2-plane
of T⁴.
- **op 70**, (I, J) = ((2, 1, 0), (2, 1, 0)), γ = id: both corner orders reversed;
  L = [[1, −1, −1, 1], [0, −1, 0, 1], [0, 0, −1, 1], [0, 0, 0, 1]].
- **op 22**, (I, J) = ((0, 2, 1), (2, 1, 0)), γ = id.

Leaves whose image under one of them lies wholly inside their own ball:

| ball | op | leaves | GB of the ball |
|---|---|---:|---:|
| 768 | 70 | 20,909 | 2.80 of 8.26 |
| 1010 | 70 | 9,056 | 1.41 of 2.77 |
| 1016 | 70 | 6,093 | 1.11 of 3.98 |
| 830 | 70 | 4,426 | 0.44 of 2.56 |
| 641 | 70 | 3,317 | 0.31 of 1.08 |
| 1056 | 22 | 3,807 | 0.52 of 1.34 |
| 1487 | 22 | 8,853 | 0.20 of 0.89 |
| 1800 | 22 | 2,937 | 0.16 of 0.48 |

1800, 2340 and the open 2324 have centres within 0.01 chart radii of their own image under op 22 or a sibling, so
they are nearly symmetric. A fundamental-domain tree (certify one side of the fixed plane, transfer the mirror cells)
saves at most about half of these 8.0 GB, and part of that overlaps the cross-ball saving below.

### 2.2 Whole-ball containment
**None.** Over all 2,775 balls, all of G⁺ and all meeting pairs, ρ ≥ 1 always. Equality to 10⁻⁹ occurs only for the
duplicate pairs above, so no ball sits inside the image of a larger one.

### 2.3 Cell-level transport
For each leaf of each tree ball (`leafmap.py`): the (target, g) pairs whose ellipsoid contains the image of the whole
closed cell, with float margin 10⁻⁹. Targets that are open balls are excluded. A ball may only transfer into balls
earlier in a fixed order, with one-native-leaf balls first. The order is chosen greedily (`savings.py`).

| transfers allowed | movable bytes | leaves |
|---|---:|---:|
| identity and symmetries | **23.45 GB (30.9%)** | 302,909 |
| identity only (plain overlap) | 11.69 GB (15.4%) | 148,445 |
| nontrivial symmetries only | 15.04 GB (19.8%) | 188,433 |
| into one-native-leaf balls only (no order needed) | 0.12 GB | 11,594 |
| upper bound: open balls also targets, any order | 47.3 GB (62%) | 577,279 |

Almost nothing moves into easy balls: the images of hard cells are hard cells of other tree balls. The saving
therefore comes from **not certifying the same region of 𝓗 twice**, and it needs an acyclic order. By level, the
movable bytes are 3.7 GB at level 3, 14.0 GB at level 4, 5.1 GB at level 5 and 0.7 GB deeper.

Per hard ball, in the greedy order (an order trades one ball's saving against another's):

| ball | leaves | GB | movable leaves | movable GB | of which identity | main targets |
|---|---:|---:|---:|---:|---:|---|
| 768 | 54,140 | 8.26 | 21,990 | 2.81 | 1.92 | 830 (id and sym), 1016 |
| 825 | 27,800 | 6.00 | 0 | 0 | 0 | (target of others: 858, 1016) |
| 1016 | 26,672 | 3.98 | 236 | 0.02 | 0 | (target of 768, 815, 830) |
| 815 | 32,285 | 3.69 | 15,714 | 1.70 | 0.65 | 1016 sym, 1089, 1217 |
| 987 | 21,616 | 3.13 | 9,726 | 1.34 | 0.94 | 1010, 678, 777 |
| 823 | 22,274 | 3.09 | 3,167 | 0.31 | 0.01 | 678, 194, 825 (sym) |
| 858 | 20,990 | 2.90 | 11,621 | 1.97 | 0 | 825, 734, 363 (sym) |
| 1010 | 20,377 | 2.77 | 732 | 0.11 | 0.02 | 703, 678, 1005 |
| 282 | 24,490 | 2.75 | 20,977 | 2.61 | 0.87 | 1010, 987, 678 (sym) |
| 830 | 21,488 | 2.56 | 3,637 | 0.29 | 0.15 | 1016, 900 |
| 905 | 48,362 | 2.14 | 12,561 | 0.45 | 0.23 | 1038, 1070, 733 |
| 807 | 19,795 | 1.93 | 15,235 | 1.64 | 0.97 | 777, 987, 678 |
| 1056 | 9,651 | 1.34 | 4,570 | 0.62 | 0.34 | 703, 869 |

The "any order" figures for 825 (1.20 GB), 1016 (2.23 GB) and 830 (2.34 GB) are larger, because those balls are
targets in the greedy order.

### 2.4 The open balls
`openballs.py` tiles each open ball's chart at level m and keeps the cells meeting the ball. It then counts the cells
whose whole image, under some g ∈ G⁺ including the identity, lies in a **closed** ball:

| level | covered | per ball (identity alone in brackets) |
|---|---:|---|
| 3 | 36% | |
| 4 | 50% | |
| 5 | 57% | 499 88% (66), 2320 85% (35), 1871 79% (37), 852 77% (26), 2324 77% (38), 692 71% (50), 918 71% (45), 848 70% (53), 595 66% (32), 2342 59% (12), 2339 53% (41), 1600 45% (5), 1861 45% (27), 835 38% (6), 666 36% (22), 1733 25% (9), 2262 18% (0), 1880 16% (0) |

Those cells need no search at all. This is the most immediate use of the census.

### 2.5 Spot check in Arb
`spot_specs.py` and `spot.py` drew 120 random whole-cell hits into closed balls, 60 T0 and 60 T1 at a reordered
corner (γ ∈ {id, conjT}). All 120 pass `ext_transfer.check` against the pinned checker tree
`$B/pr4_914919b` (same atlas, SHA-256 `33ad9798…`), with a median of 0.9 s each (`out/spot_results.json`).

## 3. A transport certificate (design; not built)

**Leaf.** A new onetree node kind, `{"transfer": {"target": T, "group": {kind, rows, cols, g, wind}}}`. This is the
same spec `ext_transfer.check` takes today. For the symmetries here, kind T0 (identity) or T1 with rows and cols
orderings of (0, 1, 2) and g ∈ {id, conjT}. Size about 100 bytes in `tree.json`, with no leaf files.

**Check of the node**, independent and parallel like every other node:
1. g ∈ G⁺: rows and cols are orderings of (0, 1, 2), g ∈ {id, conjT} (or a recorded atlas T1 group for a general
   corner, which needs the Taylor model and the orientation margins; `patches.Transfer` already does both).
2. Containment: `patches.Transfer(model_for(B), Ball(T), group).check([level, *cell], use_sphere=False)` in Arb at 224
   bits. For G⁺ this is the linear branch: the 16 vertex images strictly inside E_T. Exact rationals would do too,
   except for 2πN, which Arb encloses.
3. Nothing about the cell's own H record is needed.

**Check of the assembly** (once per atlas, cheap):
- every target T has a CLOSED onetree check for its whole chart box, bound by the SHA-256 of its `tree.json`;
- the transfer graph is acyclic: a global order on balls, with transfers only to earlier balls;
- scope: a node transferred into a minimum-transition ball has minimum-transition scope (§1.4, step 7);
- self-transfers (target = B, g ≠ id): the image box must miss every transfer node of B's own tree. This is the
  "region transfer" rule of `assemble.resolve_transfers`, with `ext_transfer.image_box` as the enclosure. Simplest is
  to allow them only for the two involutions, with a fixed side of the fixed plane.

**Search.** In `onetree.close`, try `ext_transfer.find` (it already searches the 144 corner symmetries with the
nearest winding, plus the atlas's recorded groups) before the plane search at each node, restricted to targets
earlier in the order. A whole cell that transfers at level 3 replaces its 16–256 descendants, so a fresh search would
beat the leaf-for-leaf estimate of §2.3.

**Expected saving.**
- About 23 GB of the 76 GB of tree certificates (31%), and about 300k of the 1.04M plane leaves, become about 100-byte
  nodes. Checking each takes about 1 s instead of a full whole-cell check.
- Possibly a few GB more from self-symmetry (768, 1010, 1016).
- For the 18 open balls, 36–57% of their volume (by level) needs no search.
- The order is a free choice. Making 768 and 825 targets rather than sources moves the saving between balls; the
  total changes little (25–33 GB over the orders tried).

**Caveats.**
- All figures reuse the existing leaves at their current sizes. A cell that only partly lies in a target counts as
  not movable, so the figures are conservative for re-searched trees and generous only in assuming that the targets
  stay closed.
- Allowing open balls as targets presupposes that they will be closed.
- The float containments are a selection, not proofs. The Arb check decides, and passed 120 of 120 sampled.

## 4. Files
- `code/symmetry_census/`:
  - `ops.py`: the group;
  - `geom.py`: pairwise images (`geom.py ATLAS geom2.npz`);
  - `best_certs.py` and `leaves.py`: Slurm jobs listing the best certificates and their leaves;
  - `leafmap.py`: leaf-to-target containment;
  - `census.py`: orbits;
  - `savings.py` and `savings_open_targets.py`: acyclic savings;
  - `openballs.py`: open-ball coverage;
  - `spot_specs.py` and `spot.py`: the Arb spot check;
  - `out/`: the per-ball best certificates and the spot-check results.
- Rusty, `$B/symmetry_census/`: the same scripts, `best_certs.tsv`, `leaves.tsv.gz` (4.9 MB) and
  `spot_results.json`.
- Read-only throughout: no certificate, certifier or receipt was changed.

Rusty cost: four short preempt jobs, billed as whole 128-core nodes for about 14 minutes in all, about 30 core-hours
billed (2–3 core-hours used).

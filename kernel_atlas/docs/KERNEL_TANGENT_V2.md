# The sharper kernel tangent test (v2)

**Status (15–16 October 2026).** Experimental, not part of the proof. `Rec146.coverT2` is kernel-checked: the
whole bin tree of atlas Record 146 (one of the 673 Records that the v1 kernel checker could not settle), with the
direct test, the hinted v2 tangent test, and label membership at the leaves. It uses only the standard axioms.
With the joint edge test (6.23) now in the kernel too, **`Rec146.stageC2` is a complete kernel-checked Stage C
certificate for Record 146** (`StageCCert`, standard axioms): the v2 bin cover, label membership, direct and joint
edge exclusions, and the two-clique search.

## Why

The atlas survey found 673 Records (5.6%) whose kernel labels admit two cliques even with the support and joint
edge tests, while certify.py (Arb) passes them all. `explorations/hard_records/` traced this to the kernel's tangent
test (Lemma 6.3, `Tangent.lean`), which fixes the multiplier `y = c` and keeps only one branch of each remainder term.
With certify.py's least-squares multiplier and the full remainder, 671 of the 673 settle in floats, and all 673 with
the scalar test (6.12) added. **The atlas does not need to change.**

## Design

- **Real-number cores** (`Tangent2.lean`). `lin2_real` derives `StageC.leafRej_of_linear` for *any* multiplier `y`
  from integer bounds of every norm in the lemma: Jᵀy, Bᵀy, N_y, G_y, the three S∘y norms, |Σ y c|, with the
  table and rounding errors. `scal2_real` does the same for `leafRej_of_scalar`. New error lemmas: `C_err` (complex
  products), `S_le`, `N_bound` (Minkowski).
- **The kernel checker** (`Tangent2K.lean`). `Nat` only, computed directly from the six row values of a bin (no
  lane packing): signed integers are pairs `(p, m)` of naturals. Square roots are integer upper bounds `s` with
  `X ≤ s²`, computed by bisection and Newton (`isqU`, untrusted) and checked by one multiplication.
- **Hints.** Python (`ktangent2l.py`, the exact mirror) decides per bin which test the kernel runs: none, the scalar
  test on column i, or the linear test with a multiplier `y` (|y_i| ≤ 511, a least-squares direction solved on the
  complement of (1,…,1), the exact null direction of the normal matrix). The hint stream of each sub-slab is a Lean
  list threaded through the traversal (`binH`); every bin that survives the direct test consumes one hint. Hints are
  untrusted: the soundness theorems hold for every hint.
- **Soundness** (`Tangent2S.lean`): `lin2B_sound`, `scal2B_sound`, `tang2B_sound` (one bin), `binH_sound`,
  `subH_sound`, `topH_sound` (the traversal, any hints), all sorry-free with standard axioms. The per-Record rational
  conditions on the coefficients are `T2ParOK`, decided once per Record.
- **The joint edge test** (`Joint2.lean`, `Joint2K.lean`, `Joint2S.lean`). `labBnd` gives the real bounds of one label
  centre from integer node values; `joint_core` turns the bounds of two labels, an approximated pair vector and an
  edge term into the inequality of `edgeOExcl_of_joint` / `edgeUExcl_of_joint`; `jointO_excl` / `jointU_excl`
  instantiate it with the table values of `e(v_a − v_b)` (error `ε_U` each). The kernel checker computes the label
  centres from the tables (certified by `nodeB`, like tree nodes), each label's integer quantities as in the v2 test,
  and one exact rational comparison per pair (about 3,200 ordered pairs per Record, so rational arithmetic is
  affordable here). Multipliers `y₀, y₁, y_e` come from a per-pair hint (least-squares, `kjoint.py`).
  `jointOB_sound`, `jointUB_sound` and `stageCK2` (the certificate from `edgesOK2`) are sorry-free.
- **Exporter**: `kernel_atlas/generators/export_v2.py <idx> <dir> --all --labels` writes `T2Data.lean`,
  `L2Data.lean` (labels of the v2 survivors), `H2SlabNN.lean` (12 files, 12 sub-slabs each, with their hint lists)
  and `CoverH2.lean` (`T2ParOK` by kernel decision, and `coverT2` through `topH_sound`).

## Results

### Record 146

| | v1 (`Tangent.lean`) | v2 |
|---|---|---|
| depth-0 survivors | 11,065 | 7,498 |
| labels | 133 | 115 |
| graph passes with direct + joint edges | no | yes (390 O-pairs, 1,196 U-pairs excluded by the joint test) |
| hints | – | 132,368 (24,644 scalar, 88,023 linear, 19,701 none) |

Kernel check of `Rec146.coverT2` (18-core, 64 GB laptop, three slab files at a time):

| | |
|---|---|
| 12 slab files (144 sub-slabs) | 153–203 s each; **2,183 s CPU in total (36 min)** |
| peak resident memory | about 15 GB per Lean process |
| `CoverH2` (`T2ParOK`, assembly) | 3 s |
| `#print axioms Rec146.coverT2` | `propext`, `Classical.choice`, `Quot.sound` |
| source | 4.1 MB, mostly hint lists |

Stage C with the joint edge test (`export_joint.py`, `Graph2.lean`, `StageC2.lean`):

| | |
|---|---|
| ordered label pairs | 13,225 |
| excluded by the direct test | 10,205 (O), 4,555 (U) |
| excluded by the joint test | 780 (O), 2,392 (U) |
| edges kept | 2,240 (O), 6,278 (U); no two cliques (39,028 calls in the mirror) |
| `Graph2` (labels small, `noTwo`, `edgesOK2` in 12 row chunks) | 217 s CPU, 12 GB peak |
| `StageC2` (assembly via `stageCK2`) | 3 s |
| `#print axioms Rec146.stageC2` | `propext`, `Classical.choice`, `Quot.sound` |

`edgesOK2` as one kernel decision exhausts memory (24 GB, reduction aborted); split into twelve chunks of ten rows
(`allNat_of_ranges`) it passes in 217 s.

Checks that the checker computes what the mirror predicts (`Rec146/H2Test.lean`): with leaves rejected outright,
sub-slab (3, 7) passes with its 404 hints (`pos_3_7`), and fails when one depth-0 hint is removed (`neg_3_7`).

### Record 100 (a typical Record)

v2 survivors 7,599 (v1: 11,057), 108 labels (v1: 131), 128,608 hints (longest list 3,415, which needs
`set_option maxRecDepth` to elaborate). `Rec100.coverT2` is kernel-checked (standard axioms): 12 slab files at
140–213 s each, **about 2,100 s CPU in total (35 min)**, 15–18 GB peak per process. For comparison, v1's
`Rec100.coverT` takes 681 s: v2 rejects more bins but each test is more expensive (no lane packing), and the hint
lists add elaboration time.

### The whole atlas (exact mirror, rusty)

RESULT_ATLAS

## Cost estimate

RESULT_COST

## What remains

RESULT_REMAINS

## Reproduce

```bash
python3 kernel_atlas/generators/export_record.py 146 kernel_atlas/lean/KernelAtlas/Rec146   # Data.lean (remove its Slab/Cover files)
python3 kernel_atlas/generators/export_v2.py 146 kernel_atlas/lean/KernelAtlas/Rec146 --all --labels
cd lean && lake build KernelAtlas.Rec146.CoverH2
python3 kernel_atlas/generators/check_v2.py 146 --v1                                        # v1 vs v2 in the mirror
sbatch kernel_atlas/generators/run_v2_rusty.sh                                              # the whole atlas on rusty
```

# ZT count study and a geometric obstruction

## Status

- **CERTIFIED final result:** **193 of the 200 supplied source spheres** have complete replayed transfer covers, using **344,174 patches** against 937,968 original boxes on the same 193 sources. Of the final patches, 340,655 use the global predictor and 3,519 use certified true-centre jets. The other seven sources remain explicitly unresolved by the Z normal-form method.
- **CERTIFIED (exact integer arithmetic):** the 200 supplied full seed-sphere covers pass the `FORMAT.md` sphere traversal. Their original and same-label combinatorial counts are reproduced below. This asserts coverage of the sphere by the listed boxes, not analytic validity of the original transfer tests.
- **NUMERICAL:** the 200-ball affine and weighted-predictor surveys. These choose candidate patches using floating-point evaluations of exactly the inequalities implemented in `zt_patch.py`. A complete analytic certificate requires Arb replay of the selected patches and any fallbacks.
- **CERTIFIED:** all **91** proposed zero-fallback source spheres were subsequently replayed in Arb, including exact coverage. All **140,306** selected patches passed. These 91 sources originally used 325,839 boxes.
- **CERTIFIED:** all **165** refined zero-fallback covers were independently replayed using freshly reconstructed output-projected Arb bounds. All **261,336** selected patches passed, replacing 704,034 original boxes on these sources.
- **CERTIFIED:** the seed-6 geometric noncontainment witnesses, replayed in `replay_geometry.py`. With the 42 descriptors recorded for seed 6, any dyadic cover admitted by the exact `FORMAT.md` traversal requires at least **627 leaves**, irrespective of how sharply the Hessian is bounded. The conclusion is restricted to this descriptor set and coverage procedure.
- **CERTIFIED:** source 2299 has a complete **384-patch** sphere cover, against 887 original boxes. All 384 analytic patch tests and the exact coverage traversal passed the Arb replay.
- **NOT ESTABLISHED:** tens or a few hundred patches uniformly over the sample; a global bound on the number of patches when arbitrary new descriptors or a different sphere cover are allowed.

All computations here use only supplied local completion data, neighboring balls, transfer descriptors and dyadic geometry. No MUB atlas conclusion or Stage C calculation is used.

## Inputs and reproducibility

The input is the attached `sample_certificate.json.gz`, SHA-256

```
8270748a969e087c1ac6f211f3c6812d12fe70f38c3a21eb58a8731de79c1279
```

The sample is the exact 200 indices in the supplied `sample_seeds.json`; each has a full transfer list. Every other source seed remains available as a possible transfer target through its header.

Scripts:

1. `count_study.py`: integer sphere traversal, same-label consolidation, and affine surrogate counts. The latter ignore all nonlinear remainder and orientation costs.
2. `weighted_study.py`: numerical proposals for the actual global weighted predictor, including its normal remainder and both orientation tests. It reads the `model_j.npz` exports of `zt_patch.normal_form`.
3. `geometric_obstruction.py`: integer-direction spherical witness proposals.
4. `replay_geometry.py`: Arb replay of every geometric witness and exact lower-bound traversal.

All scripts accept `--certificate PATH`. The weighted survey additionally accepts `--models DIRECTORY`. No data from `info` determine any certificate verdict; the `R_diagnostic` field is used only to describe the numerical failure region.

## Full input counts

The supplied `ball_boxes.csv` contains 2,328 seed spheres and exactly 11,430,119 boxes:

| Kind | Boxes |
|---|---:|
| T0 | 2,266,120 |
| T1 | 9,159,471 |
| T3 | 4,528 |

The median is 4,281, the interpolated 90th percentile is 7,447.9, and the maximum is 109,623 (seed 2297). The four sources with T3 boxes are 2297, 2325, 2326 and 2327.

Uniform dyadic grids have 16, 256, 2,080, 16,960 and 136,832 sphere-intersecting closed cells at levels 1 through 5. Tangent-only cells are included because the stated traversal discards a cell only when its minimum squared norm is strictly greater than 1 or its maximum is strictly less than 1.

## Survey results

| Method, on 200 balls | Total | Median | 90th percentile | Maximum |
|---|---:|---:|---:|---:|
| Supplied boxes | 1,167,746 | 4,381 | 8,353.3 | 109,623 |
| Same-label sphere consolidation | 914,802 | 3,877.5 | 6,279.3 | 50,708 |
| Zero-remainder affine surrogate, cube vertices | 412,023 | 2,009.5 | 2,729.1 | 4,313 |
| Zero-remainder affine surrogate, sphere correction | 269,162 | 1,317.5 | 1,867.1 | 3,369 |
| Weighted quadratic predictor plus retained fallback leaves | 714,717 | 1,977.5 | 4,956 | 109,623 |
| Output-projected normal residual plus retained fallback leaves | 572,919 | 1,647.5 | 2,724 | 109,623 |
| Final replayed covers, retaining original counts for 7 unresolved sources | 573,952 | 1,647.5 | 2,724 | 109,623 |

The affine rows are **NUMERICAL diagnostics**, not lower bounds for the nonlinear map. The cube-vertex row retains 1,704 original fallback leaves; the sphere-corrected row retains 570. In particular, neither row claims to have analytically resolved T3.

Same-label consolidation replaces a parent when all its sphere-intersecting children inherit one common descriptor. It is valid on the sphere if the old child transfers are valid, but retaining the old analytic proofs does not reduce their replay cost. It is a combinatorial diagnostic, not the new patch method.

The weighted row uses 409,080 proposed passing patches and 305,637 retained original leaves. The Z normal-form inequalities pass for 193 source balls. Among these, 91 have a proposed complete cover with no fallback; 102 retain some fallback leaves. The other 7 sources retain their complete original covers, totaling 229,778 leaves. The successfully modeled 193 sources alone change from 937,968 supplied leaves to 484,939 hybrid leaves, including 75,859 fallbacks.

All 91 zero-fallback proposals were then **CERTIFIED** by `certify_spheres.py`: 140,306/140,306 individual patch tests and all 91 exact sphere traversals passed. For this rigorously replayed subset, the old and new totals are 325,839 and 140,306, and the old and new medians are 3,410 and 1,487. The smallest certified target margin is at least 1.9145404279280048e-7; the smallest certified orientation margin is at least 2.7491882745552254. The complete batch, including one input load and all centre reconstructions, took 293.34 seconds. The per-source replay summaries and verifier/source hashes are in `certified_spheres/`; `per_ball_results.csv` joins the 200 numerical survey rows to these exact individual statuses without upgrading the remaining sources or fallback leaves.

For every source with a valid Z model, whenever an original-level fallback was needed the numerical reason was the target bound. The two orientation tests did not add any final fallback leaves in this run.

The best proposed complete cover is seed 2299: **384 patches**, against 887 original boxes. Its full Arb replay is **CERTIFIED** in `seed2299_replay.json`: 384/384 analytic tests pass, and the coverage traversal visits 497 nodes. The smallest target margin is at least 0.0002843552204291542 and the smallest checked orientation margin is at least 7.924792580477638. Its selected cover has one level-1 box, 225 level-2 boxes and 158 level-3 boxes. The entire run, including the centre normal form, took 2.73 seconds in this environment.

The next smallest numerical proposals are seed 2089 with 584 against 1,095 and seed 937 with 599 against 1,847. Seed 6 has 1,362 proposed patches against 2,778 original boxes. These numerical proposals are saved as `weighted_results/seed_j_patches.json`; any additional claimed certification must be tied to a separate successful Arb replay.

### The sphere correction

For an affine map `a + B(w-c)` and sphere radius `r`, use

\[
F_\lambda(w)=\|a+B(w-c)\|^2-\lambda(\|w\|^2-r^2).
\]

If `B^T B - lambda I` is positive semidefinite, `F_lambda` is convex and its maximum on the cube is attained at a vertex. On the sphere it equals the squared target norm. The survey tries `lambda = t sigma_min(B)^2 (1-10^-9)` with `t` in `{0,1/4,1/2,3/4,1}` and takes the smallest upper bound. The Arb replay certifies the Gram shift before using it. Taking only the largest lambda can worsen the bound because some box vertices lie inside the sphere.

The original dyadic coverage check is unchanged: only the analytic inequality on a listed box's sphere portion changes.

### Refined output-projected normal residual

The final survey substitutes the separately proved output-projected normal remainder for `||A X|| tau`, while retaining the same rigorous orientation formula. The weights are taken from `results/refined_weights_seed_j.json`; each physical `normal_value` is divided by the target radius because the numerical survey uses normalized target coordinates.

**NUMERICAL:** all 200 sources were resurveyed with those refined weights in 128.13 seconds. Their total is 572,919 hybrid boxes, consisting of 339,866 proposed passing patches and 233,053 retained original leaves. Of the latter, 229,778 come from the seven sources whose original-ball Z contraction was not certified. On the 193 successful Z sources, the remainder is only **3,275 fallback leaves**, down from 75,859 with the simpler target bound; their hybrid total is 343,141 against 937,968 original boxes.

The refined method gives **165** complete zero-fallback proposals, covering sources that originally used 704,034 boxes with 261,336 proposed patches. These refined covers then received their own independent interval replay: **all 165 spheres and all 261,336 patches are CERTIFIED**. The verifier reconstructs every source normal form and every weighted bound; it does not trust the survey's numerical model exports or weight JSONs. The smallest target margin is at least 3.841781722642139e-7 and the smallest orientation margin is at least 2.430754051934998. The batch took 245.25 seconds with three independent Arb processes (728.48 summed worker seconds). Results and source/verifier hashes are in `certified_refined_spheres/`.

The earlier 91 complete sphere certificates remain separately recorded for the simpler covers. The refined result is a new replay of the new covers, not a relabeling of the earlier certificates.

| Centre diagnostic | Sources | Refined hybrid boxes | Retained fallback leaves | Complete proposals |
|---|---:|---:|---:|---:|
| `R < 30` | 7 | 229,778 | 229,778 | 0 |
| `30 <= R < 100` | 34 | 87,917 | 3,233 | 10 |
| `100 <= R < 200` | 8 | 13,759 | 5 | 7 |
| `R >= 200` | 151 | 241,465 | 37 | 148 |

For example, source 6 changes from 1,362 simpler certified patches to 1,292 refined certified patches. Source 8 changes from 1,762 passing patches plus five original fallbacks to 1,506 certified patches; source 23 changes from 4,001 plus 99 fallbacks to 3,193 certified patches. The refined target inequalities substantially reduce the residual-floor problem, while the geometric obstruction and typical thousand-scale patch counts remain.

Full refined survey data are in `refined_results/weighted_counts.csv` and `refined_region_statistics.json`. `per_ball_results.csv` includes separate refined columns and assigns certified status only when an independent per-source replay is present.

### Final closure of all 193 modeled source spheres

The remaining 28 sources with valid Z normal forms were replayed using a certified true-centre jet whenever the global target test failed. **CERTIFIED:** 22 additional complete spheres passed immediately. Across all 28, the first local pass closed 3,141 of the 3,275 remaining cells. The remaining 134 cells belonged to sources 37, 1934, 2124, 2255, 2257 and 2270; every failure was in the target enclosure, with no centre-root or orientation failure.

Only failed cells were refined. One round left ten failures; a second round closed all ten. The 144 total parent refinements added **1,033 leaves** beyond the numerical 343,141-box hybrid proposal. Each repaired source then received a fresh full Arb replay and exact sphere traversal. Final repaired covers are in `refined_repaired_results/`, their complete certificate records are in `certified_repaired_spheres/`, and earlier failures remain available in their original result directories.

**CERTIFIED:** the final 193-source count is **344,174**, comprising 340,655 global-predictor checks and 3,519 true-centre checks. The original count on the same sources is 937,968; the median changes from 4,284 to 1,624, the final 90th percentile is 2,594.4, and the largest final cover has 6,008 patches. The smallest target margin is at least 3.841781722642139e-7 and the smallest orientation margin is at least 1.4177512450718068.

The seven unsuccessful Z sources retain 229,778 original boxes as an explicit fallback allocation; those transfers were not certified by this new method. Including that allocation gives 573,952 reported boxes across all 200 sources. This aggregate count is not a claim of analytic certification for all 200 spheres.

| Centre diagnostic | Sources | Fully certified spheres | Final count or retained fallback | True-centre checks |
|---|---:|---:|---:|---:|
| `R < 30` | 7 | 0 | 229,778 retained | 0 |
| `30 <= R < 100` | 34 | 34 | 88,950 certified | 3,477 |
| `100 <= R < 200` | 8 | 8 | 13,759 certified | 5 |
| `R >= 200` | 151 | 151 | 241,465 certified | 37 |

These are measured sample groups, not a theorem that every seed with `R >= 30` satisfies the normal-form inequalities. The per-source quantitative certificates are the actual hypotheses.

### Replay the final covers

From the handoff root, with NumPy and python-flint installed, use the supplied input certificate path:

```bash
OPENBLAS_NUM_THREADS=1 python counts/replay_final_spheres.py \
  --certificate PATH_TO_SAMPLE_CERTIFICATE_JSON_GZ \
  --workers 3 --output replay/final_seeds
```

The wrapper runs three disjoint batches: the 165 global-only covers, the 22 covers completed with local jets, and the six repaired covers. It freshly reconstructs all Arb bounds and checks coverage; the precomputed midpoint models and output-weight JSONs are not trusted. The seven unsuccessful Z sources are deliberately absent from the certified output.

The direct command for any repaired batch is:

```bash
OPENBLAS_NUM_THREADS=1 python counts/certify_refined_spheres.py \
  --certificate PATH_TO_SAMPLE_CERTIFICATE_JSON_GZ \
  --survey counts/refined_repaired_results --hybrid \
  --workers 3 --output replay/repaired
```

`--hybrid` enables the true-centre fallback after a global-test failure. It does not accept an old transfer merely because it was present in the supplied certificate. Construction history can be reproduced with `prepare_refined_children.py` and `repair_hybrid_spheres.py`; the final mathematical checks use the generic repaired directories and do not assume that one refinement round suffices.

## Failure region for the simpler target bound

This table describes the first survey with target remainder `||A X|| tau`; the refined comparison is above. The following `R` is the supplied **numerical centre diagnostic**, not a proved region hypothesis.

| Centre diagnostic | Balls | Z normal forms | Original boxes | Hybrid boxes | Retained fallbacks |
|---|---:|---:|---:|---:|---:|
| `R < 10` | 5 | 0 | 204,279 | 204,279 | 204,279 |
| `10 <= R < 30` | 2 | 0 | 25,499 | 25,499 | 25,499 |
| `30 <= R < 100` | 34 | 34 | 279,888 | 183,646 | 72,268 |
| `100 <= R < 200` | 8 | 8 | 34,894 | 19,013 | 1,073 |
| `R >= 200` | 151 | 151 | 623,186 | 282,280 | 2,518 |

The seven original-ball contraction failures are:

| Seed | Centre `R` | `cond_2(M)` | Original boxes |
|---|---:|---:|---:|
| 2264 | 27.2276 | 9.5844 | 13,819 |
| 2279 | 29.0504 | 9.1734 | 11,680 |
| 2297 | 3.27177 | 54.9949 | 109,623 |
| 2313 | 5.48166 | 42.6108 | 19,318 |
| 2325 | 0.897151 | 105.2502 | 3,346 |
| 2326 | 2.04523 | 69.7261 | 70,792 |
| 2327 | 0.516866 | 66.7148 | 1,200 |

All four T3 sources are in this failure list; all 4,528 T3 leaves remain fallbacks. Failure of the contraction inequalities does not exclude a source ball or disprove its matched branch. The appropriate fallback is the existing local-box method or newly recentered contractions there.

Among successful normal forms, the largest normal Hessian correction `Z2` is 51.2415 and the largest `tau` is 0.0116574. In the `R >= 200` subgroup those maxima are 2.28995 and 0.00304793. The global predictor has an error floor `||A X|| tau`, which does not shrink when the patch shrinks. This accounts for target failures even at some original leaves in the initial simpler survey, which used no local recentering. The final closure described above did use certified true-centre jets wherever needed on all 193 modeled sources, completing every one of those source spheres. The seven sources without a certified original-ball Z contraction remain unresolved by this method.

## Certified geometric obstruction for seed 6

Let `D_6` be exactly the 42 T0/T1 descriptors recorded for source 6, including their targets, ordered corners, group elements and windings. For each of 52 blocked dyadic boxes, the witness file records one point for every descriptor:

\[
w=r\frac{v}{\sqrt{v\cdot v}},\qquad v\in\mathbb Z^4\setminus\{0\}.
\]

Membership in the closed dyadic box is checked by signs and integer-square comparisons. Sphere membership is exact by construction.

For a nonlinear descriptor, the Z normal form gives

\[
Q(w)=Q_p(w)+Xz(w),\qquad \|z(w)\|\le\tau.
\]

Consequently

\[
\|A Q(w)+b\|\ge \|A Q_p(w)+b\|-\|A X\|\tau.
\]

The replay proves the right-hand side is strictly larger than the target radius at each proposed witness. Exact linear descriptors use zero error. Thus no descriptor in `D_6` can cover the full sphere portion of that blocked box.

**CERTIFIED:** all 2,184 noncontainment inequalities passed. The smallest normalized outside margin is

\[
0.0003377482199989028.
\]

The blocked nodes comprise the root, 15 of its 16 level-1 children, and 36 level-2 children beneath those blocked orthants. The 36 blocked level-2 cells have 422 sphere-intersecting level-3 children. If every unresolved node is optimistically allowed one transfer, the resulting lower bound is

\[
1+204+422=\boxed{627}.
\]

**Proof of the count:** the exact traversal must split each blocked node, because it neither misses the sphere nor can be listed with an admissible descriptor. A node not blocked by these witnesses is optimistically counted as one leaf, even if it might actually need further splitting. This produces a lower bound, not an estimate. The proof applies to the exact traversal specified in `FORMAT.md`; it intentionally includes its treatment of tangent-only cells and is not a theorem about arbitrary overlapping spherical covers.

The 627 lower bound proves that sharper derivatives alone cannot reduce seed 6 to at most 626 leaves while retaining this descriptor set and traversal. New descriptors or a changed patch geometry may change that conclusion.

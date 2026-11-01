# Dissemination notes: witnesses, proof size, and a smaller format

*1 November 2026. Measurements over the best checked one-tree certificate of every closed seed ball (status of
07:49: 2,757 balls; the 18 still running are not included). Nothing here changes a certificate or the checker.*

Tools: [`code/onetree_status.py`](code/onetree_status.py) (the best certificate per ball),
[`code/witness_census.py`](code/witness_census.py) (one rusty node, 19 min over 1,038,098 plane leaves),
[`code/witness_only.py`](code/witness_only.py) (the prototype format, §3) and [`code/reclose_probe.py`](code/reclose_probe.py)
(§2.3). All read the certificates and write elsewhere.

## 1. What the certificates contain

| | Count |
|---|---:|
| Balls closed | 2,757 |
| Native leaves | 8,106: 2,372 whole balls, 5,734 below the root in 14 trees |
| Plane leaves | 1,038,098 |
| · with no pattern (the rebuilt cover has no six-clique) | 587,862 |
| · with at least one pattern | 450,236 |
| Outside nodes | 412,828 |
| Proof | 75.9 GB: proposals 73.5 GB, cell records 2.4 GB, native files 6 MB |

## 2. Witness census

A pattern is six mutually orthogonal colours; every pattern of a plane leaf has one witness. The kinds are those of
`CERTIFIER.md`. A gamma witness is split by its own bound: Fourier (Γ_F of K or L at most 19/50) or ordering
(above 19/50, below the cell's g_cell). The check recomputes that bound in Arb and compares the same way.

| Witness | Patterns | Leaves using it | Balls using it |
|---|---:|---:|---:|
| gamma, ordering, L | 18,493,284 | 246,355 | 188 |
| pair (two columns never orthogonal) | 3,438,004 | 219,554 | 171 |
| gamma, Fourier, L | 787,131 | 47,432 | 53 |
| gamma, ordering, K | 306,873 | 27,268 | 118 |
| secant | 129,289 | 37,921 | 51 |
| joint, known family recognised | 13,273 | 4,235 | 55 |
| gamma, Fourier, K | 13,281 | 3,344 | 42 |
| joint, excluded | 9,851 | 4,617 | 113 |
| one column without tubes | 0 | 0 | 0 |
| **projector** | **0** | **0** | **0** |

The secant witness closes most of the deepest cells: 14,608 of the 22,510 leaves at levels 7–9 use it, against 666
of the 347,901 leaves at levels 1–3.

### 2.1 Rare kinds

- **Projector: unused.** No best certificate has a projector witness. It can be dropped from the checker extension
  (`ext_cell_certificate.py`, `projector/projector_joint_certificate.py`, `projector/projector_union_hook.py`) without
  re-closing anything. The search tries it before the secant witness (`fast_search.py --projector`), but in the best
  certificates it never closed a pattern. The checker would then have three added witnesses (secant, gamma Fourier, gamma ordering) on
  top of PR #4's column, pair and joint.
- **Column-1: unused**, but it belongs to the pinned PR #4 check, so it stays.
- **Gamma, Fourier, K: 3,344 leaves in 42 balls.** Its question is the same as for gamma Fourier L, below.
- **Joint (4,617 leaves) and joint-known (4,235 leaves)** are pinned PR #4 witnesses. Joint-known classifies a
  pattern as the known family (`plane_joint_certificate`, `allow_known`). Its recognition step should be reviewed
  together with the native certifier's (`handoffs/TC_native_review_20261101`).
- **Secant: 37,921 leaves in 51 balls**, mostly at levels 6–9. Removing it would mean deeper trees in those 51 balls,
  where the column witnesses already fail to close the cells. It is not worth removing.

### 2.2 The Fourier-neighbourhood theorem is used inside its own hypotheses

`GAMMA_PROOF.md` (Γ3), the Fourier-neighbourhood theorem, assumes that 39 listed split balls are closed. That return
(`TC_questions_3_4_results`, REPORT.md §7) lists them: 989, 1107, …, 2606. All 39 are closed in the one-tree atlas
with all-K scope. But 25 of them use gamma Fourier witnesses, and so rely on (Γ3) themselves:

    1286 1492 1545 1568 1610 1692 1730 1753 1756 1766 1812 1886 1887 1888 1895
    1901 1902 2248 2344 2490 2499 2531 2545 2546 2606

Together they have about 2,670 leaves with a Fourier pattern, usually next to joint-known patterns in the same leaf.
The other 14 (989, 1107, 1148, 1169, 1282, 1320, 1441, 1460, 1470, 1538, 1591, 1628, 1630, 1760) use no gamma witness.
`GAMMA_PROOF.md`'s remark that (Γ3) is not circular referred to the earlier audited trees, which use the certifier only.

Outside these 25, (Γ3) is not needed. 95 balls use a Fourier witness, all among the return's 402 non-direct seeds. The
70 other than the 25 are *separated*: the return certifies Γ_F(H) ≥ 0.4132 > 19/50 for every H in each of them
(`fourier_neighbourhood_certificate.json`, `labelled_score_lower`). All 70 already have minimum-transition scope. In
them, a Fourier-discharged pattern has min(Γ_F(K), Γ_F(L)) ≤ 19/50 < Γ_F(H), strictly, so it is also
ordering-discharged by the minimum-transition lemma, with no change of scope.

**Plan (for decision, not done).** Re-close the 25 balls without the gamma witness, then use the separation bound
above for the 70. The classification would then not depend on (Γ3) at all: no Fourier-neighbourhood theorem, and no
19/50 threshold. To make the second step machine-checked, the leaf receipt would need to record that g_up < g_cell
for each Fourier pattern, or the assembly would cite the separation certificate. §2.3 measures the first step.

### 2.3 Re-closing the 25 balls without the gamma witness

<!-- PROBE:BEGIN -->
*Running (job 7384536): every leaf of the 25 balls with a Fourier pattern is searched again on its own cell, with
the search without `--gamma`, and the native certifier tried on a persistent pattern from level 1.*
<!-- PROBE:END -->

## 3. Where the bytes go, and a witness-only format

**Bytes.** Each part of every proposal was compressed separately (zlib level 6), over all 1,038,098 plane leaves:

| Part | Compressed | Share of the proposals |
|---|---:|---:|
| column proof trees (`columns.*.tree`) | 68.4 GB | 93% |
| other column data (weak bounds, roots, modes) | 4.5 GB | 6% |
| witnesses | 0.8 GB | 1% |
| cell records (`.input.json.gz`, separate files) | 2.4 GB | |

The same holds for each of the largest certificates. Ball 768: proposals 8.14 GB, of which trees 7.50 GB, other column
data 0.40 GB, witnesses 0.27 GB; records 0.12 GB. Ball 825: 5.93 GB, of which trees 5.61 GB. Ball 1016: 3.92 GB, of
which trees 3.78 GB. By level, a level-4 proposal averages 87 KB and a level-6 one 68 KB, against 2.3 KB for a record.

**The prototype.** A witness-only proposal keeps the witnesses, the list of columns whose proofs the witnesses use,
and the column-tree depth. It drops each column's weak bounds, roots, modes and tree. At check time the column search
of `fast_search.py` (deterministic: the same record gives the same tree) regenerates those trees from the record. Then
the unchanged leaf check runs. Soundness is unchanged, because whatever is regenerated is verified by the same check;
a bad regeneration can only fail.

Measured on 120 random plane leaves from the 8 largest certificates (768, 825, 1016, 815, 987, 823, 858, 1010; levels
3–6; 5,067 patterns, 224 column proofs), on one 128-core node:

| | Stored proposal | Witness-only |
|---|---:|---:|
| Proposal size, all 120 | 17.7 MB | 0.10 MB (174 times smaller) |
| Regenerated trees identical to the stored ones | | 120 of 120 |
| Check, total over the 120 | 3,253 s | 8,140 s: 5,271 s regenerating, 2,869 s checking |
| Check, median cell | 8.2 s | 9.9 s: 5.1 s regenerating, 4.8 s checking |

**Atlas estimate.** Proposals would shrink from 73.5 GB to about 1 GB, and the whole atlas from 75.9 GB to about 3 GB,
mostly cell records. Records can be rebuilt from the original ball and the cell index (`build_record`), which would
leave about 1 GB. If the sample (from the largest balls) is typical, check time rises by about 2.5 times in total (4,645 to about
11,600 core-hours), and by little for a typical cell. The total is dominated by a few cells whose column search takes minutes (the slowest regeneration in
the sample took 336 s, against 192 s for its check). In the prototype the cover is rebuilt twice per cell. A checker
that verifies each tree while generating it, as `fast_search.prove_column` already does, would remove the second
pass. The cost would then be about one search per cell.

**Recommendation.** For distribution, publish the witness-only form (with the native leaves, which are already
small), and keep the full certificates on rusty as the archive the published numbers come from. Migrating the atlas is not
proposed here.

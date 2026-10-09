# Step 4 receipt: the certified atlas

**Status: PASS.** On 9 Oct 2026, `python3 verify.py --atlas -j 9` printed **ALL PASS**: 46 of 46 checks passed. The full transcript is in `VERIFY_ATLAS.log`, and each check's output is in `receipts/`. This atlas was built and certified with the corrected Stage C described in `../STAGEC.md` (correction note).

| Item | Value |
|---|---|
| Certificate | `atlas_certificate.json.gz` (format `nofour-atlas-v1`): 16,185,779 bytes, SHA-256 `ac930fcf0f239264ab9d2304dc99fc140ed1f3d39ab4edaa494ece48bae080d1` |
| Records | **12,020**, all closed, none failed |
| Radii | 10,497 at R = 0.08 rad; 1,030 at 0.063; 417 at 0.05; 76 at 0.04 |
| Boundary transfers | 58.2 targets per Record on average (at most 350) |
| `certify.py` | 36 chunks: **12,020 certified, 0 failures** |
| `nonempty.py` | F6 is in the interior of Record 877: ‖h(A·F6 − P_t)‖ ≤ 0.0232 < 0.08 (Arb) |
| Steps 1–3 checks in the same run | 9 of 9 pass: two exact coverage replays, the MC1–MC5 dossier and implementation, the sheet lemmas, the S₆ zero-dimensional Record, and the Stage C Arb replay |
| Certification time | 48 min wall time on 9 cores (about 5 CPU-hours) |
| Environment | macOS 26.7.1 arm64, Python 3.10.6, python-flint 0.9.0, numpy 2.2.6, sympy 1.14.0 |

**How this atlas was obtained.** The previous atlas (11,228 Records, kept privately as `atlas_v1_uncorrected.pkl`) was certified with the uncorrected Stage C.
1. `repair.py` re-checked every Record with the corrected Stage C. It shrank the 682 Records that failed at their stored radius, down the radius ladder.
2. It reopened the 2,049 Records whose boundaries had relied on them.
3. `atlas.py` then re-closed every boundary (`atlas_run3.log`, `atlas_run4.log`).
4. Every Record now stores its tangent frame as an integer matrix (`Tint`, in units of 2⁻³⁰, projected exactly onto the horizontal space). So certification no longer depends on the platform's linear-algebra library.

**What a PASS establishes**, together with `PROOF.md`:
1. Every Record excludes quartet edges throughout its ball (Lemma 3.1 and Lemma 3.2).
2. Every boundary Hadamard of every Record has an interior representative in some Record, up to equivalence, conjugation and transposition (Lemma 4.1).
3. F6 lies in the union.

By the coverage corollary (Step 2), the union contains every non-Tao class. S₆ is handled by `tao.py` (Remark 3.3). Hence there are no four MUBs in C⁶.

**What the certifier takes from the certificate.** It takes only:
- the centre phases;
- the radii and label radii;
- the integer tangent frames;
- the lists of transfer targets, each with its sign, transposition and permutations.

It recomputes everything else in Arb or exact arithmetic: σ on the complement of the frame, the normal bound, Stage C, and the boundary tree with its transfer constants. A bad frame can only make a check fail, never pass wrongly. Soundness holds for any horizontal frame.

**Independent check.** `../../independent/` is a Julia implementation with its own interval arithmetic, written only from the specification. Its run on this certificate is recorded in `../../independent/results_v2/`.

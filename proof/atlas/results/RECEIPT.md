> **Superseded (9 Oct 2026, morning).** An independent audit found that Stage C used the per-column bound in three remainder terms that need a bound on the whole matrix (`STAGEC.md`, correction note). With the corrected terms, about 4% of these Records fail at their stored radius. The atlas is being repaired: `repair.py` shrinks those Records and re-closes the affected boundaries, and a full re-certification will follow. This receipt will be replaced when that is done. **Until then, Step 4 is not certified.**

# Step 4 receipt: the certified atlas

**Status: PASS.** `python3 verify.py --atlas -j 9` printed **ALL PASS** on 9 Oct 2026. The full transcript is in `VERIFY_ATLAS.log`, and each check's output is in `receipts/`.

| Item | Value |
|---|---|
| Certificate | `atlas_certificate.json.gz`: 5,907,639 bytes, SHA-256 `00412235d1943d00c973c3723e8dcd4d4eba04d5c3b4eac5fd12c1d19af739fb` |
| Records | **11,228**, all closed, none failed |
| Radii | 10,785 at R = 0.08 rad; 334 at 0.063; 109 at 0.05 |
| Boundary transfers | 56.4 targets per Record on average (at most 350) |
| `certify.py` | 36 chunks; **11,228 certified, 0 failures** |
| `nonempty.py` | F6 lies in the interior of Record 877: ‖h(A·F6 − P_t)‖ ≤ 0.0232 < 0.08 (Arb) |
| Steps 1–3 checks in the same run | 9/9 pass: two exact coverage replays, MC1–MC5 dossier and implementation, sheet lemmas, S₆ zero-dimensional Record, Stage C Arb replay |
| Build | `atlas.py`, one core: about 1.7 h to the checkpoint plus 5.2 h resumed (`atlas_run_local.log`, `atlas_run2.log`) |
| Certification | 26 min wall time on 9 cores (2.6 CPU-hours) |
| Environment | macOS 26.7.1 arm64, Python 3.10.6, python-flint 0.9.0, numpy 2.2.6, sympy 1.14.0 |

**What a PASS establishes**, with `PROOF.md`:
1. Every Record excludes quartet edges throughout its ball (Step 3).
2. Every boundary Hadamard of every Record has an interior representative in some Record, up to equivalence, conjugation and transposition (Lemma 4.1).
3. F6 lies in the union.

By the coverage corollary (Step 2), the union contains every non-Tao class. S₆ is handled by `tao.py` (Remark 3.3). Hence there are no four MUBs in C⁶.

**What the certifier trusts from the driver:** only the centre phases, the radii and label radii, and the lists of transfer targets. It recomputes everything else from the centre phases: the frame, σ, the normal bound, Stage C, and the boundary tree with Arb transfer constants.

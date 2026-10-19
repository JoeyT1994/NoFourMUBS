# Step 4 receipt: the certified atlas (v3, 10 Oct 2026)

**Status: PASS, by both checkers.** `certify.py` certifies all 12,021 Records with 0 failures. The independent Julia checker `../../independent/` passes Step 3 and Step 4 for all 12,021 Records. F6 lies in a Record.

| Item | Value |
|---|---|
| Certificate | `atlas_certificate.json.gz` (format `nofour-atlas-v1`): 16,188,089 bytes, SHA-256 `690107dc7682f2d5ccf52e2721799b4a29af97b526c2e62ebe216b3ce17d5d71` |
| Records | **12,021**, all closed, none failed |
| Radii | 10,497 at R = 0.08 rad; 1,029 at 0.063; 419 at 0.05; 76 at 0.04 |
| Boundary transfers | 58.2 targets per Record on average (at most 350) |
| `certify.py` | Re-run 17 Oct with the faster certifier (one pool of 8 workers): **12,021 certified, 0 failures**, every per-Record intermediate identical to the previous code (`receipts/step4_certify.txt`, `step4_certify.tsv.gz`; see *Certification cost* below). Original run, 12 Oct: 36 chunks, 12,021 certified, 0 failures (`receipts/step4_certify_0*.txt`, `VERIFY_ATLAS.log`) |
| `nonempty.py` | F6 is in the interior of Record 877: ‖h(A·F6 − P_t)‖ ≤ 0.0232 < 0.08 (Arb) |
| Independent checker | Re-run 17 Oct with the faster checker: `../../independent/results_v4/`, rusty job 7262168 (128 threads, 24 min, ~50 thread-hours), identical to v3 in every decision and per-Record value. Original run: `../../independent/results_v3/`: rusty job 7213978 (128 threads, 8 h, 11 Oct), every record recomputed from scratch: **12,021 / 12,021 closed Records PASS**, F6 nonemptiness CERTIFIED (Record 877, ≤ 0.02320 < 0.08), all targets closed; sanity tests pass |

## Certification cost (17 Oct 2026)

Measured on an Apple M5 Max (18 cores, 64 GB), macOS 26.6, Python 3.13, NumPy 2.2.6 (Accelerate). Both rows are complete `python3 verify.py --atlas -j 8` runs, back to back on the same machine; both print ALL PASS.

| Code | `verify.py --atlas -j 8` wall | `certify.py` CPU, summed over Records | Max clique-search steps (cap 5M) | Receipts |
|---|---|---|---|---|
| Before (b109a1c8: 12 Oct code plus the per-Record TSV) | 1,492 s (24.9 min) | 9,619 s = **2.67 CPU-hours** | 4,981,068 (Record 9360) | `VERIFY_ATLAS_2026-10-17_before_speedup.log`, `step4_certify_before_speedup.tsv.gz` |
| After (this code) | **852 s (14.2 min)** | 6,706 s = **1.86 CPU-hours** | 873,170 (Record 11952) | `VERIFY_ATLAS_2026-10-17.log`, `step4_certify.tsv.gz`, `step4_certify.txt` |

Every Record takes 0.2–4 CPU-s, so the pool has no long tail. `certify.py -j 16` alone takes 687 s (11.5 min), with the same intermediates. Its per-Record CPU rises to 2.98 CPU-hours, because 16 workers share the machine's 6 + 12 cores, so about 8 workers suit this machine best. The plain `verify.py -j 4` (no atlas) takes 46 s, down from 53 s. The 12 Oct figures (36 chunks summing to ~23 CPU-hours; ~50 min on 9 cores) came from the older code run under contention. They are kept above as history.

**What changed, and why no decision can change.** Only the inputs listed below are trusted from the certificate, as before.
- *Clustering* computes label distances only for the bins not yet assigned. Each row gets the same arithmetic.
- *Clique search* grows the two bases alternately and prunes candidates by their O and U degrees. It is an exact, complete search for the same pattern. `tests/clique_search.py` checks it against the old enumeration on random graphs.
- *Gram matrices* G = AᵀA, which only propose a direction in the tangent and joint tests, use `matmul` instead of `einsum`.
- *Loading* skips the corner census, which only the F6 search uses.
- *Scheduling* uses one process pool, one certificate load per worker, and one Record at a time.

The matmul change could in principle change bits on another BLAS. CI therefore re-certifies Records 4900–5099 on Ubuntu (OpenBLAS) and compares every intermediate with this receipt.

**Identity.** Each run wrote one TSV line per Record, with these fields:
- the verdict;
- σ, r_H and n, as exact hex;
- the surviving bins per level, with a SHA-1 chain of the bin arrays;
- the label count, with a SHA-1 of centres and radii;
- the O/U edge counts, with SHA-1s, before and after the joint filter;
- the boundary leaves and boxes per level;
- the clique-search steps, and wall and CPU seconds.

`python3 tests/compare_certify_tsv.py receipts/step4_certify_before_speedup.tsv.gz receipts/step4_certify.tsv.gz --strict` gives these results:
- all 12,021 Records PASS in both runs;
- every column except steps and timing is identical for all 12,021 (`receipts/step4_certify_identity.txt`);
- `nonempty.py` and `anchor.py` print the same results.

The old search's maximum came within 0.4% of the 5M step cap. A Record that reached the cap would have failed to certify, so a slightly different label graph could have failed. The new maximum is 17% of the cap; no Record needs more than 1M steps.

## What changed from v2, and why

The v2 atlas (12,020 Records) was certified by `certify.py`. Its independent replay then reported the failures in `../../independent/results_v2_failures.tsv`:
- **Record 11403:** the checker's own Stage C found a two-clique configuration in its label graph at R = 0.063.
- **10 boundary trees:** these failed only because they used Record 11403 as a target.

This is a failure to certify, not a counterexample. The two implementations cluster bins into labels differently, and each test is sound on its own terms. For a proof that does not rest on one implementation, both should pass. So the record was shrunk rather than the independent checker tuned:
1. **Shrink.** `../repair_one.py` set Record 11403 to R = 0.05 (label radius 0.03). Both `certify.py` and the independent Stage C pass there.
2. **Reopen.** It reopened the 18 Records whose boundary trees used 11403.
3. **Re-close.** `atlas.py` re-closed them (`build_logs/atlas_run5.log`), spawning one new Record (12020).

The independent checker then passed every Record of v3 in a fresh, complete run. An earlier incremental run, reusing byte-identical v2 rows, agreed with it row for row.

**What a PASS establishes**, together with `PROOF.md`: every Record excludes quartet edges throughout its ball (Lemmas 3.1 and 3.2); every boundary Hadamard of every Record has an interior representative in some Record, up to equivalence, conjugation and transposition (Lemma 4.1); and F6 lies in the union. (Until return Q, an explicit matched anchor H₀ also had to lie in a Record; `anchor.py` placed it in Record 9319. The Fourier family now anchors the reconstruction, and that check was removed.)

**What the certifier takes from the certificate:** only the centre phases, the radii and label radii, the integer tangent frames, and the lists of transfer targets. It recomputes everything else in Arb or exact arithmetic.

# Step 4 receipt: the certified atlas (v3, 10 Oct 2026)

**Status: PASS, by both checkers.** `certify.py` certifies all 12,021 Records with 0 failures. The independent Julia checker `../../independent/` passes Step 3 and Step 4 for all 12,021 Records. F6 and the explicit base-anchor completion H₀ both lie in Records.

| Item | Value |
|---|---|
| Certificate | `atlas_certificate.json.gz` (format `nofour-atlas-v1`): 16,188,089 bytes, SHA-256 `690107dc7682f2d5ccf52e2721799b4a29af97b526c2e62ebe216b3ce17d5d71` |
| Records | **12,021**, all closed, none failed |
| Radii | 10,497 at R = 0.08 rad; 1,029 at 0.063; 419 at 0.05; 76 at 0.04 |
| Boundary transfers | 58.2 targets per Record on average (at most 350) |
| `certify.py` | 37 chunks: **12,021 certified, 0 failures** (`receipts/step4_certify_*.txt`) |
| `nonempty.py` | F6 is in the interior of Record 877: ‖h(A·F6 − P_t)‖ ≤ 0.0232 < 0.08 (Arb) |
| `anchor.py` | H₀ (`lean/NoFourMUBs/Step2/BaseAnchor.lean`) is in the interior of Record 9319: ‖h(A·H₀ − P_t)‖ ≤ 0.0426 < 0.08 (Arb) |
| Independent checker | `../../independent/results_v3/`: Step 3 PASS 12,021 / 12,021; Step 4 PASS 12,021 / 12,021 |

## What changed from v2, and why

The v2 atlas (12,020 Records, `RECEIPT_v2.md`) was certified by `certify.py`. Its independent replay (`../../independent/results_v2/`) then reported:
- **Record 11403:** the checker's own Stage C found a two-clique configuration in its label graph at R = 0.063.
- **10 boundary trees:** these failed only because they used Record 11403 as a target.

This is a failure to certify, not a counterexample. The two implementations cluster bins into labels differently, and each test is sound on its own terms. For a proof that does not rest on one implementation, both should pass. So the record was shrunk rather than the independent checker tuned:
1. **Shrink.** `../repair_one.py` set Record 11403 to R = 0.05 (label radius 0.03). Both `certify.py` and the independent Stage C pass there.
2. **Reopen.** It reopened the 18 Records whose boundary trees used 11403.
3. **Re-close.** `atlas.py` re-closed them (`atlas_run5.log`), spawning one new Record (12020).

The independent run on v3 reused v2 rows only where the inputs are byte-identical. A Step 3 row was reused when the Record's phases, radius, label radius and frame were unchanged. A Step 4 row was reused only when, in addition, the Record's target list and all its targets were unchanged. It recomputed 2 Step 3 rows (11403, 12020) and 19 Step 4 rows. The checker is deterministic, so a reused row is exactly what a fresh run would produce.

**What a PASS establishes**, together with `PROOF.md`: every Record excludes quartet edges throughout its ball (Lemmas 3.1 and 3.2); every boundary Hadamard of every Record has an interior representative in some Record, up to equivalence, conjugation and transposition (Lemma 4.1); F6 lies in the union; and so does the matched maximum anchor H₀ (needed by the Lean route `no_four_mubs_main`).

**What the certifier takes from the certificate:** only the centre phases, the radii and label radii, the integer tangent frames, and the lists of transfer targets. It recomputes everything else in Arb or exact arithmetic.

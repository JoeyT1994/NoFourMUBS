# Handoff Z return

Read `REPORT.md` first. `THEOREM.md` contains the complete sufficient condition and proof. `ANALYTIC_FORMULAS.md` contains the detailed derivative and orientation identities.

## Certified outcome

- 291 of the 300 reconstructed canonical balls pass at their full listed radii, without seed subdivision.
- All 291 rounded C1 bounds are less than 1.793 times the true rounded-record residual supremum.
- For all 265 listed rows with centre R ≥ 100, the contracted Hessian bound is within a factor 2.350 of the true supremum.
- For all 259 listed rows with centre R ≥ 150, the raw-seed Hessian bound is within a factor 2.278 of the true supremum on the same ellipsoid.
- The other nine rows have separately certified smaller-radius records. Those do not cover the original balls.

The finite threshold statements are about these explicitly stored balls, not all possible seeds with an R threshold. The proof depends on the supplied local matched-completion/flatness theorem; Hessian witness identification also uses the supplied strict-side uniqueness up to permutation. No MUB atlas or Stage C was used. This is an Arb replay, not a Lean kernel proof.

## Exact input convention

The original CSV lacks the full frames and anchors. The supplied canonical horizontal convention reconstructs frames whose singular extrema agree with every CSV row after its displayed rounding. The certificates concern the explicit exact dyadic frames included here. The exact unavailable original records have not been identified bit for bit.

Centre/radius strings are exact decimal rationals; every hexadecimal frame/basis coefficient is an exact binary64 dyadic rational. Do not substitute rounded decimal matrix entries when replaying a record. The fixed normal basis is in `fullphase/basis.json`. `INPUT_SHA256.json` identifies the delivered input snapshot.

## Replay

Tested on Python 3.12 with the pinned dependencies in `requirements.txt`:

```bash
python -m pip install -r requirements.txt
python replay.py --quick
python replay.py
```

The quick replay checks the integer signature identity and one whole ball, leaving the full certificate files unchanged. The complete replay checks all 300 original-radius tests, the independent Hessian and remainder witnesses, the sharpness comparisons, and the nine reduced radii. It writes details to `replay_logs/`. The 300-ball stage took about 92 seconds in the supplied runtime; actual time depends on the machine.

Optional numerical derivative diagnostics:

```bash
python replay.py --quick --diagnostics
```

The certificate is also callable for a different frame: use `fullphase.certify.certify(row, centre_guess, M, V, X)`. For an isotropic seed ball, the CLI supports:

```bash
python fullphase/certify.py --metric euclidean --radius 0.05 --limit 1 --out euclidean_test.jsonl
```

A failure of the radii test means `NOT ESTABLISHED`, not nonexistence. The raw-seed Hessian estimates saved for canonical frames apply on those ellipsoids; they do not automatically cover their larger circumscribed Euclidean balls.

## Primary machine-readable files

| File | Role |
|---|---|
| `fullphase/FINAL_CERTIFICATES.jsonl` | All 300 full-radius outcomes, proof constants, signs, exact frame/rounded phase records, and rounding allowances |
| `numerics/CERTIFIED_COMPARISON.csv` | Per-ball upper bounds and certified upper-to-true-supremum ratio bounds |
| `numerics/CERTIFIED_COMPARISON.json` | Threshold summaries and the proved failure of the isotropic scalar remainder recipe |
| `numerics/lower_witnesses.jsonl` | Certified interior directional Hessian lower witnesses |
| `numerics/remainder_lower_witnesses.jsonl` | Certified remainder lower witnesses, with proved chart membership |
| `bounds/reduced_radius_certificates.jsonl` | Nine explicit smaller-radius fallback records |
| `numerics/centres.npz` | Stored centre proposals and exact dyadic frames used as input |
| `numerics/sample_witnesses.npz` | Stored witness proposals; their correctness is established by the interval witness replays |

The numerical exploration scripts and tables are retained for inspection. Their names and docstrings identify them as numerical; they are not substitutes for the definitive certificate files above. Regenerating the numerical centres may choose different last-bit frames, so a new numerical input set requires a new full certificate and witness replay.

Every successful rounded record uses

\[
n_{\rm record}=\tfrac12\beta r^2+\|X\|\tau+\epsilon_P+r\epsilon_U.
\]

For a boundary transfer, contract the centre Hessian and correction basis directly by the new corner map. `REPORT.md` §8 and `THEOREM.md` give the formulas and both signature-sign tests.

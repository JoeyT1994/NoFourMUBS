# Patch2442Local — partial result, not pilot closure

Read `PROOF.md` first. The main results are exact leading forms through the first nonzero F degree, an exact obstruction to the six separate F-positive tests, and a rigorously certified **directional** radius 3/50 with cone parameter 1/200. No full punctured-ball radius is established.

Run `python verify.py`. SymPy is required; Python optimization (`-O`) is prohibited. No network is used.

For whole closed boxes:

```
python verify.py --boxes inputs/data/leaves_4174.jsonl.gz --output /tmp/results.jsonl.gz --receipt /tmp/receipt.json
```

Acceptance requires whole-box membership in the ball **and** a proved angular cone or its exactly checked seed-frame image. A box being inside the radius alone is never sufficient. Uncovered boxes are returned as inconclusive.

Key assets: `symbolic_coefficients.json`, `Q26_coefficients.json`, `F52_reduced_polynomials.json`, `cones_certificate.json.gz`, `controls.json`, `frame_matrices.json`, pinned input snapshots, replay results, and `MANIFEST.sha256`. The ZIP and the manifest itself are excluded from the manifest to avoid self-reference.

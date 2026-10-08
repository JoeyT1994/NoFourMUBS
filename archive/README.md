# Archive

Everything here is superseded by the minimal proof ([`../PROOF.md`](../PROOF.md)). It is kept intact and replayable.

[`long_proof/`](long_proof/README.md) holds the first complete proof, in corner-chart coordinates:
- the maximal-corner domain;
- the 8.65M regular cells;
- the branch layer and the 45.7M-row ledger;
- its certificates (`ProvenResults/`, `NumericalCampaign/`, `Verification/`, `RouteC/`);
- its write-up draft (`paper/`) and Lean sources (`Lean/`);
- the earlier shortening attempts (`simplerproof/`: the wide F6 tube, confinement, the averaging lemma).

Replay it with `cd long_proof && python3 verify.py`.

Links from the archive to the inputs it shares with the minimal proof (`MinimalConstruction`, `ClassificationPaper`, `openai`) are relative symlinks inside `long_proof/`. Some hash-pinned documents in `../MinimalConstruction/` still link to `../ProvenResults/...`; those targets now live under `long_proof/ProvenResults/`.

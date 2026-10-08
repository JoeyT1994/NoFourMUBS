# Archive

- [`long_proof/`](long_proof/README.md) holds the first complete proof, which works in corner-chart coordinates:
  - the maximal-corner domain;
  - the campaign of 8.65M regular cells;
  - the branch layer and the 45.7M-row ledger;
  - its certificates (`ProvenResults/`, `NumericalCampaign/`, `Verification/`, `RouteC/`);
  - the earlier shortening attempts (`simplerproof/`).

  It is superseded by the minimal proof ([`../PROOF.md`](../PROOF.md)), but kept intact and replayable: run `cd long_proof && python3 verify.py`.

**Compatibility links.** `ProvenResults` and `RouteC` at the repository root are symlinks into `long_proof/`. They exist only so that the in-progress `simplerproof/averaging_lemma` scripts and some pinned documents in `MinimalConstruction/` keep resolving. Remove them once that work concludes.

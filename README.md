# NoFourMUBS

**Theorem (computer-assisted).** C⁶ admits no four mutually unbiased bases.

**Start here.**

| Document | What it is |
|---|---|
| [simplerproof/PROOF.md](simplerproof/PROOF.md) | The proof, written in corner coordinates with openai/math's Stage-C exclusion idea; each step points to its certificate |
| [PROOF_MAP.md](PROOF_MAP.md) | The proof of record mapped to its evidence |
| [Verification/ledger_2026-10-07c](Verification/ledger_2026-10-07c/README.md) | Final ledger: all 45,713,468 branch-layer rows closed by our own certificates, 0 open, 0 delegated |
| [simplerproof/widetube](simplerproof/widetube/PROOF.md) | New 8 Oct: F6 tube of radius 0.075 and the local averaging lemma at c₀ = 26, both independently replayed |
| [MODULES.md](MODULES.md) | Which ProvenResults modules the proof uses, and which are superseded or exploratory |

The material below is the folder map. The section "Where things stand (30 September 2026)" is historical.

| Folder | Contents |
|---|---|
| [ClassificationPaper](ClassificationPaper/README.md) | Classification of order-six complex Hadamards: paper, sources, certificates and Lean package (unchanged) |
| [MinimalConstruction](MinimalConstruction/README.md) | Canonical positive-sheet reconstruction, accepted external inputs, executable formulas and measurement equations |
| [ProvenResults](ProvenResults/README.md) | Proved identities, inequalities and structural lemmas, each with its scope, proof, data and verifier |
| [ProvenResults/BARRIERS.md](ProvenResults/BARRIERS.md) | Proved dead ends and never-proved archive inputs |
| [NumericalCampaign](NumericalCampaign/README.md) | The current attack: a rigorous computer-assisted cover proving that no carrier completes to four MUBs. It holds the reduction theorem, its inputs, the budget and the certification tools |
| [WhatWeWanttoProve](WhatWeWanttoProve/README.md) | **Start here for status:** what is proved, what the campaign has done, and the analytical targets still open (T1′–T6) |
| [Verification](Verification/README.md) | Replay receipts for every proved result, and the latest full run of verify.py |

## Where things stand (30 September 2026)

- **Route.** A rigorous computer-assisted cover ([NumericalCampaign](NumericalCampaign/README.md)),
  resting on the reconstruction inputs of MinimalConstruction/ASSUMPTIONS.md, proved on 1 October 2026 relative to named ClassificationPaper results in [MinimalConstruction/Proofs](MinimalConstruction/Proofs/README.md) (registered check `reconstruction_proofs`, PASS; independent review of the prose pending). The proved
  [reduction](NumericalCampaign/REDUCTION.md) turns "no four MUBs" into statement Q on an explicit
  seed domain D₀ ∩ F.
- **Run of record (in progress on rusty, `nofourmubs_rescaled_2026-09-30`).**
  - It runs expansion, audit, layer prune and certification of every work cell, chained
    automatically, projected at ≈ 9·10⁴ CPU-h. About 13–16% of the 600k budget is spent so far
    ([BUDGET](NumericalCampaign/BUDGET.md)).
  - FastTM carries the always-on range guard proved sound by
    [FastTMInvariant](ProvenResults/FastTMInvariant/README.md), and since 30 Sep
    [rescaled `inv`/`sqrt`](ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md). Without the
    rescaling the guard sent 406,719 harmless cells to the branch layer
    ([report](NumericalCampaign/Campaign/REPORT_2026-09-30.md)).
  - The certificate is the accelerated
    [cluster cover](ProvenResults/CommonRays/ClusterCover/README.md), cover only. On the guarded
    code it certified 342,217 of the first 342,218 cells at 20.7 s mean.
  - Earlier runs (unguarded 28–29 Sep; guarded 29–30 Sep) are superseded, not of record.
- **Branch layer** (the other agent's stage, [BRANCH_LAYER.md](WhatWeWanttoProve/BRANCH_LAYER.md)).
  - [SideTriplePrune](ProvenResults/CornerBounds/SideTriplePrune/README.md) leaves about 623k
    genuine branch-point cells. The rescaled run's exact list is pending.
  - A [second pass](ProvenResults/CornerBounds/CampaignSecondPass/README.md), R-gap certificates
    and seed lifts close parts of it.
- **Analytic side (T1′/T2).**
  - Matrix tubes: 1/16384 around the whole Fourier family, 1/256 on 191 of 270 boxes, 1/30 at F6.
  - New on 30 Sep:
    - the near-rank-one seed tube of radius 2⁻¹⁴ is outside strict D₀
      ([FourierCornerRigidity](ProvenResults/FourierCornerRigidity/README.md));
    - only the F6 classes (4,5,0,3) and (1,2,2,4) can be small-R endpoints
      ([ChartConditioning](ProvenResults/ChartConditioning/README.md)).
  - An explicit but impractically small global cutoff is proved
    ([EffectiveConfinement](ProvenResults/EffectiveConfinement/README.md), m = 2^(−7.5·10⁵²)).
  - **Open:** the quantitative confinement step (a numerical seed gap τ, or a global small-M cutoff
    into the F6 chart) and production-width closure of the two active classes.
    [WhatWeWanttoProve](WhatWeWanttoProve/README.md) has the full map.

## Verification

Install requirements.txt in a Python >= 3.10 environment, then run

    python3 verify.py

The cluster-cover check also needs Julia and the pinned campaign environment;
see its [replay instructions](ProvenResults/CommonRays/ClusterCover/README.md#replay).
Set `JULIA_BIN` if the Julia executable is not on PATH.

All registered checks (81 on 30 September) run in a temporary copy and write receipts to
Verification/. The latest complete run is Verification/root_run_2026-09-30/: 79 of 80 checks PASS in the full run with `--jobs 8`; `count_two` exceeded one sub-check's 60-second time budget under that load and PASSES when rerun alone (Verification/root_run_2026-09-30_count_two_rerun/). They replay the retained algebra and certificate data. They do
not rebuild the Lean package or prove the accepted reconstruction inputs, and
they do not prove the global no-four-MUB bound. Local exclusions have the
scope and dependencies stated in their proofs. MANIFEST.sha256 hashes every retained file.

## What was moved out (26 September 2026)

Nothing was deleted except .DS_Store files and Python caches.

- The seven-MUB attempt (SevenMUBs/STATUS.md, the cubic-relaxation
  feasibility certificate and its receipts, the old brief, audit and manifest)
  is in `../NoFourMUBSArchive/seven-mub-attempt-2026-09-26/`. That certificate
  applies only to complete sets and has no bearing on four bases.
- The higher-dimension "More MUBs" paper work (output/ and tmp/) is in
  `../MUBSInHigherDimensions/from-NoFourMUBS-2026-09-26/`.
- The earlier four-MUB programmes (F3 forcing, 4+1, Karlsson locus, finite
  phase fibres, all-M5 nonextension) remain in `../NoFourMUBSArchive/`. So
  does the full pre-22-September snapshot
  `NoFourMUBS-before-seven-MUB-audit-20260922-200735.zip`
  (SHA-256 f1d477420d53a1fb6ee5c3e2c35f99e36054029f3c259064197e8d132e1424e0).
  Their claims are historical and are not inputs here unless re-established.

## Reorganised (27 September 2026)

- `Research/N1` was split up:
  - Its proved content (basis-free matchings, the residual-tensor criterion
    and Lemma Z) is now [ProvenResults/Triples/MatchingForms.md](ProvenResults/Triples/MatchingForms.md).
  - Its certification tools, pilots and quartet-gap evidence are now in
    [NumericalCampaign](NumericalCampaign/README.md).
  - The rest of the N1 record (triple numerics, Zauner local rigidity, and
    superseded prototypes) is in
    `../NoFourMUBSArchive/N1-attack-2026-09-27/`.
- Two checks were added to verify.py: `zauner_matching` and
  `campaign_reduction`.

## Recovered from the archive (26 September 2026)

About twenty proved results were reviewed and brought back into ProvenResults:
EdgeRigidity, ExceptionalEndpoints/Tao, CommonRays, Triples, FourthBasis,
FourierNeighbourhood, Sheets and RelativePhases/QuadraticPhaseCone. Each file
names its archive provenance. Verifiers were made self-contained and stale
receipt hashes were dropped. The mathematics was copied unchanged.

## Cleanup for handoff (29 September 2026)

Nothing was deleted except caches. Superseded code, logs and receipts were moved to
`../NoFourMUBSArchive/cleanup-2026-09-29/`; its ARCHIVE_NOTE.md lists every item and why:
- the retired Krawczyk variants and benchmarks;
- the old pilot runs;
- the superseded job list;
- the withdrawn FASTVERIFY draft;
- two duplicate audit receipts.

The per-day T2 progress notes that used to follow here are consolidated in
[WhatWeWanttoProve/T2](WhatWeWanttoProve/T2_fourier_neighbourhood.md) and the
[ProvenResults index](ProvenResults/README.md).

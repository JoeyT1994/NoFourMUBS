# No four MUBs in dimension six

**Theorem (computer-assisted).** C⁶ does not admit four mutually unbiased bases.

**→ Read the proof: [`PROOF.md`](PROOF.md).**

The proof uses two ingredients:
- the classification of order-6 complex Hadamard matrices, which lets us rebuild any candidate transition matrix from a single 3×3 corner;
- the Stage-C exclusion idea of the openai/math proof.

Every acceptance is an exact or outward-interval test, and every certificate's inputs are hash-pinned.

## Contents

| | Part | Where | What it holds |
|---|---|---|---|
| i | **Classification** | [`ClassificationPaper/`](ClassificationPaper/README.md) | The classification of order-6 complex Hadamard matrices: paper, sources, certificates and the Lean package. It supplies MC1–MC5. |
| ii | **Minimal reconstruction** | [`MinimalConstruction/`](MinimalConstruction/README.md) | The one-page positive-sheet construction H± from a corner E(θ), with its proofs relative to the classification ([`Proofs/`](MinimalConstruction/Proofs/README.md)) and executable formulas. |
| iii | **The full proof** | [`PROOF.md`](PROOF.md) | The complete argument, with its certificates (below). |
| iv | **The openai/math proof** | [`openai/`](openai/README.md) | The key parts of their proof (seed cover, Stages A–C), and how they map onto ours. |
| v | **Minimising the proof** | [`simplerproof/`](simplerproof/README.md) | The wide F6 tube (d_F ≤ 0.075) and the local lemma (M < 26), both certified. One open statement then removes every degenerate locus. |

### Certificates of the full proof (iii)

| Folder | Role |
|---|---|
| [`NumericalCampaign/`](NumericalCampaign/README.md) | The reduction to statement (Q) on D₀ ∩ F, the campaign driver, and the certification code (Taylor models, cluster cover) for the 8.65M regular work cells and the branch layer |
| [`ProvenResults/`](ProvenResults/README.md) | Each certificate and lemma the proof cites, each with its proof, pinned inputs and verifier |
| [`RouteC/band/`](RouteC/band/REPORT.md) | The reconstruction-free band certificate on the R = 0 curve, and the (0,0,2,4) seed closure [`seed0024`](RouteC/band/seed0024/PROOF.md) |
| [`RouteC/averaging/`](RouteC/averaging/REPORT.md) | The square identity R(A) = (2 Im q(B))² and the corner-sum identities |
| [`Verification/`](Verification/README.md) | The final ledger (45,713,468 rows: 0 open, 0 delegated), the band run, and replay receipts |

### Other folders

- [`paper/`](paper/) holds the write-up draft.
- [`Lean/`](Lean/README.md) is a source archive of the programme's Lean files, with a verify-and-restore script. It is archival and is not a Lean proof of the theorem.
- [`provenance/`](provenance/README.md) holds the earlier status documents. Some certificates pin them by hash, so they are kept unchanged; they are not part of the argument.

## Verifying

```bash
pip install -r requirements.txt
python3 verify.py --jobs 4
```

`verify.py` replays the registered exact checks of the classification inputs, the reconstruction and `ProvenResults`. The large certificates have their own receipts and replay commands:
- the cluster covers and the campaign: [`NumericalCampaign/Certification`](NumericalCampaign/Certification/README.md);
- the ledger: [`Verification/ledger_2026-10-07c`](Verification/ledger_2026-10-07c/README.md);
- the wide tube: [`simplerproof/widetube`](simplerproof/widetube/PROOF.md).

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
- [BW] S. Brierley, S. Weigert, Phys. Rev. A 79 (2009) 052316, arXiv:0901.4051.
- [JMMSW] P. Jaming et al., J. Phys. A 42 (2009) 245305, arXiv:0902.0882.

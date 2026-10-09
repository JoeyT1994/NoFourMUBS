# Auditing the minimal proof

Start with [`PROOF.md`](PROOF.md), about three pages, or the typeset [`proof/note/no_four_mubs.pdf`](proof/note/no_four_mubs.pdf). This file says how to replay everything and where an auditor should look hardest.

## Status

| Step | Claim | Status |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit; max R = 3¹³/2¹² | Proved by exact algebra, with two independent proofs |
| 2 | (𝓗/≅) ∖ {S₆} is connected | Proved relative to MC1–MC5 (the classification) |
| 3 | A ball Record plus Stage C excludes quartet edges in the ball; S₆ is a zero-dimensional Record | Lemmas proved ([`STAGEC.md`](proof/atlas/STAGEC.md), [`RIGOUR.md`](proof/atlas/RIGOUR.md)) |
| 4 | A finite atlas with certified boundary transfers covers X | Certified: 12,020 Records, re-built and re-certified after the audit's Stage C correction (9 Oct) |

## Replaying

```bash
pip install -r requirements.txt     # numpy, scipy, sympy, mpmath, python-flint
python3 verify.py                   # about 2 minutes: Steps 1–3, MC1–MC5, S₆
python3 verify.py --atlas -j 9      # about 50 minutes on 9 cores: certifies all 12,020 Records, and F6
```

## Map

| Path | Content |
|---|---|
| `proof/coverage/` | Steps 1–2. Two independent returns, kept pristine with their replay logs; `README.md` is the synthesis |
| `proof/atlas/` | Steps 3–4:<br>• `ballrecord.py`: Lemma 3.1;<br>• `stagec.py` and `STAGEC.md`: Lemma 3.2;<br>• `tao.py`: Remark 3.3;<br>• `COVERAGE.md`: the corollary and Lemma 4.1;<br>• `atlas.py`: the untrusted driver;<br>• `certify.py`: **the trusted checker**;<br>• `export.py`: the certificate format;<br>• `nonempty.py`;<br>• `results/`: the certificate and receipts |
| `MinimalConstruction/` | The corner reconstruction and MC1–MC5, proved relative to [CT] (`Proofs/`), with the sheet lemmas (`Sheets/`) |
| `ClassificationPaper/` | The classification [CT] |
| `openai/` | What we take from the openai/math proof |
| `archive/` | Superseded material: the long proof and the development record. The minimal proof does not depend on it |

## Where to look hardest

1. **Step 2, connectedness** (`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`):
   - continuity of θ ↦ [H₊(θ)] across root cuts and sign switches;
   - the sheet-parity formula;
   - the frame symmetries giving H₊(Lθ*) ≅ K*;
   - X = A ∪ conj A ∪ {F6}.
2. **The coverage corollary and Lemma 4.1** (`proof/atlas/COVERAGE.md`):
   - openness and closedness in the quotient metric;
   - the use of conjugate and transposed images of Records;
   - that the shell R − n ≤ ‖Tη‖ ≤ R + n captures every boundary Hadamard.
3. **Lemma 3.1, the normal bound:**
   - ‖Φ″‖ ≤ 2√3;
   - the quadratic-root argument.
4. **Stage C** (`STAGEC.md` against `stagec.py`):
   - the column bound r_col;
   - the joint test;
   - the margins.
5. **`certify.py`.** It must trust nothing from the driver beyond centre phases, radii and target lists.

## Inputs taken as given

- The classification of order-6 complex Hadamard matrices [CT], through MC1–MC5, in Step 2 only.
- The Stage C method of [OAI]. Every inequality is reproved in `STAGEC.md`.

# Steps 3 and 4: ball Records and the atlas

## The mathematics

| File | Content |
|---|---|
| `STAGEC.md` | Stage C stated and proved in our notation (Lemma 3.2) |
| `COVERAGE.md` | The coverage corollary and the 4-dimensional boundary-transfer lemma (Lemma 4.1) |
| `RIGOUR.md` | Error budget and status of every inequality |

All three are also formalised in Lean (`lean/NoFourMUBs/StageC/`, `NormalBound.lean`, `Transfer.lean`, `Step4.lean`).

## The trusted checker

| File | Role |
|---|---|
| `certify.py` | Re-checks every Record from the certificate alone. It certifies σ, the normal bound and a Stage C rerun, and replays the boundary tree from the stored transfer targets with Arb constants. Exits nonzero on failure |
| `ballrecord.py` | A ball Record around a rational phase centre: σ by an Arb Cholesky factorisation, Gram bounds, the normal bound n(R) (Lemma 3.1), the column bound, and `stage_c(R)` |
| `record.py` | The exact data at a centre: the Jacobian in Arb, a rational horizontal tangent frame, its Gram matrix and the projector onto its complement |
| `stagec.py` | Stage C after [OAI] §6: vector bins (12 → 96), labels, O/U edge tests with the joint test, and an exact two-clique search; exponentials from Arb tables |
| `nonempty.py`, `anchor.py` | Place F6 and the explicit matched anchor H₀ inside Records, checked in Arb |
| `tao.py` | S₆ as a zero-dimensional ball Record: isolation and Stage C (Remark 3.3) |
| `arb_replay.py` | Re-evaluates a random sample of float Stage C rejections in Arb with no margin |

## The untrusted driver and tools

| File | Role |
|---|---|
| `atlas.py` | Breadth-first atlas growth: spawning, alignment by signed permutations through a link graph, loop closure by a signature-ranked global search |
| `geometry.py` | Float helpers for the driver: the corner census and the Jacobian on horizontal phases |
| `export.py` | Writes the compact certificate (exact float-hex centres, radii, integer frames, transfer targets) |
| `repair.py`, `repair_one.py` | The two repairs that produced the current atlas: re-checking every Record after the Stage C correction, and shrinking named Records |
| `centre_fold52.json` | The starting centre |
| `cluster/run_atlas.sh` | Rebuild and certify on one cluster node |

## The certified atlas

[`results/RECEIPT.md`](results/RECEIPT.md) records the certificate (12,021 Records, all closed), its SHA-256, and two certifications that both pass every Record:
- `certify.py`, via `verify.py --atlas`;
- the independent Julia implementation, [`../independent/`](../independent/README.md).

`results/receipts/` holds the per-check outputs. `results/build_logs/` holds the driver and repair logs.

**Parameters.**
- **Radii.** R = 0.08 rad with label radius 0.03, falling back down a ladder to 0.01 where Stage C fails.
- **Spawning.** New centres go at 1.3R, projected onto 𝓗 by a truncated Gauss–Newton step.
- **Boundary boxes.** The tree starts from 256 boxes of side r_H/2 and refines down to side R/64.
- **Margins.** Transfer margin 10⁻⁸; Stage C margin 10⁻⁷.

```bash
python3 atlas.py centre_fold52.json 1000000000 results/atlas.pkl      # build (resumable; the pickle is not tracked)
python3 export.py results/atlas.pkl results/atlas_certificate.json.gz
python3 certify.py results/atlas_certificate.json.gz [lo hi]          # certify a range of Records
python3 nonempty.py results/atlas_certificate.json.gz
python3 anchor.py results/atlas_certificate.json.gz
```

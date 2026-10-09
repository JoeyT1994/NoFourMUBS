# Steps 3 and 4: ball Records and the atlas

## Files

| File | Role |
|---|---|
| `ballrecord.py` | A ball Record around a rational phase centre P:<br>• rational tangent frame T;<br>• σ certified by an Arb Cholesky factorisation;<br>• Gershgorin bounds on the Gram matrix;<br>• normal bound n(R) (Lemma 3.1);<br>• per-column displacement bound;<br>• `stage_c(R)` |
| `stagec.py` | Stage C after [OAI] §6:<br>• vector bins at resolutions 12 → 96 with tests (6.7), (6.12) and (6.11);<br>• labels;<br>• edge tests (6.16), (6.20), (6.21) and the joint test (6.23);<br>• exact two-clique search.<br>Exponentials come from Arb tables |
| `record.py` | Exact Jacobian, rational tangent frame and projectors at a centre. The legacy per-cell path is unused |
| `COVERAGE.md` | The coverage corollary and the 4-dimensional boundary-transfer lemma (Lemma 4.1) |
| `atlas.py` | Breadth-first atlas growth. Alignments are signed permutations of the 36 phase entries, composed through a link graph. Loop closures use a signature-ranked global search with corner alignment |
| `certify.py` | Independent re-check of every Record: σ, the normal bound, a Stage C rerun, and a replay of the boundary tree using only the stored transfer targets, with constants from Arb. Exits nonzero on failure |
| `nonempty.py` | Places the exact F6 inside a Record, checked in Arb |
| `tao.py` | S₆ as a zero-dimensional ball Record: uniqueness in the ball (isolation) and Stage C (Remark 3.3) |
| `arb_replay.py` | Re-evaluates a random sample of float Stage C rejections in Arb with no margin |
| `STAGEC.md` | Stage C stated and proved in our notation (Lemma 3.2) |
| `RIGOUR.md` | Error budget and status of every inequality |
| `volume.py`, `conditioning.py` | The corner census used by the alignment, and numerical estimates (vol(A) ≈ 1.0; rank J = 21, σ_min ≥ √3 observed) |
| `lib/` | Vendored helpers: `chart_np.py` and `common.py` |
| `export.py` | Converts the driver's pickle into the compact certificate `results/atlas_certificate.json.gz`:<br>• Record centres, as exact float hex;<br>• radii and label radii;<br>• transfer targets.<br>`certify.py` and `nonempty.py` read it directly |
| `results/` | The compact certificate, the run log and the certification receipts. The driver's working pickles are not tracked |
| `cluster/` | The rusty job script (the replication run) |

## Parameters of the run

- **Radii.** Records use R = 0.08 rad with label radius 0.03. If Stage C fails there, the Record falls back down a ladder to R = 0.01.
- **Spawning.** New centres are placed at 1.3R and projected onto 𝓗 by a truncated Gauss–Newton step.
- **Boundary boxes.** The tree starts with 256 boxes of side r_H/2 and refines down to side R/64.
- **Margins.** Transfer margin 10⁻⁸; Stage C margin 10⁻⁷.

## Reproducing

```bash
python3 atlas.py centre_fold52.json 1000000000 results/atlas.pkl      # build (resumable)
python3 export.py results/atlas.pkl results/atlas_certificate.json.gz
python3 certify.py results/atlas_certificate.json.gz [lo hi]          # certify a range of records
python3 nonempty.py results/atlas_certificate.json.gz
python3 arb_replay.py centre_fold52.json 0.08 150
```

**The certified atlas** (`results/`) holds 12,020 Records, every one closed:
- it was built on one core, then repaired after the Stage C correction (`repair.py`) and re-closed;
- `verify.py --atlas` certified all of them on 9 cores in about 48 minutes;
- see `results/RECEIPT.md`.

**Independent replication.** `../independent/` re-checks the same certificate with a separate Julia/interval implementation written only from the specification. (The earlier rusty build, job 7199908, used the uncorrected Stage C and is superseded; `cluster/run_atlas.sh` remains for future rebuilds.)

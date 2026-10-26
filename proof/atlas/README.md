# Stage C and Tao's record (Step 3)

The exclusion step of the proof: Stage C (Lemma 3.2 of `PROOF.md`), applied to every seed ball's enclosure, and
Tao's matrix S₆ as a zero-dimensional record (Remark 3.3). The seed-atlas certifier
(`../seed_atlas/cert/`) imports this code.

## The mathematics

| File | Content |
|---|---|
| `STAGEC.md` | Stage C stated and proved in our notation (Lemma 3.2) |
| `RIGOUR.md` | Error budget and status of every inequality |

Both are formalised in Lean (`lean/NoFourMUBs/StageC/`, `NormalBound.lean`).

## The code

| File | Role |
|---|---|
| `stagec.py` | Stage C after [OAI] §6: vector bins (12 → 96), labels, O/U edge tests with the joint test, and an exact two-clique search; exponentials from Arb tables |
| `ballrecord.py` | A ball record around a phase centre: σ by an Arb Cholesky factorisation, Gram bounds, the normal bound and `stage_c(R)`; used for Tao's record |
| `record.py` | The exact data at a centre: the Jacobian in Arb, a rational horizontal tangent frame, its Gram matrix |
| `tao.py` | S₆ as a zero-dimensional record: isolation and Stage C (Remark 3.3) |
| `arb_replay.py` | Re-evaluates a random sample of float Stage C rejections in Arb with no margin (`verify.py`) |
| `geometry.py`, `atlas.py` | Float helpers: the corner census (all 400 corners of a matrix) and alignment by signed permutations, used by the seed-atlas driver's target discovery |
| `nonempty.py` | Places a matrix inside a full-matrix record, in Arb (used by the certifier only for certificates that list records) |
| `centre_fold52.json` | The Stage C sample centre of `verify.py` |

The 25-dimensional atlas that this folder used to build (12,021 Records, its checker `certify.py` and its results)
is preserved at the git tag `v1-25dim-records`.

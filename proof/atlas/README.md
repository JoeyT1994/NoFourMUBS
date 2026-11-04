# The local tests inside each ball, and Tao's matrix

This folder holds Step 3 of [`PROOF.md`](../../PROOF.md). It contains the local tests run inside every seed ball,
called Stage C in the code (Lemma 3.2), and the record of Tao's matrix S₆ (Remark 3.3). Stage C covers the vectors
that a third or fourth basis could use, then tests which of them could be orthogonal or unbiased and searches for
the configurations that four bases would need. The seed-atlas certifier in [`../seed_atlas/cert/`](../seed_atlas/cert/)
imports this code.

## The mathematics

| File | What it contains |
|---|---|
| `STAGEC.md` | The statement and proof of Stage C (Lemma 3.2) |
| `RIGOUR.md` | The error analysis of every inequality, corrected in [`../../QuartetExclusion/ROUNDING.md`](../../QuartetExclusion/ROUNDING.md) |

Both are formalised in Lean (`lean/NoFourMUBs/StageC/` and `NormalBound.lean`).

## The code

| File | What it does |
|---|---|
| `stagec.py` | Stage C, following [OAI] §6: the vector bins (refined from 12 to 96 steps), the labels, the orthogonality and unbiasedness edge tests with the joint test, and an exact search for two cliques. Exponentials come from Arb tables |
| `ballrecord.py` | A ball record around a phase centre: σ from an Arb Cholesky factorisation, the Gram bounds, the normal bound and `stage_c(R)`. Used for Tao's record |
| `record.py` | The exact data at a centre: the Jacobian in Arb, a rational horizontal tangent frame and its Gram matrix |
| `tao.py` | Tao's matrix S₆ as a zero-dimensional record, with its isolation and Stage C (Remark 3.3) |
| `arb_replay.py` | Re-evaluates a random sample of Stage C's floating-point rejections in Arb, with no margin (run by `verify.py`) |
| `geometry.py`, `atlas.py` | Floating-point helpers: all 400 corners of a matrix, and alignment by signed permutations. The seed-atlas driver uses them to find targets |
| `nonempty.py` | Places a matrix inside a full-matrix record, in Arb. The certifier uses it only for certificates that list records |
| `certify.py`, `export.py` | The record checker and exporter, used as libraries by `nonempty.py` |
| `centre_fold52.json` | The sample centre used by `verify.py` |

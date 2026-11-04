# Verifying the proofs

This page explains how to check every part of the proof from the published files. The reference version is the
release [`tc-verification-2026-11-04`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-verification-2026-11-04).
Its tag fixes the code, and its assets hold the certificates and the records of the ball at F₆. Every command below
starts from a fresh clone at that tag:

```bash
git clone https://github.com/JoeyT1994/NoFourMUBS.git && cd NoFourMUBS && git checkout tc-verification-2026-11-04
gh release download tc-verification-2026-11-04 && shasum -a 256 -c SHA256SUMS
python3 -m venv .venv && . .venv/bin/activate
pip install -r requirements.txt -r TripleClassification/certifier/requirements.txt
```

We tested this with Python 3.12 and 3.13, python-flint 0.9.0, NumPy 2.2.6 (with OpenBLAS 0.3.29 on Linux) and SciPy
1.17.0. Every acceptance in the checkers is an exact or Arb comparison, apart from a few floating-point comparisons in
the vector-cover tests, which carry proved error margins
([`QuartetExclusion/ROUNDING.md`](QuartetExclusion/ROUNDING.md)). Elsewhere floating point only proposes candidates.

## What each claim rests on

| Claim | How it is proved | How it is checked | What is not machine-checked end to end |
|---|---|---|---|
| Theorem 1, the four-phase reconstruction | exact algebra | `verify.py`, and in Lean (`lean/`) | — |
| Theorem 2, the connectedness of the non-Tao space | exact certificates | `verify.py`, and in Lean | — |
| The atlas covers the space (2,775 seed balls, the ball at F₆ and 117,391 boundary caps) | an interval-arithmetic certificate | two independent checkers, in Arb and Julia | Lean takes the atlas certificate as a hypothesis (`EdgeAtlasCertificate`), so its numbers are checked outside Lean |
| No seed ball contains a pair that extends to four MUBs | the vector-cover and graph-search tests, run in every ball | Arb and Julia, with the inequalities proved in Lean | the floating-point rounding ([`ROUNDING.md`](QuartetExclusion/ROUNDING.md)) |
| No such pair lies within phase distance 7/40 of F₆ | an exact cover | Lean, with no hypotheses | — |
| (A) The triples in each seed ball are of known type | one certificate per ball | `certify.py verify-all`, a single Arb certifier | not in Lean |
| (B) The triples in the ball at F₆ are of known type | a core, the crossing theorem and a shell of cells | the commands in Section 3 | not in Lean |
| (C) Tao's matrix has no third basis | an Arb record | `tao.py` | — |

Both proofs of N(6) = 3 share Theorems 1 and 2 and the atlas cover. They differ only in what they check inside each
ball. The direct proof runs the vector-cover and graph-search tests to exclude four MUBs. The classification proves
(A)–(C) and then cites the theorem of Jaming et al. that no Fourier-family pair extends to four MUBs.

## 1. Theorems 1 and 2, and the atlas

```bash
python3 verify.py                       # the exact checks of Steps 1–4 and a sample of the local tests (about 1 min)
python3 verify.py --atlas -j 128        # the whole atlas and its local tests, in Arb (33 min on one 128-core node)
python3 verify.py --lean-full           # build the main Lean theorems and audit their axioms (elan, about 12 GB of disk)
julia --startup-file=no -t 64 --project=proof/independent/jlenv proof/independent_seed/check_seed.jl \
      proof/seed_atlas/results/seed_atlas_certificate.json.gz /tmp/julia-check     # the independent checker (1 h 07 min on 64 cores)
```

## 2. (A), the seed balls

```bash
mkdir certs && tar -xf certificates-1-of-2.tar -C certs && tar -xf certificates-2-of-2.tar -C certs && cp MANIFEST certs/
python3 TripleClassification/certifier/certify.py verify-all certs/MANIFEST --results fresh.jsonl --workers 128
```

The command exits 0 when every ball is CLOSED. 2,771 balls have scope "all", and four (1035, 1217, 1622 and 2705) have
minimum-transition scope. Checking the whole atlas takes about 900 core-hours, and a single ball is checked with
`certify.py verify certs/b<BALL>`.

For a fresh verification, use a new `--results` file. Existing results are reused only when both the checker and the
certificate's digest match. To split the work over several nodes, give each `--shard I/N` its own results file, then
concatenate them and run once more to summarise.

**Audit mode.** [`tools/fp_audit.py`](TripleClassification/certifier/tools/fp_audit.py) takes the same arguments as
`verify-all`, but raises every floating-point exception instead of silencing NumPy's warnings. A CLOSED verdict in
this mode shows that no overflow, division by zero or invalid operation occurred anywhere in the check. Use it with
OpenBLAS, because Apple Accelerate raises spurious flags inside matrix products and audit mode then refuses
everything. For the release `tc-verification-2026-11-04`, all 2,775 certificates are CLOSED in audit mode (NumPy
2.2.6, OpenBLAS 0.3.29, 879 core-hours).

## 3. (B), the ball at F₆

The ball has three parts: a certified core, the two crossings of the family inside it, and a shell of 383,829 dyadic
cells around it. First unpack the shell's records, then work from the `xball` folder:

```bash
tar -xf fourier-shell-replay.tar && gunzip -r fourier-shell-replay && SH=$PWD/fourier-shell-replay
(cd $SH/rows && shasum -a 256 -c ../rows.sha256) && (cd $SH && shasum -a 256 -c inputs.sha256)
cd proof/theorems/TC_triple_classification/xball
```

| Step | Command | Result | Time |
|---|---|---|---|
| The crossing theorem, in a ball of radius 1/50 around each crossing | `cd reference/crossing_continuation_20261028 && python3 verify_all.py` | all checks pass | 7 s |
| The exact structure of the crossings | `python3 experiments/crossing_structure.py --output structure.json` | `CERTIFIED EXACT STRUCTURE ONLY` | 4 min |
| The crossing radius and its mixed defect | `python3 experiments/crossing_radius_v4.py --output radius.json` | `CERTIFIED LOCAL PHASE NEIGHBOURHOODS`, defect 0.885228 | 3 s |
| The core ‖w‖ ≤ r/16, with 14 patterns closed by symmetry and 2 by the crossing theorem | `python3 experiments/core_crossing_v4.py --core-power 4 --radius-receipt results/crossing_radius_20261028_v4.json --output core4.json` | `CERTIFIED`, 16 patterns | 2 min |
| The shell, from the published records | `python3 experiments/sharded.py account --plan $SH/replay_plan.json --core results/core4_v4.json --core-power 4 --rows $SH/rows/rows_*.jsonl --out account.json` | `CERTIFIED`, 383,829 of 383,829 | 77 s |
| The shell, recomputed from scratch | `python3 experiments/sharded.py run --plan $SH/replay_plan.json --shard I --shards N --workers W --out rows_I.jsonl`, then the accounting above | `CERTIFIED` | 1,538 core-hours |

The release asset `fourier-shell-replay.tar` holds:
- The plan `replay_plan.json.gz`, the exact partition into cells.
- 16 row files, with one verdict for every shell cell, all recomputed on 3–4 November 2026.
- The checksums `rows.sha256` and `inputs.sha256`.
- The accounting `account_replay.json`.
- The events file of the original run.

The original run's records are in `fourier-shell-rows.tar`. Its 12 row files, together with the repository's
`xball/results/*.jsonl` and that events file, also account for all 383,829 cells.

## 4. (C), Tao's matrix, and how the pieces fit together

```bash
python3 proof/theorems/TC_triple_classification/tao.py
```

Theorem 3, the classification, follows from four facts:
- The atlas covers every non-Tao class (Section 1).
- The triples of every seed ball are classified, with the minimum-transition reduction in four balls (Section 2).
- The triples of the ball at F₆ are classified (Section 3).
- Tao's matrix has no third basis (Section 4).

SM Proposition S.7 and the proof of Theorem 3 that follows it put these together.

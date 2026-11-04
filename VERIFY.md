# Verifying the proofs

This page is the entry point for checking everything from the distributed files. The authoritative version is the
release **`tc-verification-2026-11-04`**: its tag fixes the code, and its assets are the certificates and the shell
rows. Every command below starts from a fresh clone at that tag:

```bash
git clone https://github.com/JoeyT1994/NoFourMUBS.git && cd NoFourMUBS && git checkout tc-verification-2026-11-04
gh release download tc-verification-2026-11-04 && shasum -a 256 -c SHA256SUMS
python3 -m venv .venv && . .venv/bin/activate
pip install -r requirements.txt -r TripleClassification/certifier/requirements.txt
```

**Environment.**
- Tested with Python 3.12 and 3.13: python-flint 0.9.0, NumPy 2.2.6 (OpenBLAS 0.3.29 on Linux), SciPy 1.17.0.
- Every acceptance is an exact or Arb comparison, or a Stage C binary64 test with a proved margin
  ([`QuartetExclusion/ROUNDING.md`](QuartetExclusion/ROUNDING.md)).
- Floating point otherwise only proposes.

## What each claim rests on

| Claim | Proved by | Checked by | Not machine-checked end to end |
|---|---|---|---|
| Theorem 1: four-phase reconstruction | exact algebra | `verify.py`; Lean (`lean/`) | — |
| Theorem 2: the non-Tao space is connected | exact certificates | `verify.py`; Lean | — |
| The atlas covers the space: 2,775 seed balls, the ball at F₆, 117,391 boundary caps | interval certificate | two independent checkers (Arb, Julia) | Lean takes the atlas certificate as a hypothesis (`EdgeAtlasCertificate`); its numbers are checked outside Lean |
| No quartet in any seed ball | Stage C, per ball | Arb and Julia (inequalities proved in Lean) | binary64 rounding ([`ROUNDING.md`](QuartetExclusion/ROUNDING.md)) |
| No quartet within 7/40 of F₆ | exact cover | Lean, hypothesis-free | — |
| (A) Triples in each seed ball | per-ball certificates | `certify.py verify-all` (one Arb certifier) | not in Lean |
| (B) Triples in the ball at F₆ | core, crossing theorem, shell | the commands in § 3 | not in Lean |
| (C) Tao's matrix has no third basis | Arb record | `tao.py` | — |

The two proofs of N(6) = 3 share Theorems 1 and 2 and the atlas cover. They differ only in the local argument:
- the direct proof runs Stage C in every ball;
- the classification proves (A)–(C), then cites the Fourier-family exclusion of Jaming et al.

## 1. Theorems 1 and 2, and the atlas

```bash
python3 verify.py                       # exact replays of Steps 1–4 and a Stage C sample (about 1 min)
python3 verify.py --atlas -j 128        # the whole atlas and Stage C, in Arb (33 min, one 128-core node)
python3 verify.py --lean-full           # Lean: build the main theorems and audit their axioms (elan; about 12 GB of disk)
julia --startup-file=no -t 64 --project=proof/independent/jlenv proof/independent_seed/check_seed.jl \
      proof/seed_atlas/results/seed_atlas_certificate.json.gz /tmp/julia-check     # the independent checker (1 h 07 min, 64 cores)
```

## 2. (A) the seed balls

```bash
mkdir certs && tar -xf certificates-1-of-2.tar -C certs && tar -xf certificates-2-of-2.tar -C certs && cp MANIFEST certs/
python3 TripleClassification/certifier/certify.py verify-all certs/MANIFEST --results fresh.jsonl --workers 128
```
- Use a new `--results` file for a fresh verification; existing results are reused only when the checker and the
  certificate's digest match.
- To split the work over nodes, give each `--shard I/N` its own results file, then concatenate them and run once more
  to summarise.
- It exits 0 when every ball is CLOSED. 2,771 balls have scope all and four (1035, 1217, 1622, 2705) have
  minimum-transition scope.
- The whole atlas takes about 900 core-hours. One ball: `certify.py verify certs/b<BALL>`.

**Audit mode** (`TripleClassification/certifier/tools/fp_audit.py`, the same arguments as `verify-all`) raises every
floating-point exception instead of silencing NumPy's warnings. A CLOSED verdict there shows that no overflow,
divide-by-zero or invalid operation occurred anywhere in the certificate's check. Use OpenBLAS: Apple Accelerate
raises spurious flags inside matrix products, and audit mode then refuses everything.

## 3. (B) the ball at F₆

The ball has three parts: a certified core, the two crossings of the family inside it, and a shell of 383,829 dyadic
leaves around it. First unpack the shell's rows, then work from the `xball` folder:

```bash
tar -xf fourier-shell-replay.tar && gunzip -r fourier-shell-replay && SH=$PWD/fourier-shell-replay
(cd $SH/rows && shasum -a 256 -c ../rows.sha256) && (cd $SH && shasum -a 256 -c inputs.sha256)
cd proof/theorems/TC_triple_classification/xball
```

| Step | Command | Result | Time |
|---|---|---|---|
| Crossing theorem (radius 1/50 around both crossings) | `cd reference/crossing_continuation_20261028 && python3 verify_all.py` | all checks pass | 7 s |
| Exact crossing structure | `python3 experiments/crossing_structure.py --output structure.json` | `CERTIFIED EXACT STRUCTURE ONLY` | 4 min |
| Crossing radius and mixed defect | `python3 experiments/crossing_radius_v4.py --output radius.json` | `CERTIFIED LOCAL PHASE NEIGHBOURHOODS`, defect 0.885228 | 3 s |
| Core ‖w‖ ≤ r/16: 14 patterns by symmetry, 2 by the crossing theorem | `python3 experiments/core_crossing_v4.py --core-power 4 --radius-receipt results/crossing_radius_20261028_v4.json --output core4.json` | `CERTIFIED`, 16 patterns | 2 min |
| Shell, from the published rows | `python3 experiments/sharded.py account --plan $SH/replay_plan.json --core results/core4_v4.json --core-power 4 --rows $SH/rows/rows_*.jsonl --out account.json` | `CERTIFIED`, 383,829 of 383,829 | 77 s |
| Shell, regenerated | `python3 experiments/sharded.py run --plan $SH/replay_plan.json --shard I --shards N --workers W --out rows_I.jsonl`, then the accounting above | `CERTIFIED` | 1,538 core-hours |

The shell's inputs are the release asset `fourier-shell-replay.tar`:
- `replay_plan.json.gz`: the exact partition, in which every shell leaf is pending;
- 16 row files, one verdict per shell leaf, all recomputed on 3–4 November 2026;
- `rows.sha256` and `inputs.sha256`;
- `account_replay.json`;
- the prior events file of the original run.

The original run's rows are `fourier-shell-rows.tar`. Its 12 row files, the repository's `xball/results/*.jsonl` and
that prior events file together also account for all 383,829 leaves.

## 4. (C) Tao's matrix, and the assembly

```bash
python3 proof/theorems/TC_triple_classification/tao.py
```

Theorem 3 (the classification) follows from four facts:
- the atlas covers every non-Tao class (§ 1);
- every seed ball's triples are classified, up to the minimum-transition reduction for four balls (§ 2);
- the ball at F₆'s triples are classified (§ 3);
- Tao's matrix has no third basis (§ 4).

The assembly is SM Proposition S.7 and the proof of Theorem 3 that follows it.

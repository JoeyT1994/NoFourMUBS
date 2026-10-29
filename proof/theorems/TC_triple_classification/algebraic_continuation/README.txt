Algebraic certification at the original atlas radii

These modules extend the native all-K classifier with signed quadratic
phase-bin exclusions, optimized phase bounds, exact quadratic K-entry
equations, signed cubic bounds, and complete internal partitions of the
original closed atlas ball. Each *_PROOF.txt file derives its bound.
Numerical solvers propose witnesses; interval checks decide acceptance.

The archived checkpoint independently replayed 35 of the preceding 181
unresolved balls, plus the earlier ball 2169. Its count of 146 unresolved
refers to the older upstream revision 13d1853, not the current assembly.

At upstream revision 72941cc, the single-route assembly reports 2719 of
2775 balls closed and 56 open. Seven of those open balls now have complete
algebraic exclusions at their original radii: 194, 679, 754, 846, 853, 885
and 1070. Ball 846 was recovered from the archive. All seven passed fresh
mathematical replay and the current Stage C preconditions. The replays check
11770 bin witnesses and all 36 basis patterns for ball 194, and 9475 bin
witnesses and all 64 basis patterns for ball 679. Both retain radius 0.1.
Ball 754 retains radius 0.1. Its replay checks 12128 coarse-bin witnesses,
230 further bin exclusions through 994 verified child leaves, and all 64
basis patterns. The Popeye replays check 11456 bin witnesses and all 36
basis patterns for ball 885 at radius 0.1, and 6863 bin witnesses and all
157 basis patterns for ball 1070 at radius 0.08. Ball 1070 uses the signed
cubic bounds. This leaves 49 of that historical report's open balls
unresolved by these seven certificates; it is not the current job count.
These algebraic receipts have not been added to its tree auditor
or assembly. Do not add the historical 35 to the current closed count.

The global classification proof remains incomplete. Other reported
closures and the exceptional-case and recognition dependencies were not
all freshly replayed here. Compact evidence is in additional_closures.json.
The target
radius is the original native four-coordinate radius stored for each
ball, not a uniform radius 1/8 in unscaled seed or full-Hadamard phases.

This directory contains the modules needed by those completed replays,
the score bounds described below, their proof notes, and regression tests.
The original source bytes bound by the seven certificates are preserved.
Unsuccessful experimental methods, logs, and bulk result dumps are excluded.

Closed K-bin subdivisions

adaptive_bins.py strengthens the column cover by bisecting the five closed
K-phase intervals. Every leaf must have a strictly positive Arb quadratic
bound before the parent bin is removed. The full original H-ball remains
fixed. ADAPTIVE_BINS_PROOF.txt proves the coverage and remainder bounds;
test_adaptive_bins.py checks the coefficients, closed boundaries and
rejection of incomplete or altered trees. The method closes ball 754.
It does not itself classify bins that contain a possible K column.

Transition-score bounds

unitary_score.py bounds the whole transition H* K/sqrt(6), using unitarity
to count H's displacement once. The unit modulus of each transition entry
then sharpens the conversion from complex displacement to phase error.
constraint_score.py further subtracts a linear combination of the 96
vanishing triple equations. It retains the derivative defect, signed
Hessian and cubic remainder in Arb. Numerical matrices only propose the
subtraction. UNITARY_SCORE_PROOF.txt and CONSTRAINT_SCORE_PROOF.txt derive
the inequalities.

score_tree.py applies these bounds to complete binary partitions of the
K-label sets while keeping the original H ball fixed. Each assigned label
must contain its entire closed bin. Every child must be present, and every
successful leaf is recomputed on replay. SCORE_TREE_PROOF.txt gives the
coverage argument. Its input model and cover must already have passed C1,
the normal-form proof, Stage C preconditions and complete-cover checks.

The saved checkpoint freshly replays 59 score branches in one pattern of
ball 1016 and 54 in one pattern of ball 1622. Both H radii remain 0.08. Each
branch proves Gamma_F(H* K/sqrt(6)) <= 19/50 for every completing triple
in that branch. The two trees still have 11 and 10 open branches. Other
color patterns also remain required. These 113 branch results add no
whole-ball closures; their compact hashes and scope are recorded in
score_bounds_checkpoint.json.

Classification from the score requires the separate Fourier-neighbourhood
theorem, Gamma3 in TripleClassification/GAMMA_PROOF.md, and its listed
dependencies. These modules do not establish that theorem or use an
ordering reduction. A partial score tree is never an all-K certificate.

Reproduce the score-branch checkpoint

With the requirements installed, choose fresh output paths and run from
the repository root. The inputs below are retained on Popeye:

  A=proof/theorems/TC_triple_classification/algebraic_continuation
  TC_SCORE_RUN=/mnt/sdceph/users/mwuttig/MUB_Hadamard/runs/tc_partition_20261029_61658d2111d8
  for i in 1016 1622; do
    python "$A/replay_score_branches.py" --index "$i" \
      --coarse-receipt "$TC_SCORE_RUN/score_tree_public_replay/$i.jsonl" \
      --tree "$TC_SCORE_RUN/score-tree-probe-v1-$i.json" \
      --output "replay-score-$i.json"
  done

The replayer rebuilds the original complete cover,
checks every reused coarse-bin witness, and recomputes every claimed tree
leaf. Its output explicitly preserves unfinished branches and records
whole_ball_closed=false. Input hashes, source hashes and original seed
and radius identities are checked independently of the saved scores.

Retrieve evidence

The immutable Git commit 5ae32d5aab0567f316f8fc9f8eaad5ff6ffac2e5 retains
the published witnesses. It remains in repository history after the
large merge was reverted. From the repository root, let
A=proof/theorems/TC_triple_classification/algebraic_continuation and run:

  python "$A/restore_certificates.py"

This retrieves only the checkpoint ledger, initial unresolved-index list,
and the discovery/replay receipt pairs with their manifests. It checks
the replay source bindings and exact input-row hashes before writing.
Different local files are not overwritten. Results are ignored by Git.
In a shallow clone, first run:

  git fetch origin 5ae32d5aab0567f316f8fc9f8eaad5ff6ffac2e5

Verification

Use Python 3.12 and the packages pinned in requirements.txt. Do not run
proof scripts with Python -O. With the same A abbreviation:

  python -m pip install -r "$A/requirements.txt"
  python -m unittest discover -s "$A" -p 'test_*.py' -v
  python -m unittest discover -s "$A/../algebraic" -p 'test_*.py' -v
  python "$A/checkpoint.py"

The checkpoint command checks accounting and source bindings; it does
not replace mathematical replay. The following commands rebuild the
complete K cover and check every saved witness. Choose fresh output names.

  python "$A/replay_bins.py" --eager \
    --receipt "$A/results/eager_bins_126.jsonl" --output replay-126.jsonl
  python "$A/replay_bins.py" --eager \
    --receipt "$A/results/scan_eager/ball_828.jsonl" --output replay-828.jsonl
  python "$A/replay_tight_bins.py" \
    --receipt "$A/results/tight_bins_604.jsonl" --output replay-604.jsonl
  python "$A/replay_cubic_bins.py" \
    --receipt "$A/results/scan_cubic_first/ball_1028.jsonl" --output replay-1028.jsonl
  python "$A/replay_partition_bins.py" \
    --receipt "$A/results/partition_full_2573.jsonl" --output replay-2573.jsonl
  python "$A/replay_optimized.py" --index 1073 \
    --receipts "$A/results/optimized_serial.jsonl" --output replay-1073.jsonl
  python "$A/replay_optimized.py" --index 1296 \
    --receipts "$A/results/optimized_1296_cert.jsonl" --output replay-1296.jsonl
  python "$A/../algebraic/replay_scalar.py" --index 2169 \
    --receipts "$A/../algebraic/results/algebraic_pilot.jsonl" --output replay-2169.jsonl

Other eager and cubic receipts use the same commands with the index from
results/progress_replayed.json. Every counted certificate concerns all K
on the entire original closed ball. Subdivisions cover the original
domain, including its boundary; partial or failed runs establish nothing.

Reproduce the additional closures with the current Stage C guard

After restoring the archived receipts, run:

  python "$A/audit_current.py" \
    --receipt "$A/results/scan_eager/ball_846.jsonl" --output replay-846.jsonl
  for i in 194 679 853 885; do
    python "$A/run_eager_bins.py" --index "$i" --output "discovery-$i.jsonl"
    python "$A/audit_current.py" \
      --receipt "discovery-$i.jsonl" --output "replay-$i.jsonl"
  done

audit_current.py first checks the original index, radius, seed identity,
complete exclusion accounting and current Stage C preconditions. It then
runs a fresh mathematical replay and writes a hash-bound .audit.json
sidecar. It refuses smaller-radius or incomplete receipts. The recorded
hashes identify the saved run; reruns may differ in timing or numerical
proposals. Their acceptance depends on the fresh interval proof checks.
The generated witness files stay outside ordinary commits and can be
regenerated by these commands.

Reproduce the adaptive closure for ball 754

  python "$A/run_adaptive_bins.py" --index 754 --output discovery-754.jsonl
  python "$A/replay_adaptive_bins.py" \
    --receipt discovery-754.jsonl --output replay-754.jsonl

The producer may reuse the coarse witnesses from a run_eager_bins.py row
with --reuse-coarse PATH. It checks their binding and original ball
identity, then mathematically replays them. The adaptive replayer rebuilds
the complete cover, checks every coarse witness and child leaf, and
rechecks every basis pattern after the current Stage C guard. Its audit
sidecar records exact seed and radius identities and the source hashes.

Reproduce the cubic closure for ball 1070

python "$A/run_cubic_bins.py" --index 1070 --output discovery-1070.jsonl
python - "$A" <<'PY'
import gzip, json, pathlib, subprocess, sys
sys.path.insert(0, sys.argv[1])
import audit_current as audit
assert audit.R.binding(audit.R.DEFAULT_ATLAS)['id'] == audit.NATIVE
record = json.loads(gzip.decompress(audit.R.DEFAULT_ATLAS.read_bytes()))['seeds'][1070]
saved = json.loads(pathlib.Path('discovery-1070.jsonl').read_text())
audit.validate_identity(saved, record, 1070)
audit.G.check(audit.R, record)
subprocess.run([sys.executable, str(pathlib.Path(sys.argv[1])/'replay_cubic_bins.py'),
    '--receipt', 'discovery-1070.jsonl', '--output', 'replay-1070.jsonl'], check=True)
audit.validate_identity(json.loads(pathlib.Path('replay-1070.jsonl').read_text()), record, 1070)
PY

The saved Popeye witnesses and fresh replay receipts for 885 and 1070 are
in results/885.zip and results/1070.zip under
/mnt/sdceph/users/mwuttig/MUB_Hadamard/runs/tc_algebraic_20261029_0ed0286e82a8.
The same directory retains manifest.json and operations/worker.py, which
performed the original-identity, Stage C and replay audit. Their hashes and
the bundle hashes are recorded in additional_closures.json. These external
archives are not needed when regenerating the proofs with the commands
above, and are not included in ordinary commits.

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
2775 balls closed and 56 open. Five of those open balls now have complete
algebraic exclusions at their original radii: 194, 679, 754, 846 and 853. Ball
846 was recovered from the archive. All five passed fresh mathematical
replay and the current Stage C preconditions. The latest two replays check
11770 bin witnesses and all 36 basis patterns for ball 194, and 9475 bin
witnesses and all 64 basis patterns for ball 679. Both retain radius 0.1.
Ball 754 retains radius 0.1. Its replay checks 12128 coarse-bin witnesses,
230 further bin exclusions through 994 verified child leaves, and all 64
basis patterns. This leaves 51 of that report's open balls unresolved.
These algebraic receipts have not been added to its tree auditor
or assembly. Do not add the historical 35 to the current closed count.

The global classification proof remains incomplete. Other reported
closures and the exceptional-case and recognition dependencies were not
all freshly replayed here. Compact evidence is in additional_closures.json.
The target
radius is the original native four-coordinate radius stored for each
ball, not a uniform radius 1/8 in unscaled seed or full-Hadamard phases.

This directory contains only modules needed by those completed replays,
their proof notes, and relevant regression tests. The original source
bytes bound by the certificates are preserved. Experimental methods,
pilot outputs, logs, and bulk result dumps are excluded from this change.

Closed K-bin subdivisions

adaptive_bins.py strengthens the column cover by bisecting the five closed
K-phase intervals. Every leaf must have a strictly positive Arb quadratic
bound before the parent bin is removed. The full original H-ball remains
fixed. ADAPTIVE_BINS_PROOF.txt proves the coverage and remainder bounds;
test_adaptive_bins.py checks the coefficients, closed boundaries and
rejection of incomplete or altered trees. The method closes ball 754.
It does not itself classify bins that contain a possible K column.

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
  for i in 194 679 853; do
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

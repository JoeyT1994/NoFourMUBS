# Cost estimate and continuation scope

The whole-region task is incomplete. No finite successful completion cost
has been demonstrated. The estimates below describe this implementation's
workloads; they are **not lower bounds** on a better adaptive method.

The final deterministic 16-root regional benchmark used 435.16 CPU-seconds
for 3,532 attempted nodes, or 0.12321 CPU-seconds per node. It closed one
whole root before the individual 30-second / 1,023-node limits. Every
other root retained explicit open leaves. The complete raw records are
in `data/region_final_benchmark.jsonl.gz`.

A uniform binary depth-12 traversal of all 1,609 roots has
1,609*(2^13-1) nodes. Each coordinate has then been split three times,
giving half-width 1/4096 radians, already smaller than the supplied
pilot half-width. At the measured mean node cost this workload is about
**451 CPU-hours**, before any additional refinement of failed leaves.
This exceeds the requested approximately 100 CPU-hour local limit, so
that expansion was not launched. Early adaptive acceptance may reduce
this cost substantially; difficult R=0-straddling parts may increase it.
Neither direction has a complete success estimate from the capped pilot.

The improved direct box benchmark took 26.00 CPU-seconds on 134 selected
boxes (consult the JSON for the exact measured value). A first pass over
50 million boxes at that scale is roughly **2,700 CPU-hours**, before
refining failures. This is not an acceptable substitute for a regional
certificate. The selection is deterministic and partly diagnostic, not a
uniform random sample; its closure fraction is not a full-run prediction.

The shipped driver partitions roots by `root_id mod shard_count`. The
README's 128-shard recipe caps each root at 120 CPU-seconds and 4,095
nodes. The aggregate root CPU cap is 53.64 hours plus startup and at most
one in-flight leaf per root. Every budget exit records an unresolved
leaf. This is a useful bounded diagnostic continuation, not a promised
completion run. It needs no cluster service during verification, and no
remote job has been submitted.

Priorities before a large search:

1. Preserve or subdivide the auxiliary tau correlation near R=0. The
   current kernel uses a whole independent tau interval when its positive
   quadratic predictor is unavailable; it has no auxiliary slab search.
2. Improve chart selection and validated enclosures for the stationary
   and old residual patches. Their sampled full-width boxes still fail
   root-derivative validation despite successful center tests.
3. Use the five new 1/36 tubes and fresh references per leaf. The former
   sampled point-level tube obstruction has been resolved on all 134
   selected centers; this is not a transverse-stability theorem.
4. Replace the coarse outer mesh by a more tightly fitted exact region
   if new full-run geometry supports it. The present S includes extra
   points around the pilot and is not asserted to contain the full run.
5. Finish and replay every region leaf, then apply exact containment to
   the authoritative full-run boxes. No bulk campaign claim follows from
   the present pilot subset or its counts.

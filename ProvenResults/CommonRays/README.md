# Common rays of a pair (I, H)

The exclusion engine of the proof is [ClusterCover](ClusterCover/README.md). It works as follows:
- cover every ray unbiased to both I and H/√6 by labels with internal squared overlap > 1/6, so that each label has capacity one;
- show by exhaustive graph search that no two disjoint orthogonal 6-cliques are mutually unbiased.

This reduces quartet exclusion to a finite graph, without counting roots or proving regularity.

The accelerated production version adds three proved components:
- [Cartesian exclusion](ClusterCover/CARTESIAN_EXCLUSION.md);
- [sharp capacity](ClusterCover/SHARP_CAPACITY.md);
- [label refinement](ClusterCover/LABEL_REFINEMENT.md).

**Verifier.** Run `python3 verify.py` from `ClusterCover/`. It uses `NumericalCampaign/Certification` and its pinned Julia environment, and takes about 35 s including compilation.

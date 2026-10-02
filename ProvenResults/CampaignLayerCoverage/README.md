# Enlarged branch-cell coverage bookkeeping

[PROOF.md](PROOF.md) states the exact closed-box covering arguments.
[geometry.py](geometry.py) checks complete 16-child Cartesian covers using
exact rational endpoints, rejecting rounding gaps and missing branches.
[collar.py](collar.py) checks an inner box plus at most eight outer slabs,
retaining every face of the already enlarged parent without adding another
guard to the inner box. [ordering.py](ordering.py) supplies outward F-order
exclusion, and [fast_prune.py](fast_prune.py) checks mixed F/side trees.

`python3 -B verify.py` replays valid covers, adversarial geometry cases,
F-order controls, and mixed-tree budget and scope controls.
The root runner registers this as `campaign_layer_coverage`.

This is an audit component, not a proof that the branch layer is closed.
The production application and acceptance replays are in
[`NumericalCampaign/Campaign/layer2`](../../NumericalCampaign/Campaign/layer2/README.md).

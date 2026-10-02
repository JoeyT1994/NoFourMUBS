# Analytical reduction for the NoFourMUBS campaign

Start with **[PROOF.md](PROOF.md)**. This package adds mathematical results and
exact small certificates; it does not run or modify the campaign.

## Main deliverable

A maximal physical 3-by-3 corner containing a 2-by-3 block which dephases to

```
1  1       1
1  exp(ia) exp(ib)
```

with `max(|a|,|b|) <= 2^-14` must come from a Hadamard equivalent to F6.
Thus the whole tube is outside strict physical D0. The third row's seeds
are unrestricted. Transposed blocks are included. No reconstruction,
classification, or MUB-exclusion theorem is assumed.

The new ingredient is **linear** stability of the near-proportional block,
combined with a cubic bound `sqrt(R_corner) <= 288 h^3` and quantitative
local Fourier rigidity.

Using the retained F6 radius-1/30 quartet-exclusion certificate, the larger
tube `h <= 1/2560` is quartet-free. This second, larger conclusion retains
that explicit dependency and does not assert emptiness of D0.

## Other proved structural results

For a physical dephased H with `H_ij = zeta6^(ij) exp(i theta_ij)` and
`t=max|theta_ij|`,

```
t <= sqrt(M(H))/18 + (389/9)t^2.
```

In particular, `M(H) >= 100 t^2` for `t <= 1/100`. Inside the carrier chart
`0 < t <= 1/256`, four of the six F6 corner classes cannot maximize: their
220 positional corners satisfy `R_corner <= (1112/1915)^2 M(H) < 0.34 M(H)`.
Only reference classes `(4,5,0,3)` and `(1,2,2,4)` (pi/3 units) remain.
Carrier closeness is essential here; this is not an unproved generic seed
lifting assertion.

## Contents

- `PROOF.md`: complete proofs, constants, hypotheses, integration limits.
- `verify.py`, `exact_algebra.py`: exact independent replay, using SymPy.
- `certificates/`: rational inverse and all inactive-corner multipliers.
- `prune.py`: exact whole-box predicates in turns, with separate scopes.
- `verification.json`, `verification_stdout.txt`: successful replay receipt.
- `SOURCE_SHA256.json`: hashes of the archive and relevant inspected inputs.
- `MERGE.md`: integration guidance and remaining gaps.

## Replay

Python 3.10+ and SymPy are required; no optimizer, external repository,
network access, interval package, or numerical sampling is required.

```sh
python verify.py --output verification.json
```

The script reconstructs every finite algebraic identity. The universal
analytic implications are proved in `PROOF.md`; the receipt does not claim
a formal proof-assistant verification or replay of the retained F6 tube.

## Exact box usage

```python
from fractions import Fraction as Q
from prune import maximal_corner_prune, quartet_exclusion_prune

r = Q(1, 2**17)
# Four unwrapped turn intervals for the seed phases (a,b,c,d).
box = [(-r, r), (-r, r), (Q(0), Q(1)), (Q(0), Q(1))]
assert maximal_corner_prune(box) is not None

r_big = Q(1, 2**14)
box_big = [(-r_big, r_big), (-r_big, r_big), (Q(0), Q(1)), (Q(0), Q(1))]
assert quartet_exclusion_prune(box_big) is not None
# This second certificate explicitly uses the retained F6 radius 1/30.
```

Binary floats are rejected. A positive answer requires the selected corner
to be maximal in an actual physical completion. A negative answer (`None`)
means no certificate from this predicate, not existence or nonexistence.

**Not claimed:** a global small-M cutoff, global strict-corner classification,
completion of the cluster cover, measured campaign savings, or no four MUBs.

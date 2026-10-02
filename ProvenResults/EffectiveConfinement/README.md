# EffectiveConfinement

An additive exact-arithmetic module for **Target A**, with quantitative consequences for the confinement part of **Target B**.

**Conditional theorem:** assuming only the accepted strict-corner coverage input among the reconstruction assumptions,

\[
0<M(H)<m\quad\Longrightarrow\quad
H\sim F_6\odot e^{iu},\qquad\max_{i,j}|u_{ij}|<1/3072,
\]

where

\[
K=181\cdot26\cdot76^{26},\qquad N=2K,\qquad m=2^{-N}.
\]

The phase radius is a **full dephased matrix radius in radians**, not a seed radius. It bounds normalized column-projector distance and hence enters the retained `1/30` quartet-free tube.

**The constant is extraordinarily small: `N` is approximately `7.50e52`. This is not a practical closure of the branch layer.** No production-width certificate for `(1,2,2,4)` is claimed.

## Results and files

`PROOF.md` contains the full application proof, every coefficient estimate, the two explicit uses of strict-corner coverage, and the exact statement of the published effective-minimum theorem used. Additional constants are

\[
c=m/16,\qquad \eta=2\sqrt m,\qquad \tau=m/2^{26}.
\]

Here `c` is the global quadratic constant; `eta` is a four-seed circular phase radius about the two active classes; `tau` is a four-seed circular phase exclusion radius about the four stationary classes. Both seed radii are in **radians**.

`verify.py` independently regenerates the finite algebra and arithmetic certificate. `predicate.py` supplies the campaign interface. `SOURCE_SHA256.json` records the archive hash and 16 identified repository inputs; `RECEIPT.json` records a successful replay including those 16 hashes. `INPUT_INTEGRITY_RECEIPT.json` records comparison of **all 64,212 original files** with the ZIP, with no modified or missing originals.

## Replay

Python **3.10 or newer**, standard library only:

```bash
python3 -B ProvenResults/EffectiveConfinement/verify.py
```

To audit the input hashes too, from the repository root:

```bash
python3 -B ProvenResults/EffectiveConfinement/verify.py \
  --repository . --output /tmp/effective_confinement_replay.json
```

The replay checks the complementary square identity, all 48 signed determinant coefficients, exact Cayley denominator-clearing factors, frequency and coefficient bounds, all 400 F6 positional corner assignments and six full frame orbits, all 1,296 sixth-root corner determinants, the seed-polynomial Lipschitz bound, the cutoff arithmetic, and API boundary/tampering controls.

It **does not** reprove strict-corner coverage, the published Jeronimo–Perrucci–Tsigaridas theorem, or the identified upstream local-inverse and tube proof packets. The analytic application is proved in `PROOF.md`; the dependencies are not hidden behind a `PASS` flag.

## Campaign interface

```python
from ProvenResults.EffectiveConfinement.predicate import certify_box

# seed_turn_intervals: four closed intervals with exact rational endpoints.
# outward_R_interval: an independently certified whole-box enclosure of R.
certificate = certify_box(seed_turn_intervals, outward_R_interval)
```

Each seed interval is supplied as `[lower, upper]` in **turns**, consistently unwrapped. Integer values, `fractions.Fraction`, and exact rational strings are accepted. A returned positive-cutoff certificate applies to **all physical completions whose displayed corner is strict and maximal**, on both sheets. It uses no H+ reconstruction.

The outcomes are:

- If `R_upper <= 0`: certificate of exclusion from strict physical D0, without accepted reconstruction inputs.
- If `0 < R_upper < m`: conditional quartet exclusion on strict physical D0.
- Otherwise: `None`.

The caller's outwardness and maximality premises remain essential. This function does not certify a sampled R value or establish that the box is in D0. Invalid or floating-point inputs raise an exception rather than producing a certificate.

### Exact representation of the tiny cutoff

Do **not** construct `Fraction(1, 2**N)`. The module represents a rational number as a finite rational mantissa times an exact integer power of two:

```python
from fractions import Fraction
from ProvenResults.EffectiveConfinement.predicate import N, ScaledRational, CUTOFF

half_cutoff = ScaledRational(Fraction(1), -N - 1)
assert half_cutoff.compare(CUTOFF) == -1
```

This example demonstrates number representation, not an R enclosure for a particular cell. JSON endpoints use the form

```json
{"mantissa": "1", "exponent2": "-123"}
```

and mean the exact rational `2^-123`. The real cutoff uses `-N`, not `-123`. Comparisons do not expand the enormous denominator.

## Scope and installation

The ZIP contains only `ProvenResults/EffectiveConfinement/`. It neither changes existing repository files nor registers a new prune in the live campaign. The exact replay takes about one second in the recorded environment; it is **not** a numerical global-cover computation.

The theorem supplies explicit positive constants where previously only compactness supplied existence. It does not establish a useful threshold near `1/100` or `1/1000`, prove Target C, or complete the no-four-MUBs campaign. Direct subdivision down to this m is not a sensible use of the offered cluster budget.

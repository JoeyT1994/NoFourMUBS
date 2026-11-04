# How many original balls does the radius-0.153 transfer cover?

**CERTIFIED audit of the sufficient test:** exactly one of the 2,775
original seed balls passes: **1879**. For the other 2,774, the triangle
criterion cannot pass with radius 153/1000 about any equivalent copy of
the supplied fourth-root centre. This is a limitation of that criterion;
it does not disprove Conjecture 1 on any ball, or rule out a sharper
containment argument.

The general transfer method applies to any ball with a certified C1
enclosure and an appropriate all-K classification neighbourhood. The
currently replayed all-K theorem supplies one particular neighbourhood.
The atlas's other centres are not automatically covered by its radius.

For example, using the matching native anchor, the distance bound is
0.120873737696 for ball 1879, but 0.178311028402 for ball 1881, whose
original radius is also 0.063. Ball 1864, of original radius 0.08, gives
0.228469831749. The target radius is 0.153.

## Why the audit covers every anchor alignment

Write G for dephasing: `(GX)[r,c]=X[r,c]-X[r,0]-X[0,c]+X[0,0]`.
Every entry functional of G has Euclidean norm at most 2. Every dephased
matrix monomially equivalent to the supplied H_* has fourth-root entries,
even with conjugation, because its cross ratios are fourth roots.
Consequently the dephased phases of any horizontal anchor Q_* lie on
the grid `(pi/2) Z`.

If `||P-Q_*|| < R`, then each entry of `G(P-Q_*)` has magnitude below
`2R`. For each dephased P entry, the checker proposes an integer k and
computes `e=GP-k*pi/2` in Arb. If

`2R < |e| < pi/2-2R`,

neither the proposed grid point nor any other grid point is within 2R.
This excludes every anchor for the triangle test. It settles 2,723 balls.

For each remaining ball the checker verifies `|e| < pi/2-2R` entrywise.
Any other integer has distance at least `pi/2-|e| > 2R`, so an anchor
within R must have exactly the proposed dephased phase lift. Horizontality
then forces `Q_*=hor(k*pi/2)`. This argument does not assume that rounding
found a nearest point, or even that the proposed fourth-root matrix is
equivalent to H_*: allowing all fourth-root matrices only weakens the
obstruction.

For this unique candidate the checker lower-bounds

`||P-Q_*|| + ||U|| r + n`

by using the Arb lower endpoints of the phase differences and
`||U|| >= max_j ||U[:,j]||`. For 51 further balls this lower bound is
strictly greater than 0.153. The sole remaining candidate is 1879,
whose exact anchor match and upper bound pass the existing transfer
checker. No arithmetic cases remain unresolved. All rejection decisions
are strict Arb comparisons; numerical rounding only proposes integers.

## Replay and scope

```sh
python proof/theorems/TC_triple_classification/seed_method/audit_r0153_extent.py \
  --output proof/theorems/TC_triple_classification/seed_method/results/r0153_extent.json.gz
```

The source-bound receipt records all 2,775 cases. It audits inclusion
conditions and uses the already certified native C1 enclosures; it does
not rerun or enlarge the local all-K theorem. Covering more original
balls requires additional all-K neighbourhoods along the known families,
a larger proved radius, or a sharper enclosure/containment argument.
Moving the centre of the existing theorem without proving its hypotheses
there would not be valid.

# Fourier-family corner seeds: T2 parametrisation completed

**Proved:** all Fourier-family corner seeds, including transposition and
equivalences, form an explicit union of **12 surfaces and 36 curves** in
the four seed angles. The curves have R identically zero. The closure of
the strict Fourier seeds is exactly the union of the twelve surfaces.

This supplies the parametrisation requested in T2 and an exact proximity
test for campaign cells. **The uniform exclusion radius remains open.**
No campaign prune is enabled by proximity alone.

## The short formula

Let ω=exp(2πi/3). The twelve surfaces are given by setting any one of

    (a,b), (a,c), (c,d), (b,d), (c/a,d/b), (b/a,d/c)

equal to `(ω,ω²)` or `(ω²,ω)`, with the other two phase freedoms arbitrary.
The 36 curves are the distinct images of

    E₁(z) = [[1,1,1],[1,ω,1],[1,z,−1]],   |z|=1,

under row/column permutations, re-dephasing and transposition. The
[machine-readable atlas](data/atlas.json) lists every piece and its
explicit parametrisation, equations and corner witness.

On the surface prototype `(a,b,c,d)=(ω,ω²,exp(ix),exp(iy))`,

    R = 576 sin²((2x−y)/2) sin²((2y−x)/2) sin²((x+y)/2).

The [proof](PROOF.md) also gives direct projector-distance bounds for
the Fourier family and its transpose, and a probability-transfer lemma
for a future tube certificate. These avoid the singular H₊ construction.

## Using the distance test

[atlas.py](atlas.py) takes seed angles in **turns**, θ/(2π), as exact
rationals. A campaign center that is a rational multiple of π can
therefore be handled exactly. Squared turn-distances are rational;
multiply by `(2π)²` for squared distances in radians.

From this directory:

    python3 atlas.py 1/3 0 1/7 1/2

This boundary-curve seed has distance zero to the full atlas, but squared
turn-distance 1/3528 to the twelve-surface union. The two sets must not be
silently interchanged.

Python interface:

```python
from fractions import Fraction as Q
from atlas import distance_squared_turns, classify_box

center = (Q(1,3), Q(2,3), Q(1,7), Q(2,7))
q, component_index, closest_seed = distance_squared_turns(center)
# q is exactly 0. The index is zero-based; the closest seed is in turns.

status = classify_box(center, [Q(1,1000)]*4, Q(1,100))
# 'inside': the entire closed box lies in this OPEN proximity tube.
# Other possible results: 'outside' or 'undecided'.
```

Pass `strict_closure=True` to either function to use only the twelve
surfaces. This is distance to the closure of strict **Fourier** corner
seeds, not to all strict Hadamard seeds. The routines use exact fractions;
no floating-point distance estimate participates in acceptance.

## Replay and scope

From the project root:

    python3 verify.py --only fourier_seed_atlas --jobs 1 --output-dir Verification/T2_seed_atlas_replay

Or run `python3 ProvenResults/FourierNeighbourhood/SeedAtlas/verify.py`.
SymPy is needed for the replay; the distance routines need only Python's
standard library. The replay takes about a second and checks:

- The exact physical Fourier-family identities and prototype witnesses.
- All 28,800 ordered corners and orientations, covering 3,038 distinct
  monomial maps, and the irredundant 48-piece atlas.
- The two R identities, exact distance witnesses and whole-cell bounds.
- The direct carrier-distance and probability-transfer identities.

The retained receipt
records the isolated replay. The analytic arguments supply the universal
distance and transfer statements.

No reconstruction input is required for these results. An atlas point
has a Fourier completion; it does not identify the completion chosen by
H₊. The proof gives an exact strict corner shared by inequivalent Tao
and Fourier completions to illustrate this distinction. This does not
refute T2: Tao is separately excluded from quartets.

The later [UniformTube result](../UniformTube/README.md) gives the explicit
matrix radius 2^(−2^590), far too small for campaign use. It also evaluates
H₊ at an exact atlas seed and proves d_Four>1/40, refuting unrestricted
seed lifting. That counterexample lies outside D₀; the restricted estimate
remains open.

[PracticalTube](../PracticalTube/README.md) now supplies the certified
whole-family radius 1/16384. [Exact D₀ atlas rigidity](../SeedLifting/ATLAS_RIGIDITY.md)
holds for 0<R≤20. Still needed for the combined T1′/T2 prune: a matching
quantitative seed-to-carrier estimate off the atlas and an explicit small-R
threshold m for that neighbourhood. The earlier 0.26-radian
obstruction concerned distance from **F6**, and gives no lower bound on
the transverse radius around the **whole family**.

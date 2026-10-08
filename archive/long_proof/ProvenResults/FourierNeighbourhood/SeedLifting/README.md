# Restricted seed lifting: exact D₀ atlas rigidity and stability reductions

**New theorem:** every physical completion of an exact Fourier-atlas seed
in D₀ with **0<R≤20** is equivalent to the Fourier family or its transpose.
See [ATLAS_RIGIDITY.md](ATLAS_RIGIDITY.md). Its proof combines an exact
six-corner identity, a 19-node rational Bernstein positivity certificate,
and the existing unconditional structural lemmas. No reconstruction inputs.
A conservative R-separated lift is proved below. Local control through R=0 is proved in
[R_ZERO_LIFT.md](R_ZERO_LIFT.md), [PRODUCTION_CUBE.md](PRODUCTION_CUBE.md) and
[NEAR_F6_CLOSURE.md](NEAR_F6_CLOSURE.md); a uniform whole-family lift through R=0 remains open.
Criterion with per-leaf Fourier references: [MOVING_REFERENCE.md](MOVING_REFERENCE.md).

[PROOF.md](PROOF.md) also establishes:

- An exact two-branch classification of horizontal side blocks at strict
  Fourier surface seeds, reducing branch selection to explicit two-parameter
  corner inequalities.
- A quantitative completion bound from the seed and both side blocks,
  valid across R=0 when the complementary Gram matrix stays positive.
- A whole-cell exclusion implication with explicit constants **conditional
  on certified matching of every surviving side choice** and the proved
  [matrix-tube certificate](../PracticalTube/PROOF.md).

A production-scale uniform D₀-restricted estimate through R=0 is still open.

**All F6 corner classes now covered:** [NEAR_F6_CLOSURE.md](NEAR_F6_CLOSURE.md)
adds the three missing classes, at half-widths 1/65536, 2⁻⁴² and 2⁻⁴⁶.
The new quantitative F3-block theorem and singular-corner rechart give
positive neighbourhoods even where the original complementary Gram is
singular. All 400 F6 corners have a uniform seed radius 2⁻⁴⁸, including
R=0. A uniform radius 2⁻⁴⁹ also works around every Fourier reference seed
with M≤2⁻⁹². These constants are much smaller than production width.
Apply `near_f6.certify_box`; replay `verify_near_f6.py`.

**Current small-R neighbourhoods:** [ZERO_NEIGHBOURHOOD.md](ZERO_NEIGHBOURHOOD.md)
proves a continuous radius-π/4096 tube along a genuine maximal Fourier
curve to δ=π/128, with R<1/2. Thirteen extension cubes and 740 boxes on
trimmed zero-atlas arcs pass at 96/160 bits; three further π/512 cubes
miss D₀. Apply `zero_neighbourhood.certify_box` (outward radians) or
`certify_rational_pi_box` (exact multiples of π). Gaps between the trimmed
arcs and the new F6 cubes remain.
[FOURIER_MAX_R.md](FOURIER_MAX_R.md) supplies the exact family maximum
and the analytic reference margin 1/30−π√M/144. This does not convert
an arbitrary seed-R bound into a quartet exclusion.
The constant 1/196608 in the proof is a three-block tolerance, not a
seed-only radius. No production prune is enabled by these lemmas alone.

Run `python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify.py`.

Replay the rigidity theorem with `python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/atlas_rigidity.py`.

[BRANCH_GAP.md](BRANCH_GAP.md) makes the alternative-side obstruction
quantitative: one mixed corner beats the leading corner by at least
`R |alpha^3−1|^2 / 282000`, for 0<R≤20. It also gives a uniform
perturbation bound, with the necessary side-matching hypothesis explicit.

[LINEAR_GAP.md](LINEAR_GAP.md) sharpens the averaged obstruction to
`max corner gap >= R ||S|^2−|T|^2|/10`. A second exact identity and a
13-node rational certificate give linear control under approximate
maximality and an explicit projection onto cubic-root alignment.

[CONSERVATIVE_LIFT.md](CONSERVATIVE_LIFT.md) now connects these results:
if 2r≤R≤19, 0<r≤1, and the atlas distance in radians is at most
`r^(17/6)/(2.4·10^18)`, a seed in D₀ enters the certified matrix tube.
The proof uses the accepted strict reconstruction inputs. Its whole-cell
criterion certifies a nonvacuous phase cube of half-width 10^(-19), but
these constants are **not practical for production cells**, and the
criterion requires a positive R lower bound. The campaign goal remains open.

[DIRECT_LIFT.md](DIRECT_LIFT.md) now removes the second path when a
certified corner gap forces the continued side onto B_F. It proves
`d_Four≤L ε` from seed distance alone, using the accepted strict
reconstruction inputs. A retained patch has **L<189**, transverse phase
half-width **2×10⁻⁷**, and both tangential half-widths **π/512**.
The outward routine [direct_lift.py](direct_lift.py) tries every corner
frame and covers all physical starting completions on D₀ within its
checked hypotheses. It still needs R>0 throughout the path. This is a
large improvement in transverse width, but not a full production cell
or a demonstrated reduction in the residual workload.

Replay: `python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_direct_lift.py`.

**A proved limitation on the desired constants:**
[SMALL_R_OBSTRUCTION.md](SMALL_R_OBSTRUCTION.md) gives a carrier with
maximal R<1/200 but d_Four>1/16000. Thus even on D₀∩F the current
1/16384 matrix tube cannot cover all R<1/200. A second carrier has
maximal R<18 and d_Four>1/300. An m=20 proximity theorem therefore needs
a substantially larger excluded matrix region. The proof uses accepted
reconstruction inputs and certifies every one of the 400 corners and
400 minors per example; it does not suggest a quartet or invalidate
the additional seed-proximity hypothesis in the lifting theorems.

Replay: `python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/small_R_obstruction.py`.

[FOURIER_SIDE_COMPLETION.md](FOURIER_SIDE_COMPLETION.md) proves a stronger
unconditional endpoint statement: at a strict E₂(z,w) seed, the B_F side
fixes the full carrier as N(z,w), up to the remaining row phases and
permutations. This identifies the family parameters for applying local
tube radii after DirectLift, without another completion search.

A new [F6-only matrix tube](../ClusterTube/README.md) has radius **1/36**.
The local seed lift below now enters that tube. It is not a replacement
for the uniform family radius 1/16384.

[R_ZERO_LIFT.md](R_ZERO_LIFT.md) now supplies a **seed-only rule through
R=0**: within maximum-coordinate phase distance 1/2048 of
(4π/3,5π/3,0,π), every maximal physical carrier has normalized Frobenius
distance <1/40 to the F6 orbit and enters its 1/36 exclusion tube.
Complete side covers certify all matchings, without reconstruction
inputs. The cube contains both signs of R and strict D₀∩F points.
This is local to one F6 seed orbit; whole-family lifting and production
width remain open. Replay `verify_rzero_lift.py`; apply the standalone
whole-cell containment test in `rzero_lift.py`.

[MATCHED_COVER_LIFT.md](MATCHED_COVER_LIFT.md) enlarges the first R=0 cube
to half-width **1/512**, using a complete 255-leaf seed partition. It also
certifies two additional F6 seed classes at half-widths 1/1024 and 1/2048.
The [new completion lemma](COLUMN_COMPLETION.md) bounds individual columns
and rows, avoiding the larger whole-matrix Frobenius bound. Both distances
enter the 1/36 F6 tube. Full covers replay at 96 and 160 bits; no unresolved
leaf remains. Apply `side_cover_lift.certify_known_cubes` or replay
`verify_side_cover_lift.py`. The largest cube is still π times smaller
than production half-width and does not cover the whole Fourier family.

[REGIONAL_SEED_LIFT.md](REGIONAL_SEED_LIFT.md) proves a new full seed cube
away from F6: half-width **1/10000** at `(π/180)(120,−53,−120,−120)`.
On D₀ its carrier distance is **<1/50**, inside a proved **1/48 regional
tube**. The whole cube has **8<R<9**, and exact cyclotomic checks of all
400 corners prove that its centre is maximal and not equivalent to F6.
The proof covers all physical completions, without reconstruction
assumptions. `family_side_lift.certify_box` uses any suitable explicit
reference inside the retained regional matrix boxes; `certify_known_patch`
applies the fixed patch in all 72 corner frames. Production width remains
unresolved. Replay `verify_family_side_lift.py`.

[RESIDUAL_LIFT.md](RESIDUAL_LIFT.md) improves the completion estimate by
evaluating the orthogonality error vectors before taking their norms. A
fixed reference inverse gives `||ΔD_j||≤s_j/(1−η)`, uniformly over all
retained side triples. The non-F6 patch now has half-width **1/2000**,
with **8<R<9** and carrier distance **<1/50**, inside its 1/48 tube.
Replay `verify_residual_lift.py`; apply `residual_lift.certify_family`.
Its F6 wrapper uses the new **1/30** local matrix tube. Neither result
closes production-width or uniform whole-family seed lifting.

[PRODUCTION_CUBE.md](PRODUCTION_CUBE.md) now reaches **production
half-width π/512** at `(4π/3,5π/3,0,π)`: a complete 227-leaf partition
has 207 lifting leaves and 20 D₀ exclusions. All pass at 96 and 160 bits,
with no positive R lower bound. The entire seed cube has R<1/5 and
contains genuine positive-R D₀ points. Every physical maximal completion,
including at R=0, is excluded. Apply `production_seed_lift.certify_box`
for Arb inputs in radians or `certify_rational_pi_box` for exact multiples
of π; both support 72 frames. Full replay: `verify_production_cube.py`.
The proof does not cover arbitrary shifted work cells or all R<1/5,
and does not settle uniform Fourier-family lifting or T1′.

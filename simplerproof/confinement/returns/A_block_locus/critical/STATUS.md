# Status

## Fully proved

1. The improved gauge inequality in `RESULT.md`, including the exact implication `d_F <= 0.0914 => nu < 0.55` and the larger permitted radius `sqrt(2889359/345600000)`.
2. Finiteness, attainment, and global continuity of the horizontal phase distance, with a Lipschitz estimate and an explicit lattice formulation.
3. The local-minimum reformulation using compact minimization on `{nu >= 0.55}`, conditional only on the supplied certified local lemma F4.
4. Exact permanent/determinant identities, factor-two bounds for complementary minors, and the row-triple permanent sum rule 72 (the last uses F8).
5. A precise nonsmooth descent criterion valid for differentiable feasible families without a smoothness assumption on the Hadamard moduli space.

## Certified finite computations

The scripts replay elementary exact identities and rational terminal comparisons. Arb is used only to certify explicitly labeled decimal evaluations. There is no global parameter cover and no certified classification of global local minima.

## Numerical evidence only

No new sampling result is used in any proof. The scoped observations about numerical code do not turn its upper-bound searches into lower bounds on the distance to the Fourier orbit.

## Remaining gap

We have not proved that every Hadamard with `M < 26` enters the projector/phase tube, and have not excluded every possible local minimum outside that tube. An exhaustive global descent/terminal cover, a suitable near-Fourier-block theorem, or another genuinely global quantitative argument is still necessary.

# Conditional X-ball all-K criterion

**PROVED, conditional on the cited analytic dependencies:** if this
checker closes every complete-cover pattern, every completing K on its
entire represented domain has Conjecture 1 type. This is a sufficient
test, not a claim that the original X-ball passes it. The original
F6-012 frame and radius `0x1.0a3d70a3d70a4p-3` remain the source domain.

The whole-ball phase model is freshly replayed by `edge_wholeball.edge_model`
through `edgecert.certify_edge_wholeball`. Its augmented 22-coordinate
normal system includes the signed side-signature equation and the linear
right side `Rhs*w`. The analytic chart germ and continuation argument are
the dependencies in ZT's `edge/EDGE_REPORT.md`, Sections 2-3. The report's
older numerical radius 0.115 is not reused: the code rechecks every bound
at the original current atlas radius 0.13. C1e identifies the stored phase
lift and the original F6-012 chart.

The resulting model has exactly the form used in the frozen native proof:

\[
Q(w)=Q_0+Uw+\tfrac12H_2[w,w]+Xz(w),\qquad
\|w\|\le r,\quad\|z(w)\|\le\tau.
\]

All arguments of `../family_neighbourhoods/PROOF.md` use X through linear
maps, their certified norms, and the bound on z. They apply with 22 normal
coordinates. `coupled.py` is the frozen coupled contractor with its sole
hard-coded 21-column slice replaced by `range(model['X'].ncols())`.
No normal coordinate is discarded. `pipeline.py` preserves the frozen
pattern-dispatch function and substitutes this dimension-safe contractor.
The remaining helpers are imported without changing their sources.

`model.stage_c_preconditions` checks the new call-site magnitude hypotheses
of `proof/atlas/RIGOUR.md`: a 36-by-4 finite tangent frame with entries of
modulus at most one, all supplied radii and normal bounds below one, and
the Arb-derived centre operator norm strictly below 1.01. At the coarsest
bin resolution M=12, a=1/24, X=sqrt(29/6)/24, and L,I<=5/24 are below
one; subsequent bins are smaller. The unchanged clustering routine
enforces radii below 0.1. Normalized support directions and finite-sum
dimensions are those of the unchanged Stage C implementation. Fine-bin
batching changes which edges are evaluated together, not the arithmetic
expression or number of summands for one comparison. Thus the inherited
explicit 1e-7 conservative margin applies when these preconditions pass.
No Stage C result is used as a certificate if these input checks fail.
This remains a dependence on the Stage C analytic rounding proof, not an
independent Arb re-evaluation of every rejected bin or edge.

The complete torus cover, independent color splitting, conditional column
contractions, scalar exclusions, exact moving-equation projectors and
strict symmetry-forcing test are the native proof. Recognition is
`../seed_method/reference/r0153/CHECKPOINT.md` Section 8, including its
Section 6 amplitude argument. A numerical root, fit, or candidate action
has only proposal status. Every whole-domain claim must account for all
remaining patterns; caps, missing proposals, and failed inequalities
yield `NOT ESTABLISHED`.

**NOT ESTABLISHED by this criterion alone:** a quantitative classification
at crossing triples where no single anchor classifies an entire
neighborhood, an explicit inner-core radius, or a complete shell/core
cover with every piece classified. A qualitative local germ cannot be
substituted for a positive certified radius.

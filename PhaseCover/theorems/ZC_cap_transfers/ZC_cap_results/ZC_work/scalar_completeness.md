# Qualitative completeness of shrinking scalar-multiplier caps

**PROVED, with no useful cap-count estimate.** Although the two-scalar
S-procedure is not lossless for a fixed cap, its bound becomes arbitrarily
tight as a cap shrinks to a point. This explains why the simpler implemented
search has no intrinsic infinitesimal obstruction.

Let `||e||=1`, `a=d+Fe`, and `q(x)=||d+Fx||²`. Choose `eta>0`,
`k>(1+1/eta)||F||²`, and `epsilon>0`. In the scalar certificate take

\[
\lambda=k,\qquad \mu=2k,\qquad
s=(1+\eta)\|a\|^2+2k(1-t)+\epsilon.
\]

Then the global witness polynomial equals

\[
s-q(x)-\lambda(1-\|x\|^2)-\mu(e^Tx-t)
=(1+\eta)\|a\|^2+k\|x-e\|^2
 -\|a+F(x-e)\|^2+\epsilon.
\]

Young's inequality bounds the squared norm by
`(1+eta)||a||²+(1+1/eta)||F||²||x-e||²`. The strict choice of `k`
and positive `epsilon` make the associated homogeneous five-by-five matrix
positive definite: after the invertible change of homogeneous coordinates
`(x,z) -> (x-e z,z)`, it dominates a positive multiple of `||x-e z||²`
plus `epsilon*z²`.

For `t` tending to one, choose `eta=sqrt(1-t)`,
`k=(1+1/eta)||F||²+1`, and `epsilon=1-t`. The proposed `s` tends to
`||d+Fe||²`. A true-centre Taylor model has target and orientation errors
tending to zero at the same point. Consequently any strictly valid transfer
at that point is accepted on a sufficiently small cap by some scalar
witness. The model coefficients remain bounded on a fixed smooth source
ball; when anchors vary, the same estimates apply to their continuous limits.

If a finite family of strict transfers covers every point of a compact
source sphere and its required source model is certified, these locally
accepted caps have a finite subcover. Rational perturbations and small
shrinking can preserve strict transfer and robust coverage margins, and
generic perturbations can make the polar hull simplicial. This is a
qualitative existence statement. It does not supply a small uniform cap
count, a termination bound for the implemented greedy search, or certificates
for any of the source-model failures.

This assertion concerns the exact certificate family with arbitrarily
precise rational witnesses and interval arithmetic. The delivered search
uses binary64 proposals and the recorded replays use 224-bit Arb by
default. No universal termination claim for that fixed numerical search
or a fixed precision follows from the mathematical existence theorem.

# Missing quantitative core theorem and proposed proof

**NOT ESTABLISHED.** This is a statement to be proved, not a certificate
accepted by the X-ball driver. A positive core radius does not follow
merely from the qualitative germ theorem in the supplied reference.

## Required statement

Supply an explicit positive binary rational delta, in the original
F6-012 w coordinates, such that for every ||w|| <= delta and every
completing K, the triple (I,H(Mth*w),K) is of Conjecture 1 type. An
initial engineering target is delta=r/4, approximately 0.0325, where r
is the original radius approximately 0.13. This target is not proved.
For a smaller proved delta, regenerate the exact shell-cover accounting.

The full-radius complete cover leaves sixteen color patterns. Twelve
already satisfy the strict symmetry test. At the four unresolved
patterns' numerical centre bases, two have dephased Jacobian rank 55
and two rank 51. These ranks and identifications are **NUMERICAL
diagnostics** until exact equivalence/rank witnesses are supplied. The
rank-55 centres are candidates for isolated product triples; the rank-51
centres are candidates for two-family crossings.

## Proof plan

1. Replay a complete all-K cover on the proposed core. Locate every
   surviving full-basis pattern in a certified neighborhood of an exact
   centre triple. A numerical list of 48 proposed rays and 16 bases is
   insufficient for completeness. The all-K cover must supply that step.
2. For regular and product patterns, use the existing strict moving
   symmetry test or a quantitative full-rank isolation test at an exact
   product triple. Check the positive neighborhood radius and every
   equivalence transform with a common ambient gauge.
3. At a crossing, select 51 exact independent residual equations and
   certify a transverse inverse. Prove a uniform implicit-function tube
   over four kernel coordinates on an explicit box. This must replace
   the unspecified implicit-function neighborhood in the prior proof.
4. Construct both actual symmetric solution surfaces in that tube.
   Prove quantitative bounds for an analytic coordinate map carrying
   them to the two coordinate planes, including inverse and domain
   inclusion bounds. The tangent-cone ideal `(ac,ad,bc,bd)` alone is not
   sufficient to exclude additional branches.
5. In these coordinates factor four remaining residuals into
   `A(a,b,c,d)*(ac,ad,bc,bd)`. Their vanishing on the actual surfaces
   provides the qualitative factorization. Certify that A stays
   invertible on an explicit neighborhood using an interval bound
   around its exact invertible centre value. This excludes higher-order
   branches and places every zero on one of the two actual surfaces.
6. Include the entire core K-pattern enclosure in the certified
   neighborhoods. Combine the complete disjunction, not merely the
   neighborhoods of numerically fitted points.

The supplied prior theorem proves the qualitative germ is the union of
two analytic surfaces and proves exact product isolation. It does not
give the radius, uniform inverse bounds, or all-K inclusion needed here.
None of these missing quantitative assertions is used for acceptance.

## Source reference

The qualitative proof is in the supplied
`TC_local_completeness_R0153_handoff_2026-10-27.zip`, under
`research/conjecture1_uniform_family_2026_10_11/inputs/transverse/prior_local/CHECKPOINT.md`,
Sections 4-5 and 7. General recognition and transverse results are in
`../seed_method/reference/r0153/CHECKPOINT.md` in the repository.

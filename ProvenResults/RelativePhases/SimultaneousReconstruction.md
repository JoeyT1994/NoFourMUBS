# Simultaneous reconstruction retains relative phases

Let F(x)=H_+(a,b,c,d) be the canonical raw Hadamard, x in T^4, R(x)>0.
For a triple whose nonstandard bases have non-F6, non-Tao carrier classes,
one can choose a common ambient frame and write, up to irrelevant right
column monomials,

    H=F(x),  K=D P F(y),  D=diag(1,z1,...,z5),  |z_i|=1.

Here P is a finite row permutation. This follows by applying the accepted
class covering to each carrier and keeping the relative left monomial.
The overall phase of K sets the first diagonal phase to one. Independently
discarding those relative phases is invalid.

With L=H†K/sqrt(6), the exact remaining condition is |L_ij|²=1.
Because L†L=6I already, any five-by-five block of these equations implies
the other eleven by row and column norm sums. Thus 25 real equalities suffice.

This has eight seed angles, five relative phases, and finite permutations.
It does not prove eight continuous coordinates plus finitely many phase choices.
The [kernel criterion](RelativePhaseCompatibility.md) eliminates the phases
into an equivalent physical matrix problem without assuming finite fibers.

The same bookkeeping applies to more bases: one chosen carrier fixes the
common frame; each subsequent carrier retains its relative left monomial.
All pairwise transitions must be unbiased. F6 and Tao classes require their
explicit exceptional handling; their known extension exclusions are listed
in the root research brief.

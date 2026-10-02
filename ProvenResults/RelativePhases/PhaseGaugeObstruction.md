# No nontrivial affine phase orbit of a common-unbiased ray in dimension six

**Exact result, valid for every complex Hadamard of order six.** Let
`H H† = 6I`, with every entry of `H` of modulus one. Suppose `x` has six
unit-modulus entries and, on a nonempty open real interval,

\[
\left|\left(H^\dagger
 \operatorname{diag}(e^{i\lambda_0t},\ldots,e^{i\lambda_5t})x
 \right)_j\right|=\sqrt6\qquad(0\le j<6),
\]

where the frequencies `lambda_r` are arbitrary real numbers. Then all six
frequencies are equal. The orbit is only the global phase of one ray.
There is no strict-corner, Karlsson, anchor, or third-basis hypothesis.

Consequently fixed Hadamards `H,K0` cannot satisfy

\[
|H^\dagger D(t)K_0|^2=6\mathbf1
\]

along a non-scalar diagonal one-parameter subgroup. Applying the theorem
to any single column of `K0` suffices. Arbitrary *curved* phase paths are
not excluded by this result, and finiteness of all compatible gauges does
not follow.

## A three-coordinate support gap

Let `z` have exactly three nonzero coordinates, all of modulus one.
If `H†z` has at least three zero coordinates, then it has **exactly four
zeros** and its two nonzero coordinates have modulus `3`.

To prove this, absorb the three input phases into columns of `H†`, and
choose three of the zero output coordinates. In the resulting block of
three columns, write the six rows as two three-by-three matrices `A,C`,
with

\[
C\mathbf1=0,\qquad A^\dagger A+C^\dagger C=6I_3.
\]

Every row of `C` is a phase multiple of one of

\[
f_1=(1,\omega,\omega^2),\qquad
f_2=(1,\omega^2,\omega),\qquad \omega=e^{2\pi i/3}.
\]

This is the elementary equilateral-triangle characterization of three
unit complex numbers summing to zero. If the two row types occur `n` and
`3−n` times, the eigenvalues of `C†C` are `0,3n,3(3−n)`. Since `6I−C†C`
is positive semidefinite, `n` is `1` or `2`.

The Fourier vector on which `C†C` has eigenvalue `6` is therefore killed
by `A`. Applying the same three-term zero-sum characterization to each
row of `A` shows that each row is a phase times either the constant
character or one nonconstant character. The eigenvalues of `A†A` force
exactly two constant rows and one nonconstant row. Thus the moduli of
`A 1` are `(3,3,0)`, up to permutation. Together with the selected three
zeros this proves the support gap. Row phases and repeated entries cause
no exceptions.

## From the support gap to the phase-orbit theorem

Group equal frequencies into nonempty coordinate sets `S_g`. For each
output coordinate the transform is a finite exponential sum

\[
p_j(t)=\sum_g a_{jg}e^{i\mu_gt},\qquad
 a_{jg}=\sum_{r\in S_g}\overline H_{rj}x_r.
\]

A finite exponential sum with distinct real frequencies has constant,
nonzero modulus on an interval only if exactly one coefficient is
nonzero. Indeed, in `|p_j(t)|²` the difference between the largest and
smallest frequencies with nonzero coefficients occurs exactly once, so
its nonzero coefficient cannot cancel. Finite real exponentials are
linearly independent on an interval. This argument needs no rationality
or commensurability of the frequencies.

Consequently the vectors `H†(x 1_{S_g})` have disjoint output supports,
and every nonzero entry has modulus `sqrt(6)`. Norm conservation gives

\[
|\operatorname{supp}H^\dagger(x\mathbf1_{S_g})|=|S_g|.
\]

The triangle inequality also gives `|S_g| >= sqrt(6)`, hence each
nonempty group has at least three coordinates. If there is more than one
group, there are exactly two, each of size three. Each would then have
exactly three nonzero transform entries, all of modulus `sqrt(6)`;
this contradicts the three-coordinate support gap. Only one frequency
group is possible.

The same argument rules out an arbitrary continuous diagonal path with
only two phase levels whose relative phase is nonconstant: constancy of
`|a z(t)+b w(t)|` on a relative-phase arc again forces `a bar(b)=0`.

## Verification and precise limit

`PhaseGaugeObstruction.py` verifies the finite Fourier-character algebra
and all multiplicity cases exactly, and checks a Fourier-six example
attaining the two-entry support pattern. The proof above supplies the
exhaustiveness argument.

This excludes a natural class of exact continuous constructions; it does
**not** prove that the common-unbiased ray set of an arbitrary fixed
six-dimensional Hadamard is finite. A nonlinear curve in the phase torus
could have no affine phase segment. Nor does this resolve finiteness of
all diagonal gauge solutions for a fixed pair of Hadamard classes.

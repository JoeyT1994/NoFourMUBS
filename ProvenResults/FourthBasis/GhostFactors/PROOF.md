# Ghost barrier, physical-preserving ghost factors and the pair inequality

> Imported 26 September 2026 from the archived
> `KarlssonAndMeasurements/Karlsson/LowDegreeElimination.md` (21 September
> 2026). The imported parts are Section 1 up to its Karlsson-partner
> subsection, Section 2 and Section 3, unchanged except for links and one
> sentence of archive navigation. The partner subsection is omitted because it
> relies on Karlsson's fixed-block reduction and an archived fixed-X proof.
> Section 4 (the total-degree bound ≥29) is omitted because it depends on
> compatible surfaces obtained with an accepted external third-basis input.
> See [README.md](README.md).

The ghost statements (Sections 2–3) hold for every raw order-six Hadamard.
Section 1 uses the current mixed coordinates of the reconstruction, restricted
to the strict `a=-1` section as in
[FIXED_OBSERVABLE.md](../FourPlusOne/FIXED_OBSERVABLE.md).

## 1. Remove the third ray from the necessary test

Use the current mixed coordinates

\[
v_j=(x_j,y_j),\qquad H^\dagger v_j/\sqrt6=(p_j,q_j),
\qquad x_j=(1,s_j,t_j),\quad x_j,p_j\in\mathbb T^3.
\]

If three such rays are pairwise orthogonal, some pair satisfies

\[
\boxed{s_i+s_j\ne0.}
\tag{1}
\]

Indeed, the three sums cannot all vanish: subtracting the third from the first
two gives `2s_1=0`. There is also a uniform physical margin:

\[
\sum_{i<j}|s_i+s_j|^2=3+|s_1+s_2+s_3|^2\ge3.
\]

Thus a pair can be chosen with `|s_i+s_j| >= 1`. Relabel that pair as rays 1,2.
Every compatible triple therefore supplies a solution of

\[
\boxed{\text{two current common-ray systems},\quad
O_{12}=0,\quad s_1+s_2\ne0.}
\tag{2}
\]

This has **10 ray phases and 12 real equations**, instead of 15 phases and 21
equations. There is one common sheet equation as before. For algebraic work,
the inequality is enforced by one auxiliary equation

\[
u(s_1+s_2)-1=0.
\]

The [pair-system builder](pair_system.py) implements
exactly this necessary relaxation. It calls the existing symbolic equations,
including both real orthogonality equations. The optional physical inequality
`|s_1+s_2|^2 >= 1` is stronger and still retains a pair from every triple.

**The converse is not proved:** such a pair need not have a third common ray.
This is a smaller target for a necessary seed restriction, not an exhaustion
of three-ray compatibility.

## 2. Orthogonality alone does not remove the nonphysical algebraic solutions

This obstruction is independent of the parametrization and holds for every
raw `6 x 6` Hadamard, not only the Karlsson section.

Fix a column `h` of `H`, and choose

\[
\rho=-2\pm\sqrt3,\qquad \rho+\rho^{-1}=-4.
\]

For each coordinate `i`, let `v^(i)` equal `h` except that its ith entry is
multiplied by `rho`. Dephase afterwards if desired. In the complexified
Laurent equations, the conjugate of a ray coordinate is represented by its
reciprocal; it is not its actual complex conjugate at a nonphysical point.

The common-unbiased equations for these vectors hold identically. For the
selected reference column their left-hand product is

\[
(5+\rho)(5+\rho^{-1})=6;
\]

for each other reference column it is

\[
(\rho-1)(\rho^{-1}-1)=6.
\]

For **every two distinct modified coordinates**, in either order,

\[
\sum_{r=0}^5\frac{v^{(i)}_r}{v^{(j)}_r}
=4+\rho+\rho^{-1}=0.
\tag{3}
\]

Thus there are six pairwise formally orthogonal ghost rays, and in particular
a ghost triple, over every carrier. This strengthens the earlier project warning, which already listed the
72 single-ray ghosts.
The identity (3) shows explicitly why adding all triple orthogonality equations
does not cure the problem. The linear guard in (1) also leaves some ghost
pairs: choose two modified coordinates outside the first two rows.

**Consequence.** No nonzero seed polynomial can be obtained as an equality-only
consequence of the unsaturated ray equations, at any degree. Every strict
physical seed has such complex solutions, so an alleged seed-only consequence
would vanish on the entire open seed domain and hence be the zero polynomial.
This does not contradict the accepted restriction on physical rays: ghosts
have nonunit coordinate ratios. It says that a raw resultant or a larger
unsaturated Macaulay search is the wrong calculation.

This is also an issue for real-coordinate equations if they are subsequently
eliminated over the complex numbers. Real positivity or suitable removal of
nonphysical components is still necessary.

## 3. Explicit quadratic factors remove all these ghosts

For a raw ray `v`, let `w=H^dagger v/sqrt(6)`. Define 36 quadratic factors

\[
\boxed{D_{ij}=18v_iw_j+\sqrt6\bigl(H_{ij}w_j^2+H_{ij}^{-1}v_i^2\bigr).}
\tag{4}
\]

On a physical common ray, `z=H_ij w_j/v_i` is a unit phase, and

\[
\frac{D_{ij}}{v_iw_j}
=18+\sqrt6(z+z^{-1})
=18-2\sqrt6+\sqrt6|1+z|^2
\ge18-2\sqrt6>0.
\tag{5}
\]

None of these factors can vanish physically, uniformly over every carrier.
At a ghost obtained by modifying coordinate `i` of column `j`, however,

\[
18+(5+\rho)/\rho+\rho(5+\rho^{-1})=0,
\]

so `D_ij=0`. Requiring all factors in (4) to be nonzero removes every standard
ghost and loses **no physical ray or seed**. It may remove other nonphysical
points too; no claim of removing exactly 72 points is needed.

One can retain the factors separately using `u_ij D_ij-1=0`, or saturate by
their product. For the two-ray search this is 36 factors per ray. Their
individual degree is two; expanding their product would have degree 72 per
ray and is not an attractive computational step.

Formula (4) uses `H` and the raw rays explicitly recovered from the current
construction. The helper function computes the factors. Their fully expanded
expression solely in the shared-sheet coefficients has **not** been produced.
This is an exact physical-preserving modification of the search, not yet a
demonstrated fast elimination algorithm.


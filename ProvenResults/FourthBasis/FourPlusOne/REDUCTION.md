# The 4+1 problem in the current reconstruction

**Proved here:** the reductions below, the second-moment barrier, and the
standard-ghost gap. **Not proved:** 4+1 emptiness, a new seed-only restriction,
or a classification of the four-ray carriers.

## 1. Fix the overlap phases globally

Use raw phase vectors and `U=H/sqrt(6)`. Write the four outer rays as
`v_1,...,v_4` and the lone ray as `w`. The target is

\[
 |v_{ir}|=|(U^\dagger v_i)_r|=|w_r|=|(U^\dagger w)_r|=1,
 \quad v_i^\dagger v_j=6\delta_{ij},
 \quad |v_i^\dagger w|^2=6.
\]

Dephase `w_0=1`. Replace each `v_i` by
`(v_i^dagger w)/sqrt(6)` times itself. Then

\[
 v_i^\dagger w=\sqrt6.
\]

Every overlap is nonzero, so this fixes phases globally without a branch or
additional guard. The four outer rays are now **not individually dephased**.
For `A=[v_1 v_2 v_3 v_4 w]`, the entire target Gram matrix is the constant

\[
 \Gamma=A^\dagger A=
 \begin{pmatrix}6I_4&\sqrt6\mathbf1\\\sqrt6\mathbf1^T&6\end{pmatrix},
 \qquad
 \Gamma^{-1}=
 \begin{pmatrix}I_4/6+\mathbf1\mathbf1^T/12&-\mathbf1/(2\sqrt6)\\
 -\mathbf1^T/(2\sqrt6)&1/2\end{pmatrix}.
\]

Its determinant is `2*6^4>0`. The five rays are linearly independent. This
does not assume that the four outer rays complete to a third basis.

In our mixed coordinates `x=v[:3]`, `p=(U^dagger v)[:3]`, each outer ray has
six phases and the lone ray has five. On strict `a=-1`, the original
25-phase/41-equation formulation becomes **29 phases and 45 real equations**:
25 common-ray equations, 12 orthogonality equations, and 8 aligned overlap
equations. All 45 are quadratic in the ray variables and their conjugates.
The seed coefficients and the common sheet scalar remain those already used
in the reconstruction. This is a degree reduction, not a dimension reduction.

## 2. All five-ray Gram conditions become one rank-one defect

Let the current seed corner be

\[
 E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
 \qquad H=\begin{pmatrix}E&B\\C&D_H\end{pmatrix}.
\]

Stack the mixed coordinates of all five rays into the phase matrix

\[
 W=\binom{X}{P}\in\mathbb C^{6\times5},\qquad
 K_E=\begin{pmatrix}I_3&E/\sqrt6\\E^\dagger/\sqrt6&I_3\end{pmatrix}.
\]

On the existing strict domain, `T=6I-E^dagger E` is positive definite,
`g=det(T)>0`, and `det(K_E)=g/216>0`. Define

\[
 \boxed{\mathcal D=K_E-W\Gamma^{-1}W^\dagger.}
\]

**Theorem.** Recover the five rays from `W` using the current reconstruction.
Then their Gram matrix is `Gamma` if and only if

\[
 \boxed{\operatorname{rank}\mathcal D=1.}
\]

For physical conjugates this rank-one defect is automatically positive
semidefinite. Its entries are quadratic in the ray phases, linear in the
entries of `E`, and independent of all completion radicals and the sheet.
There is no variable matrix inverse in the working formula: `Gamma^-1` is
the displayed constant matrix.

**Proof.** The invertible linear map from a raw ray to its mixed coordinates is

\[
 L=\begin{pmatrix}I_3&0\\E^\dagger/\sqrt6&C^\dagger/\sqrt6\end{pmatrix},
 \qquad LL^\dagger=K_E,\qquad W=LA.
\]

Invertibility follows from `C^dagger C=T>0`. Taking the two Schur complements
of the block matrix with diagonal blocks `K_E,Gamma` and off-diagonal block
`W` gives

\[
 5+\operatorname{rank}\mathcal D
 =6+\operatorname{rank}(\Gamma-W^\dagger K_E^{-1}W).
\]

Since `W^dagger K_E^-1 W=A^dagger A`, rank one is equivalent to the required
Gram equality. When it holds,
`Dcal=L(I-A Gamma^-1 A^dagger)L^dagger` is the image of a rank-one orthogonal
projector, proving positivity. The inverse in this proof need not be used in
the equations. QED.

The theorem holds for **all four seeds on `R>0`, on either sheet**. It does not
depend on a Karlsson identification or an antiunitary symmetry.

## 3. What remains after the Gram reduction

The phase entries of `W` already enforce flatness in the first three input
and output coordinates. The Gram matrix supplies all five ray norms.
On strict `a=-1`, only these **20 real equations** remain:

\[
 \sum_{r=0}^2 (C^\dagger)_{1r}(|y_{jr}|^2-1)=0,
 \qquad
 \sum_{r=0}^2 B_{1r}(|q_{jr}|^2-1)=0
 \quad(j=1,\ldots,5),
\]

where `v_j=(x_j,y_j)` and `U^dagger v_j=(p_j,q_j)`; each displayed equation
is complex. The three coefficients in each side are noncollinear on the
strict `a=-1` section, as proved in the fixed-observable lemma,
[FIXED_OBSERVABLE.md](FIXED_OBSERVABLE.md) §4.
Together with the norm, their real and imaginary parts force each of the
three omitted squared moduli to be one. Hence

\[
 \text{4+1}\quad\Longleftrightarrow\quad
 W\text{ has phase entries},\quad\operatorname{rank}\mathcal D=1,
 \quad\text{these 20 real moments vanish}.
\]

`targets.py` evaluates these moments through the existing seed-only
`N0+tau*N1` coefficients, without reconstructing `B,C` or using new guards.
Their cleared denominators are nonzero on the existing strict domain.
Both `tau=+sqrt(R)` and `tau=-sqrt(R)` are retained. For general four seeds,
one may retain both fixed row moments on each side (40 real equations);
the reduction to 20 uses the strict `a=-1` section.

**The rank-one condition alone is not a replacement for these moments.** A
diagnostic at the exact seed `(-1,omega,-omega,omega^2)`, `R=27`, solves the
Gram relaxation to a normalized residual below `2e-11` while the missing
flatness equations have squared-modulus error above `1.5`. This is numerical
evidence of a permissive relaxation, not a physical 4+1 solution or an
exact feasibility certificate.

Two compact consequences are worth keeping. If a row of `W` is
`(u_1,u_2,u_3,u_4,z)`, then

\[
 \mathcal D_{rr}=\frac{4-|u_1+u_2+u_3+u_4-\sqrt6z|^2}{12}\ge0.
\]

Thus the numerator gives six necessary disk inequalities. Also put
`M=W Gamma^-1 W^dagger`. On `a=-1`, one cross-block rank-one minor is

\[
 \boxed{M_{03}M_{14}-M_{04}M_{13}
 +\frac{M_{03}+M_{04}+M_{13}-M_{14}}{\sqrt6}-\frac13=0.}
\]

Indices here start at zero. This fourth-degree relation has no seed or
sheet coefficients. It is a necessary identity, not an exclusion.

## 4. Why second moments cannot prove emptiness

**Theorem.** For every fixed unitary carrier `H/sqrt(6)`, the degree-two
moment relaxation of the aligned 4+1 equations is feasible. Fixing the
lone ray's first entry to one does not change this fact.

**Proof.** Temporarily treat the entries of the raw frame `A` as random
complex variables. Prescribe their Hermitian second moments by

\[
 \mathbb E[A_i A_j^\dagger]=\frac{\Gamma_{ij}}6 I_6.
\]

This covariance is positive definite because `Gamma>0`. Each coordinate
has expected squared modulus one; the same holds after applying any unitary
`U^dagger`. Moreover `E[A^dagger A]=Gamma`. Thus every flatness, norm,
orthogonality and aligned-overlap equation has expectation zero.

The dephasing can also be imposed. In column order let
`C0=(Gamma/6) tensor I_6`, let `e` select the lone ray's first coordinate,
and set `m=C0 e`. Take a complex Gaussian with mean `m` and covariance
`C0-mm^dagger`. The latter is positive semidefinite by the Schur complement.
Its selected coordinate is exactly one and its total Hermitian second
moment remains `C0`. Hence the same argument applies with that coordinate
fixed. Mapping by `L` gives the witness in our mixed variables. QED.

These random variables are not phase-valued solutions: only the expectations
of the quadratic circle equations vanish. Nevertheless they define a
positive degree-two moment functional. In particular, **no sum-of-squares
refutation of total degree two in the ray variables can succeed**, even with
seed-dependent coefficients after fixing a strict seed. Fourth-degree
constraints are necessary to go beyond this relaxation; their sufficiency
is unproved. The rank-one minors are explicit such constraints already
available from the five-ray structure.

## 5. A physical anchor excludes every standard ghost

This statement holds for any order-six Hadamard. A standard Laurent ghost
is a column `h_j` with its `i`th coordinate multiplied by

\[
 \rho=-2\pm\sqrt3,\qquad\rho+\rho^{-1}=-4.
\]

Let `w` be a physical common-unbiased anchor and `p=H^dagger w/sqrt(6)`.
Set `z=H_ij p_j/w_i`, which is a unit phase. Here `o(v,w)` uses formal
Laurent conjugation for the ghost (the modified coordinate has multiplier
`rho^-1` in its formal conjugate). Its cross-unbiasedness residual is

\[
 F=o(v,w)o(w,v)-6
   =6+\sqrt6[(\rho-1)z+(\rho^{-1}-1)z^{-1}].
\]

Writing `z=exp(i theta)` gives the exact identity

\[
 \boxed{|F|^2=54+144\left(\cos\theta-\frac{\sqrt6}{4}\right)^2\ge54.}
\]

Indeed `(rho-1)(rho^-1-1)=6`, and substitution gives
`F=6(1-sqrt(6)cos(theta) +/- i sqrt(2)sin(theta))`. Squaring proves the
identity. Global phase multiples of these ghosts have the same residual.

Consequently an anchored calculation does not need separate localizers to
remove these standard ghosts from the outer-ray fibres. **The anchor must
be physical.** This does not remove every possible nonphysical solution,
or justify unrestricted complex elimination with a nonphysical anchor.

## Verification and the remaining gap

`verify.py` checks the exact Gram inverse, diagonal and minor identities,
the covariance construction, equation counts and ray degrees, and the ghost
sum-of-squares identity. It compares the full equations with reconstructed
rays on both sheets at 75-digit precision. Gram comparisons also use general
four-seed carriers. All 72 ghosts are tested against all six columns of an
independent exact third basis (432 cases).

The outstanding step is an obstruction using **both** the rank-one minors
and the remaining flatness moments over the whole strict domain. No such
positive identity, finite exhaustion, or seed-only eliminant has yet been
obtained. Excluding this strict section would still require coverage of
other Karlsson frames before claiming an exclusion for every Karlsson
class, and would not alone settle the unrestricted four-MUB problem.

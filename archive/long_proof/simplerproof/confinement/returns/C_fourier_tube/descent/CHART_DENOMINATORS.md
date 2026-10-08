# Uniform control of the physical corner chart away from R=0

## Statement proved

Let `H` be any order-six complex Hadamard matrix, let `A` be any of its
3-by-3 corners, and let `B` be the same-row complementary block. Put

\[
G=6I-AA^*=BB^*,\qquad g=\det G=|\det B|^2,
\qquad D=|\det A|^2.
\]

Use the notation `s,t,r,X,Y,Z,p,J,eta,chi,R` of the handoff and assume
`R=R(A)>0`. Both signs of the sheet variable

\[
z=\frac{\chi\pm i\sqrt R}{2g}
\]

are included. Then

\[
\boxed{0<R\le 2g^3,\qquad 0<g\le27.}                  \tag{1}
\]

For the three side polynomials and cofactors

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-Z)st,& c_0&=9-Z,\\
P_1&=t\bar s^2+r^2\bar t+(3-Y)r\bar s,& c_1&=9-Y,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-X)\bar r\bar t,
&c_2&=9-X,
\end{aligned}
\]

one has the exact identities and bounds

\[
\boxed{
|P_j|^2=|g+c_jz|^2=g^2+c_j\chi+c_j^2\eta,
\quad c_j\ge g/3,
\quad |P_j|^2\ge R/36.}                             \tag{2}
\]

The variables in the supplied `side` construction obey

\[
\begin{gathered}
|\lambda_j|=1,\qquad n\ge g/27,\qquad
|\delta|^2=g/27,\\
d_F\in\mathbb R,\qquad
 d_F^2=n^2-4|\alpha|^2,\\
\frac n2\le\rho\le n\le1,\qquad
|q_0|\le1,\qquad |\sigma|^2=\rho,\qquad |\xi|=1,\\
3M_sM_s^*=G,\qquad \det M_s=\delta.                 \tag{3}
\end{gathered}
\]

Here the sign of `delta` is selected so that `d_F>=0`, as in the supplied
code. We call its side variable `q_0` to distinguish it from the corner
invariant `q(B)`, and call its side matrix `M_s` to distinguish it from
the maximum `M(H)`.

Consequently, if `R>=epsilon>0` and

\[
a_\epsilon=(\epsilon/2)^{1/3},
\]

then every denominator and every nonzero root input displayed in the
supplied chart has an explicit lower bound:

| Quantity | Lower bound |
|---|---:|
| `g` | `a_epsilon` |
| `c_j` | `a_epsilon/3` |
| `abs(P_j)^2` | `epsilon/36` |
| `abs(g+c_j z)` | `sqrt(epsilon)/6` |
| `n` | `a_epsilon/27` |
| `rho` | `a_epsilon/54` |
| `abs(sigma)^2` | `a_epsilon/54` |
| `abs(delta)^2=abs(det M_s)^2` | `a_epsilon/27` |
| `abs(xi)` | `1` |

These statements hold for both horizontal and vertical side constructions,
for both sheets, and for every physical completion. They do not require
that the chosen corner be maximal.

This is a conditioning theorem, not the requested global confinement
theorem. It shows that `g -> 0` is not an additional singular regime
independent of `R -> 0`. It does not provide a quantitative neighborhood
of the Fourier equivalence class containing every sufficiently small
positive `R` corner, and it does not establish coverage of all maximal
seed boxes.

## 1. Determinants and permanents

For any unimodular 3-by-3 `A`, direct expansion gives

\[
D=27-3p-J,\qquad g=27-3p+J,\qquad
3|\operatorname{perm} A|^2=2D-g.                    \tag{4}
\]

The third identity is also verified directly by the accompanying script.
For example, dephase `A` to seeds `a,b,c,d`. Then

\[
\operatorname{perm} A=ad+bc+a+b+c+d,
\qquad
\det A=ad-bc-d+b+c-a,
\]

and conjugation of each seed is its reciprocal. Substituting these
expressions proves (4) using Laurent polynomial arithmetic.

Applying the same identity to `B`, whose complementary Gram determinant
is `D`, yields

\[
3|\operatorname{perm}B|^2=2g-D.
\]

Thus

\[
g/2\le D\le2g,\qquad
\eta=\frac{2g-D}{3}=|\operatorname{perm}B|^2\le g/2.
\]

The defining formula `R=4g^2 eta-chi^2` now gives `R<=2g^3`.
Positivity of `R` excludes `g=0`. The Hadamard determinant bound applied
to positive semidefinite `G`, whose diagonal is `(3,3,3)`, gives `g<=27`.
This proves (1). In particular

\[
|z|^2=\eta\le g/2\le27/2.                          \tag{5}
\]

## 2. The apparent side denominators

The principal 2-by-2 cofactors of `G` are `c_j`. Since `g>0`, `G` is
positive definite. A Schur complement gives

\[
g=c_j(3-v^*G_j^{-1}v)\le3c_j,
\]

where `G_j` is the corresponding positive definite principal submatrix.

Direct expansion of the first side polynomial gives

\[
\begin{aligned}
|P_0|^2={}&J^2+(3-Z)(X+Y)J\\
 &+XY(9-8Z+Z^2)+Z(X^2+Y^2)\\
={}&g^2+(9-Z)\chi+(9-Z)^2\eta.
\end{aligned}
\]

The other two identities follow by cyclic permutation. Since
`z+zbar=chi/g` and `z zbar=eta`, the last expression is `|g+c_0 z|^2`.
Moreover

\[
|P_j|^2\ge(\operatorname{Im}(g+c_jz))^2
=\frac{c_j^2R}{4g^2}\ge R/36.
\]

All the factors in (2) are therefore nonzero. In particular, the supplied
formula for `lambda_j` simplifies to

\[
\boxed{\lambda_j=\frac{P_j}{g+c_jz}.}               \tag{6}
\]

This formula is exact and has `|lambda_j|=1`.

## 3. The remaining side variables

Write

\[
\begin{gathered}
u=\lambda_0\bar\lambda_1,
\quad \mu=s/3,\quad \nu=t/3,\quad n=1-|\mu|^2,\\
k=r/3-\nu\bar\mu,
\quad\alpha=\mu^2-u\bar\mu,
\quad\gamma=2\mu\nu-z\lambda_0/3,\\
\delta^2=\frac g{27}\lambda_0\bar\lambda_1\bar\lambda_2,
\quad L=n\gamma-2\alpha k.
\end{gathered}
\]

Because `|delta|^2=g/27`, the formula in the supplied code is exactly

\[
\boxed{d_F=\frac L\delta.}                         \tag{7}
\]

The two essential algebraic identities are

\[
L=\lambda_0\bar\lambda_1\bar\lambda_2\bar L,
\qquad
L^2=(n^2-4|\alpha|^2)\delta^2.                    \tag{8}
\]

They are proved by clearing the nonzero denominators in (6) and reducing
by

\[
gz^2-\chi z+g\eta=0.
\]

The verifier provides the full numerator circuits and checks that every
remainder coefficient vanishes exactly. This is polynomial identity
verification, not a sampled test.

For completeness, a convenient circuit for checking (8) is obtained by
rephasing `s,t` to real values. Treat `r,rbar` as formal conjugate variables.
Set

\[
\begin{gathered}
A_j=g+c_jz,\quad T=A_0P_1,\\
U=s^2T-3sP_0A_1,\quad V=s^2P_0A_1-3sT,\\
N=9-s^2,\quad K=3r-st,\quad
\Gamma=2stA_0-3zP_0,\\
L_0=N\Gamma P_1-2UK,\qquad
D_0=N^2TP_0A_1-4UV.
\end{gathered}
\]

Then the second identity in (8) is precisely the vanishing, modulo the
quadratic in `z`, of

\[
P_2L_0^2-3gA_2D_0.
\]

The script also provides and checks the cleared numerator for the first
identity in (8). To justify the rephasing explicitly, under
`s -> exp(i a)s`, `t -> exp(i b)t`, and `r -> exp(i(b-a))r`, the weights
of `lambda_0,lambda_1,lambda_2` are respectively `a+b,b-2a,a-2b`.
Consequently `L` has weight `a+b` and `delta^2` has weight `2(a+b)`;
both identities in (8) transform covariantly. Points with a zero
correlation are included by continuity, and none of the actual chart
denominators vanishes there under `R>0`.

The first identity in (8) implies that `L/delta` is real. The second gives
the claimed formula for `d_F^2`. Select the sign of `delta` to make this
real number nonnegative. Then

\[
0\le d_F\le n,\qquad
\rho=\frac{n+d_F}{2}\in[n/2,n],
\qquad |\alpha|^2=\rho(n-\rho).
\]

Also `n=c_2/9>=g/27`. With `q_0=alpha/rho`, one obtains

\[
|q_0|^2=(n-\rho)/\rho\le1.
\]

Now put `sigma=u+mu q_0`. Let `x=|mu|^2` and `A_2=|alpha|^2` in this
paragraph only. Expanding the definition of `alpha` gives

\[
2\operatorname{Re}(\bar u\mu\alpha)=x^2-x-A_2.
\]

Consequently

\[
\rho^2|\sigma|^2
=\rho^2+\rho(x^2-x-A_2)+xA_2=\rho^3,
\]

where the last equality uses `A_2=rho(1-x-rho)`. Hence `|sigma|^2=rho` and
`xi=sigma^2/rho` has modulus one.

Finally let

\[
c_+=(k-\delta\bar q_0)/n,
\qquad c_-=(kq_0+\delta)/n,
\qquad
M_s=\begin{pmatrix}
1&0&0\\
\mu&\sigma&q_0\bar\sigma\\
\nu&c_+\sigma&c_-\bar\sigma
\end{pmatrix}.
\]

The identities already proved show

\[
\det M_s=\rho(c_--c_+q_0)
=\rho\delta(1+|q_0|^2)/n=\delta.
\]

They also show the off-diagonal and second diagonal entries of
`3M_s M_s^*=G`. The last diagonal entry follows from the Schur determinant
identity

\[
n(1-|\nu|^2)-|k|^2=g/27.
\]

This proves all of (3).

## 4. Branch handling

The nonvanishing bounds do **not** assert that a principal square root,
an `arg` function, or a sign-selection rule is smooth on the whole
parameter domain.

At any individual point with `R>0`, the radicand defining `delta` is
nonzero, so either square-root branch extends analytically to a
neighborhood. Choose the one with `d_F>=0` at the center. If `d_F=0`
there, `rho=n/2>0`; retaining that branch still gives `rho>0` throughout
a sufficiently small neighborhood. It is unnecessary to switch branches
on every crossing of `d_F=0`. Likewise, `|xi|=1` gives a local analytic
cube root, with its three possible choices handled explicitly.

Therefore every physical strict corner has a locally regular evaluation
of the displayed formulas. A finite cover may need more than one such
branch chart. The proof does not establish that the complete Hadamard
set is globally a four-dimensional manifold or remove the need to cover
all sheets and equivalences.

## 5. Exact low positive stationary seeds

There are strict seeds with `0<R<26` at which the entire seed gradient
of `R` vanishes. This is an exact obstruction to a strategy that only
searches for a decreasing direction of the distinguished corner without
checking whether it is maximal.

Let

\[
v=(\sqrt5-1)/2,\qquad \cos x=(v-1)/2,\qquad z_0=e^{ix},
\]

and take

\[
E=\begin{pmatrix}1&1&1\\1&z_0&z_0^2\\1&\bar z_0&z_0\end{pmatrix}.
\]

Its correlations satisfy

\[
s=-vz_0,\quad t=-v,\quad r=-v\bar z_0,
\quad X=Y=Z=v^2,\quad J=-2v^3.
\]

Along these equal-correlation data the invariant factors as

\[
R(v)=-v^4(v-1)^3(v+3)^5,
\]

with

\[
R'(v)=-12v^3(v-1)^2(v+3)^4(v^2+v-1).
\]

Thus

\[
\boxed{R(E)=\frac{625-275\sqrt5}{2}\in(0,26).}
\]

This is stationarity in every seed direction, not just along the displayed
one-parameter curve. At these data, for an arbitrary infinitesimal
variation of the off-diagonal correlations,

\[
dJ=-v\,dp,\qquad dW=(2v^2-v^4)\,dp.
\]

Indeed `s r tbar=-v^3` is negative real, so its real differential depends
only on the differential of its modulus at first order. Since `R` is a
function of `p,J,W`, its differential has the form `C dp`; varying `v`
shows `6v C=R'(v)=0`. Therefore `dR=0` for every seed variation.

The point is not claimed to be a local minimum of `M`. The supplied
floating-point chart gives `M(H_+)` approximately `369.224` at this seed,
so numerically the distinguished corner is far from maximal. This
completion value is exploratory only and is not used in any proof.

## Inputs and replay

The proof uses the definitions of the corner invariants, the physical
Hadamard block equations, and the displayed algebraic side formulas from
F7. It uses elementary determinant and Schur complement identities.
The permanent identity is proved here independently. It does not use
F1, F3, F4, F5, F6, or the global-completeness assertion in F7. F2 is
consistent with the proof but is not needed to derive (1).

Run

```sh
python3 output/descent/verify_chart_denominators.py
```

The script uses exact SymPy polynomial arithmetic and exits nonzero on
any failed identity. It verifies every nontrivial polynomial identity
used above, including the permanent relation, all representative side
identities, the Schur identity, and the golden-ratio stationary value.
The inequalities follow from the displayed exact identities and positive
semidefiniteness; they are not decided numerically.

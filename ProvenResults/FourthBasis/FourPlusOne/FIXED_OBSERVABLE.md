# The strict a=-1 measurement equations and the fixed-observable lemma

> Imported 26 September 2026 from the archived note
> `KarlssonAndMeasurements/Karlsson/SymbolicThreeRaySystem.md` (22-September
> snapshot), Sections 1–5, unchanged. Section 4 is the fixed-observable
> (noncollinearity) lemma cited in [REDUCTION.md](REDUCTION.md) §3. The code is
> [strict_a1_system.py](strict_a1_system.py) (formerly `symbolic.py`); its
> exact identities are replayed by [verify.py](verify.py).

**Completed task:** specialize the current global ray-aware equations to
`a=-1`, keeping **all of b,c,d symbolic**. No ray elimination or new seed-only
restriction is claimed here.

The specialization is simpler than the general system: **one fixed complex
moment equation on each side works everywhere on this strict section**. No
finite selection of observables is needed. Three rays therefore require
21 real quadratic equations in their phase entries, plus the shared sheet
equation. Their seed coefficients can be written as Laurent polynomials.

## 1. Scope, corner, and compact invariants

Take b,c,d in the unit circle and

\[
 E=\begin{pmatrix}1&1&1\\1&-1&b\\1&c&d\end{pmatrix},\qquad
 G=6I-EE^\dagger,\qquad T=6I-E^\dagger E.
\]

The scope is the **entire strict section** `H_+(-1,b,c,d), R>0` of the current
PDF reconstruction. No additional equation is imposed on b,c,d. This does
not assert that every Karlsson class has a strict a=-1 representative.

All conjugations below are explicit Laurent substitutions, such as bar(b)=1/b.
Define the two real expressions

\[
 \alpha=bc-b-c-1,\qquad
 V=4+(b-b^{-1})(c-c^{-1}),\qquad
 \theta=\alpha/d+\bar\alpha d.
\]

In particular `V=|bc-b+c+1|^2` lies in [0,8]. The shared PDF invariants become

\[
 \boxed{
 \begin{aligned}
 A&=V+2\theta-8,& K&=4V-(\theta-4)^2,\\
 g&=V+4\theta,&\eta&=A+4,\\
 \chi&=\frac{A^2-(A+8)g}{2},&\mathcal R&=A^2K.
 \end{aligned}}
\]

These identities hold for both G and T. The domain remains R>0, equivalently
`A!=0` and `K>0`; g is positive there. Retain the shared variable

\[
 \boxed{\tau^2=A^2K,\qquad\tau>0.}
\]

Thus tau=|A|sqrt(K), with the absolute value required on the component A<0.
It is exactly the original positive-sheet sqrt(R), with no changed sheet
convention. The other matched sheet uses tau<0 throughout.

## 2. Explicit side data

For each side use

\[
 G(s,t,r)=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}
\]

with the following entries:

| Side | Gram matrix | s | t | r |
|---|---|---|---|---|
| h | G | -b | -(1+c+d) | c-1-d/b |
| v | T | -1/c | -(1+1/b+1/d) | -1+1/b-c/d |

The vertical side here represents **C†**, so both sides use the same sign
of tau. In particular |s|=1 on both sides.

For either row of this table, set

\[
\begin{aligned}
 c_0&=9-|r|^2,\qquad c_1=9-|t|^2,\\
 P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
 P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
 D_s&=2\bar P_0P_1,\\
 U&=2g^2+2c_0c_1\eta+(c_0+c_1)\chi.
\end{aligned}
\]

P0 and P1 are nonzero throughout the inherited domain. The symbol D_s is a
scalar denominator-clearing factor; it is **not** the bottom-right block of H.

The two required coefficient matrices are

\[
 \boxed{L_0=
 \begin{pmatrix}
 D_s\,s&3D_s&D_s\bar r\\
 D_s\,s^2-2\bar sU&D_s\,s&D_s\,s\bar r-\bar P_0(\chi+2c_1\eta)\\
 D_s\,st-P_1(\chi+2c_0\eta)&D_s\,t&D_s\,s
 \end{pmatrix},}
\]

\[
 \boxed{L_1=
 \begin{pmatrix}
 0&0&0\\
 -2i\bar s(c_1-c_0)&0&i\bar P_0\\
 -iP_1&0&0
 \end{pmatrix}.}
\]

Here products such as D_s s and D_s s t are ordinary scalar products. In
particular L1 has only **three nonzero entries**. This is the entire dependence
on the sheet variable. These are precisely `D_s N_X^(0)` and `D_s N_X^(1)`
from the global single-radical equations
([SingleRadicalMeasurements.md](../../../MinimalConstruction/Measurements/SingleRadicalMeasurements.md)).

Everything in this section is an explicit Laurent polynomial in b,c,d after
substituting the preceding definitions. No side square root, cube root,
Fourier matrix, full H, or variable matrix inverse is used.

## 3. All three rays and all orthogonality constraints

For each j=1,2,3 introduce five phases by writing

\[
 x_j=(1,x_{j1},x_{j2})^T,\qquad
 p_j=(p_{j0},p_{j1},p_{j2})^T.
\]

These are the first three entries of a raw ray and its carrier-basis
transition. The fixed first coordinate removes each ray's common phase.

Let

\[
 J_G=\operatorname{adj}(G),\qquad J_T=\operatorname{adj}(T),
\]

\[
 z_j=\sqrt6\,p_j-E^\dagger x_j,\quad
 h_j=\sqrt6\,x_j-Ep_j,\quad
 a_{vj}=J_Tz_j,\quad a_{hj}=J_Gh_j.
\]

Adjugates here contain only explicit 2-by-2 determinants. Each ray obeys:

\[
 \boxed{N_j=z_j^\dagger J_Tz_j-3g=0,}
\]

\[
 \boxed{F_{vj}=a_{vj}^\dagger(L_{0v}+\tau L_{1v})a_{vj}
                    -g^2s_vD_v=0,}
\]

\[
 \boxed{F_{hj}=a_{hj}^\dagger(L_{0h}+\tau L_{1h})a_{hj}
                    -g^2s_hD_h=0.}
\]

N_j is real; each F is complex. Impose all three pairwise conditions

\[
 \boxed{O_{ij}=g\,x_i^\dagger x_j+z_i^\dagger J_Tz_j=0,
            \qquad(i,j)=(1,2),(1,3),(2,3).}
\]

The count is:

- 3 real norm equations;
- 6 complex individual-ray moment equations, giving 12 real equations;
- 3 complex orthogonality equations, giving 6 real equations.

That is **21 real equations for 15 ray phases**, with three symbolic carrier
phases b,c,d and the additional shared algebraic equation for tau. These are
listed equation counts, not claims of algebraic independence or a dimension
proof. Every equation has the form `A_j+tau B_j=0`; the three norm equations
and six real orthogonality equations have B_j=0.

The equations are quadratic in ray coordinates and their conjugates. On their
phase torus, conjugates may instead be replaced by reciprocals to obtain an
explicit Laurent system. All rays and both sides use **the same tau**.

## 4. Why a single fixed observable suffices globally

For an actual side

\[
 S=\begin{pmatrix}1&1&1\\X_0&X_1&X_2\\Y_0&Y_1&Y_2\end{pmatrix},
\]

we have sum(X_j)=s and |s|=1. Its first nonconstant row has polynomial

\[
 \prod_j(w-X_j)=(w-s)(w^2+u/s),\qquad u=\prod_jX_j.
\]

If two X entries coincide, the three phases must be `(s,s,-s)` in some order.
Then

\[
 t-sr=\sum_j(1-s/X_j)Y_j=2Y_*,
 \qquad |t-sr|^2=4.
\]

But the exact specialized identity is

\[
 \boxed{A=4-|t-sr|^2.}
\]

Repeated X entries would therefore force A=0 and R=0, outside the strict
domain. Thus **the three X entries are distinct everywhere under consideration**.
Three distinct points of the unit circle are not collinear, so the real matrix
with rows `1,Re(X),Im(X)` is invertible.

For the three reconstructed coordinates on this side, let e_j be squared
modulus minus one. The norm equation says sum(e_j)=0. The single complex
moment equation says sum(X_j e_j)=0, since its multiplier g^2 D_s is nonzero.
The invertible real matrix above forces e=0. Conversely, flat coordinates
satisfy these equations. This proves the specialization is **necessary and
sufficient**, with no omitted degeneracies inside R>0.

The overlap identity is unchanged from the global mixed-coordinate theorem
([MeasurementCoordinates.md](../../../MinimalConstruction/Measurements/MeasurementCoordinates.md) §4):
`O_ij=g <v_i,v_j>` for the reconstructed raw rays. Consequently all three
orthogonality conditions are exact. No completion of the three rays to a
full basis is assumed.

## 5. Recovery and relation to the PDF

The carrier is still exactly the PDF's H_+(-1,b,c,d). The seeds remain explicit
entries of E. After solving these equations, full rays can be recovered using
the PDF sides B,C:

\[
 y_j=CJ_Tz_j/g,\qquad q_j=B^\dagger J_Gh_j/g,
 \qquad v_j=(x_j,y_j)^T.
\]

Their normalized versions are v_j/sqrt(6). Side radicals are needed only to
display these recovered coordinates, not to form or solve the symbolic system.

Clearing D_s preserves equivalence on the strict domain. It does not assert
anything about solutions introduced on excluded denominator loci in a larger
complex algebraic closure.

## 6. Implementation

[strict_a1_system.py](strict_a1_system.py) builds the exact coefficients and
the three-ray system. `build_system(3)` returns 21 real equations
`A+tau*B=0`, and `sheet_equation` is `tau**2-R`. [targets.py](targets.py)
reuses the same seed data for the 4+1 systems. The exact identities of
Sections 1, 2 and 4 are checked in [verify.py](verify.py). The single-radical
equations these matrices clear are those in
[SingleRadicalMeasurements.md](../../../MinimalConstruction/Measurements/SingleRadicalMeasurements.md).

**Status:** specialization only. No elimination search, factor
classification, or new seed-only obstruction is asserted.

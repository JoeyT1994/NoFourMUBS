# Global measurement equations with only the shared sheet radical

**Result.** Both side square roots can be removed from the previous measurement
normal form. No side Fourier matrix M, phase gate, cube root, or completed
Hadamard is needed to form the compatibility equations. Their only remaining
seed-dependent radical is the shared sheet square root `sqrt(R)`.

There are two equivalent versions on the **entire** PDF domain `R>0`:

1. One global set of quadratic equations, with some linear redundancies and
   no equation-selection cases.
2. Five real quadratic equations per ray, using a guaranteed choice among
   four explicitly scored forms on each side. This selects equations; it
   does not exclude seeds or change their coordinates.

Furthermore, all equations in the first version are **affine in the same
sqrt(R)**. An optional exact elimination removes that radical too, at the
cost of raising the degree in the ray phases. These results do not eliminate
the rays or establish a new seed-only dimensional restriction.

## 1. Unchanged four seeds and sheet

Keep the PDF seeds, domain and interpretation:

\[
 E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\quad
 G=6I-EE^\dagger,\quad T=6I-E^\dagger E,\quad
 g=\det G=\det T>0.
\]

Let `eta,chi,R` have the PDF definitions. Set

\[
 \tau=\sqrt{\mathcal R}>0,\qquad
 \zeta=\frac{\chi+i\tau}{2g},\qquad |\zeta|^2=\eta.
\]

Only this one seed-dependent square root will be used. The other matched
sheet replaces tau by -tau throughout.

For the two sides, use **G and T, both with zeta**. This transpose convention
matters: the side matrices represented below are B and C†, respectively,
where H has blocks `[[E,B],[C,D]]`. Both have first row (1,1,1). The PDF's
vertical side before taking its adjoint instead uses the conjugate sheet.

## 2. Two explicit moment matrices for either side

For either `K=G` or `K=T`, write

\[
 K=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}.
\]

Compute the PDF's rational side data, stopping before **either** side square
root:

\[
\begin{aligned}
 P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
 P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
 P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t,\\
 (c_0,c_1,c_2)&=(9-|r|^2,9-|t|^2,9-|s|^2),\\
 \lambda_j&=(g+c_j\bar\zeta)/\bar P_j,\\
 u&=\lambda_0\bar\lambda_1,\quad
 v=\lambda_0\bar\lambda_2,\quad \Pi=\zeta\lambda_0.
\end{aligned}
\]

The P_j are nonzero throughout the inherited domain; no additional guard
is introduced. Define

\[
 \boxed{N_X=
 \begin{pmatrix}
 s&3&\bar r\\
 s^2-2u\bar s&s&s\bar r-u\bar\Pi\\
 st-\Pi&t&s
 \end{pmatrix},\qquad
 N_Y=
 \begin{pmatrix}
 t&r&3\\
 st-\Pi&t&s\\
 t^2-2v\bar t&tr-v\bar\Pi&t
 \end{pmatrix}.}
\]

These two matrices are all the side information needed for compatibility.
They are usually not Hermitian; a quadratic expectation of one is a complex
equation, representing two real equations.

### Why these formulas are exact

Let the actual side be

\[
 S=\begin{pmatrix}1&1&1\\X_0&X_1&X_2\\Y_0&Y_1&Y_2\end{pmatrix},\qquad SS^\dagger=K.
\]

Its symmetric data are

\[
 \sum X_j=s,\quad \sum Y_j=t,\quad\sum Y_j/X_j=r,
 \quad\prod X_j=u,\quad\prod Y_j=v,\quad
 \sum X_jY_j=st-\Pi.
\]

Then direct multiplication gives

\[
 \boxed{N_X=S\operatorname{diag}(X_j)S^\dagger,\qquad
 N_Y=S\operatorname{diag}(Y_j)S^\dagger.}
\]

For example, each X_j obeys
`X_j^3-s X_j^2+u conjugate(s) X_j-u=0`. Dividing by X_j Y_j and summing gives

\[
 \sum X_j^2/Y_j=s\bar r-u\bar\Pi,
\]

which supplies the only less immediate entry of N_X. The corresponding
identity gives N_Y. These formulas are invariant under all permutations of
the three side columns.

For completeness, the product identities used above can be verified without
constructing Fourier coefficients. Let Delta=det(S). Then

\[
 \lambda_0=-uv\,\bar\Delta/\Delta,\quad
 \lambda_1=\lambda_0/u,\quad\lambda_2=\lambda_0/v,
 \quad \zeta=\Pi/\lambda_0.
\]

The last expression is the side's intrinsic sheet invariant
`-perm(S) det(S)^2/(g u v)`, since perm(S)=Pi. Expanding gives the universal
identities

\[
\begin{aligned}
 \bar P_0-c_0\bar\Pi&=-\Delta^2/(uv),\\
 \bar P_1-c_1u\bar\Pi&=-\Delta^2/v,\\
 \bar P_2-c_2v\bar\Pi&=-\Delta^2/u.
\end{aligned}
\]

They imply exactly the rational lambda formulas above. All three identities,
and both moment matrices, are checked symbolically for six unrestricted
phase variables by the verifier.

## 3. One global compatibility system, without selections

As in the preceding note, a raw ray and its carrier transition are

\[
 v_{\rm ray}=\binom{x}{y},\qquad H^\dagger v_{\rm ray}/\sqrt6=\binom{p}{q},
 \qquad x,p\in\mathbb T^3.
\]

Fix x_0=1 to leave five phase variables. Put

\[
 J_G=\operatorname{adj}(G),\quad J_T=\operatorname{adj}(T),\quad
 z=\sqrt6\,p-E^\dagger x,\quad h=\sqrt6\,x-Ep,
 \quad a_v=J_Tz,\quad a_h=J_Gh.
\]

The common norm equation is

\[
 N=z^\dagger J_Tz-3g=0.
\]

For each of the two sides, using its own s,t,N_X,N_Y and a=a_v or a_h,
form

\[
 F_X=a^\dagger N_Xa-g^2s,\qquad
 F_Y=a^\dagger N_Ya-g^2t.
\]

**Global equivalence theorem.** The ray is common-unbiased if and only if

\[
 \boxed{N=0,\qquad F_{X,v}=F_{Y,v}=F_{X,h}=F_{Y,h}=0.}
\]

This is one real and four complex quadratic equations. Some are redundant;
there are no selection domains or additional branches in this version.

**Proof.** On a side S, the reconstructed three coordinates are `S†a/g`.
Write e_j for their squared modulus minus one. The displayed expressions give

\[
 \boxed{g^2 S e=(gN,F_X,F_Y)^T.}
\]

Because det(S) is nonzero, the right side vanishes exactly when e=0. The norm
N is common to both sides by the unchanged block-unitarity identity. This
proves necessity and sufficiency, including degenerate side coordinates.

An exact positive identity makes the equivalence quantitative. With
`m_v=(gN,F_Xv,F_Yv)` and `m_h=(gN,F_Xh,F_Yh)`,

\[
 \boxed{
 g^5\sum_j\big[(|y_j|^2-1)^2+(|q_j|^2-1)^2\big]
 =m_v^\dagger J_Tm_v+m_h^\dagger J_Gm_h.
 }
\]

Both adjugates are positive definite. Thus there are no spurious physical
solutions from replacing the entrywise equations.

For multiple rays, append the unchanged seed-only overlap equations

\[
 g x_i^\dagger x_j+z_i^\dagger J_Tz_j=0\qquad(i<j).
\]

These require no assumption that the rays complete to a basis.

## 4. Keep five equations: a guaranteed four-choice rule

On each side, choose an observable L from

\[
 \boxed{X,\quad Y,\quad X+Y,\quad X+iY.}
\]

For `L=alpha X+beta Y`, its needed sums are explicit:

\[
\begin{aligned}
 m_L&=\alpha s+\beta t,\\
 k_L&=\alpha^2(s^2-2u\bar s)+2\alpha\beta(st-\Pi)
       +\beta^2(t^2-2v\bar t),\\
 n_L&=3(|\alpha|^2+|\beta|^2)
      +\alpha\bar\beta\bar r+\bar\alpha\beta r.
\end{aligned}
\]

Construct the real Gram matrix

\[
 Q_L=\begin{pmatrix}
 3&\Re m_L&\Im m_L\\
 \Re m_L&(n_L+\Re k_L)/2&\Im k_L/2\\
 \Im m_L&\Im k_L/2&(n_L-\Re k_L)/2
 \end{pmatrix},\qquad d_L=\det Q_L.
\]

Select whichever of the four has largest d_L; ties can be broken in the
listed order. Then

\[
 \boxed{d_L\ge g/14>0.}
\]

Consequently the three real row vectors `1,Re(L),Im(L)` distinguish all three
squared coordinate moduli. On that side the one complex condition

\[
 \boxed{a^\dagger(\alpha N_X+\beta N_Y)a=g^2m_L}
\]

replaces both F_X=F_Y=0, provided N=0. Doing this on both sides gives exactly
**one real plus two complex quadratics**, as before, but without either side
square root. There are at most sixteen presentation choices for the two
sides, and no equations need to be solved to select one.

To prove the bound, let A_1,...,A_4 be the signed areas of the four triples
of complex values L_j, so d_j=A_j^2. Direct expansion gives

\[
 g=(A_3-A_1-A_2)^2+(A_4-A_1-A_2)^2-4A_1A_2.
\]

If M=max A_j^2, expanding the right side bounds it above by 14M. This proves
both coverage and the quantitative bound. In particular this rule does not
hide an unhandled zero-denominator locus.

For global symbolic elimination, Section 3 is preferable if avoiding even
this finite selection is useful. For evaluation or solving, this section
keeps the shorter equation count.

## 5. All completion dependence is affine in one scalar

The preceding formulas simplify further. Since
`zeta=(chi+i tau)/(2g)` and `zeta conjugate(zeta)=eta`,

\[
\begin{aligned}
 u&=\frac{g^2+c_0c_1\eta+(c_0+c_1)\chi/2
                  +i\tau(c_1-c_0)/2}{\bar P_0P_1},\\
 v&=\frac{g^2+c_0c_2\eta+(c_0+c_2)\chi/2
                  +i\tau(c_2-c_0)/2}{\bar P_0P_2},\\
 \Pi&=\frac{\chi/2+c_0\eta+i\tau/2}{\bar P_0},\\
 u\bar\Pi&=\frac{\chi/2+c_1\eta-i\tau/2}{P_1},\qquad
 v\bar\Pi=\frac{\chi/2+c_2\eta-i\tau/2}{P_2}.
\end{aligned}
\]

Thus N_X and N_Y are each `N^(0)+tau N^(1)` with **rational seed coefficients**.
No root need be evaluated to compute either coefficient matrix.

For any number of rays, split the real and imaginary parts of the global
system in Section 3. Including its norm and orthogonality equations, it has
exactly the form

\[
 \boxed{A_j+\tau B_j=0\quad\text{for all }j,\qquad
 \tau^2=\mathcal R,\quad\tau>0.}
\]

The A_j,B_j are real quadratic expressions in the ray phases and conjugates,
with coefficients rational in a,b,c,d and their conjugates. The only fixed
algebraic normalization constant is sqrt(6). Norm and orthogonality equations
have B_j=0. **One scalar tau is shared by all rays and both sides.**

This is a global algebraic formulation before any completion radicals are
computed. All denominators are nonzero on the inherited domain. If they are
cleared during complex elimination, their nonvanishing must still be respected;
clearing them is not permission to retain extraneous components there.

## 6. Optional: eliminate the last radical exactly

This is a further exact representation, not a degree reduction. For the full
real coefficient vectors A,B above, define

\[
 U=\|A\|^2,\qquad V=\|B\|^2,\qquad W=A\cdot B.
\]

Then the entire positive-sheet system is equivalent, on the same phase torus
and R>0 domain, to

\[
 \boxed{\mathcal P=(U-\mathcal R V)^2+
                 4\mathcal R(UV-W^2)=0,\qquad W\le0.}
\]

No B_j is divided out. In particular A=B=0 is retained correctly. The
nonnegative polynomial expression factors over the sheet extension as

\[
 \mathcal P=\|A+\sqrt{\mathcal R}B\|^2
             \|A-\sqrt{\mathcal R}B\|^2.
\]

Its vanishing allows precisely one or both matched sheets; the sign W<=0
selects the positive sheet. This uses the real phase domain and positivity.
It is not a claim about arbitrary complex solutions of the cleared equation.

Cauchy--Schwarz also gives an explicit sum-of-squares form because

\[
 UV-W^2=\sum_{i<j}(A_iB_j-A_jB_i)^2.
\]

The coefficients now have no seed-dependent radicals at all. However P has
degree at most eight in the real ray coordinates, whereas the original A_j
and B_j are quadratic. Retaining the shared scalar tau will often be better
for actual elimination. The ray variables remain in either formulation.

## 7. Coverage, recovery, and what remains open

The four seeds and their R>0 domain are unchanged. The global coverage is
exactly the PDF's accepted coverage of all non-F6, non-Tao Hadamard classes.
The strict-corner and matched-completion theorems remain the same external
inputs. This note proves an exact change in the compatibility description.

Seeds are recovered directly from E. Once a solution x,p is wanted as a full
ray, use the explicit recovery in `MeasurementCoordinates.md`, or evaluate the
PDF sides and use

\[
 y=C\,J_Tz/g,\qquad q=B^\dagger J_Gh/g.
\]

These involve only the already known positive denominator g. The side roots
are needed for displaying those coordinates, not for establishing their
existence or orthogonality.

The gain is global and algebraic: three square roots in the previous
compatibility coefficients are reduced to one, all dependence on that root
is affine, and there is an exact radical-free alternative. The number of ray
phases has not decreased. No new necessary relation solely in the seeds,
classification of the three-ray locus, or no-four-MUB theorem is established.
The remaining target is to extract such a relation from this smaller coefficient
field and the coupled orthogonality equations.

## Verification

`../Implementation/single_radical.py` implements both the finite-selector
and global redundant systems. `AffineModel` constructs their rational
coefficients without taking any seed-dependent root, and implements the
optional radical-free test.

`../Implementation/verify_single_radical.py` checks the side-product
identities and moment matrices symbolically for arbitrary phase sides, proves
the area identity symbolically, and checks the radical-elimination identity.
It also includes an exact degeneracy example in which the four scores are
`0,0,0,16`: the finite selection is necessary for that side.

The recorded 80-digit regression covers 40 generic strict seeds across both
sheets, verifies every candidate score and the affine formulas against the PDF
reconstruction, and checks an independently specified full third basis.
All four selection choices occurred. The maximum absolute residual was below
`2.1e-69`; relative residuals were used for the two large radical-free products.
These are implementation checks. The written proofs establish global validity,
conditional on the same accepted reconstruction inputs as the PDF.

Run:

```
python ../Implementation/verify_single_radical.py
```

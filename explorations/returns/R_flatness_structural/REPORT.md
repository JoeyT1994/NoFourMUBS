# Handoff R: structural reductions and the remaining matched coupling

## Status

**NOT ESTABLISHED: Lemma R and the per-entry fallback requested in the brief.**

This return supplies paper proofs and exact checks of several structural
identities. It does not close the matching-dependent cancellation. The
existing `FlatCheckW11` certificate must be retained; no Lean source or
certificate was changed, removed, or rebuilt during this investigation.

The main proved reduction is an exact expression for the whole flatness
defect using two explicit matrices per side. It replaces a third-moment
representation by a small conic calculation, but the decisive cross-side
contraction still needs a proof.

| Claim | Status | Location |
|---|---|---|
| Cofactor conjugation and Möbius multiplication for an actual phase side | **PROVED**, with exact checks | `proofs/SIDE_IDENTITIES.md`, §§1–2 |
| Short derivation of all three lambda identities | **PROVED**, with an exact check of the base identity and a row-normalization argument | `proofs/SIDE_IDENTITIES.md`, §3 |
| Invertibility of the strict corner, without another excluded locus | **PROVED**, with exact invariant checks | `proofs/SIDE_IDENTITIES.md`, §4 |
| Conic normal form, diagonal entries of modulus one, shifted determinant, and metric identity | **PROVED**, with exact checks | `proofs/CONIC_IDENTITIES.md` |
| The full three-point conic ideal and an explicit cubic remainder | **PROVED**; the remainder is **CERTIFIED** for independent conic coefficients | `proofs/CUBIC_REDUCTION.md`, §§3–4 |
| Centered projector formula and equivalence of flatness with four contractions | **PROVED** | `proofs/CUBIC_REDUCTION.md`, §§5–6 |
| Vanishing of the contraction for conjugate labels without seed expansion | **NOT ESTABLISHED** | §5 below |
| Replay of the existing rational seed-expansion method for W11 | **CERTIFIED**, using the existing method | `reference/check_existing_W11.py` |

Here **PROVED** means a paper argument is supplied, **CERTIFIED** means exact
symbolic arithmetic is replayable, and **NOT ESTABLISHED** means the required
argument is absent. None of the conclusions relies on numerical evidence.

## 1. Conventions and supplied hypotheses

Indices are 0, 1, 2. A bar is entrywise conjugation, a star is conjugate
transpose, and a circle on a matrix power means an entrywise operation.
Use exactly the corner and complementary Grams from the brief:

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\qquad
G_h=6I-EE^*,\quad F=6I-E^*E=G_v^{\mathsf T}.
\]

For normalized phase sides \(B,V\),

\[
BB^*=G_h,\quad VV^*=G_v,\quad
\Theta(B)=z,\quad \Theta(V)=\bar z,\quad
K=-E^*G_h^{-1},\quad D=V^{\mathsf T}KB.
\]

The strict-domain hypotheses and the supplied side theorem give positive
definite Grams, actual sides, and nonzero divisors in the existing formulas.
For either side write

\[
G=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix},\qquad
S=\bar s,\quad T=\bar t,\quad Q=\bar r.
\]

The quantities \(g,\eta,\chi,P_j,c_j\), and their strict-domain guards
are recorded in the included `reference/FLATNESS.md`, §§1–3. In particular,

\[
gz^2-\chi z+g\eta=0,\quad
z\bar z=\eta,\quad z+\bar z=\chi/g,\quad
\lambda_j\bar P_j=g+c_j\bar z.
\]

The new single-side lemmas apply to every invertible phase side. They do
not require a choice of cube root, distinct entries within an individual
row, or nonzero individual cofactors.

## 2. PROVED: a cofactor proof of the lambda identities

For an invertible phase matrix \(A\), let \(R_i\) and \(C_j\) be its row
and column products, let \(P\) be the product of all nine entries, and put
\(\delta=\det A\). Define

\[
\lambda_i=-\frac{P\bar\delta}{R_i\delta}.
\]

These are unit phases. If \(c_{ij}\) is the signed cofactor of \(A_{ij}\),
then the two-by-two minor identity
\(\overline{ux-vw}=-(ux-vw)/(uvwx)\) gives

\[
\boxed{\bar c_{ij}=-\frac{R_iC_j}{P A_{ij}}c_{ij}.}
\]

For a normalized side \(A=(1;x;y)\), Cramer's rule in the row basis
\((1,x,y)\) now yields a pointwise multiplication identity

\[
\boxed{x_jy_j=\lambda_0+\mu x_j-\lambda_0\bar\mu y_j.}
\]

With \(s=\sum x_j\), \(t=\sum y_j\), \(r=\sum y_j/x_j\), summation
after division by \(x_j\) and by \(y_j\) gives

\[
(9-rQ)\mu=3t-rs-\lambda_0(3S-rT).
\]

Let \(\pi=\operatorname{perm}A\). Since
\(\pi=st-\sum_jx_jy_j\), summing the multiplication identity and
collecting its two scalar coefficients gives

\[
\boxed{c_0\pi=P_0-g\lambda_0.}
\]

The collections needed here are only

\[
c_0st-s(3t-rs)-t(3s-Qt)=P_0,
\]

\[
-3c_0+s(3S-rT)+t(3T-QS)=-g.
\]

Using \(\pi=z\lambda_0\), conjugation proves
\(\lambda_0\bar P_0=g+c_0\bar z\). The combined normalized row
changes \((1;1/x;y/x)\) and \((1;x/y;1/y)\) give the other two
identities. The full proof tracks the phase factors under these changes;
it does not assume that the generalized lambda scales under arbitrary
column phasing.

This is a structural proof of the individual-side lambda identities. The
horizontal and vertical sides have not been coupled by this argument.

## 3. PROVED: conic coordinates for a phase side

For a vector \(b\), set

\[
b^\#=(b_1b_2,b_0b_2,b_0b_1)^{\mathsf T}.
\]

Let \(A^\#\) consist of these vectors for the columns of \(A\). The
phase hypothesis gives

\[
A^\#=\bar A\operatorname{diag}(C_j),\qquad
\det A^\#=P\bar\delta\ne0.
\]

Define

\[
\boxed{L_A=A^{\circ2}(A^\#)^{-1}.}
\]

Every side column satisfies \(b^{\circ2}=L_A b^\#\). The three conics
\(q_i(b)=b_i^2-(L_A b^\#)_i\) generate the full homogeneous ideal of
the three side columns. Indeed, their coefficients on the three square
monomials form the identity matrix. Invertibility of \(A\) makes the
three projective columns noncollinear; after the change of variables
\(u=A^{-1}b\), their ideal is
\((u_0u_1,u_0u_2,u_1u_2)\). Thus the three independent conics form the
entire quadratic generating space.

Put \(D_\lambda=\operatorname{diag}(\bar\lambda_i)\). The following
identities have short proofs and exact checks:

\[
\boxed{\operatorname{diag}L_A=\bar\lambda,\qquad
\det L_A=-(\Theta(A)+2),}
\]

\[
\boxed{L_A G^{\mathsf T}L_A^*
       +2D_\lambda G^{\mathsf T}D_\lambda^*=G^{\circ2}.}
\]

The diagonal follows from cofactor conjugation. The determinant follows
from the small universal determinant/permanent identity

\[
\det A\,\operatorname{perm}A
=\det(A^{\circ2})+2P\det(A^{\circ-1}).
\]

To prove the metric identity, note that
\(A^\#(A^\#)^*=G^{\mathsf T}\). For any two rows, their three phase
ratios \(r_j\) satisfy
\(\sum r_j^2=(\sum r_j)^2-2(\prod r_j)\overline{\sum r_j}\), and
their product is \(\bar\lambda_i\lambda_k\). Applying this identity
entry by entry proves the result.

For a normalized side, set

\[
\mathcal T(G)=\begin{pmatrix}ST&T&S\\Q&sQ&s\\r&t&tr\end{pmatrix}.
\]

A further sparse identity is

\[
\boxed{L_A G^{\mathsf T}=\mathcal T(G)-\bar z D_\lambda.}
\]

Consequently \(L_A\) can be calculated from the supplied Gram, label,
and lambdas, without solving for the individual side columns. Matching
becomes \(\det L_v=\overline{\det L_h}\). This determinant equality
reexpresses the matching hypothesis; its transport consequence still
requires proof.

## 4. PROVED: an exact formula for the flatness defect

Write \(L=L_A\) and \(\alpha=L_{00}=\bar\lambda_0\). Since
\(|\alpha|=1\), the following formulas introduce no additional
nonvanishing assumption:

\[
R_1(L)=\begin{pmatrix}
0&1&0\\
-L_{02}L_{11}/\alpha&0&L_{11}\\
(1-L_{01}L_{21})/\alpha&L_{21}&0
\end{pmatrix},
\]

\[
R_2(L)=\begin{pmatrix}
0&0&1\\
(1-L_{02}L_{12})/\alpha&0&L_{12}\\
-L_{01}L_{22}/\alpha&L_{22}&0
\end{pmatrix}.
\]

An explicit cubic remainder modulo the three conics proves that, for
every side column \(b=(1,x,y)^{\mathsf T}\),

\[
\boxed{bb^*=\frac G3+R_1(L)\psi_1(b)+R_2(L)\psi_2(b),}
\]

where \(\psi_1(b)=\bar x-S/3\) and
\(\psi_2(b)=\bar y-T/3\). The complete remainder, including the
coefficients of the conic generators, is in `proofs/CUBIC_REDUCTION.md`,
§4. It is checked as an identity with nine independent entries of \(L\)
and three independent coordinates, after clearing only \(L_{00}\).

The coefficient matrices satisfy

\[
\operatorname{tr}R_p=0,\qquad
\operatorname{tr}(G^{-1}R_p)=0\quad(p=1,2).
\]

The second equality follows from \(A^*G^{-1}A=I\) and independence of
the evaluation functions \((1,\bar x,\bar y)\).

Let \(R_{p,h}=R_p(L_B)\) and \(R_{p,v}=R_p(L_V)\), and define

\[
\mathcal C_{pq}
=\operatorname{tr}\!\left(R_{p,v}^{\mathsf T}K R_{q,h}K^*\right),
\qquad p,q\in\{1,2\}.
\]

For the side columns \(b_j,v_i\), the exact defect formula is

\[
\boxed{|D_{ij}|^2-1=
\sum_{p,q=1}^2\mathcal C_{pq}\,
\psi_{p,v}(v_i)\psi_{q,h}(b_j).}
\]

The transpose on \(R_{p,v}\) is essential. This is obtained by inserting
both projector formulas into
\(\operatorname{tr}((v_iv_i^*)^{\mathsf T}K b_jb_j^*K^*)\).
The second-moment transport identities give

\[
KG_hK^*=6F^{-1}-I,\qquad K^*FK=6G_h^{-1}-I.
\]

Thus the constant term is
\(\operatorname{tr}(6I-F)/9=1\); each linear term vanishes by the two
trace equalities above. These are all the terms discarded in deriving
the displayed defect formula.

Let \(\Psi_A\) be the two-by-three matrix of the centered functions
on the side columns. It has row rank two: adjoining a constant row gives
an invertible row transformation of \(\bar A\). Hence

\[
\boxed{\Delta=\Psi_v^{\mathsf T}\mathcal C\Psi_h,
\qquad \Delta=0\Longleftrightarrow\mathcal C=0.}
\]

This reduction holds for either pairing of actual side labels. The
matching-dependent step has been isolated, not used implicitly.

## 5. NOT ESTABLISHED: the precise remaining identity

Set

\[
L(G,z)=(\mathcal T(G)-\bar z\operatorname{diag}(\bar\lambda))
G^{-\mathsf T}.
\]

The remaining sufficient universal statement is

\[
\boxed{
\operatorname{tr}\!\left[
R_1(L(G_v,\bar z))^{\mathsf T}
K\,R_1(L(G_h,z))K^*
\right]=0.
}
\]

It must be proved from the phase corner, complementary Grams, conjugate
labels, side quadratic, and lambda identities without expanding in
\(a,b,c,d\). No derivation of this cancellation was obtained.

As in Handoff M, a **universal** proof of this one identity supplies all
four contractions by independent swaps of the two nonconstant horizontal
and vertical coordinates, accompanied by the corresponding corner row
or column swaps. Vanishing of just one contraction at a fixed corner
does not supply the others.

The separate notes also record two valid auxiliary routes: a compact
corner/side identity for the conic matrices, and a cubic row-product
target which would force flatness by equality in arithmetic–geometric
mean. Neither route currently has the missing matching-dependent
identity. Ordinary block Gram or complementary-minor identities do not
supply that identity by themselves.

## 6. Exact checks, their scope, and reproduction

From this directory, with Python 3.10 or later:

```sh
python -m pip install -r requirements.txt
python verify_all.py
```

The default run executes the three structural checkers:

| Checker | Arithmetic and scope |
|---|---|
| `verification/verify_side_identities.py` | Exact SymPy expressions in six independent phase variables; cofactor, multiplication, lambda, corner invariant, and sparse Gram identities |
| `verification/verify_conic_identities.py` | Independent standard-library integer Laurent polynomials; nine-variable determinant, cofactor, and metric identities, followed by six-variable normalized identities |
| `verification/verify_cubic_reduction.py` | Exact SymPy rational identities for actual sides, plus the cubic remainder and coefficient matrices for nine independent conic entries |

Complex conjugation of phase variables is implemented by reciprocal
substitution. These are formal exact calculations, not floating-point
samples. The conic remainder does not assume that its nine coefficients
come from a phase side.

The paper arguments establish the nonvanishing conditions, ideal
generation, interpolation ranks, and constant/linear cancellation.
The scripts check the displayed algebraic residuals; they do not assert
that an unimplemented proof of the matched contraction has been checked.

For the optional replay of the existing W11 method:

```sh
python -m pip install -r requirements-baseline.txt
python verify_all.py --baseline
```

This computes
\(W_{11}(z,w)=A_0+B_0z+C_0w+D_0zw\) over
\(\mathbb Q(a,b,c,d)\), and verifies exactly

\[
B_0=C_0,\qquad A_0+(\chi/g)C_0+\eta D_0=0.
\]

These identities imply the old cancellation under
\(w=\chi/g-z\) and \(z^2=(\chi/g)z-\eta\). This replay deliberately
uses the seed-expansion method described in the supplied proof. It does
not meet the structural requirement of Handoff R and is not a newly
compiled Lean proof.

An optional diagnostic, selected with `--diagnostics`, checks an exact
root-of-unity example rejecting a stronger universal complementary-block
claim encountered during the investigation. That claim did not assume
matching. The diagnostic makes no claim against the matched theorem.

The supplied `verification_results.json` records the full replay output,
Python and dependency versions, elapsed times, and the explicit
`NOT_ESTABLISHED` status of the structural matched-flatness obligation.
The run completed successfully for every implemented check. `SHA256SUMS`
lists the delivered files, and `PROVENANCE.json` records input hashes.

The return therefore provides a verified structural starting point for
the remaining contraction; it does not authorize removing any part of
the existing matched-flatness certificate.

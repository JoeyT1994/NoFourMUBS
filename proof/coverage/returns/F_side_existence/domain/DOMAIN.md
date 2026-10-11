# Strict-seed domain and signature normalization

This module proves the upstream scalar facts needed by a constructive side
existence proof. It does not assume that any side or Hadamard completion already
exists. The remaining constructor identities must be supplied by the main
side-existence proof; the precise conditional uses are identified below.

All polynomial claims here are checked by `verify_domain.py` against the saved
integer arrays in `domain_certificates.json`. It independently reconstructs the
displayed circuits, compares every array, and verifies every cofactor identity.
It exits nonzero on malformed, changed or incorrect certificates. Its default
mode never rewrites a certificate. The 24 certificates have at most 205 terms
on an expanded side and at most 13 terms in a cofactor. The initial generation
and replay took 1.12 seconds in this environment.

## 1. Independent Gram variables

Work first in the polynomial ring

\[
\mathbb Z[s,S,t,T,r,Q].
\]

The six variables are independent. The formal involution exchanges
\(s\leftrightarrow S\), \(t\leftrightarrow T\), and
\(r\leftrightarrow Q\). At a physical specialization,
\(S=\bar s\), \(T=\bar t\), \(Q=\bar r\). Define

\[
G=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix},
\qquad X=sS,\quad Y=tT,\quad Z=rQ,
\]

\[
p=X+Y+Z,\quad J=srT+SQt,\quad
W=XY+XZ+YZ-XYZ,
\]

\[
g=27-3p+J,\quad \eta=9-p+J,\quad
\chi=W-(p-9)(p-18)+(p-15)J.
\]

The exact independent-variable identities are

\[
\det G=g,\qquad \det(6I-G)=27-3p-J,
\tag{D1}
\]

\[
\eta+\det(6I-G)=36-4p,\qquad
g=\eta+2(9-p).
\tag{D2}
\]

Certificates: `gram_determinant`, `complement_determinant`,
`eta_complement`, and `g_eta_difference`. These are identities in the
polynomial ring itself, so their relation and cofactor lists are empty.
No quotient relation, density argument, or physical-side substitution is used.

Define

\[
\begin{aligned}
P_0&=rs^2+Qt^2+(3-Z)st,\\
P_1&=tS^2+r^2T+(3-Y)rS,\\
P_2&=sT^2+Q^2S+(3-X)QT,
\end{aligned}
\]

and \((c_0,c_1,c_2)=(9-Z,9-Y,9-X)\). Then for each index,

\[
P_jP_j^*=g^2+c_j\chi+c_j^2\eta.
\tag{D3}
\]

Certificates: `P0_norm`, `P1_norm`, `P2_norm`. They also have no assumptions
beyond the displayed definitions in six independent variables.

## 2. Unit seeds give both Gram specializations

For four unit phases let

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\quad G_h=6I-EE^*,\quad G_v=6I-E^T\bar E.
\]

Conjugation of a phase is its multiplicative inverse. Substituting these two
Gram matrices into the preceding polynomials gives

\[
(p,J,W,g,\eta,\chi)(G_h)=(p,J,W,g,\eta,\chi)(G_v).
\tag{D4}
\]

The six `seed_horizontal_vertical_*` certificates verify each equality in four
independent Laurent variables \(a,b,c,d\). They record the exact monomial
used to clear negative exponents. This introduces only the already known
nonvanishing of the four phases. There is no new guard.

Also

\[
\det(6I-G_h)=\det E\,\overline{\det E}=|\det E|^2\ge0.
\tag{D5}
\]

The identity is checked by `seed_complement_norm`. The inequality is the
elementary nonnegativity of a complex squared modulus. The same statement
for \(G_v\) follows either directly from \(6I-G_v=E^T\bar E\), or from
(D2) and (D4). No nonsingularity of \(E\) is needed here.

The Lean vertical candidate uses \(E^*E+C^*C=6I\). Constructing a normalized
row-side \(S_v\) for \(G_v\), then setting \(C=S_v^T\), gives precisely this
equation: transposing \(S_vS_v^*=G_v\) gives
\(C^*C=6I-E^*E\). The first row of \(S_v\) becomes the first column of \(C\).

## 3. Strictness proves the initial divisors are nonzero

Now specialize to a unit seed with

\[
R=4g^2\eta-\chi^2>0.
\]

All of \(g,\eta,\chi,R,p,X,Y,Z\) are real. First \(g\ne0\), since otherwise
\(R=-\chi^2\le0\). Moreover
\(4g^2\eta=R+\chi^2>0\), so \(\eta>0\). By (D2) and (D5),

\[
4p=36-\eta-|\det E|^2<36.
\]

Thus \(p<9\), and (D2) gives

\[
g=\eta+2(9-p)>\eta>0.
\tag{D6}
\]

Since \(X,Y,Z\) are squared moduli, each is nonnegative and no larger than
their sum \(p\). Hence all three are strictly below 9. In particular,

\[
c_j>0,\qquad n=1-|s/3|^2=\frac{9-X}{9}>0.
\tag{D7}
\]

The leading principal minors of the Hermitian matrix \(G\) are
\(3\), \(9-X\), and \(g\), all strictly positive. Sylvester's criterion also
gives \(G>0\). The side formula itself needs only the displayed strict scalar
inequalities, so this matrix criterion need not be formalized merely to prove
its divisors nonzero.

An integer-cleared form of completing the square is particularly economical:

\[
4\eta\bigl(g^2+c\chi+c^2\eta\bigr)
  =(2c\eta+\chi)^2+R.
\tag{D8}
\]

The residual has cofactor 1 against the defining relation
\(4g^2\eta-\chi^2-R=0\); see `P_completed_square`.
The right-hand side is strictly positive and \(\eta>0\), so (D3) implies

\[
|P_j|^2>0,\qquad P_j\ne0.
\tag{D9}
\]

This proof has no division by \(\eta\) or by \(c_j\).

## 4. The sheet roots and the lambda phases

Take the positive real square root \(h=\sqrt R>0\), and let

\[
z_\pm=\frac{\chi\pm ih}{2g}.
\]

Then \(\bar z_+=z_-\), and either root satisfies

\[
g(z+\bar z)=\chi,\qquad z\bar z=\eta,
\qquad gz^2-\chi z+g\eta=0.
\tag{D10}
\]

For completeness, `radical_norm` proves the required numerator identity with
the explicit cofactors

\[
\begin{aligned}
(\chi+ih)(\chi-ih)-4g^2\eta
&=-h^2(i^2+1)+(h^2-R)\\
&\quad -(4g^2\eta-\chi^2-R).
\end{aligned}
\]

The certificate `radical_sum` gives the sum. The quadratic follows from the
separate identity

\[
gz^2-\chi z+g\eta
=z\,[g(z+\bar z)-\chi]-g\,(z\bar z-\eta),
\]

whose explicit cofactors are \(z,-g\); see `z_quadratic`.

Let

\[
\lambda_j=\frac{g+c_j\bar z}{\bar P_j}
=\frac{P_j(g+c_j\bar z)}{|P_j|^2}.
\]

The following identity has cofactors \(c,c^2\) against the sum and norm
relations in (D10):

\[
\begin{aligned}
(g+cz)(g+c\bar z)-(g^2+c\chi+c^2\eta)
={}&c\,[g(z+\bar z)-\chi]\\
&+c^2(z\bar z-\eta).
\end{aligned}
\tag{D11}
\]

This is `lambda_numerator_norm`. Combining (D3), (D9), and (D11) gives
\(\lambda_j\bar\lambda_j=1\). Thus every \(\lambda_j\) is a nonzero unit
phase. Products such as \(u=\lambda_0\bar\lambda_1\) are unit phases as well.

## 5. The square root and the later sign choice

The prescribed radicand

\[
A=\frac g{27}\lambda_0\bar\lambda_1\bar\lambda_2
\]

is nonzero, and \(|A|=g/27\). Every complex number has a square root;
take \(\delta^2=A\). Multiplicativity of squared modulus gives

\[
\bigl(27|\delta|^2\bigr)^2=g^2.
\]

The exact factorization

\[
729D^2-g^2=(27D-g)(27D+g)
\]

is `delta_norm_factor`. For \(D=|\delta|^2\ge0\), the second factor is positive
by (D6). Therefore

\[
|\delta|^2=g/27>0,\qquad \delta\ne0.
\tag{D12}
\]

There are exactly the two choices \(\delta\) and \(-\delta\). The formula

\[
d_F=\frac{27}{g}(n\gamma-2\alpha k)\bar\delta
\]

changes sign when \(\delta\) changes sign. **The reality of this expression
must come from the new arbitrary-Gram constructor identities.** Once reality
is proved, select its sign so that \(d_F\ge0\). This is an elementary case
split and also covers the tie \(d_F=0\). Consequently

\[
\rho=(n+d_F)/2\ge n/2>0.
\tag{D13}
\]

Thus the subsequent divisions by \(n\) and \(\rho\) are valid. Once the
constructor identity \(|\sigma|^2=\rho\) is proved, it follows immediately
that \(\sigma\ne0\), and

\[
\xi=\sigma^2/\rho,\qquad |\xi|^2=1.
\]

A complex cube root \(w^3=\xi\) exists, is nonzero, and has unit modulus
because \(|w|^3=|\xi|=1\). No additional strict seed guard occurs at either
radical stage. The root existence and nonnegative-real sign arguments are
elementary complex and real facts, not unverified numerical tests.

## 6. Audit of the signature normalization

There is **no discrepancy** between the normalized signature used in the
reference recipe and the polynomial signature used by the Lean target.

For an invertible phase block \(B\), let
\(h=\det B\), \(\pi=\operatorname{perm}B\), and
\(v=\prod_{ij}B_{ij}\). Since all entries are phases,
\(\prod_{ij}\bar B_{ij}=1/v\). The reference invariant and the Lean signature
are respectively

\[
\Theta(B)=-\frac{\pi h^2}{|h|^2v},\qquad
T(B)=-\frac{\pi h^2}{v}.
\]

Hence, if \(BB^*=G\),

\[
T(B)=|h|^2\Theta(B)=g\Theta(B).
\tag{D14}
\]

In particular, a constructor with \(\Theta(B)=z_+\) has
\(2T(B)=\chi+i\sqrt R\), exactly as required. Applying the other sheet to
the transposed vertical Gram gives \(2T(C)=\chi-i\sqrt R\), since determinant,
permanent, and product of entries are invariant under transpose.

The certificates `phase_block_g`, `phase_block_eta`, and `phase_block_chi`
verify, on a four-variable dephased phase block,

\[
g=|\det B|^2,\quad \eta=|\operatorname{perm}B|^2,
\quad \chi=T(B)+\bar T(B).
\]

These extend to all phase blocks by dephasing: column phases leave the row
Gram unchanged; row phases preserve \(X,Y,Z,J\); and \(T\), determinant
modulus, and permanent modulus are unchanged by row and column phases.
All dephasing divisors are phase entries and therefore nonzero.

An exact scale check uses \(\omega^2+\omega+1=0\), with
\(\operatorname{Im}\omega>0\), and

\[
B_0=\begin{pmatrix}1&1&1\\1&\omega&\omega\\\omega&1&\omega\end{pmatrix}.
\]

Its invariants are \(g=9,\eta=3,\chi=-27,R=243\), and

\[
\Theta(B_0)=\omega-1,\qquad T(B_0)=9(\omega-1).
\]

`normalization_witness` certifies the latter with an explicit cyclotomic
cofactor. This would detect a mistaken substitution of \(z\) for \(gz\), but
the supplied Lean definition and target already have the correct scale.

## 7. Limits of the existing L2 certificates

The supplied `l2_polynomial_certificates.json` uses the six phase entries
\(x_0,x_1,x_2,y_0,y_1,y_2\) of an **already existing** normalized side, plus
the Fourier phase. Its identities imply reconstruction and uniqueness of such
a side. They do not alone prove that arbitrary six Gram coordinates admit a
side, or that the side recipe is flat at every strict seed.

Those certificates can be applied after the independent-Gram constructor
identities produce a genuine side. Applying them earlier would reintroduce the
existence premise that this handoff is intended to remove. None of the domain
proofs above makes that substitution.

## 8. Formalization status

`DomainLemmas.lean` contains optional elementary scalar lemmas. It has no
admitted proof or theorem assumptions asserting side existence. It has not
been compiled, consistently with the handoff's environment restriction. It is
a small support module, not a formal proof of the complete side-existence
target against the upstream matrix definitions.

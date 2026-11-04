# Side existence at every strict seed: explicit polynomial certificates

**Result.** The side-existence target in `PROMPT.md` is proved. The proof below
uses polynomial identities with supplied integer cofactors, elementary
positivity and conjugation, and the existence of complex square and cube roots.
It does not transfer an identity from a parametrized family of existing sides.

The certificate package is self-contained. Run `python3 verify_all.py` from
this folder. The supplied reference directory is not needed for replay.
The remaining lower-right-block flatness problem is outside this result.

## 1. The precise theorem

Let

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad |a|=|b|=|c|=|d|=1,
\]

and form

\[
G_h=6I-EE^*,\qquad G_v=(6I-E^*E)^T.
\]

For either Gram matrix write

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}.
\]

Set

\[
\begin{aligned}
X&=s\bar s,&Y&=t\bar t,&Z&=r\bar r,&p&=X+Y+Z,\\
J&=sr\bar t+\bar s\bar r t,&
W&=XY+XZ+YZ-XYZ,\\
g&=27-3p+J,&\eta&=9-p+J,\\
\chi&=W-(p-9)(p-18)+(p-15)J,&
R&=4g^2\eta-\chi^2.
\end{aligned}
\]

The horizontal and vertical values of \((g,\eta,\chi,R)\) agree. Suppose
\(R>0\), and let

\[
z_\pm=\frac{\chi\pm i\sqrt R}{2g}.
\]

For **each** of the two values of \(z\), the construction below gives a matrix
\(S(G,z)\) whose entries have modulus one, whose first row is \((1,1,1)\),
and which satisfies

\[
SS^*=G,\qquad T(S)=gz,
\qquad
T(S)=-\operatorname{perm}(S)\det(S)^2\prod_{i,j}\overline{S_{ij}}.
\tag{1}
\]

Consequently

\[
B=S(G_h,z_+),\qquad C=S(G_v,z_-)^T
\tag{2}
\]

satisfy exactly the requested statements:

\[
\begin{aligned}
B&\in\texttt{horizontalCandidates}(E),&2T(B)&=\chi+i\sqrt R,\\
C&\in\texttt{verticalCandidates}(E),&2T(C)&=\chi-i\sqrt R.
\end{aligned}
\tag{3}
\]

The signature in the supplied Lean definitions is the polynomial \(T\),
whereas the normalized intrinsic quantity in the reference is
\(\Theta=T/g\). This accounts for the factor \(g\) in (1).

## 2. Strictness supplies every initial divisor

The following are polynomial identities in six independent variables
\(s,\bar s,t,\bar t,r,\bar r\):

\[
\det G=g,\qquad \det(6I-G)=27-3p-J,
\]

\[
\eta+\det(6I-G)=36-4p,\qquad g=\eta+2(9-p).
\tag{4}
\]

At a seed specialization, \(6I-G\) is \(EE^*\) or
\(E^T\bar E\), so its determinant is \(|\det E|^2\ge0\).
If \(g=0\), then \(R=-\chi^2\le0\); hence \(g\ne0\).
Now \(R>0\) implies \(\eta>0\), and (4) gives

\[
p<9,\qquad g>\eta>0,\qquad X,Y,Z<9.
\tag{5}
\]

In particular \(G\) is positive definite by its leading principal minors
\(3,9-X,g\). The proof of the construction itself only needs the displayed
scalar inequalities, so no spectral or topological assertion is hidden here.

Define

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-Z)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-Y)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-X)\bar r\bar t,\\
(c_0,c_1,c_2)&=(9-Z,9-Y,9-X).
\end{aligned}
\]

The three polynomial norm identities are

\[
P_j\bar P_j=g^2+c_j\chi+c_j^2\eta.
\tag{6}
\]

Their positive lower bound follows without any new division:

\[
4\eta P_j\bar P_j=(2c_j\eta+\chi)^2+R>0.
\tag{7}
\]

Thus every \(P_j\) is nonzero. For either \(z=z_\pm\),

\[
g(z+\bar z)=\chi,\qquad z\bar z=\eta.
\]

It follows from (6) that

\[
\lambda_j=\frac{g+c_j\bar z}{\bar P_j}
\tag{8}
\]

is a unit phase. This is the same formula as in the reference, since
\(P_j/|P_j|^2=1/\bar P_j\).

All identities in this section, including horizontal/vertical transport,
are checked in `domain/domain_certificates.json` by `domain/verify_domain.py`.
The seed-transport checks substitute conjugation by inversion only for the
four nonzero unit seed variables and clear recorded monomials. They make
no assumption that a side exists.

## 3. A small algebraic core in independent Gram coordinates

Introduce

\[
\begin{aligned}
u&=\lambda_0\bar\lambda_1,&v&=\lambda_0\bar\lambda_2,
&\pi&=z\lambda_0,\\
\mu&=s/3,&\nu&=t/3,&k&=r/3-\nu\bar\mu,\\
n&=1-|\mu|^2,&m&=1-|\nu|^2,&h_0&=g/27,\\
\alpha&=\mu^2-u\bar\mu,&\beta&=\nu^2-v\bar\nu,
&\gamma&=2\mu\nu-\pi/3,\\
e&=h_0\lambda_0\bar\lambda_1\bar\lambda_2.
\end{aligned}
\tag{9}
\]

Then \(n,m,h_0>0\), \(|u|=|v|=1\), and \(|e|=h_0>0\).
The determinant identity gives \(h_0=nm-|k|^2\).

The three decisive additional identities are

\[
I:=\gamma^2-4\alpha\beta-e=0,
\tag{10}
\]

\[
II:=e\bar\alpha-n\gamma k+\alpha k^2+n^2\beta=0,
\tag{11}
\]

\[
III:=e\bar\gamma-\gamma(nm+|k|^2)
       +2\alpha km+2\beta n\bar k=0.
\tag{12}
\]

These identities are now certified directly in the independent Gram
coordinates. Here is the complete reduction used to obtain their cofactors.

### 3.1 Compact rational formulas

Put \(\zeta=gz\), so the only sheet relation is

\[
F(\zeta)=\zeta^2-\chi\zeta+g^2\eta=0.
\tag{13}
\]

Define polynomial numerators

\[
U_j=g^2+c_0\chi+c_0c_j\eta+(c_j-c_0)\zeta
\quad(j=1,2),
\]

\[
L=(c_1+c_2-c_0)g^2+c_1c_2\chi+c_0c_1c_2\eta,
\]

\[
E_N=g^2\bigl(g^2+c_0\chi+(c_0c_1+c_0c_2-c_1c_2)\eta\bigr)+L\zeta.
\]

Four small cofactor identities give

\[
\pi=\frac{\zeta+c_0\eta}{\bar P_0},\qquad
u=\frac{U_1}{\bar P_0P_1},\qquad
v=\frac{U_2}{\bar P_0P_2},\qquad
e=\frac{E_N}{27\bar P_0P_1P_2}.
\tag{14}
\]

For example, if \(A_0=g^2+c_0(\chi-\zeta)\) and
\(A_j=g^2+c_j\zeta\), their exact polynomial certificates are

\[
\begin{aligned}
\zeta A_0-g^2(\zeta+c_0\eta)&=-c_0F,\\
A_0A_j-g^2U_j&=-c_0c_jF,\\
A_0A_1A_2-g^2E_N
 &=\bigl[g^2(c_1c_2-c_0c_1-c_0c_2)-c_0c_1c_2\zeta\bigr]F.
\end{aligned}
\tag{15}
\]

These are identities even when every symbol in them is independent.
The denominators in (14) are already nonzero by Section 2.

### 3.2 Explicit cofactors for I, II, III

Let

\[
\begin{aligned}
A_N&=s^2\bar P_0P_1-3\bar sU_1,&
B_N&=t^2\bar P_0P_2-3\bar tU_2,\\
G_N&=2st\bar P_0-3(\zeta+c_0\eta),&K_N&=3r-t\bar s,\\
\bar U_1&=g^2+c_1\chi+c_0c_1\eta-(c_1-c_0)\zeta,\\
A_N^\sharp&=\bar s^2P_0\bar P_1-3s\bar U_1,&
G_N^\sharp&=2\bar s\bar tP_0-3(\chi-\zeta+c_0\eta).
\end{aligned}
\]

The superscript \(\sharp\) records the numerator for the actual conjugate
after specialization. The fixed circuits in `core/gram_model.py` expand
the following three unconditional polynomial identities:

\[
\begin{aligned}
G_N^2P_1P_2-4A_NB_N-3\bar P_0E_N
 &=9\bigl(P_1P_2-4\bar s\bar t(c_1-c_0)(c_2-c_0)\bigr)F,\\
3E_NA_N^\sharp-c_2G_NK_NP_1P_2P_0\bar P_1
 +A_NK_N^2P_2P_0\bar P_1+c_2^2B_NP_1P_0\bar P_1
 &=9s(c_1-c_0)L F,\\
3E_NG_N^\sharp-G_N(c_2c_1+K_N\bar K_N)P_0P_1P_2
 +2A_NK_Nc_1P_0P_2+2B_Nc_2\bar K_NP_0P_1
 &=9L F.
\end{aligned}
\tag{16}
\]

Dividing the left sides by their recorded nonzero factors gives exactly
\(I,II,III\). The factors are, respectively,

\[
81\bar P_0^2P_1P_2,\quad
729\bar P_0P_1P_2P_0\bar P_1,\quad
729\bar P_0P_1P_2P_0.
\]

The expanded residuals have 407, 998, and 682 terms; their expanded
cofactors have 16, 72, and 42 terms. Thus this step is an explicit
polynomial calculation, with no specialization or field-embedding argument.

## 4. Reality, the sign choice, and the rho quadratic

Choose a square root \(\delta^2=e\). Since \(|e|=h_0>0\),

\[
\delta\bar\delta=h_0,\qquad \delta\ne0.
\]

Put \(D_0=n\gamma-2\alpha k\). Two especially small cofactor identities are

\[
h_0D_0-e\bar D_0
 =D_0(h_0-nm+k\bar k)-nIII+2\bar kII=0,
\tag{17}
\]

\[
D_0^2-(n^2-4\alpha\bar\alpha)e=n^2I+4\alpha II=0.
\tag{18}
\]

Define the quantity in the prescribed construction by

\[
d_F=\frac{D_0\bar\delta}{h_0}.
\tag{19}
\]

Then \(\delta d_F=D_0\). Equation (17), together with
\(e=\delta^2\) and \(h_0=\delta\bar\delta\), implies
\(D_0\bar\delta=\bar D_0\delta\), so \(d_F\) is real.
Equation (18) gives

\[
d_F^2=n^2-4|\alpha|^2.
\tag{20}
\]

Replacing \(\delta\) by \(-\delta\) changes \(d_F\) to \(-d_F\).
Choose the sign for which \(d_F\ge0\), and set

\[
\rho=(n+d_F)/2.
\]

Then

\[
\rho\ge n/2>0,\qquad \rho^2-n\rho+|\alpha|^2=0.
\tag{21}
\]

When \(d_F=0\), either root sign is permitted and \(\rho=n/2>0\).
No cancellation by \(d_F\) has been made.

The coefficient certificates in `algebra/core_certificates.json` include
every multiplied identity leading to (17)--(21), with its precise nonzero
cancellation factor. The largest cofactor there has three monomials.

## 5. The Hermitian Gram calculation and the first flatness equation

Define, exactly as in the reference,

\[
q=\alpha/\rho,\quad
c_+=\frac{k-\delta\bar q}{n},\quad
c_-=\frac{kq+\delta}{n},\quad
\sigma=u+\mu q,
\]

\[
M=\begin{pmatrix}
1&0&0\\
\mu&\sigma&q\bar\sigma\\
\nu&c_+\sigma&c_-\bar\sigma
\end{pmatrix}.
\tag{22}
\]

First \(\rho(1+|q|^2)=n\) follows from (21). To prove the norm of
\(\sigma\) without any further Gram expansion, put

\[
S_0=\rho u+\mu\alpha,\qquad
Q_\rho=\rho^2-(1-\mu\bar\mu)\rho+\alpha\bar\alpha.
\]

Using the definitions of \(\alpha,\bar\alpha\), two identities in
independent variables are

\[
S_0\bar S_0-\rho^3
 =(\mu\bar\mu-\rho)\bigl(Q_\rho-\rho(u\bar u-1)\bigr),
\]

\[
\mu\rho^2+\alpha\bar\mu\rho+S_0\bar\alpha
 =\mu\bigl(Q_\rho-\rho(u\bar u-1)\bigr).
\tag{23}
\]

Since \(S_0=\rho\sigma\), these prove

\[
|\sigma|^2=\rho>0,\qquad
\mu+q\bar\mu+\sigma\bar q=0.
\tag{24}
\]

The remaining small core certificates now give

\[
\begin{aligned}
\rho(c_++c_-\bar q)&=k,&
\rho(|c_+|^2+|c_-|^2)&=m,\\
\rho(c_--qc_+)&=\delta,&
\rho(c_-+qc_+)&=\gamma,&
\rho c_+c_-&=\beta.
\end{aligned}
\tag{25}
\]

In particular direct matrix multiplication yields

\[
3MM^*=G,\qquad \det M=\delta.
\tag{26}
\]

The order is significant: reality and (21) are proved before dividing by
\(\rho\); the norm of \(\sigma\) is proved before using it in (26).
There is no circular Gram or phase-side hypothesis.

## 6. The remaining flatness equation: two explicit Gram polynomials

We must also prove

\[
F_y=\nu\bar c_++c_-\bar\nu+\sigma c_+\bar c_-=0.
\tag{27}
\]

This does not follow merely by restating the Hermitian Gram identities.
The following two independent-Gram certificates supply it explicitly.

In this section only, use short algebraic names

\[
A=\bar\alpha,\quad a=\alpha,\quad c=\gamma,
\quad K=\bar k,\quad N=\bar\nu,\quad h=h_0,
\quad D=nc-2ak.
\]

Define the following small polynomial circuits, with all their inputs
independent:

\[
\begin{aligned}
t_3&=n\nu K,&
t_2&=nNka+A(kK-h)u,&t_1&=A(kK-h)\mu a,\\
u_3&=enN+hku,&u_2&=ha(k\mu-n\nu),\\
L_{00}&=-u_3naA-u_2aA-eKA^2\mu a,&
L_{01}&=-t_3naA-t_2aA,\\
L_{10}&=u_3(n^2-aA)+u_2n-eKA^2u,&
L_{11}&=t_3(n^2-aA)+t_2n+t_1,\\
Y_0&=2L_{00}+nL_{10}+DL_{11},&
Y_1&=2eL_{01}+DL_{10}+enL_{11}.
\end{aligned}
\tag{28}
\]

The expanded \(Y_0,Y_1\) have 21 and 19 terms. Substituting the explicit
Gram formulas (9), (14) gives

\[
Y_0=Y_1=0.
\tag{29}
\]

Here is the precise polynomial meaning of this assertion. With the
denominator-base order
\((3,\bar P_0,P_1,P_2,P_0,\bar P_1)\), the two clearing exponent
vectors are

\[
(13,2,2,1,2,2),\qquad(14,3,3,1,2,2).
\]

For each cleared numerator \(N_j\), the supplied certificate gives an
explicit integer polynomial \(C_j\) with

\[
N_j=F(\zeta)C_j.
\tag{30}
\]

All cofactors and targets are in `certificates/gram_certificates.json`.
The unpartitioned numerators contain 16,629 and 41,483 terms. To make
(30) suitable for small ring lemmas, the certificate splits both sides by
powers of the **independent** variables \(s,\bar s\):

\[
(N_j)_{i\ell}=\sum_{a+b=i,\ c+d=\ell}F_{ac}(C_j)_{bd}.
\tag{31}
\]

There are 192 and 291 such coefficient identities, respectively. Their
largest expanded sides have only 271 and 525 terms; their largest cofactor
blocks have 101 and 243 terms. Summing (31) proves (30). No coefficient of
\(F\) is assumed to vanish: this is ordinary multiplication and comparison
of polynomials in independent variables.

To see why these polynomials prove (27), put

\[
P=\rho k-\delta A,\quad C_0=ka+\delta\rho,
\quad S_0=u\rho+\mu a,
\]

and use the actual conjugate expressions for \(\bar P,\bar C_0\).
Clearing the definitions in (22) gives

\[
N_{\rm raw}=n\rho^2(\nu\bar P+\bar\nu C_0)+S_0P\bar C_0
  =n^2\rho^3F_y.
\]

Using \(\delta\bar\delta=h\) and \(\delta^2=e\), the polynomial
\(\delta N_{\rm raw}\) is cubic in \(\rho\). Reduce it by the monic relation
\(\rho^2-n\rho+aA=0\), then use

\[
2\delta\rho-n\delta-D=0,
\qquad 2e\rho-en-\delta D=0.
\]

The twelve small cofactor identities in `algebra/y_certificates.json` give
exactly

\[
2e\delta n^2\rho^3F_y=eY_0+\delta Y_1
\tag{32}
\]

modulo the already proved relations. Their largest cofactor has eleven
terms. Equations (29) and (32), and \(e\delta n\rho\ne0\), prove (27).
The independent module-connection check confirms that the polynomials used
in (28)--(30) are exactly those used in the reduction (32).

## 7. Fourier assembly gives a phase side

By (24), \(\xi=\sigma^2/\rho\) has modulus one. Choose any complex
cube root \(w^3=\xi\). It satisfies \(|w|=1\). Let

\[
\omega=e^{2\pi i/3},\quad F_3=(\omega^{jk})_{j,k=0}^2,
\quad P(w)=\operatorname{diag}(1,\bar w,w),
\quad S=MP(w)F_3.
\tag{33}
\]

The elementary identities \(F_3F_3^*=3I\) and \(|w|=1\) imply,
using (26),

\[
SS^*=3MM^*=G.
\]

The first row is \((1,1,1)\). It remains to check entry moduli.
For a row \((a_0,b_0,c_0)\) of \(M\), its entries after (33) are

\[
x_j=a_0+b_0\bar w\omega^j+c_0w\omega^{-j}.
\]

Their squared moduli have constant term
\(|a_0|^2+|b_0|^2+|c_0|^2=1\), by (26). Their nonconstant
Fourier coefficient vanishes precisely when

\[
\sigma^2(a_0\bar b_0+c_0\bar a_0)+\rho b_0\bar c_0=0.
\tag{34}
\]

For the first row this is immediate. For a row
\((a_0,c_+\sigma,c_-\bar\sigma)\), its left side is

\[
\rho\sigma(a_0\bar c_++c_-\bar a_0+\sigma c_+\bar c_-).
\]

Equation (24) handles the second row, and (27) handles the third row.
Thus all nine entries of \(S\) are unimodular.

The finite Fourier expansions, gate identity, and matrix norm calculations
are all supplied as explicit polynomial cofactor certificates in
`assembly/assembly_certificates.json`; only
\(\omega^2+\omega+1=0\), \(w\bar w=1\), and already proved scalar
relations are used.

## 8. Permanent and signature, with no extra row-product guard

For normalized Fourier rows
\(x_j=\mu+A\omega^j+B\omega^{-j}\) and
\(y_j=\nu+C\omega^j+D\omega^{-j}\), direct expansion gives

\[
\operatorname{perm}(1;x;y)=6\mu\nu-3(AD+BC),
\qquad \det(1;x;y)^2=-27(AD-BC)^2.
\tag{35}
\]

For (33), \(AD+BC=\rho(c_-+qc_+)=\gamma\). Hence

\[
\operatorname{perm}(S)=6\mu\nu-3\gamma=z\lambda_0=\pi.
\tag{36}
\]

To identify the signature efficiently, apply the following **universal
polynomial identity for a normalized phase side**, now that \(S\) has
already been proved to be such a side. If \(H_2=\det(S)^2\) and
\(p_S=\prod_{i,j}S_{ij}\), then

\[
H_2=p_S(c_0\bar\pi-\bar P_0).
\tag{37}
\]

This identity is independently certified in twelve variables with explicit
cofactors of the six relations \(x_j\bar x_j-1\) and
\(y_j\bar y_j-1\). It is not an assumption about a pre-existing side.
The Gram equality and first-row normalization identify the quantities in
(37) with the prescribed \(s,t,r,P_0,c_0\).

Combining (8), (36), and \(|\lambda_0|=1\) gives

\[
\lambda_0H_2=-gp_S.
\tag{38}
\]

Since \(p_S\bar p_S=1\),

\[
T(S)=-\pi H_2\bar p_S=-z\lambda_0H_2\bar p_S=gz.
\tag{39}
\]

Both (38) and (39) have short displayed cofactor identities in
`assembly/ASSEMBLY.md`, with all coefficients in the assembly JSON.

The reference row-product statements are also recovered if desired.
The x-row polynomial certificate gives \(\prod_jx_j=u\), while
\(\det M=\delta\), \(\det S^2=-27\delta^2\), and
\(27\lambda_0\delta^2=guv\) give
\(\lambda_0H_2=-guv\). Comparing with (38), using \(g>0\), gives
\(p_S=uv\), and therefore \(\prod_j y_j=v\), since \(|u|=1\).
This also proves the second row-product identity from reference (3), even
when \(\nu=0\) or either Fourier coefficient vanishes.

## 9. Horizontal and vertical assembly and domain audit

Taking \(G_h,z_+\) gives a normalized horizontal phase side satisfying
\(EE^*+BB^*=6I\), and (39) gives its positive signature in (3).

For the vertical side, first form the row-normalized matrix
\(Y=S(G_v,z_-)\) and then transpose it. Thus \(C=Y^T\) has first
column equal to one, and

\[
C^*C=\bar Y Y^T=(YY^*)^T=G_v^T=6I-E^*E.
\]

Transposition preserves the permanent, squared determinant, and product of
all entries, so it preserves \(T\). The negative sheet selected before
transposition gives exactly \(2T(C)=\chi-i\sqrt R\).

Every cancellation in the proof involves a nonzero integer, one of
\(g,n,P_j,\bar P_j,\delta,e,\rho,\sigma,w\), a proved unit phase such
as \(u\), or a product of them.
Their nonvanishing was proved before use. In particular:

- no division by \(d_F,\mu,\nu,\alpha,\beta,c_+,c_-\) occurs;
- both values of \(z\) satisfy the same polynomial certificates;
- at \(d_F=0\), either square-root sign works with \(\rho=n/2>0\);
- every cube root of \(\xi\) gives a valid side;
- the sole seed-domain hypothesis remains \(R>0\).

This completes side existence at every strict seed. The proof does not assert
flatness of the forced lower-right block, or prove the complete
`MatchedExistence` proposition without that separate input.

## 10. Exact proof and formalization status

The paper proof is Sections 1--9 plus the explicit polynomial identities
listed in the certificate files. Every such identity has been replayed by
exact coefficient arithmetic. There is no numerical acceptance test.

The optional Lean files contain supporting scalar lemmas. They are explicitly
uncompiled, as the handoff did not supply a buildable project. This deliverable
therefore claims a complete explicit proof with exact certificates, not an
already compiled Lean proof of the final matrix theorem.

See `STATUS.md` for the four requested status categories and recorded
runtimes, and `CERTIFICATE_GUIDE.md` for the dependency order, file formats,
and integration route.

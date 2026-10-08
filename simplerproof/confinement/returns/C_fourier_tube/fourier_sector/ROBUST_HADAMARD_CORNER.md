# An explicit confinement collar at every Hadamard corner

## The theorem

Let \(\mathcal A\) be the union of the complete affine Fourier family, its transpose, and all their Hadamard equivalents. Let \(\mathcal T\) be the equivalence orbit of Tao's matrix. The phase metric \(d_{\rm ph}\) is defined in `../GEOMETRY_AND_GAUGE.md`.

**Robust Hadamard-corner theorem.** If an order-six complex Hadamard \(H\) has any 3-by-3 corner \(E\) satisfying

\[
\boxed{|\det E|^2\ge27-10^{-16},}\tag{R1}
\]

then

\[
\boxed{d_{\rm ph}([H],\mathcal A\cup\mathcal T)<\frac9{250}=0.036.}\tag{R2}
\]

Consequently,

\[
\boxed{
M(H)<26,\quad |\det E|^2\ge27-10^{-16}
\quad\Longrightarrow\quad
\delta_{\mathcal A}(H)<0.036<0.042,
}\tag{R3}
\]

and the previously certified Fourier-family tube implies

\[
\boxed{\nu(H)<0.55.}\tag{R4}
\]

Using the supplied local lemma F4, the final conclusion strengthens to \(\nu(H)\le0.451\).

The determinant hypothesis can be replaced by

\[
\boxed{|\operatorname{perm}E|^2
\ge9-\frac{10^{-16}}{13}.}\tag{R5}
\]

In particular, the simpler threshold \(|\operatorname{perm}E|^2\ge9-10^{-18}\) suffices.

These assertions include all reconstruction sheets, all choices of the selected corner, and every singular point of the exact Hadamard-corner stratum. The corner need not maximize \(R\). They are explicit terminal conditions for a larger global cover; they do **not** prove that every matrix with \(M<26\) enters this collar.

## 1. Two quantitative three-phase lemmas

Throughout, \(\omega=e^{2\pi i/3}\).

### 1.1 A nearly vanishing unit triangle

Suppose \(|v|=|w|=1\), \(|1+v+w|\le s\), and \(s\le1/16\). Then, for one of the two orders \((\xi,\xi')=(\omega,\omega^2)\) or \((\omega^2,\omega)\),

\[
|v-\xi|\le2s,\qquad |w-\xi'|\le3s.\tag{R6}
\]

Indeed, \(\bigl||1+v|-1\bigr|\le s\), whence

\[
|(v-\omega)(v-\omega^2)|
=|1+2\operatorname{Re}v|
\le(2+s)s\le\frac{33}{16}s.
\]

The nearer-root distance is at most \(\sqrt{33}/16<3/8\). The other distance is therefore larger than \(\sqrt3-3/8>5/4\). Dividing the product bound by \(5/4\) gives a nearer-root distance at most \((33/20)s<2s\). The bound for \(w\) follows from the residual sum and \(1+\xi+\xi'=0\).

### 1.2 The product-one version, with phase error

Suppose \(u_0,u_1,u_2\) are unit phases with product one and

\[
|u_0+u_1+u_2|\le s\le1/16.
\]

There is a tuple \((u_0^0,u_1^0,u_2^0)\), consisting of the three distinct cube roots of unity in some order, such that

\[
u_j=u_j^0e^{i\alpha_j},\qquad
|\alpha_j|\le3s.\tag{R7}
\]

To prove it, divide by \(u_0\) and apply (R6). Write

\[
u_1/u_0=\xi e^{i\beta},\qquad
u_2/u_0=\xi'e^{i\gamma}
\]

with principal relative arguments. For a chord of length at most \(3/16\), the ratio of its phase angle to its chord is less than \(101/100\). One elementary bound establishing this is

\[
\frac{\arcsin t}{t}
\le1+\frac{t^2}{6(1-t^2)},\qquad0\le t<1.
\tag{R8}
\]

The nonconstant coefficients of the arcsine ratio series are positive, start at \(1/6\), and decrease, proving (R8) by a geometric-series bound. It follows that

\[
|\beta|\le\frac{101}{100}\,2s,
\qquad |\gamma|\le\frac{101}{100}\,3s.
\]

The exact product condition implies

\[
u_0=\rho\exp\{-i(\beta+\gamma)/3\},\qquad\rho^3=1.
\]

Relative to \((\rho,\rho\xi,\rho\xi')\), the three phase errors are

\[
\frac{-\beta-\gamma}{3},\quad
\frac{2\beta-\gamma}{3},\quad
\frac{2\gamma-\beta}{3}.
\]

Each has magnitude at most \((202/75)s<3s\), proving (R7). This use of the product condition avoids an unquantified common phase.

## 2. Rounding three blocks from a near-maximal determinant

Permute \(E\) into the top-left corner and write

\[
H=\begin{pmatrix}A&B\\C&D\end{pmatrix}.
\]

Suppose \(|\det A|^2\ge27-\delta\), where \(0<\delta\le1/256\), and put \(\varepsilon=\sqrt\delta\le1/16\). The tolerance \(\delta\) is positive even when the actual determinant equals 27. Let

\[
Q=|(AA^*)_{12}|^2+|(AA^*)_{13}|^2+|(AA^*)_{23}|^2.
\]

Define \(J_A=2\operatorname{Re}((AA^*)_{12}(AA^*)_{23}(AA^*)_{31})\). This uses the Gram matrix \(AA^*\), so its cycle sign is opposite to the handoff's \(J\), which uses off-diagonal entries of \(6I-AA^*\). The Gram determinant expansion has the form

\[
27-|\det A|^2=3Q-J_A,
\qquad |J_A|\le2(Q/3)^{3/2}.
\]

Each Gram off-diagonal has modulus at most 3, so \(Q\le27\) and \(|J_A|\le2Q\). Therefore

\[
Q\le27-|\det A|^2\le\delta.\tag{R9}
\]

Every off-diagonal row inner product of \(A\) consequently has modulus at most \(\varepsilon\). The same is true for its column inner products: the sums of squared off-diagonal moduli of \(AA^*\) and \(A^*A\) agree by the equality of their squared traces and their common diagonal \((3,3,3)\).

Any unimodular 3-by-3 matrix with all off-diagonal row inner products at most \(\varepsilon\) in modulus is within Frobenius distance \(6\varepsilon\) of a 3-by-3 Hadamard, after explicit monomial normalization. To see this, dephase its first row and column and apply (R6) to each remaining row. The two rows must take opposite root orders: if they took the same order, their mutual inner product would differ from 3 by at most \(10\varepsilon\), giving \(3\le11\varepsilon\), impossible. The four nontrivial entry errors have squared sum at most \(26\varepsilon^2<36\varepsilon^2\).

Let \(F=(\omega^{ij})_{0\le i,j<3}\). Apply this rounding first to \(A\), obtaining \(A_0=F\) after top-row and left-column operations. Since

\[
BB^*=6I-AA^*,\qquad C^*C=6I-A^*A,
\]

apply the same rounding to \(B\) and to \(C^T\). Free operations on the right-hand columns and bottom rows put their rounded matrices in the forms

\[
B_0=LF,\qquad C_0=FM,
\quad L=\operatorname{diag}(1,l_1,l_2),\quad
M=\operatorname{diag}(1,m_1,m_2),\tag{R10}
\]

without altering \(A_0\). All diagonal entries are unit phases. Common phases of the right columns and bottom rows set the leading diagonal entries of \(L,M\) to one. The resulting physical blocks satisfy

\[
\|A-A_0\|_F,\ \|B-B_0\|_F,\ \|C-C_0\|_F
\le6\varepsilon.\tag{R11}
\]

Define the exact block-unitary model

\[
H_0(L,M)=
\begin{pmatrix}
F&LF\\
FM&D_0
\end{pmatrix},
\qquad D_0=-\frac13FMF^*LF.\tag{R12}
\]

It satisfies \(H_0H_0^*=6I\), although \(D_0\) need not have flat entries.

The physical equation \(BD^*=-AC^*\), together with \(B_0D_0^*=-A_0C_0^*\), gives

\[
D^*-D_0^*=
\frac{B_0^*}{3}\left[
(B_0-B)D^*-(A-A_0)C^*-A_0(C-C_0)^*
\right].
\]

Every physical block has operator norm at most \(\sqrt6\); \(\|A_0\|_{\rm op}=\sqrt3\) and \(\|B_0^*/3\|_{\rm op}=1/\sqrt3\). Therefore

\[
\|D-D_0\|_F
\le(6+12\sqrt2)\varepsilon<24\varepsilon,
\]

and hence

\[
\boxed{\|H-H_0(L,M)\|_F<27\varepsilon.}\tag{R13}
\]

The normalized \(H\) in (R13) differs from the original only by permitted equivalences.

## 3. Approximate flatness gives a symmetric Fourier product bound

Since \(\|D_0\|_{\rm op}=\sqrt3\), its entries have modulus at most \(\sqrt3\). Every physical entry of \(D\) has modulus one. Thus

\[
\bigl||D_{0,rj}|^2-1\bigr|
\le(1+\sqrt3)|D_{0,rj}-D_{rj}|
<66\varepsilon.\tag{R14}
\]

Use indices modulo three and define

\[
n_k=\frac13\sum_{t=0}^2m_t\omega^{kt},\quad
c_k=n_k\overline{n_{k-1}},\quad
C_{r,s}=c_{r-s},
\]

\[
z_s=l_s\overline{l_{s+1}},\qquad
w_s=m_s\overline{m_{s+1}}.
\]

Both \(z\) and \(w\) have unit-modulus entries and product one. The exact circulant matrix \(FMF^*/3\) is unitary, so \(\sum c_k=0\). The nonzero autocorrelation of row \(r\) in (R12) is \((Cz)_r\). It is a Fourier coefficient of the three squared-modulus errors in (R14); therefore

\[
|(Cz)_r|\le66\varepsilon,
\qquad
\boxed{\|Cz\|_2\le120\varepsilon=:\eta.}\tag{R15}
\]

Define mean Fourier coefficients

\[
a_t=\frac13\sum_s z_s\omega^{-ts},\qquad
b_t=\frac13\sum_s w_s\omega^{-ts}.
\]

The circulant eigenvalues satisfy the exact identities

\[
\lambda_0=0,\qquad
\lambda_1=\overline{b_1},\qquad
\lambda_2=\omega b_2.\tag{R16}
\]

For example, direct substitution of the Fourier formula for \(n\) gives

\[
3\lambda_t=\sum_jm_{j+t}\overline{m_j}\omega^j,
\]

from which (R16) follows by conjugation and an index shift. The verifier checks (R16) as exact Laurent-polynomial identities in the two independent phases of \(M\).

Parseval's identity now gives the decisive relation

\[
\boxed{\|Cz\|_2^2=3\left(|a_1b_1|^2+|a_2b_2|^2\right).}\tag{R17}
\]

In particular \(|a_tb_t|\le\eta\) for \(t=1,2\). No rank division is involved, so these inequalities include every singular rank case.

## 4. Rounding to a Fourier-family matrix or Tao

Put \(e=\sqrt\eta\). The first product bound implies that at least one of \(|a_1|,|b_1|\) is at most \(e\). Since \(H_0(L,M)^T=H_0(M,L)\), we may transpose the analysis if necessary and suppose

\[
|a_1|\le e.
\]

Apply (R7) to the three phases \(z_s\omega^{-s}\), whose sum has modulus at most \(3e\). The rounded zero-sum cubic tuple is an affine permutation of \((1,\omega,\omega^2)\). Multiplying back by \(\omega^s\) gives a rounded vector

\[
z_s^0=\rho\omega^{ks},\qquad k=0\text{ or }2,\quad\rho^3=1,
\]

with an entrywise phase error at most \(9e\). Because \(l_0=1\), the identities \(l_1=\overline{z_0}\), \(l_2=z_2\) produce a normalized cubic diagonal \(L_0\) whose two phase errors are at most \(9e\).

Replacing only one diagonal in (R12) changes two blocks; unitarity gives the exact norm relation

\[
\|H_0(L,M)-H_0(L_0,M)\|_F
=\sqrt6\|L-L_0\|_F
\le18\sqrt3\,e<32e.\tag{R18}
\]

If \(k=0\), \(L_0\) is geometric. The exact block classification identifies \(H_0(L_0,M)\) with a member of the complete affine Fourier family.

Suppose instead \(k=2\). The rounded coefficient has \(|a_2^0|=1\). Since a chord is bounded by its phase angle,

\[
|a_2|\ge1-9e\ge\frac12,
\]

provided \(9e\le1/2\). The second product bound in (R17) then gives \(|b_2|\le2\eta\). Apply (R7) to \(w_s\omega^{-2s}\), whose sum has modulus at most \(6\eta\). This rounds \(M\) to a normalized cubic diagonal \(M_0\) with phase errors at most \(18\eta\), and gives

\[
\|H_0(L_0,M)-H_0(L_0,M_0)\|_F
\le36\sqrt3\,\eta<64\eta.\tag{R19}
\]

The rounded \(w\) has Fourier mode 0 or 1. If it has mode 0, \(M_0\) is geometric, so the final matrix lies in the transposed Fourier family. Otherwise the two rounded diagonals have opposite nonzero quadratic chiralities, 2 and 1.

The exact 36-case classification in `../mc1/HADAMARD_CORNER_CLASSIFICATION.md` proves that **every** such opposite-chirality pair yields a flat Hadamard equivalent to Tao. Thus the target matrix is an actual Hadamard in every branch; no approximate flatness assumption is promoted to an exact one. The robust verifier replays that complete finite classification and checks the relation between the ratio-vector Fourier mode and the quadratic chirality.

Combining (R13), (R18), and (R19), there is a monomially normalized target \(K\in\mathcal A\cup\mathcal T\) with

\[
\boxed{\|H-K\|_F
<27\varepsilon+32\sqrt{120\varepsilon}+64(120\varepsilon).}\tag{R20}
\]

If the argument was transposed, transpose the target back. The set \(\mathcal A\) is closed under transposition and the displayed Tao representative is symmetric, so the stated target set is unchanged.

## 5. Exact constants at determinant deficit \(10^{-16}\)

For (R1), take

\[
\varepsilon=10^{-8},\qquad\eta=120\varepsilon,
\qquad\sqrt\eta<\frac{11}{10000}.
\]

All applications of the three-phase lemma and the large-coefficient bound are valid because

\[
3\frac{11}{10000}<\frac1{16},\qquad
6\eta<\frac1{16},\qquad
9\frac{11}{10000}<\frac12.
\]

The rational upper bound in (R20) is

\[
27\varepsilon+32\frac{11}{10000}+64\eta
=\frac{3527707}{100000000}
=0.03527707<\frac1{25}.\tag{R21}
\]

For two unit phases with chord at most \(1/25\), (R8) implies that their principal relative phase is less than \((101/100)\) times the chord. Apply this to all 36 entries of \(H\) and \(K\), then project the phase matrix horizontally. The projection is a contraction and removes only allowed diagonal rephasings. Thus

\[
d_{\rm ph}([H],[K])
<\frac{101}{100}\frac{3527707}{100000000}
=\frac{356298407}{10000000000}
<\frac9{250}<\frac{21}{500}.\tag{R22}
\]

This proves the unconditional assertion (R2).

If \(K\) is Tao-equivalent, its exact value is \(M(K)=243\). The universal signed-invariant Lipschitz theorem in `../SIGNED_INVARIANT_BOUNDS.md` gives

\[
\sqrt{M(H)}\ge\sqrt{243}-48\sqrt3\frac9{250}
=\sqrt3\left(9-48\frac9{250}\right).
\]

The quantity is positive, and its square is strictly larger than 26. Therefore this branch cannot occur under \(M(H)<26\). The remaining target lies in \(\mathcal A\), proving (R3). The \(21/500\) tube theorem in `AMBIENT_GRADIENT.md` proves (R4), and F4 gives the optional improvement to \(0.451\).

## 6. Converting a near-maximal permanent to the determinant condition

Let \(d=9-|\operatorname{perm}E|^2\), so \(d\ge0\) by the sharp permanent bound in `../mc1/GLOBAL_BLOCK_MOMENTS.md`. The exact block identities there give

\[
|\operatorname{perm}E|^2=9-p-J,
\qquad
|\det E|^2=27-3p-J,
\]

while the same-row complementary permanent has squared modulus \(9-p+J\ge0\). Hence

\[
J=d-p,\qquad p\le\frac{9+d}{2},
\qquad 27-|\det E|^2=2p+d.\tag{R23}
\]

If \(d\le1/4\), then \(p\le37/8\). The elementary bound \(|J|\le2(p/3)^{3/2}\) gives

\[
d\ge p\left(1-\sqrt{\frac{4p}{27}}\right)
\ge p\left(1-\sqrt{\frac{37}{54}}\right)
\ge\frac p6,
\]

using the exact comparison \(37/54<25/36\). Consequently

\[
\boxed{27-|\det E|^2\le13\bigl(9-|\operatorname{perm}E|^2\bigr).}\tag{R24}
\]

This proves the permanent cutoff (R5).

## Verification, inputs, and the remaining global question

Run from this directory:

```sh
python3 verify_robust_corner.py
```

The verifier uses only the Python standard library. It checks every rational cutoff in the proof, the exact circulant identities (R16), Fourier orthogonality, and the connection between pure ratio-vector modes and opposite cubic chirality. It also replays the sibling exact Hadamard-corner verifier, including all 36 cubic cases, every Tao equivalence, and the exact value \(M(Tao)=243\).

The analytic ingredients are proved above. The confinement conclusion additionally uses the proved \(0.042\) Fourier-family tube, the universal signed-invariant Lipschitz bound, and their stated input F2. The optional \(0.451\) conclusion uses the supplied F4. No floating-point optimization or interval decision is used. All decimals in the displayed cutoff calculations are exact terminating rational numbers.

The remaining global obligation is explicit: matrices with \(M<26\) whose every corner lies below the determinant and permanent cutoffs still require a separate exclusion or complete coverage. This collar supplies a quantitative terminal condition near the exact Hadamard-corner stratum; it is not a proof that all low-\(M\) matrices approach that stratum.

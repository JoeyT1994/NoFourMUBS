# Task D: exact conditioning on the complete Fourier family

## Status

The global rank and lower singular-value claims in Task D have **not** been proved here. No counterexample was found. The result below proves the claimed rank and sharp lower bound on an entire two-parameter family, and checks the normalization of the Jacobian. It does not provide a global constant for arbitrary Records.

## Exact result

Write \(\zeta=e^{2\pi i/3}\), \(F_3=(\zeta^{yv})_{y,v=0}^2\), and let \(D=\operatorname{diag}(1,a,b)\), where \(|a|=|b|=1\). For every matrix

\[
 H(a,b)=\begin{pmatrix}F_3&DF_3\\F_3&-DF_3\end{pmatrix},
\]

the horizontal Jacobian in `toolkit/conditioning.py` has squared singular values

\[
\boxed{12^{[5]},\quad9^{[12]},\quad3^{[4]},\quad0^{[4]}.}
\]

Consequently its rank is 21 and its least positive singular value is exactly \(\sqrt3\). These statements hold for every parameter value, including coincidences and boundary points of chosen parameter fundamental domains. They also hold throughout the equivalence, conjugation and transpose orbit of this family. In particular, equality at \(\sqrt3\) is attained along a full two-parameter family, rather than only at the Fourier point.

### 1. The unrestricted Gram operator

Let \(A\) be the same derivative with all 36 real phases retained; its output has the real and imaginary parts of the 15 upper-triangular row inner products. This is the normalization used by the supplied toolkit. For a Hadamard \(H\), direct differentiation gives

\[
(A^TA)_{(r,j),(r,k)}=6\delta_{jk}-1,
\]

and, for \(r\ne s\),

\[
(A^TA)_{(r,j),(s,k)}
 =-\operatorname{Re}(H_{rj}\overline{H_{sj}}\overline{H_{rk}}H_{sk}).
\tag{1}
\]

The diagonal block uses column orthogonality. The derivative kills every row or column phase, a space of dimension 11, and the horizontal space is exactly its orthogonal complement. Therefore the nonzero singular values of \(A\) equal those of the horizontal Jacobian, and horizontal restriction removes precisely eleven zeros from the spectrum of (1).

### 2. Fourier decomposition

Index rows by \((x,y)\in\mathbb Z_2\times\mathbb Z_3\) and columns by \((u,v)\in\mathbb Z_2\times\mathbb Z_3\). Then

\[
H_{(x,y),(u,v)}=(-1)^{xu}\zeta^{yv}d_y^u,
\qquad (d_0,d_1,d_2)=(1,a,b).
\]

Complexifying the real symmetric operator (1) does not change its eigenvalues or their multiplicities. Fourier transform the \(x\) and \(v\) coordinates, with characters \((-1)^{xl}\zeta^{kv}\). The transformed operator is block diagonal in \((k,l)\in\mathbb Z_3\times\mathbb Z_2\), with six coordinates \((y,u)\) in every block. Its blocks are as follows.

* For \((k,l)=(0,0)\), the block is zero.
* For \((k,l)=(0,1)\), it is a direct sum over the three values of \(y\) of \(6\begin{pmatrix}1&-1\\-1&1\end{pmatrix}\). This gives \(12^{[3]},0^{[3]}\).
* For \(k=1,2\) and \(l=0\), it is a direct sum over \(u=0,1\) of \(9I_3-3\mathbf1\mathbf1^T\). Each such block gives \(9^{[4]},0^{[2]}\).
* For \((k,l)=(1,1)\), after ordering by \(u\), it is

\[
6I_6-3\begin{pmatrix}0&C\\C^*&0\end{pmatrix},
\qquad
C=\begin{pmatrix}
0&a^{-1}&b\\
a^{-1}&0&a/b\\
b&a/b&0
\end{pmatrix}.
\tag{2}
\]

The \((2,1)\) block is its conjugate.

These formulas follow by summing the two finite characters in (1); the verifier independently performs all these sums as Laurent polynomials in formal \(a,b\), reducing \(\zeta^2+\zeta+1=0\). In particular, they are symbolic identities for every allowed parameter, not values checked at sample matrices.

### 3. The final six-dimensional block

Every symmetric zero-diagonal matrix

\[
C=\begin{pmatrix}0&c&d\\c&0&e\\d&e&0\end{pmatrix},
\qquad |c|=|d|=|e|=1,
\]

has singular values \(2,1,1\). Indeed, with \(z=(c/e,c/d,1)^T\),

\[
CC^*=I_3+zz^*,\qquad z^*z=3.
\]

Thus the eigenvalues in (2) are \(12,9,9,3,3,0\). Summing all six blocks gives the unrestricted spectrum

\[
12^{[5]},\quad9^{[12]},\quad3^{[4]},\quad0^{[15]}.
\]

Removing the eleven gauge directions proves the result.

### 4. Invariance

Row and column permutations act orthogonally on the phase variables and the real constraint coordinates. Diagonal unitary multiplication rotates each complex row constraint and leaves the real singular values unchanged. Conjugation changes signs of imaginary coordinates. Transposition replaces the row Gram derivative by the column Gram derivative. These have equal Frobenius norms because \(H/\sqrt6\) is unitary; diagonal derivatives vanish, so the upper-triangle output norms also agree. Hence transposition preserves the singular values.

## Verification

Run `python3 output/conditioning_audit/verify_conditioning.py`. All acceptance decisions use exact integer and rational arithmetic. The script verifies the complete symbolic block decomposition for arbitrary unit phases and the spectrum/multiplicity calculation. It exits nonzero if any assertion fails.

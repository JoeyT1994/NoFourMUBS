# Lemma Q: an explicit Fourier-family anchor

## 1. Statement and exact formula

Let \(\omega=e^{2\pi i/3}\), \(z=e^{it}\),
\(F_3=(\omega^{ij})_{i,j=0}^2\), and

\[
K(t)=\begin{pmatrix}F_3&F_3\\F_3D(t)&-F_3D(t)\end{pmatrix},
\qquad D(t)=\operatorname{diag}(1,z,1).
\]

For its positional corner on zero-based rows \((1,3,5)\) and columns
\((0,2,4)\), dephased with those orders, the project's discriminant is

\[
\boxed{
R(t)=144\sin^2t\,(1+\cos t)^2
     =288\sin^2(t/2)(1+\cos t)^3
     =2304\sin^2(t/2)\cos^6(t/2).
}
\]

In particular, \(R(t)>0\) for every \(0<t<\pi\), so **\(t_0=\pi\)** works.
Its small-parameter expansion is

\[
R(t)=576t^2-480t^4+O(t^6).
\]

## 2. Short proof directly from the seed discriminant

Reorder rows as \((1,3,5,0,2,4)\) and columns as
\((0,2,4,1,3,5)\), then multiply each column by the conjugate of its first
entry. The first column is already all ones. The dephased corner is

\[
E(t)=\begin{pmatrix}
1&1&1\\
1&\omega&-\omega^2z\\
1&\omega^2&-\omega z
\end{pmatrix}.
\tag{1}
\]

Thus the seed is
\((a,b,c,d)=(\omega,-\omega^2e^{it},\omega^2,-\omega e^{it})\).
In phase coordinates modulo \(2\pi\), one may take
\(\theta(t)=(2\pi/3,\pi/3+t,4\pi/3,5\pi/3+t)\).

For clarity, use the project's complementary-Gram convention

\[
G_h=6I-EE^*=\begin{pmatrix}
3&\bar s&\bar u\\s&3&\bar r\\u&r&3
\end{pmatrix},
\]

and define

\[
\begin{aligned}
X&=|s|^2,&Y&=|u|^2,&Z&=|r|^2,\\
p&=X+Y+Z,&J&=2\operatorname{Re}(sr\bar u),
&W&=XY+XZ+YZ-XYZ,\\
g&=27-3p+J,&\eta&=9-p+J,\\
\chi&=W-(p-9)(p-18)+(p-15)J,
&R&=4g^2\eta-\chi^2.
\end{aligned}
\tag{2}
\]

Here the off-diagonal letter \(u\) replaces the reconstruction notes'
\(t\), to distinguish it from the real curve parameter.
Equation (1), together with \(1+\omega+\omega^2=0\), gives

\[
s=\omega^2(1+z),\qquad u=\omega(1+z),\qquad r=0.
\]

Put \(x=\cos t\). Substitution into (2) gives

\[
\begin{aligned}
X=Y&=2(1+x),&Z&=J=0,\\
p&=4(1+x),&W&=4(1+x)^2,\\
g&=3(5-4x),&\eta&=5-4x,\\
\chi&=-12x^2+84x-66.
\end{aligned}
\]

Therefore the entire required calculation reduces to the integer
polynomial identity

\[
\begin{aligned}
R
&=36\left[(5-4x)^3-(-2x^2+14x-11)^2\right]\\
&=144(1-x^2)(1+x)^2.
\end{aligned}
\tag{3}
\]

The displayed trigonometric forms and positivity on \((0,\pi)\) follow
immediately. This proves Lemma Q. In particular, its proof uses the seed
definition of \(R\) directly and requires no side-existence theorem.

For the exact vertical convention
\(G_v=6I-E^{\mathsf T}\bar E\), the three lower off-diagonal entries are
\((0,-1-z,-1-z)\). Its \((X,Y,Z)\) are therefore a permutation of the
horizontal values, and \(J=0\); the same \(g,\eta,\chi,R\) follow.

## 3. Explicit positive matching

The same dephased matrix has upper-right and lower-left blocks

\[
B(t)=\begin{pmatrix}
1&1&1\\
\omega^2z&-1&-\omega\\
\omega z&-1&-\omega^2
\end{pmatrix},\qquad
C(t)=\begin{pmatrix}
1&\omega&\omega^2\\
1&\omega^2&\omega\\
1&1&-z
\end{pmatrix}.
\tag{4}
\]

Since \(F_3F_3^*=3I\) and \(D(t)\) is unitary, direct block multiplication
gives \(K(t)K(t)^*=6I\); all entries have modulus one. Thus the blocks in
(4) are actual flat sides, with

\[
BB^*=G_h,\qquad C^{\mathsf T}\bar C=G_v.
\]

For the project signature

\[
T(A)=-\operatorname{perm}(A)\det(A)^2
       \prod_{i,j}\overline{A_{ij}},
\]

one has the elementary identities

\[
\begin{array}{c|ccc}
 &\operatorname{perm}(A)&\det(A)&\prod_{i,j}A_{ij}\\ \hline
B&2z-1&(\omega-\omega^2)(2z-1)&z^2\\
C&z-2&(\omega-\omega^2)(z-2)&-z
\end{array}
\]

and hence, since \((\omega-\omega^2)^2=-3\),

\[
\begin{aligned}
T(B)&=3(2z-1)^3z^{-2}
     =24z-36+18z^{-1}-3z^{-2},\\
T(C)&=-3(z-2)^3z^{-1}=\overline{T(B)}.
\end{aligned}
\tag{5}
\]

In particular,

\[
\operatorname{Im}T(B)=6\sin t(1+\cos t)>0
\qquad(0<t<\pi),
\]

and \(T(B)+\overline{T(B)}=\chi\). With the positive square root of (3),

\[
\boxed{2T(B)=\chi+i\sqrt R,\qquad
       2T(C)=\chi-i\sqrt R.}
\tag{6}
\]

The signature is unchanged by transposition, so (6) also applies to the
vertical side in the \(C^{\mathsf T}\) convention. These equations establish
the positive matched pairing explicitly. They give \(\theta(t)\in U\)
directly and avoid invoking the general matching theorem to establish
nonemptiness of the side-existence set. By the existing uniqueness of each
signed side fiber and of the completed block, the quotient class is
\([K(t)]=f_+(\theta(t))\).

## 4. Fourier limit and global propagation

The curve \(K(t)\) is continuous. At \(t=0\) it is permutation-equivalent
to \(F_6\). An explicit check uses \(\zeta=-\omega^2=e^{\pi i/3}\) and the
permutations

\[
\rho=(0,2,4,3,5,1),\qquad
\kappa=(0,4,2,3,1,5),
\]

for which \(K(0)_{ij}=\zeta^{\rho_i\kappa_j}\).
Consequently \([K(t)]\to[F_6]\). The existing certified interior property
in the brief therefore gives an \(\varepsilon>0\) such that
\([K(t)]\in W\) for \(0<t<\varepsilon\). Taking
\(0<t<\min(\pi,\varepsilon)\), equations (1) and (6) give

\[
\theta(t)\in U,\qquad
\theta(t)\in A=f_+^{-1}(W).
\]

No numerical parameter choice or additional Record-membership check is
required for this existence argument.

Here is a compact form of the topological propagation step.

**Clopen anchor lemma.** Let \(X\) be compact, \(R:X\to\mathbb R\)
continuous, \(S=\{R>0\}\), and \(M\) the set of all positive local maxima
of \(R\). Let \(V\subseteq S\) be relatively open and closed. Assume the
existing symmetry transport gives

\[
V\cap M\ne\varnothing\quad\Longrightarrow\quad M\subseteq V.
\]

Then \(V\ne\varnothing\) implies \(V=S\).

**Proof.** Choose a point of \(V\) and maximize \(R\) on its compact
closure \(\overline V^{\,X}\). The maximum is positive, so its maximizer
lies in \(S\), and relative closedness puts it in \(V\). Since \(V\) is
open in \(X\), this is a positive local maximum of \(R\). Thus transport
puts all of \(M\) in \(V\). If \(S\setminus V\) were nonempty, applying
the same argument to that relatively clopen set would produce a positive
local maximum outside \(V\), a contradiction. \(\square\)

Apply this with \(X=\mathbb T^4\) and \(V=U\), then \(V=A\), using the
existing clopenness statements and transport of the 18 positive local
maxima. This supplies the two uses of the anchor described in the brief.
The orbit classification must concern **all positive local maxima**, as
assumed there. The argument needs no component enumeration or extra
regularity guards.

## 5. Exact verification and scope

`verify.py` checks all algebra in this proof by canonical integer Laurent
arithmetic with \(\omega^2+\omega+1=0\), \(\bar\omega=\omega^2\), and
\(\bar z=z^{-1}\). In particular it constructs \(K\), extracts and dephases
the requested corner, independently computes (2) from both Grams, and
checks (3)--(6) and the explicit \(F_6\) permutation. All 62 checks pass.

Positivity and the compactness argument are proved above analytically.
The pre-existing clopenness, orbit classification/transport, matched-fiber
uniqueness and Fourier interior certificate are the integration inputs
specified by the brief. This bundle supplies the new lemma and assembly
argument; the requested Lean re-plumbing is assigned to the integrator.

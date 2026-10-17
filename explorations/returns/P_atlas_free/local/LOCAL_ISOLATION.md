# Full local isolation of the exceptional product triple

**Status: PROVED, with a CERTIFIED exact finite calculation.**

The exceptional product triple is an isolated point of the full, canonically
dephased MUB-triple space. This is proved in all 55 phase variables, without a
product, Fourier, bicirculant, or other ansatz on the perturbed triple.

The exact 96-by-55 Jacobian has rank **55**. More quantitatively, in the phase
coordinates defined below, every nonzero exact solution satisfies

\[
\|x\|_\infty\ge \frac{24}{5735}.
\tag{1}
\]

Consequently the exceptional triple is the unique exact solution in the
**closed** phase cube

\[
\boxed{\|x\|_\infty\le\frac1{256}\quad\text{radians}.}
\tag{2}
\]

Every member of its finite equivalence orbit is therefore isolated. Its
complex conjugate belongs to that same orbit; no second conjugate orbit is
needed. In particular, Fourier-free triples cannot approach this orbit.

This closes subproblem B at the exceptional product orbit. It does not
classify all triples with a Fourier edge, and it does not exclude additional
compact components of the triple space.

## 1. Exact representative and normalization

Put

\[
\omega=\frac{-1+i\sqrt3}{2},\qquad
F_2=\begin{pmatrix}1&1\\1&-1\end{pmatrix},\qquad
(F_3)_{bc}=\omega^{bc}\quad(0\le b,c<3),
\]

\[
H_0=F_2\otimes F_3,\qquad
D=\operatorname{diag}(1,\omega,\omega,i,i\omega,i\omega),
\qquad K_0=DH_0.
\tag{3}
\]

These are raw phase matrices. The orthonormal bases are
\(I,H_0/\sqrt6,K_0/\sqrt6\). Equivalently, writing row and column indices as
\(r=3a+b\) and \(c=3j+k\),

\[
(H_0)_{r c}=(-1)^{aj}\omega^{bk},\qquad
(K_0)_{r c}=i^a\omega^{b^2}(-1)^{aj}\omega^{bk}.
\tag{4}
\]

This is the product representative explicitly specified by the supplied
`explorations/triple_test/triples.py:known_triples`. Only that defining
expression is used; no numerical search, atlas datum, or numerical
classification in that program enters the present proof.

The first row and first column of \(H_0\) equal one, as does the first row of
\(K_0\). This is exactly the canonical 55-phase gauge used in return L.

### Exact MUB identities

The verifier works in \(\mathbb Q(i,\sqrt3)\) and checks

\[
H_0^\dagger H_0=K_0^\dagger K_0=6I,
\qquad |(H_0^\dagger K_0)_{ab}|^2=6
\quad(0\le a,b<6).
\tag{5}
\]

These also follow by tensoring the elementary identities in dimensions two
and three. Set \(M_0=H_0^\dagger K_0\) and \(L_0=M_0/\sqrt6\).
For every \(T\in\{H_0,K_0,M_0\}\), the rows \((0,1,2)\) and columns
\((0,1,3)\) form a singular three-by-three submatrix. The first and fourth
columns in the top three rows are proportional. Thus all three edges are
Fourier type, directly from the singular-minor predicate.

In fact all three are equivalent to the ordinary Fourier matrix. Clearly
\(K_0=DH_0\). Entrywise dephasing of \(M_0\) gives

\[
\frac{(M_0)_{rc}(M_0)_{00}}
     {(M_0)_{r0}(M_0)_{0c}}
=(H_0)_{p(r),c},\qquad
p=(0,2,1,3,5,4).
\tag{6}
\]

Since all entries of \(M_0\) have modulus \(\sqrt6\), this is ordinary
row/column dephasing of the raw Hadamard \(L_0\). Formula (6) is checked for
all 36 entries. If \(\zeta_6=e^{i\pi/3}=-\omega^2\), then

\[
(H_0)_{rc}=\zeta_6^{\rho(r)\kappa(c)},\quad
\rho=(0,2,4,3,5,1),\quad
\kappa=(0,4,2,3,1,5),
\tag{7}
\]

which explicitly identifies \(H_0\) with the cyclic order-six Fourier
matrix.

### Conjugation belongs to the same orbit

Let \(P\) permute columns by \(p=(0,2,1,3,5,4)\). Then

\[
\overline H_0=\overline D K_0P,\qquad
\overline K_0=\overline D H_0P.
\tag{8}
\]

Thus exchanging the two nonstandard bases, applying the common diagonal
unitary \(\overline D\), and applying \(P\) to both column sets produces the
conjugate triple. The common diagonal unitary preserves the rays of the
standard basis. These are allowed equivalences, and the result is already
canonically dephased. The verifier checks both equalities entrywise.

The representative (3) is the familiar exceptional product triple in the
MMVW discussion. Their Section 4 distinguishes an exceptional triple with
three ordinary Fourier edges from the continuous construction; their
global exhaustion assertion remains Conjecture 1. The present isolation
proof does not assume that conjecture. Reference: M. Matolcsi, Á. K.
Matszangosz, D. Varga and M. Weiner, *Triplets of Mutually Unbiased Bases*,
[arXiv:2503.14752v2, Section 4](https://arxiv.org/html/2503.14752v2#S4).

## 2. The full local triple equations

For \(x\in\mathbb R^{55}\), set

\[
H_{rc}(x)=(H_0)_{rc}e^{ix^H_{rc}}
\quad(1\le r,c\le5),
\]

\[
K_{rc}(x)=(K_0)_{rc}e^{ix^K_{rc}}
\quad(1\le r\le5,\ 0\le c\le5),
\tag{9}
\]

with all omitted phase increments fixed at zero. Variables are ordered
row-major, first the 25 \(H\) variables and then the 30 \(K\) variables.

Let \(\mathcal R:\mathbb R^{55}\to\mathbb R^{96}\) consist of

1. real parts of the 15 lexicographically ordered upper off-diagonal
   entries of \(H^\dagger H\);
2. imaginary parts of those same entries;
3. real parts of the 15 upper off-diagonal entries of \(K^\dagger K\);
4. imaginary parts of those same entries;
5. the 36 row-major real numbers \(|(H^\dagger K)_{ab}|^2-6\).

Flatness is built into (9), and the Gram diagonal entries are automatically
six. Therefore \(\mathcal R(x)=0\) is **exactly** the full MUB-triple
condition in this chart. No other structural restriction is imposed.

The verifier differentiates these equations exactly. For example, at a
single \(H\)-variable \(x^H_{rc}\),

\[
\partial(H^\dagger H)_{ab}
=i\overline{H_{ra}}H_{rb}
  (\mathbf1_{c=b}-\mathbf1_{c=a}),
\]

\[
\partial(H^\dagger K)_{ab}
=-i\mathbf1_{a=c}\overline{H_{rc}}K_{rb}.
\tag{10}
\]

The analogous \(K\)-derivative is
\(i\mathbf1_{b=c}\overline{H_{ra}}K_{rc}\), and differentiating a squared
modulus gives \(2\operatorname{Re}(\overline M\,\partial M)\).
Thus every entry of \(J=D\mathcal R(0)\) belongs to
\(\mathbb Z[1/2,\sqrt3]\).

An independent expansion into phase monomials reproduces every Jacobian
entry, including the cross equations expanded as fifteen pair terms.
The verifier compares both constructions and also computes every Taylor
weight in Section 4 from those exponent vectors.

## 3. Exact rank and inverse certificate

Reducing \(\sqrt3\mapsto4\) modulo 13 defines a ring homomorphism because
\(4^2\equiv3\pmod{13}\) and 2 remains invertible. The following 55 residual
rows, in the displayed order and with zero-based indices, give a square
minor using every one of the 55 columns:

```text
 0,  1,  6,  3,  4, 15, 16, 17, 18, 19, 21,
24, 22, 23, 26,  8,  9, 12, 13, 78, 27, 28,
66, 72, 79, 30, 31, 33, 36, 34, 60, 45, 46,
47, 48, 49, 61, 51, 52, 54, 53, 56, 62, 43,
40, 63, 38, 44, 64, 57, 58, 81, 67, 68, 82
```

Writing the corresponding residual selection as \(G\) and its Jacobian as
\(J_0=DG(0)\), exact modular elimination gives

\[
\boxed{\det J_0\equiv8\pmod{13}.}
\tag{11}
\]

Consequently \(J_0\) is nonsingular over \(\mathbb R\), and the full
96-by-55 Jacobian has rank exactly 55. The ordinary inverse-function
theorem already proves local isolation.

For the quantitative statement, the verifier additionally computes
\(B=J_0^{-1}\) by exact fraction arithmetic in \(\mathbb Q(\sqrt3)\), then
independently multiplies \(BJ_0\) and checks every entry is the identity.
The complete matrix is retained in `isolated_inverse.json`. It is
recomputed, rather than trusted, during replay.

For an entry \(a+b\sqrt3\), the rational expression
\(|a|+(7/4)|b|\) is an absolute-value upper bound because
\(3<49/16\). Summing these exact rational bounds gives

\[
\|B\|_\infty\le\frac{1817}{144}.
\tag{12}
\]

The stronger weighted bound required below is also computed exactly.

## 4. Uniform Taylor estimate and certified phase gap

For a real phase monomial \(ce^{iv\cdot x}\), with \(|c|=1\),

\[
|ce^{iv\cdot x}-c-ic(v\cdot x)|
\le\tfrac12|v\cdot x|^2
\le\tfrac12\|v\|_1^2\|x\|_\infty^2.
\tag{13}
\]

This bound is global in the real phase increments. It also bounds the
remainder of either real or imaginary part. For every residual row \(j\),
assign the following weight:

| Residual row | Weight \(w_j\) |
|---|---:|
| \(\operatorname{Re}\) or \(\operatorname{Im}(H^\dagger H)_{0b}\) | 5 |
| \(\operatorname{Re}\) or \(\operatorname{Im}(H^\dagger H)_{ab}\), \(a>0\) | 20 |
| \(\operatorname{Re}\) or \(\operatorname{Im}(K^\dagger K)_{ab}\) | 20 |
| \(|(H^\dagger K)_{0b}|^2-6\) | 90 |
| \(|(H^\dagger K)_{ab}|^2-6\), \(a>0\) | 360 |

For a Gram row, the contribution from matrix row zero is constant. Each of
the other five summands has phase-exponent \(\ell^1\)-norm one in the
first case, and two in the other Gram cases. This gives 5 and 20.

For a cross residual, write \((H^\dagger K)_{ab}=\sum_{r=0}^5m_r\).
Here \(m_0=1\), while each other summand has phase-exponent norm \(d=1\)
when \(a=0\), or \(d=2\) when \(a>0\). Expanding the squared modulus as

\[
\left|\sum_rm_r\right|^2
=6+2\operatorname{Re}\sum_{r<s}m_r\overline m_s
\]

gives five pairs of exponent norm \(d\) and ten of exponent norm \(2d\).
Their total weight is \(2(5d^2+10(2d)^2)=90d^2\).

It follows that every selected residual satisfies

\[
|G_j(x)-G_j(0)-(J_0x)_j|
\le\frac{w_j}{2}\|x\|_\infty^2.
\tag{14}
\]

Keeping these weights in the inverse multiplication, the exact verifier
checks

\[
\max_i\sum_j|B_{ij}|w_j
\le\boxed{\Lambda=\frac{5735}{12}}.
\tag{15}
\]

At any other exact solution, \(G(x)=G(0)=0\). Since \(BJ_0=I\), (14)
therefore implies

\[
\|x\|_\infty
\le\frac{\Lambda}{2}\|x\|_\infty^2.
\tag{16}
\]

If \(x\ne0\), division gives (1). In the closed cube (2),

\[
\frac{\Lambda}{2}\|x\|_\infty
\le\frac{5735}{6144}<1,
\]

so (16) forces \(x=0\). This proves the claimed full-space isolation
radius. The phase gap is a rigorous lower bound, not a claim that any
solution occurs at equality or that the bound is optimal.

For comparison, the same monomial estimate on derivatives gives
\(\|B(DG(x)-DG(0))\|_\infty\le\Lambda r\) in a phase cube of radius \(r\).
Since \(\Lambda/512=5735/6144<1\), \(G\) is injective on the cube of
radius \(1/512\). The radial Taylor argument is why the isolation cube
around the known zero can be twice as large.

## 5. Consequence for subproblem B

Let \(q_0\in V\) denote (3), and let \(G_{\rm eq}\) denote the finite
relabeling action from the handoff. The set

\[
Q=G_{\rm eq}\{q_0\}
\]

is a finite set of isolated points, hence is both open and closed in \(V\).
Isolation is preserved by each equivalence homeomorphism. Every point of
\(Q\) has three Fourier edges. Therefore the full solution set near every
point of \(Q\) lies in \(V_F\), as requested by B. No other triple,
Fourier-free or otherwise, can limit onto \(Q\).

Moreover, \(Q\cap G_{\rm eq}M=\varnothing\). Otherwise an isolated point
would lie on the image of an embedded two-dimensional construction
surface, which supplies distinct exact triples arbitrarily near that
point. This contradicts isolation.

## 6. Replay and trust boundary

From this folder run

```bash
python -S verify_isolated.py
```

Only Python's standard library is used. All arithmetic is integer or
rational arithmetic in the explicitly implemented quadratic field;
there is no floating point. The modular rank test and the full rational
inverse are independent certificates of nonsingularity. Formulae
(13)–(16) are the analytic step converting those certificates into a
neighborhood theorem.

Files:

- `verify_isolated.py`: complete exact reconstruction, MUB checks, Fourier
  equivalence checks, conjugation witness, Jacobian, modular minor, exact
  inverse, and rational bound verification;
- `isolated_receipt.json`: explicit row selection and exact constants;
- `isolated_inverse.json`: complete inverse matrix over
  \(\mathbb Q(\sqrt3)\), retained for inspection;
- `ISOLATED_REPLAY.log`: successful replay output;
- `TOPOLOGICAL_REDUCTION.md`: integration of this local theorem with the
  supplied component theorem, with exact remaining scope;
- `PRODUCT_NONEXTENSION.md`: self-contained reproof of the known
  no-common-unbiased-ray obstruction at the product triple, independent
  of the Fourier-family exclusion E.

No atlas input is read. The product definition, basic MUB equations and
elementary Taylor estimate are sufficient for this theorem. The separate
component theorem is used only in the integration note, not in the local
isolation certificate.

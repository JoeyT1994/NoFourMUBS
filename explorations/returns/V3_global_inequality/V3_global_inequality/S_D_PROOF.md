# A global discriminant–square-defect inequality

## 1. The result

**PROVED, with an exact finite algebra certificate.** For every order-six
complex Hadamard matrix H, with unit-modulus entries,

\[
\boxed{S(H)\ge600\,D_{\rm sym}(H),}
\qquad
D_{\rm sym}(H)=\frac{D_{\rm sq}(H)+D_{\rm sq}(H^T)}2,
\tag{1}
\]

where

\[
D_{\rm sq}(H)=\sum_{i,r}
\left(1-\sum_k\left|\frac16\sum_a
 H_{ia}^2\overline{H_{ra}H_{ka}}\right|^4\right).
\tag{2}
\]

The transpose average is part of the definition in (1). No assertion that
`D_sq(H)=D_sq(H^T)` is needed or made.

**PROVED by combining independently certified inequalities.** The companion
three-square certificate gives `L_tot<=6 D_sym`. Therefore

\[
\boxed{\displaystyle S(H)\ge100\,L_{\rm tot}(H)
\quad\text{for every order-six complex Hadamard }H.}
\tag{3}
\]

This exceeds the required coefficient `3/5`. The geometric statement is
global: it is not limited to a known family, a neighborhood, or a sampled
collection of matrices. Neither the MUB atlas nor Stage C is used.

The new S-versus-D certificate is replayed by

```
python verify_S_D.py
```

It requires only the Python standard library. It regenerates the moment
relations and all polynomial expansions. No numerical solver, floating-point
matrix, tolerance, saved pickle, or atlas is an input. The coefficients and
15 feature polynomials are stored as integers in `S_D_certificate.json`.

## 2. Characters and the averaging convention

Choose K uniformly from the ordered pair `(H,H^T)`, choose a uniform
permutation of its six rows, and let `K_pi` denote that row-permuted matrix.
Conditional on `K_pi`, choose a column uniformly and call its six entries
`Z=(Z_0,...,Z_5)`. All expectations below use these choices.

For an integer charge `a=(a_0,...,a_5)` with `sum a_i=0`, put

\[
g(a)=\frac16\sum_{j=0}^5\prod_i(K_\pi)_{ij}^{a_i},
\qquad U_a=g(a)Z^{-a},
\qquad V_a=U_a-|g(a)|^2.
\tag{4}
\]

Negative powers are well-defined because entries have modulus one. For a
three-component charge `(a,b,c)`, append three zeros in (4). In particular
`U_(0,0,0)=1`. The charge always refers to the same randomly ordered rows
within a product.

**PROVED.** Conditional averaging over Z gives

\[
\mathbb E_Z[U_a\overline{U_b}]
=g(a)\overline{g(b)}g(b-a),
\tag{5}
\]

and

\[
\mathbb E_Z|V_a|^2=|g(a)|^2-|g(a)|^4\ge0.
\tag{6}
\]

Thus every expression `E|sum_a c_a U_a|^2` is nonnegative, for arbitrary
real coefficients `c_a`, and every covariance square in (6) is nonnegative.
These are actual finite averages on H, not relaxed moment variables.

## 3. The exact normalization of D_sym

**PROVED.** Set `q_2=(2,-2,0)` and `q_3=(2,-1,-1)`. The squared-entry
matrices

\[
Q_i=\frac16 H\,\operatorname{diag}(\overline{H_{ia}}^{\,2})H^T
\]

are unitary, and their entries are the conjugates of the coefficients in
(2), up to relabeling. Hence the sum of the squared magnitudes of all 216
coefficients is 36.

In that sum, the six terms `i=r=k` equal one. The sixty terms with exactly
one of `r,k` equal to i vanish by row orthogonality. The remaining equality
patterns are `r=k!=i`, with 30 terms, and three distinct indices, with 120
terms. The same partition applies to fourth powers. Averaging the two
orientations yields

\[
D_{\rm sym}
=30-30\,\mathbb E|g(q_2)|^4-120\,\mathbb E|g(q_3)|^4
\tag{7}
\]

and

\[
\boxed{D_{\rm sym}=30\mathbb E|V_{q_2}|^2
                       +120\mathbb E|V_{q_3}|^2\ge0.}
\tag{8}
\]

The verifier independently checks (7)=(8) in the exact moment algebra.

## 4. The only geometric input: Fourier vanishing off Tao

The external input is Theorem 1.1 of OpenAI, *Exact Fourier certificates for
complex Hadamard matrices of order six* (September 24, 2026): for every
Hadamard H outside Tao's equivalence class,

\[
g_H(\pi\alpha)=0\quad\text{for every row permutation }\pi,
\qquad \alpha=(1,1,1,-1,-1,-1).
\tag{9}
\]

Primary source, pinned to commit `1581d4cbdd69a0faf34b2089614fe2a814316a6a`:
[the paper](https://raw.githubusercontent.com/openai/math/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026.pdf).

That theorem concerns one Hadamard matrix and uses no MUB atlas or Stage C.
Its single-matrix verifier is the source of `moment_engine.py`; the exact
single-matrix identity is rerun here. The theorem's classification of the
cubic alternative remains a written theorem input. Since Tao has a
symmetric representative, transposition preserves its equivalence class;
(9) therefore applies to both orientations in (4) when H is non-Tao.

**PROVED.** For every such H and every balanced charge q,

\[
\mathbb E\bigl[|g(\alpha)|^2|g(q)|^2\bigr]=0.
\tag{10}
\]

The certificate uses just 29 instances of (10). They are specified without
an opaque table as follows. Enumerate all balanced q of order 0, 2, or 3,
where `ord(q)=sum max(q_i,0)`. Sort the first and last three coordinates
separately. Identify the resulting pair of triples under swapping the
triples and under simultaneous negation; retain the lexicographically
smallest representative. Exactly 29 representatives remain. The verifier
regenerates them and their exact equations. After the universal Hadamard
moment reductions, these equations have rank three on 27 coordinates.

## 5. The fifteen-square identity

Define

\[
B_0=818002268369,\qquad B_1=508108391299152.
\]

**CERTIFIED / PROVED from the moment rules in Section 7.** Every non-Tao H
satisfies the exact identity

\[
\boxed{B_0 S(H)-B_1D_{\rm sym}(H)
       =\sum_{j=1}^{15}w_j\,\mathbb E|Z_j|^2.}
\tag{11}
\]

Every weight `w_j` is a strictly positive integer. All feature polynomials
are explicit below. The same data are given directly as sparse integer
charge vectors in `S_D_certificate.json`, which is the input to the
replay verifier.

For compact notation in the table, define the following linear combinations
of the U-functions from (4):

\[
\begin{aligned}
T_0&=-1+U_{(-2,0,2)}+U_{(-2,2,0)}+U_{(0,-2,2)},\\
T_1&=U_{(-1,2,-1)}+U_{(0,-2,2)}-U_{(-3,0,3)}-U_{(-3,1,2)},\\
A&=U_{(0,2,-2)}-U_{(0,-2,2)},\\
B&=U_{(1,-2,1)}-U_{(-1,2,-1)},\\
C&=U_{(2,-2,0)}-U_{(-2,2,0)},\\
D&=U_{(2,0,-2)}-U_{(-2,0,2)},\\
E&=-U_{(0,-2,2)}+U_{(-3,1,2)}+U_{(-3,2,1)},\\
F&=U_{(-1,-1,2)}+U_{(-3,1,2)}-U_{(-3,3,0)}+U_{(1,-3,2)},\\
G&=T_1+U_{(1,2,-3)},\\
J&=-U_{(-2,2,0)}-T_1+U_{(2,1,-3)},\\
K&=U_{(3,-1,-2)}-U_{(-3,1,2)},\\
P&=T_0+U_{(-4,2,2)},\\
Q&=-U_{(-2,0,2)}-U_{(-1,-1,2)}-U_{(-3,1,2)}
       +U_{(-3,3,0)}+U_{(-4,3,1)},\\
R&=T_0+U_{(-2,-2,4)},\\
T&=T_0+U_{(-2,4,-2)},\\
V&=U_{(0,-4,4)}-U_{(0,-2,2)},\\
W&=T_1+U_{(1,-4,3)},\\
X&=T_0+U_{(2,-4,2)}.
\end{aligned}
\]

These letter names are local to this certificate; in particular the local
letter D is a feature, whereas the square defect is always written
`D_sym` or `D_sq`.

| j | Feature Z_j | Positive integer w_j |
|---:|---|---:|
| 1 | `2(A+J)` | 117833844166200 |
| 2 | `2(A+V)` | 66835245352500 |
| 3 | `2B+W` | 75828485046240 |
| 4 | `2(B+W)` | 456540092483400 |
| 5 | `2C+K` | 50345656574400 |
| 6 | `2(D-F)` | 178266265801920 |
| 7 | `2D+G` | 172200154348800 |
| 8 | `2(D+Q)` | 235797446004840 |
| 9 | `2E+T` | 80870265051840 |
| 10 | `2(F+J)` | 33438262877280 |
| 11 | `2J+T` | 19821048096960 |
| 12 | `2(J+T)` | 83661412125960 |
| 13 | `2(J-X)` | 12586414143600 |
| 14 | `2(P-R)` | 883442449838520 |
| 15 | `2(R+W)` | 18957121261560 |

**PROVED.** Nonnegativity in (11) gives

\[
S\ge\frac{508108391299152}{818002268369}D_{\rm sym}
\ge600D_{\rm sym}.
\tag{12}
\]

The coefficient in the middle is strictly greater than 600. The second
inequality is strict when `D_sym>0`; it is an equality when `D_sym=0`.

For an explicitly nonnegative decomposition at the clean coefficient 600,
put

\[
B_*=B_1-600B_0=17307030277752>0.
\]

Equations (8) and (11) give the 17-square identity

\[
\boxed{
B_0(S-600D_{\rm sym})
=\sum_{j=1}^{15}w_j\mathbb E|Z_j|^2
 +30B_*\mathbb E|V_{q_2}|^2
 +120B_*\mathbb E|V_{q_3}|^2.}
\tag{13}
\]

No numerical approximation is used in (11)–(13). Numerical optimization
was used to discover the coefficients; exact rational reconstruction and
coefficient-by-coefficient verification establish the identity.

## 6. Tao and equivalence invariance

**CERTIFIED.** The verifier constructs an explicit symmetric Tao matrix
using integer exponents of a primitive cube root of unity. It checks all
row inner products, all 400 signatures, all 216 square-product moments,
and all 1296 mixed product moments with integer arithmetic in
`Z[omega]`. It obtains

\[
S(T)=87480,\qquad D_{\rm sym}(T)=45/2,\qquad L_{\rm tot}(T)=225/2.
\]

Therefore `S(T)>=600 D_sym(T)` and `S(T)>=100 L_tot(T)`. All these
quantities are invariant under row/column phase changes and permutations,
so the same holds on Tao's full equivalence class. Together with (12),
this proves the global statement (1).

## 7. Why the exact algebraic replay is a proof

### 7.1 Injective moments

For a balanced integer p-by-q exponent matrix A, with `p,q<=6`, let
`m(A)` be the real average of

\[
\prod_{i=1}^{p}\prod_{j=1}^{q}K_{\rho(i),\kappa(j)}^{A_{ij}},
\]

over K in `(H,H^T)` and independent uniform injections rho and kappa.
Both row and column sums of A are zero. Row and column permutations,
global sign reversal, transposition, and deletion of zero rows or columns
preserve this real average. These are exactly the canonicalizations used
by the code. Transposition is valid because the definition explicitly
averages the two orientations.

### 7.2 Orthogonality contraction

**PROVED.** If row i of A has order one, it contains one `+1`, one `-1`,
and otherwise zeros. Column orthogonality, after assigning the other
rows, gives

\[
(7-p)m(A)=-\sum_{\ell\ne i}m(A_{i\to\ell})\qquad(p\le6),
\tag{14}
\]

where `A_(i->ell)` adds row i into row ell and deletes row i. For a formal
seven-row array, the six other rows occupy all physical row labels, so
instead

\[
\sum_{\ell\ne i}m(A_{i\to\ell})=0.
\tag{15}
\]

Every moment in (15) has at most six rows; no seven-row injective moment is
evaluated. The analogous column rules follow by transposition.

The verifier first regenerates the paper's weight-at-most-eleven table:
8,871 equations on 909 moment coordinates, with 897 independently checked
pivots. It then adds weight-twelve equations from formal seven-row arrays
with two, three, or four columns, positive row orders, column orders at
least two, and total order twelve. It verifies balance and the order-one
row for every array before using (15).

There are 34,002 such generated arrays and 33,821 nonzero equations after
the first reduction. They involve 3,443 coordinates, and 3,406 independent
pivot equations are checked exactly. Rational reconstruction merely
proposes a substitution; every selected equation is then checked with
integers after clearing denominators. The modular nonzero pivots certify
independence over the rationals. The verifier additionally checks that the
free coordinates form exactly an identity block of dimension equal to the
number of coordinates minus the number of pivots, and that every replacement
uses only those free coordinates. These checks make every substitution a
valid consequence of (14)–(15). Unused relations cannot invalidate it.

### 7.3 Character products

**PROVED.** A product of n characters samples n columns independently.
For each equality partition into k blocks, merge the corresponding charge
columns. The contribution is the injective moment of the merged exponent
matrix multiplied by `(6)_k/6^n`. Summing all set partitions gives its exact
moment expansion. The verifier uses this identity for both (5) and (10).
No sampled numerical moment values enter the computation.

### 7.4 The exact S normalization

**CERTIFIED / PROVED.** The verifier expands permanent times determinant
squared directly from the six permutations of three letters. It obtains
55 Laurent terms for Psi, 48 terms for `Psi-conj(Psi)`, and 817 terms for
its negative square. The supplied universal side identity identifies this
last polynomial with the corner discriminant after column complementation.
Complementation only permutes the positional corners in the sum S.

There are 400 unordered positional 3-by-3 blocks. Their discriminants are
unchanged by ordering their three rows or columns. Therefore S is exactly
400 times the injective 3-row/3-column average of that 817-term polynomial.
The verifier uses this direct expansion, rather than trusting the earlier
12-moment formula.

### 7.5 Final identity check

Every term `E|Z_j|^2` is expanded by (5), converted to injective moments by
Section 7.3, and reduced using Sections 7.2 and 4. The same is done for S
and D_sym. The verifier checks that every coefficient of

`B0*S-B1*D_sym-sum_j w_j E|Z_j|^2`

is exactly zero. It also checks all weights are positive and that
`B1-600B0` is the displayed positive integer. These are the finite claims
needed for (11)–(13).

## 8. Scope and dependencies

**PROVED / CERTIFIED here:** the explicit 15-square identity for non-Tao H;
the nonnegative 17-square decomposition at coefficient 600; the exact Tao
calculation; and the resulting global bound `S>=600 D_sym`.

**Separate certified input:** the companion `L_tot<=6 D_sym` identity,
which turns this result into `S>=100 L_tot`.

**Written mathematical input:** the non-Tao Fourier-vanishing theorem (9)
and the universal signature/discriminant identity from the supplied brief.
The latter has its own exact Laurent replay in the original handoff.

This proof uses Hadamard geometry and finite exact moment algebra. It does
not assume a classification into known continuous families, and it does
not use any MUB exclusion or covering computation.

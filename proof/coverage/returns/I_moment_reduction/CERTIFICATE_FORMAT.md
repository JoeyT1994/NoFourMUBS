# Exact certificate format

**Status: PROVED** for the averaging/cofactor identities below; **CERTIFIED** for the supplied finite coefficient lists. No upstream corner theorem is encoded as a polynomial certificate here.

## 1. Laurent ring and orbit notation

Work in

\[
\mathscr L=\mathbb Q[x_{ij}^{\pm1}:0\leq i,j<6].
\]

Inversion of all variables represents complex conjugation on the phase torus. A nonempty integral exponent matrix \(G\) has at most six rows and six columns. Its row and column sums are zero. For injective maps \(\rho:[r]\hookrightarrow[6]\), \(\gamma:[c]\hookrightarrow[6]\), set

\[
m_G(x;\rho,\gamma)=\prod_{a<r,b<c}x_{\rho(a),\gamma(b)}^{G_{ab}}.
\]

Let \((6)_r=6!/(6-r)!\). The symbol represented by a graph is the **actual Laurent polynomial**

\[
\mathcal A_G(x)=\frac1{4(6)_r(6)_c}
\sum_{\rho,\gamma}\bigl[
 m_G(x;\rho,\gamma)+m_G(x^{-1};\rho,\gamma)
 +m_G(x^T;\rho,\gamma)+m_G((x^T)^{-1};\rho,\gamma)
\bigr].
\tag{1}
\]

The empty matrix represents 1. This is a finite-sum encoding, not evaluation at a sample matrix.

Permuting rows or columns of \(G\), negating \(G\), and transposing \(G\) preserve (1). Zero rows and columns can be removed: the number of extensions of every injection cancels exactly against the falling-factorial denominator. These are the only identifications used by `canon`. It exhaustively enumerates the applicable row permutations, sorts the column vectors, and compares the permitted transpose/inversion images. No unproved invariant relation is built into canonicalization.

For phase matrices, (1) is the row/column-label average of the real part, also averaged with transposition. The targets in this return are already real and transpose invariant. Thus their orbit expressions are exactly the averages in the brief, not additional symmetrizations of a different target.

## 2. Orthogonality generators and explicit cofactors

Use all ordered, distinct row and column pairs:

\[
O^{\mathrm{row}}_{ab}=\sum_{j=0}^5x_{aj}/x_{bj},\qquad
O^{\mathrm{col}}_{ab}=\sum_{i=0}^5x_{ia}/x_{ib}.
\tag{2}
\]

Both vanish on a raw Hadamard. Using both directions includes their conjugates.

Suppose row \(t\) of \(G\) has just two nonzero entries, +1 in column \(u\) and -1 in column \(v\). Let \(G_{t\to s}\) be obtained by adding row \(t\) to row \(s\), then deleting row \(t\). Define

\[
E_{G,t}=\mathcal A_G+\frac1{7-r}\sum_{s\ne t}\mathcal A_{G_{t\to s}}.
\tag{3}
\]

With \(B\) obtained by deleting row \(t\), the exact cofactor identity is

\[
E_{G,t}=\frac1{7-r}\operatorname{Sym}_{r-1,c}
\bigl(m_B\,O^{\mathrm{col}}_{uv}\bigr).
\tag{4}
\]

Here `Sym` applies the same normalized injections, inversion and transpose as (1); the summation index inside \(O\) still runs over **all six** labels. Under transpose the row and column generators interchange.

**Proof.** For fixed injections of the other \(r-1\) rows, split the six summands of \(O\) into the \(r-1\) occupied labels and the \(7-r\) unoccupied labels. Occupied labels give the contracted graphs in (3). The normalized average of the unoccupied terms is \((7-r)\mathcal A_G\). Division by this positive integer proves (4). No determinant or other function of \(H\) is inverted.

The column version is obtained by interchanging rows and columns. An `orthogonality_cofactors` record stores:

- `template`: \(G\);
- `axis`: 0 for a row vertex, 1 for a column vertex;
- `position`: the vertex to remove;
- `coefficient`: the coefficient \(w\) of \(E\) in the target identity;
- `generator`, `positive_indices`, `negative_indices`: the generator in (2);
- `cofactor_template`: the exponent matrix of \(m_B\);
- `generator_coefficient`: the explicit rational coefficient \(w/(7-n)\), where \(n\) is the number of vertices on the removed axis.

Consequently the cofactor of each ordinary Laurent generator is an explicitly specified rational sum of monomials. The symmetry encoding avoids printing hundreds of thousands of repeated relabelings; it does not leave any coefficient unspecified.

## 3. Fourier-moment generators and explicit cofactors

Let

\[
V_I^{\mathrm{row}}=\sum_{j=0}^5\prod_{i\in I}x_{ij}
                       \prod_{i\notin I}x_{ij}^{-1}=6M_I(H),
\tag{5}
\]

and include its column counterpart. Complementary \(I\) supplies the inverse/conjugate generator.

In each moment record, \(G\) has six rows and \(c\) columns. Its distinguished first column is

\[
\epsilon=(1,1,1,-1,-1,-1)^T.
\]

Let \(G_{0\to j}\) mean: add column 0 to column \(j\) and delete column 0. Set

\[
L_G=\mathcal A_G+\frac1{7-c}\sum_{j=1}^{c-1}\mathcal A_{G_{0\to j}}.
\tag{6}
\]

Deleting column 0 gives the cofactor matrix \(B\), and

\[
L_G=\frac1{7-c}\operatorname{Sym}_{6,c-1}
       \bigl(m_B V_{\{0,1,2\}}^{\mathrm{row}}\bigr).
\tag{7}
\]

This is proved by splitting the six column labels into the occupied \(c-1\) and unoccupied \(7-c\) labels, exactly as in (4). All five supplied templates have \(c=3\), so their recorded generator coefficients are their orbit coefficients divided by 4. The `generator_coefficient` refers to the **unnormalized** generator (5), not to \(M_I\).

## 4. The main exact identity

Write

\[
\mathscr R=\operatorname{Re}S+\frac{41}{10}
 -\frac5{54}\langle\operatorname{Re}\Psi\rangle
 -\frac1{36}\langle g^2\rangle
 +\frac1{162}\langle g\operatorname{Re}\Psi\rangle.
\]

`certificates/rational_moment_R.json` specifies the identity

\[
\boxed{\mathscr R=\sum_{\nu=1}^{5}\beta_\nu L_{G_\nu}
                   +\sum_{\eta=1}^{43}w_\eta E_{G_\eta,t_\eta}.}
\tag{8}
\]

Equation (8) is an identity of Laurent polynomials for arbitrary invertible entries, after the definitions of the real/inverse operations above. Equations (4) and (7) express its right side through orthogonality and Fourier-moment generators. Thus (8) is genuine ideal membership, with explicit rational Laurent cofactors. It has **no complement-equality generator** and is **not** a certificate for Eq. (sos).

## 5. The two additional identities

The same encoding in `scalar_identities.json` gives

\[
\operatorname{Re}S-\frac16\langle\operatorname{Re}\Psi\rangle
 +\frac{377}{100}-\frac{T_2}{4800}
 =\sum_{\eta=1}^{4}w_\eta E_\eta,
\tag{9}
\]

and

\[
\mu-\frac15-\frac{T_3}{6480}+\frac{T_2}{1440}
 =\sum_{\eta=1}^{7}w_\eta E_\eta.
\tag{10}
\]

Here \(T_k=\|H^{[k]}(H^{[k]})^\dagger\|_F^2\), and \(\mu\) averages the squared magnitudes of all forty row and column moments. To regenerate their Laurent targets, use

\[
T_k=396+900\mathcal A_{\left(\begin{smallmatrix}-k&k\\k&-k\end{smallmatrix}\right)},
\qquad
\mu=\frac16+\frac56\mathcal A_{\left(\begin{smallmatrix}
1&-1\\1&-1\\1&-1\\-1&1\\-1&1\\-1&1
\end{smallmatrix}\right)}.
\tag{11}
\]

For the first identity in (11), split the four-index Gram expansion according to whether its row labels or column labels coincide. There are \(216+216-36=396\) coincident terms, each 1, and \(30\cdot30=900\) remaining terms. For the second, the six equal-column terms in each squared moment contribute \(1/6\), and the thirty distinct-column terms contribute \(5/6\) times the displayed graph average. Averaging row and column moments produces the transpose symmetrization in (1).

## 6. What the checker actually replays

`verify.py` independently rebuilds the determinant, permanent, \(\Psi\), \(g\), and both scalar targets from their definitions. It then expands **both sides** of (8)–(10) as rational combinations of canonical orbit symbols and checks literal equality. It does not run the search that found the coefficients, or assume that a reduction normal form is complete.

For every cofactor record, it additionally regenerates the metadata and expands the six-term generator-times-monomial identity over the original 36 formal variables, splitting occupied and unoccupied indices. These are integer Laurent calculations. The falling-factorial multiplicities and the ordered-triple normalization are checked separately.

The anchor calculation uses \(\mathbb Q(i,\omega)\), represented in the basis \((1,\omega,i,i\omega)\), with \(\omega^2+\omega+1=0\). All entries are powers of \(-i\omega\), a primitive twelfth root. There is no floating-point acceptance test.

A Lean checker could use finite exponent vectors, rational coefficients and finite sums to replay (8)–(10), with (4), (7), and the elementary orbit-relabeling lemmas formalized once. **A new Lean formalization is not supplied or claimed.** Nor do these certificates replay the upstream all-corner conjugacy or strict-corner coverage theorems.

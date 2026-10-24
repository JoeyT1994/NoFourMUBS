# Quantitative rounding of nearly closed Hadamard row products

## Status and purpose

**PROVED.** This note gives a practical distance estimate using a row-product
mixing quantity. It does not assume the strict-corner classification, and it
uses no numerical computation or atlas input.

**NOT ESTABLISHED.** A global inequality comparing this mixing quantity to
the corner sum `S=sum_C R_C` remains unproved. The conditional margin at the
end of the note must not be presented as a proved global corner margin.

## 1. Definitions and theorem

Let H be an order-six complex Hadamard with unit-modulus entries. Fix a row
r and divide every column by its entry in row r. Write the resulting rows
as `u_i`, with `u_0=1` after relabelling r as zero. They form an orthonormal
basis for the normalized inner product

\[
\langle v,w\rangle=\frac16\sum_{a=0}^5v(a)\overline{w(a)}.
\]

The inner product is linear in its first argument. Define

\[
t_{ij,k}=\langle u_i u_j,u_k\rangle,\qquad
p_{ij,k}=|t_{ij,k}|^2,
\]

where products are entrywise, and set

\[
\ell_{ij}=1-\sum_k p_{ij,k}^2,\qquad
L_r(H)=\sum_{i,j}\ell_{ij}
      =36-\sum_{i,j,k}|t_{ij,k}|^4.
\tag{1}
\]

Parseval gives `sum_k p_ij,k=1`, so every `ell_ij` and `L_r` is nonnegative.
Write `d=d([H],[F_6])` for the unnormalized Frobenius quotient distance.

**Theorem — PROVED.** For every reference row r,

\[
\boxed{L_r(H)<\frac19\quad\Longrightarrow\quad
d^2\le\frac{L_r(H)}{1-L_r(H)}.}
\tag{2}
\]

In particular, for `0<rho<=1/sqrt(8)`,

\[
\boxed{d\ge\rho\quad\Longrightarrow\quad
L_r(H)\ge\frac{\rho^2}{1+\rho^2}
\quad\text{for every }r.}
\tag{3}
\]

For arbitrary positive rho the right-hand side in (3) can be replaced by
`min{1/9, rho^2/(1+rho^2)}`. At `rho=1/10`, each reference has

\[
\boxed{L_r(H)\ge\frac1{101}.}
\tag{4}
\]

## 2. Dominant products define an exact group — PROVED

Assume `L=L_r<1/9`. For each ordered pair `(i,j)` let `i*j` be an index
at which `p_ij,k` is maximal and put `delta_ij=1-p_ij,i*j`. Since

\[
\sum_k p_{ij,k}^2\le\max_k p_{ij,k},
\]

we have `delta_ij<=ell_ij<=L`. In particular the maximal probability is
strictly greater than one half, so the maximizing index is unique.

For fixed i, multiplication by the unimodular row `u_i` is unitary. Its
matrix in the orthonormal row basis has entries `t_ij,k`. Its squared
entry magnitudes therefore have every row sum and column sum equal to
one. Two columns cannot have their greater-than-one-half entries in the
same row. Thus `j -> i*j` is a permutation. Commutativity of pointwise
products gives `i*j=j*i`; the constant row gives `0*j=j`.

Choose phases

\[
a_{ij}=t_{ij,i*j}/|t_{ij,i*j}|,
\qquad
e_{ij}=\|u_i u_j-a_{ij}u_{i*j}\|.
\]

The norms in this section use the normalized inner product. Directly,

\[
e_{ij}^2=2-2\sqrt{1-\delta_{ij}}\le2\delta_{ij}.
\tag{5}
\]

The remaining probabilities sum to `delta_ij`, so their squared sum is
at most `delta_ij^2`. Hence

\[
\ell_{ij}\ge 2\delta_{ij}(1-\delta_{ij})
\ge 2(1-L)\delta_{ij}.
\]

Consequently

\[
E:=\sum_{i,j}e_{ij}^2
\le2\sum_{i,j}\delta_{ij}\le\frac{L}{1-L}.
\tag{6}
\]

The two ways of approximating `u_i u_j u_k` by one row give

\[
\|a_{ij}a_{i*j,k}u_{(i*j)*k}
 -a_{jk}a_{i,j*k}u_{i*(j*k)}\|
\le e_{ij}+e_{i*j,k}+e_{jk}+e_{i,j*k}
\le4\sqrt E<\sqrt2.
\tag{7}
\]

The last strict inequality uses `L<1/9`. Two different orthonormal rows,
multiplied by arbitrary phases, are at distance exactly `sqrt(2)`.
Therefore `(i*j)*k=i*(j*k)`. Our commutative Latin operation with identity
is associative, hence is an abelian group operation on six elements.
Every abelian group of order six is cyclic. For an elementary verification,
pairing inverses gives an element of order two. If no element had order
three or six, all nonidentity elements would have order two, and two
distinct ones would generate a subgroup of order four, impossible in a
group of order six. An element of order three and one of order two commute
and their product has order six.

## 3. Remove the approximate product phases — PROVED

For each product define the unit numbers

\[
q_{ij}(a)=u_i(a)u_j(a)\overline{u_{i*j}(a)}.
\]

Their mean is `t_ij,i*j`, so the elementary variance identity gives

\[
\frac1{36}\sum_{a,b}|q_{ij}(a)-q_{ij}(b)|^2
=2\bigl(1-|t_{ij,i*j}|^2\bigr)=2\delta_{ij}.
\tag{8}
\]

Choose a base column b and apply row phases so that

\[
z_i(a)=u_i(a)/u_i(b).
\]

Then

\[
|z_i(a)z_j(a)-z_{i*j}(a)|
=|q_{ij}(a)-q_{ij}(b)|.
\]

Average over all six choices of b. Equation (8) and (6) show that some b
satisfies

\[
E_b:=\frac16\sum_a\sum_{i,j}
|z_i(a)z_j(a)-z_{i*j}(a)|^2
\le2\sum_{i,j}\delta_{ij}
\le\frac{L}{1-L}.
\tag{9}
\]

The matrix Z with entries `z_i(a)` is still Hadamard and equivalent to H.

## 4. Fourier round each column — PROVED

We use an elementary finite-group estimate. For a function `f:G->T` on
an abelian group G of order n, set

\[
\widehat f(\chi)=\frac1n\sum_g f(g)\overline{\chi(g)}.
\]

Character orthogonality gives

\[
\sum_\chi|\widehat f(\chi)|^2=1,
\qquad
\frac1{n^2}\sum_{g,h} f(g)f(h)\overline{f(gh)}
=\sum_\chi|\widehat f(\chi)|^2\widehat f(\chi).
\tag{10}
\]

The real part of the last weighted average is at most the largest real
part of a Fourier coefficient. Choose a character achieving that largest
real part. Expanding squared distances yields

\[
\boxed{\sum_g|f(g)-\chi(g)|^2
\le\frac1n\sum_{g,h}|f(g)f(h)-f(gh)|^2.}
\tag{11}
\]

Apply (11) with `n=6` to every column `f(i)=z_i(a)`. Let Q be the matrix
of the chosen character columns. Equation (9) gives

\[
\|Z-Q\|_F^2\le E_b\le\frac{L}{1-L}<\frac18.
\tag{12}
\]

The chosen characters must be distinct. If columns a and b of Q were
equal, orthogonality of the corresponding Z columns and the triangle
inequality would give

\[
12=\|Z_{:,a}-Z_{:,b}\|_2^2
\le2\bigl(\|Z_{:,a}-Q_{:,a}\|_2^2
         +\|Z_{:,b}-Q_{:,b}\|_2^2\bigr)
\le2\|Z-Q\|_F^2,
\]

contradicting (12). Thus Q is the full character table of the cyclic
group of order six, with row and column permutations: Q is equivalent
to `F_6`. Equation (12) proves (2). The contrapositive, splitting off
`L>=1/9`, proves (3)-(4).

## 5. A precise sufficient inequality for a practical global margin

Put

\[
L_{\mathrm{tot}}(H)=\sum_{r=0}^5 L_r(H).
\]

**PROVED conditional implication.** If a constant `a>0` is proved to obey

\[
S(H):=\sum_C R_C(H)\ge a L_{\mathrm{tot}}(H)
\tag{13}
\]

for every order-six Hadamard, then for `0<rho<=1/sqrt(8)` the desired
corner margin follows explicitly:

\[
\boxed{d\ge\rho\quad\Longrightarrow\quad
\max_C R_C(H)\ge
\frac{3a}{200}\frac{\rho^2}{1+\rho^2}.}
\tag{14}
\]

At `rho=1/10` this is `3a/20200`. In particular a proof of the weak
comparison `S>=10 L_tot` would give

\[
\max_C R_C(H)\ge\frac3{2020}>10^{-3}
\quad\text{whenever }d\ge0.1.
\]

**NOT ESTABLISHED:** (13), including the proposed coefficient 10. Numerical
tests of (13) cannot substitute for an identity, an analytic inequality,
or a certified cover. This note supplies the complete quantitative
rounding step; it does not certify the remaining comparison.

## 6. With the certified annulus, coefficient one is enough

**PROVED conditional implication.** The separately certified annulus theorem
gives `max R>=1/25` whenever `1/10<=d<=4/7`. If `d>4/7`, (2) implies
`L_r>=1/9` for every r: otherwise `d^2<1/8`, a contradiction. Thus

\[
d>4/7\quad\Longrightarrow\quad L_{\mathrm{tot}}\ge2/3.
\]

It follows that the single universal inequality

\[
\boxed{S(H)\ge L_{\mathrm{tot}}(H)}
\tag{15}
\]

would prove the practical global margin

\[
d\ge1/10\quad\Longrightarrow\quad\max_C R_C(H)\ge1/600.
\]

Even the weaker comparison `S>=(3/5)L_tot` would give the requested benchmark
`max R>=10^-3`. **NOT ESTABLISHED:** either comparison. These are exact
sufficient targets, not certified inequalities.

## 7. A symmetric expression for the remaining quantity

**PROVED.** Define

\[
K_{abcd}=\sum_i H_{ia}H_{ib}\overline{H_{ic}H_{id}}.
\]

Expanding the fourth powers in (1), summing over all six reference rows,
and interchanging the finite row and column sums gives

\[
L_{\mathrm{tot}}
=216-\frac1{1296}\sum_{a,b,c,d}|K_{abcd}|^4.
\]

The squared-moment identity is

\[
\sum_{a,b,c,d}|K_{abcd}|^2
=\sum_{i,j}\left|\sum_a H_{ia}\overline{H_{ja}}\right|^4
=6\cdot6^4=7776.
\]

Since `|K_abcd|<=6`, this gives the manifestly nonnegative expression

\[
\boxed{L_{\mathrm{tot}}
=\frac1{1296}\sum_{a,b,c,d}
|K_{abcd}|^2(36-|K_{abcd}|^2).}
\]

This equality does not prove (15); it provides an explicit polynomial
form of its right-hand side for a future positivity certificate.

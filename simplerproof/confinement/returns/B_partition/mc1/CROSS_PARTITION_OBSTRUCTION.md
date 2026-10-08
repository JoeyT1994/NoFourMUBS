# Low-M corners need not concentrate in one partition

## Exact result

Let `omega=exp(i*pi/3)` and, with indices `0,...,5`, define

\[
H(a)_{ij}=\omega^{ij}
 \exp\!\left(\mathrm i a\,(i\bmod2)\,\epsilon_j\right),
\qquad
\epsilon_j=\begin{cases}
0,&j\equiv0\pmod3,\\
1,&j\equiv1\pmod3,\\
-1,&j\equiv2\pmod3.
\end{cases}
\]

This is the extremal affine Fourier arc `F(a,-a)`. For **every** parameter
`0<a<=1/10`, the following statements hold:

1. H(a) is a physical order-six Hadamard matrix.
2. Exactly 72 of its 400 corners have value `144 sin^2(3a)`; the other 328 have
   value zero.
3. The 72 maximizing corners occupy 18 distinct `3+3` row/column partitions.
   All four blocks of each of these 18 partitions attain the maximum.
4. Every noncomplementary pair-intersection type occurs among these tied maxima.
5. The whole arc lies in the target sublevel:

\[
0<M(H(a))=144\sin^2(3a)
\le144(3/10)^2=\frac{324}{25}=12.96<26. \tag{1}
\]

Thus low M does **not** force all maximizing corners into one partition. No
strict value inequality forbidding a noncomplementary overlap type can hold on
the entire target sublevel.

This is an obstruction to that combinatorial shortcut, not a counterexample to
confinement. In fact the known inward direction along this arc decreases every
active corner simultaneously:

\[
\frac{d}{da}R_c(H(a))=432\sin(6a)>0
\]

for each of its 72 maximizing corners. The unresolved question concerns balancing
of their gradients on a general Hadamard, not the mere occurrence of ties.

## All four noncomplementary overlap types occur

Fix the maximizing corner

\[
A:\quad S=T=\{0,1,2\}.
\]

The following are also maximizing corners on the entire arc:

| Row triple S' | Column triple T' | `(abs(S intersect S'), abs(T intersect T'))` |
|---|---|---|
| `{0,1,2}` | `{0,4,5}` | `(3,1)` |
| `{0,1,2}` | `{1,2,3}` | `(3,2)` |
| `{0,3,4}` | `{0,4,5}` | `(1,1)` |
| `{0,3,4}` | `{1,2,3}` | `(1,2)` |

These four types exhaust noncomplementary pairs, up to row and column
permutations, diagonal complementation of a corner, and transposing the entire
matrix. Indeed, two pairs of three-element subsets are classified by their two
intersection cardinalities `(r,c)`. Diagonal complementation identifies
`(r,c)` with `(3-r,3-c)`, because `R(A)=R(D)` for diagonally complementary blocks.
Transpose identifies `(r,c)` with `(c,r)`. The six resulting classes consist of
the identical/diagonally complementary class, the same-partition complementary
class, and the four classes represented in the table.

Consequently these overlap types may reduce the number of different algebraic
systems to examine. They cannot, by themselves, exclude active pairs in the
low-M region. Nothing here proves that gradients from different partitions
cannot form a positive balancing combination.

## Exact verification

Run

```
python3 verify_cross_partition.py
```

The standalone script uses only the Python standard library. It represents the
entries on this arc as Laurent polynomials in `z=exp(i a)` with coefficients in
`Z[omega]/(omega^2-omega+1)`. It verifies the Hadamard equations and evaluates the
**defining** invariant for all 400 corners. Each polynomial is exactly either
zero or

\[
72-36z^6-36z^{-6}=144\sin^2(3a).
\]

It then counts the 72 active corners and their 18 partitions, checks every table
entry, exhausts the intersection-type orbits, and verifies the rational bound
in (1). No numerical root finding, sampling, or floating-point decision is used.

# A uniform obstruction from rational ray templates

## Completed certificate

The numerical neighborhood theorem below is proved. The fresh, complete
residual-tube cover finished with exit zero after processing 5,066,657 boxes.
It combines with the exact rational template graph and the exact
input-to-graph binding to establish the whole stated region.

The proof chain consists of the frozen cover and its
[arithmetic and soundness proof](../cover/ARITHMETIC_AND_COVER_SOUNDNESS.md),
the [independent necessary-map audit](TUBE_NECESSARY_MAP_AUDIT.md),
`verify_tube_graph_binding.py`, and `verify_template_graph.py`. The existing
search executable was also independently reproduced byte-for-byte from its
frozen source and header. Section 8 records the completed evidence and its
digests.

The graph entry point retains the deliberately narrower status
`PASS_FINITE_TEMPLATE_OBSTRUCTION`: that program alone checks a graph, while
the completed theorem combines it with the full containment execution.
The 120 rational centers need not be exact solutions, and numerical root
searches are not a completeness premise of this proof.

## 1. Normalization and the proposed numerical region

Let the raw Diţă anchor be

\[
D=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-i&i\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&i&-i\\
1&-i&-i&i&-1&i\\
1&i&-i&-i&i&-1
\end{pmatrix}.
\]

A raw Hadamard has unit-modulus entries and satisfies \(H^\dagger H=6I\).
Its basis matrix is \(H/\sqrt6\). We consider **all** such matrices in the
closed entrywise chordal neighborhood

\[
\mathcal R_\epsilon
=\{H:\max_{i,j}|H_{ij}-D_{ij}|\le\epsilon\},
\qquad \epsilon=10^{-4}.
\tag{1}
\]

No dephasing, local-family ansatz, symmetry, or nonsingularity hypothesis is
imposed on \(H\). A physical ray unbiased to the standard basis has a raw
representative \(x=(1,x_1,\ldots,x_5)^T\) with \(|x_i|=1\); choosing its
first coordinate to be one loses no ray.

For two raw basis matrices \(B,C\), define

\[
\Delta(B,C)=\sum_{j,k=0}^5
\left(\frac{|(B^\dagger C)_{jk}|^2}{36}-\frac16\right)^2.
\tag{2}
\]

The target conclusion is stronger than quartet exclusion:

**Theorem.** For every \(H\in\mathcal R_{10^{-4}}\), every basis
\(B/\sqrt6\) mutually unbiased to \(I,H/\sqrt6\), and every unit vector
\(x/\sqrt6\) unbiased to that pair,

\[
\max_j\left|\frac{|(B^\dagger x)_j|^2}{36}-\frac16\right|>\frac18.
\tag{3}
\]

Consequently no such triple has even one additional unbiased ray. In
particular, no fourth MUB exists, and any two completing bases satisfy

\[
\boxed{\Delta(B,C)>\frac3{32}.}
\tag{4}
\]

Every anchor in (1) is Fourier-free. This is an independent determinant
bound, proved in Section 6.

## 2. The exact containment gate

For a dephased physical ray put

\[
F_{D,j}(x)=|(D^\dagger x)_j|^2-6,
\qquad 0\le j<6.
\]

The completed global cover proves the following finite assertion over the whole
closed five-dimensional phase torus. Put \(Q=2^{44}\),
\(m=30\epsilon+36\epsilon^2\), and
\(m_Q=\lceil Qm\rceil/Q\):

> If \(|F_{D,j}(x)|\le m_Q\) for columns \(j=0,1,2,3,4\), then the
> five phases of \(x\) lie within cyclic angular distance
> \(h=\lceil Q/100\rceil/Q\), coordinate by coordinate, of one of the
> 120 retained dyadic phase centers in `../cover/D0_TUBE_INPUT.json`.

The centers are the listed integer coordinates divided by \(Q\), interpreted
modulo \(2\pi\). The binder `verify_tube_graph_binding.py` checks the actual
rounded halfwidth, the outward-rounded residual tolerance, all 75 Gaussian
anchor coefficients, and the association with the graph templates. Closed
boundary faces and all components of the sublevel set must be included.

To see why this suffices, let \(x\) be an exact common-unbiased ray for
\(I,H/\sqrt6\). With \(H\) as in (1),

\[
|(D^\dagger x)_j-(H^\dagger x)_j|\le6\epsilon,
\qquad |(H^\dagger x)_j|=\sqrt6.
\]

Therefore

\[
|F_{D,j}(x)|\le12\sqrt6\epsilon+36\epsilon^2
<30\epsilon+36\epsilon^2=m.
\tag{5}
\]

Thus every near-anchor candidate belongs to the covered sublevel set; using
only the first five inequalities enlarges it and is conservative.
This argument uses the fixed anchor's residual, not a perturbative
continuation of its zero set.

Each rational center \(w_a\) has first coordinate exactly one. Its other
coordinates have modulus at most

\[
R=1+10^{-10}.
\]

The binder bounds the chordal distance between each retained dyadic phase
center and its rational complex template by \(\nu=10^{-9}\). It evaluates degree-40
rational Taylor polynomials for sine and cosine, with absolute remainders
at most \(|t|^{41}/41!\). Since
\(|e^{it}-e^{is}|\le |t-s|\), the containment gate implies

\[
\max_i|x_i-(w_a)_i|\le h+\nu
<\rho:=\frac{10001}{10^6}
\tag{6}
\]

for at least one label \(a\). The argument is independent of the choice of
angle representative across the torus cut.

## 3. A graph that conservatively contains every possible basis

If physical rays \(x,y\) satisfy (6) with labels \(a,b\), then their first
coordinates are all one, and the other five coordinates give

\[
|x^\dagger y-w_a^\dagger w_b|
\le\sum_{i=1}^5
\bigl(|x_i-(w_a)_i|\,|y_i|
+|(w_a)_i|\,|y_i-(w_b)_i|\bigr)
\le e:=5\rho(1+R).
\tag{7}
\]

Define an undirected graph on the 120 labels by

\[
a\sim_O b\quad\Longleftrightarrow\quad
a\ne b\ \text{ and }\ |w_a^\dagger w_b|^2\le e^2.
\tag{8}
\]

The checker also verifies \(|w_a^\dagger w_a|^2>e^2\) for every label.
Hence two orthogonal physical rays cannot receive the same label. An
orthogonal sextuple must therefore map injectively to a six-clique of (8).
The neighborhoods may overlap: choose any admissible label for each ray;
(7) forces the resulting labels to be distinct and adjacent. No disjointness
of template boxes is assumed.

All entries of each \(w_a\) are Gaussian rational numbers with common
denominator \(10^{12}\), so (8) is decided by integer comparisons. The
resulting graph has **600 edges and exactly ten six-cliques**. The checker
enumerates every clique in increasing label order by intersecting candidate
neighbor sets; its terminal states are precisely all six-cliques. Labels
are not declared to be exact rays, and these cliques need not be assumed to
be actual bases for the implication above.

## 4. Every clique is uniformly incompatible with every ray label

For each of the ten six-cliques \(A\) and each of the 120 labels \(b\),
the checker provides a witness \(a\in A\) satisfying the exact rational
inequality

\[
\left||w_a^\dagger w_b|^2-6\right|>\mu:=\frac{599}{100}.
\tag{9}
\]

Thus all 1,200 clique–label incidences are checked, including labels
belonging to the clique itself. The proof does not discard repeated,
intersecting, or potentially coincident configurations.

For physical rays, \(|x^\dagger y|\le6\). The centers satisfy
\(|w_a^\dagger w_b|\le1+5R^2\). Equation (7) consequently gives

\[
\left||x^\dagger y|^2-|w_a^\dagger w_b|^2\right|
\le(7+5R^2)e.
\tag{10}
\]

The constants satisfy, by integer arithmetic,

\[
\mu-(7+5R^2)e>\frac92.
\tag{11}
\]

Apply (9) to the label of any common-unbiased ray \(y\) and the label
clique of any completing basis. Equations (10)–(11) yield a basis vector
\(x\) with

\[
\bigl||x^\dagger y|^2-6\bigr|>\frac92.
\]

Division by 36 proves (3). Applying (3) separately to all six columns of
a second completing basis supplies six different matrix entries, one per
column. Summing their squared deviations proves
\(\Delta(B,C)>6(1/8)^2=3/32\).

For an additional graph-only check, a physically unbiased pair must satisfy

\[
\left||w_a^\dagger w_b|^2-6\right|
\le2\sqrt6 e+e^2<5e+e^2.
\]

The checker builds this conservative second graph and confirms that no
six-clique of (8) has a label adjacent in that graph to all its vertices.
This check includes possible self-loops; it agrees with the stronger
quantitative witnesses (9).

## 5. Singularities and exceptional incidences

The only assertion about solutions needed by the proof is complete
containment. It never requires a Jacobian inverse, simple roots, unique
solutions in boxes, or a finite candidate set at the perturbed anchor.
A root can split, several candidates can collide, or a positive-dimensional
candidate component can occur inside the retained boxes. Every physical
ray still receives a label, orthogonal sextuples still yield cliques, and
the 1,200 strict bounds still apply.

Likewise, nonphysical complex roots, trace-zero projective boundary points,
and multiplicities in an algebraic compactification neither establish nor
invalidate the proof. They are irrelevant to this **physical-torus**
containment gate. A separate algebraic census may describe them, but no
genericity claim about that census is used here.

## 6. Every anchor in the region is Fourier-free

Direct Gaussian-integer evaluation of all \(20^2=400\) three-by-three
minors of \(D\) gives minimum squared modulus 4, hence minimum modulus 2.
For corresponding minors of \(H\) and \(D\), each determinant has six
signed products of three unit-modulus entries. Telescoping each product
changes it by at most \(3\epsilon\), so

\[
|\det H[R,C]-\det D[R,C]|\le18\epsilon.
\]

Thus every middle minor of \(H\) has modulus at least

\[
2-18\epsilon=\frac{9991}{5000}>0
\qquad(\epsilon=10^{-4}).
\]

The retained Fourier-routing equivalence then makes every such anchor
Fourier-free. This argument uses the unit-modulus hypothesis and requires
no higher-order perturbation remainder.

## 7. An explicit closed interval in the affine Diţă family

Define the integer mask

\[
E=\begin{pmatrix}
0&0&0&0&0&0\\
0&0&0&0&0&0\\
0&0&0&1&1&0\\
0&0&-1&0&0&-1\\
0&0&-1&0&0&-1\\
0&0&0&1&1&0
\end{pmatrix},
\qquad D(t)_{ij}=D_{ij}e^{itE_{ij}}.
\tag{12}
\]

This is the affine Diţă family in Brierley–Weigert, Appendix A.2, with raw
normalization and parameter relation \(t=2\pi x\); see the retained primary
source and [arXiv:0901.4051](https://arxiv.org/abs/0901.4051).

The gate `verify_dita_interval.py` substitutes \(z=e^{it}\) and groups every
row and column Gram entry by its Laurent exponent. All 72 resulting
identities hold in \(\mathbb Z[i][z,z^{-1}]\): every off-diagonal polynomial
vanishes and every diagonal polynomial equals 6. Hence \(D(t)\) is a raw
Hadamard for every real \(t\), with no sampled-parameter assumption.

Since \(|E_{ij}|\le1\),

\[
\max_{ij}|D(t)_{ij}-D_{ij}|
\le |t|.
\]

The entire closed interval

\[
\boxed{-10^{-4}\le t\le10^{-4}}
\qquad\left(\text{equivalently }|x|\le\frac1{20000\pi}\right)
\tag{13}
\]

therefore lies in the certified Fourier-free region. For every parameter in
this interval, every completing third basis is strongly unextendible, and
any two completing bases satisfy \(\Delta>3/32\).

This is a nonconstant dephased arc. For example, its row/column-phase
invariant cross-ratio is

\[
\frac{D(t)_{00}D(t)_{23}}{D(t)_{03}D(t)_{20}}=ie^{it}.
\]

The exact identity, mask, full interval inclusion, and this nonconstant
cross-ratio are retained in `DITA_INTERVAL_RECEIPT.json`.

## 8. Completed evidence, reproduction, and scope

The fresh search in `../cover/full_tube_r1e4/` recorded:

| Quantity | Value |
|---|---:|
| Process exit | 0 |
| Processed boxes | 5,066,657 |
| Splits | 2,533,328 |
| Range exclusions | 1,600,288 |
| Krawczyk exclusions | 931,293 |
| Template acceptance leaves | 1,748 |
| Contractions | 467,744 |
| Maximum subdivision depth | 41 |
| Maximum pending stack | 28 |

The recorded counts satisfy
\(5,066,657=2(2,533,328)+1\) and
\(1,600,288+931,293+1,748=2,533,328+1\).
The completed run receipt binds the source, header, exact input and binary;
those hashes were checked against the actual frozen files. The finite
binding checker independently regenerates the header and mathematical
input. The separate graph checker verifies all edges, all six-cliques and
all 1,200 quantitative star witnesses.

The frozen evidence has these SHA-256 digests:

| Evidence | SHA-256 |
|---|---|
| `../cover/full_tube_r1e4/tube_coverage.json` | `b88bbfd8e1d4559e392d29ebf8ab4ec7c387a14a4e4420956f41f114e77d7802` |
| `../cover/full_tube_r1e4/RUN_RECEIPT.json` | `3f30b41e1db417cdaac8ee5b59143ced81e490065510b374df42523e591f0de1` |
| `D0_TEMPLATE_GRAPH_RECEIPT.json` | `fa44e603245ce048edc096c965102ae33ab64e479bdc34aa59bb48443aa6fff8` |
| `D0_TUBE_GRAPH_BINDING_RECEIPT.json` | `9a3a063561a2ee16d82cc006d60c736e1d50b05a19976870150c009335512aa7` |

Run `python3 verify_template_graph.py` from any working directory. It uses
only the Python standard library and refuses optimized Python before
performing algebra. The receipt binds the exact center file and verifier,
records all graph edges and six-cliques, and retains all 1,200 star
witnesses. The independently constructed exact Diţă atlas is useful as a
cross-check, but no numerical or algebraic atlas census is assumed by this
graph proof.

A smaller fallback profile can also be verified with

```
python3 verify_template_graph.py --rho 4001/1000000 \
  --phase-halfwidth 1/250 --anchor-radius 1/1000000 \
  --raw-gap 11/2 --output D0_TEMPLATE_GRAPH_SMALL_RECEIPT.json
```

This command verifies that finite graph only; its stronger discrepancy
margin would require the corresponding tighter containment gate.

Running the finite Python gates validates their exact algebra and retained
input bindings; it does not rerun the global search. A fresh full execution
of the frozen cover reproduces that search and must finish successfully
before its new evidence is accepted. The proof supplied here uses the
completed fresh run recorded above, with matching anchor, residual
allowance, seed association, and rounded closed-box radius.

The result excludes an explicit Fourier-free region. It does not classify
all triples in that region or all anchors in dimension six, and it does not
prove Global F or Global F′.

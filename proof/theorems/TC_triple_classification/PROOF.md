# TC: local classification patches and the remaining global obligation

**NOT ESTABLISHED:** the classification conjecture, (L) for the entire atlas,
and (L) for the entire X-ball. The original results below prove two concrete
local patches and exclude Tao. The subsequent
[seed-ball theorem](seed_method/PROOF.md) proves (L) for an entire
four-dimensional ball of radius 1/160 in the original seed coordinates,
including **every** possible third basis. That ball is contained in seed
ball 1879; it does not by itself cover the original radius 0.063.
The later [whole-ball transfer theorem](seed_method/TRANSFER_R0153.md)
**does classify the entire original ball 1879**, including every K, using
the supplied radius-0.153 all-K theorem and a strict native-image
inclusion. Its scope remains one original ball. No counterexample has
been identified.

**PROVED, with CERTIFIED numerical hypotheses:** Theorems 1–3 below. The
constants in Theorems 1–2 are replayed by `replay.py`; Theorem 3 by `tao.py`.
All acceptance decisions in these scripts use exact or Arb arithmetic. The
selected Jacobian rows were proposed numerically, but their choice carries
no mathematical authority: the verifier rechecks their invertibility and
uniform contraction bounds in Arb.

## 1. The exact problem and a sufficient cell certificate

Use **unnormalized** flat matrices throughout this return. A triple means
`(I, H/sqrt(6), K/sqrt(6))`. Thus H and K have unit entries, and the equations
are

\[
 H^*H=K^*K=6I,\qquad |(H^*K)_{ab}|^2=6\quad(0\leq a,b<6).
\]

Choose a representative by fixing H's first row and first column to 1 and
K's first row to 1. The remaining phase variables, **in radians**, are the
25 entries `H[r,c]`, `r,c=1,...,5`, then the 30 entries `K[r,c]`,
`r=1,...,5`, `c=0,...,5`, in row order. These 55 coordinates fix the
continuous gauge. Crucially, a row gauge applied to H must also be applied
to K; the two matrices cannot be independently dephased.

Let F be the 96-component real residual: real and imaginary parts of the
15 upper-triangular entries of H*H, then of K*K, then the 36 cross moduli
squared minus 6. An anchor pair H0,K0 defines the chart
`H=H0 exp(iu)`, `K=K0 exp(iv)` entrywise, with the fixed entries unchanged.

**PROVED (gauge reduction).** Every triple admits this gauge. Apply row
phases to fix H's first column, column phases to fix its first row, and
column phases of K to fix K's first row. These operations preserve the
three bases as unordered rays. Local phase lifts exist since all entries
are nonzero. Discrete equivalences and multiple third bases still have to
be accounted for.

For seed b, write `u=w/r_b`. A level-m dyadic cell has

\[
 C_{m,c}=\prod_{j=1}^4[-1+2c_j/2^m,-1+2(c_j+1)/2^m],
 \quad 0\leq c_j<2^m.
\]

Only its intersection with the closed unit ball is relevant. Let H_b(u)
denote the matched completion represented by that cell, with the C1
enclosure supplied by the pinned atlas.

**NOT ESTABLISHED (target L_b,c).** Every zero of F whose H class belongs
to `H_b(C_m,c intersect ball)` is simultaneously equivalent, as a triple,
to the continuous construction or the isolated tensor-product triple.
The analogous statement is required for every cell of a cover of the
X-ball. Matrix signatures such as f6, d3, x2 are not substitutes for
simultaneous triple equivalence.

**PROVED (sufficient, checkable cell contract).** L_b,c follows from the
following finite data and checks:

1. Bind the source ball, C1 model, cell and all checker sources to hashes.
   Enclose the entire cell image, including its normal remainder.
2. Cover the complete five-phase torus of every possible I/H-unbiased
   column by retained boxes. Every discarded box needs a strict exact or
   interval inequality. Group retained boxes into labels and prove that
   one label cannot contain two orthogonal rays.
3. Build a conservative orthogonality graph. List **all** surviving
   six-cliques, with a complete exact search, or prove there are none.
   A search cap is a failure, not an exclusion. Account for every
   assignment of the six column labels, or quotient column permutations
   with a verified symmetry argument.
4. For every surviving clique, cover its full joint `(H,K)` solution
   domain by boxes in valid simultaneous gauges. Certify each box by
   residual exclusion or by a known-family uniqueness patch. In a family
   patch, prove existence of a known-family point for **every** free
   parameter in the box, prove this point lies in the uniqueness domain,
   and prove uniqueness there. Certify overlap/coverage without gaps.
5. Account for all atlas equivalences, conjugations and transpositions
   on the **whole triple**, not separately on its transitions.

*Proof.* Any actual third basis supplies six orthogonal rays. Steps 2–3
assign them distinct labels in a surviving clique. Step 4 contains its
joint phase vector in a checked box. Exclusion is impossible there; in a
family patch, uniqueness identifies it with the supplied known solution.
The simultaneous equivalences in step 5 preserve this conclusion. ∎

**PROVED (global conditional implication).** A verified cell cover of all
seed balls and the X-ball, with every cell either excluded or satisfying
the preceding contract, together with Theorem 3 and the existing atlas
coverage theorem, proves the conjecture. Cells missing from a search
output must remain in the cover as unresolved cells.

Conjugation preserves the known constructions. For the product anchor
below, write K=DH and note `conj(H)=HP` for a column permutation P; applying
D* interchanges H and K with their conjugates up to P. For the
two-circulant construction below, conjugate b,c,e,f, reverse the Fourier
column index q, and swap the two groups of three K columns; this gives
the conjugate triple. Transposition of an edge is implemented by changing
the reference basis and conjugating the whole triple. Thus atlas
symmetries can be transported, but each actual gauge/box enclosure still
requires a witness.

## 2. An explicit transversal uniqueness theorem

**PROVED (uniform Hessian bounds).** For real phase directions x,y,

\[
 |D^2F_i(z)[x,y]|\leq h_i\|x\|_\infty\|y\|_\infty,
 \qquad h_i=\begin{cases}24&i<60,\\480&i\geq60.\end{cases}
\]

These constants hold on the entire phase space of any flat anchor. Each
orthogonality residual is a real or imaginary part of six unit
exponentials whose phase coefficient vectors have l1 norm at most 2.
Its bound is `6*2^2=24`. A cross residual is a sum over the 30 ordered
pairs of distinct rows; diagonal terms cancel the constant 6. Each phase
coefficient vector has l1 norm at most 4, giving `30*4^2=480`.

Select d free coordinates s, the other 55-d coordinates t, and 55-d
residual rows R. Write A=`D_t F_R(0)` and choose an exact real matrix B.
For a phase box `||z||_infinity <= R0`, define

\[
 q_0=\|I-BA\|_\infty,\quad
 L_B=\max_a\sum_j |B_{aj}|h_{R_j},\quad q=q_0+R_0L_B.
\]

**PROVED.** If q<1, for each fixed s there is at most one t in that box
with F(s,t)=0. No assertion of existence follows from this test alone.

*Proof.* The Hessian bounds give
`||D_t F_i(z)-D_t F_i(0)||_1 <= h_i R0` throughout the box. Therefore
`||I-B D_t F_R(z)||_infinity <= q`. For two roots with the same s, integrate
the derivative on the straight segment between them. Their t difference
equals a linear operator of norm at most q applied to that difference,
so it vanishes. The same argument shows A has full column rank. ∎

**CERTIFIED (implementation).** `local.py` forms the analytic Jacobian in
Arb. `replay.py` fixes the row lists, inverts A in Arb, takes exact dyadic
midpoints for B, and evaluates both bounds above. It verifies the anchor
triples by exact symbolic algebra before evaluating their radicals in
Arb. Containing zero in a residual interval is never used to prove
existence. The fixed row lists and all computed constants are in
`results/local_receipt.json`.

## 3. The isolated Fourier triple

Let `omega=(-1+i sqrt(3))/2`, `F2=[[1,1],[1,-1]]`,
`F3[r,c]=omega^(rc)`, and

\[
 H_0=F_2\otimes F_3,\qquad
 K_0=(\operatorname{diag}(1,i)F_2)\otimes
     (\operatorname{diag}(1,\omega,\omega)F_3).
\]

**PROVED; exact existence CERTIFIED.** This is the tensor-product MUB
triple. Exact unit modulus, both Gram identities, and every cross modulus
are checked by `exact_anchors()`.

**Theorem 1 — PROVED, constants CERTIFIED.** In the simultaneous gauge
above, any triple with phase increments

\[
 \|z\|_\infty\leq 1/8192
\]

relative to `(H0,K0)` equals `(H0,K0)`. In particular this full triple is
locally isolated modulo equivalence.

*Proof.* Use all 55 variables as transverse coordinates. The replay
certifies `q0 < 10^-40`, `L_B < 2580`, and
`q < 315/1000 < 1`. Section 2 gives uniqueness, and the exact anchor
provides existence. The gauge reduction supplies the quotient
interpretation. ∎

**CERTIFIED:** the Jacobian rank at this anchor is exactly 55. Its kernel
has dimension zero, not two. Consequently, a uniform assumption that
every known triple has a two-dimensional kernel is false.

**PROVED clarification of the brief:** an isolated triple cannot meet a
nonconstant continuous family in the full triple space. Different triples
can project to the same Hadamard edge. The X-ball is a neighbourhood of
edges; Theorem 1 concerns only a neighbourhood of one **full triple**
over a Fourier edge, and does not classify all third bases over that edge.

## 4. A continuous-family patch

For unit b,c,e,f, put

\[
 A=\operatorname{circ}(1,b,c),\quad B=\operatorname{circ}(1,e,f),\quad
 H=\begin{pmatrix}A&B\\B^*&-A^*\end{pmatrix},
\]

where `circ(a,b,c)` has rows `(a,b,c),(c,a,b),(b,c,a)`. Define

\[
 G(b,c,e,f)=b+c/b+1/c+e+f/e+1/f.
\]

**PROVED (construction).** If G=0, H is flat and Hadamard: commuting
circulant blocks cancel the off-diagonal Gram blocks, and G and its
conjugate are the off-diagonal entries of `AA*+BB*`. Its diagonal is 6.
Let

\[
 \lambda_q=1+b\omega^q+c\omega^{2q},\quad
 \mu_q=1+e\omega^q+f\omega^{2q},\quad
 z_q=i\overline{\lambda_q\mu_q}/|\lambda_q\mu_q|.
\]

When all products are nonzero, set

\[
 K=\begin{pmatrix}F_3&F_3\\F_3\operatorname{diag}(z)&-F_3\operatorname{diag}(z)\end{pmatrix}.
\]

K is flat and Hadamard. In `H*K`, the four Fourier diagonal coefficients
are `conj(lambda) ± mu z` and `conj(mu) ± lambda z`. Their squared moduli
equal `|lambda|^2+|mu|^2=6`, since `Re(lambda mu z)=0`. This proves the
triple equations identically, not just at sampled parameters. This is
the two-circulant continuous construction, with two Fourier-type
transitions; see the construction underlying
[Matolcsi et al., Conjecture 1](https://link.springer.com/article/10.1007/s10801-026-01506-x).

Take the anchor `(b,c,e,f)=(i,i,1,-1)`. Apply to H and K the common row
phases `conj(H[r,0])`, and to H the column phases `conj(H[0,c])`. The
first row of K is already 1. Call the resulting exact anchor `(Hb,Kb)`.

Write parameter increments `(beta,gamma,epsilon,phi)` at
`(pi/2,pi/2,0,pi)`. The phase increments of `H[1,2]` and `H[1,5]` are
respectively `beta-2gamma` and `-gamma+epsilon-phi`. Use these as the
two free coordinates s. The derivative at zero of

\[
 (\Re G,\Im G,\beta-2\gamma,-\gamma+\epsilon-\phi)
\]

is

\[
 A_G=\begin{pmatrix}-1&-1&0&0\\-1&1&2&0\\1&-2&0&0\\0&-1&1&-1\end{pmatrix},
\quad A_G^{-1}=\frac16
 \begin{pmatrix}-4&0&2&0\\-2&0&-2&0\\-1&3&2&0\\1&3&4&-6\end{pmatrix}.
\]

**PROVED (uniform family existence).** Put `rho=2^-20`, `p=4rho`.
For every `||s||_infinity <= rho` there is a family parameter increment
v with `||v||_infinity <= p` and these two free coordinates exactly s.

*Proof.* The six exponentials in G have phase coefficient l1 norms
`1,2,1,1,2,1`. Thus the real and imaginary Hessian bounds are 12, and
the last two equations are linear. Apply the fixed-point map

`v -> v - A_G^-1 (Re G(v), Im G(v), L1(v)-s1, L2(v)-s2)`.

Its displacement at zero is at most `5rho/3`; its derivative norm is at
most `8p=32rho`. Therefore it maps the closed p box strictly into itself
and is a contraction, since

`5rho/3 + 32rho * 4rho < 4rho` and `32rho < 1`.

All inequalities are also replayed in Arb. Banach's theorem gives the
parameter v for every s. ∎

**PROVED (phase enclosure of this family).** At the anchor,
`|lambda_q| >= 1` and `|mu_q| >= 1`. Parameter increments bounded by p
change each eigenvalue by at most 2p<1/2. Along the segment from the
anchor to the changed eigenvalue, the logarithmic derivative shows that
each eigenvalue's argument changes by at most 4p. Thus the chosen z_q
phase changes by at most 8p. Every gauged H phase is a linear expression
of coefficient l1 norm at most 4 in the four increments; every gauged K
phase is a z_q phase plus a row gauge of size at most p. Consequently
all 55 phases are bounded by `9p=36rho < 40rho`.

**Theorem 2 — PROVED, constants CERTIFIED.** Every triple in this gauge
with `||z||_infinity <= rho=2^-20` relative to `(Hb,Kb)` belongs to the
continuous construction just given.

*Proof.* Retain the two free coordinates above, indices 1 and 4 in the
55-vector. On the larger phase box `R0=40rho`, the selected 53 equations
have `q0<10^-40`, `L_B<2675`, and `q<103/1000<1`. For the given triple's
s, uniform family existence supplies a known solution with the same s,
and the phase enclosure places that solution in this larger box.
Section 2 identifies the two solutions. ∎

**PROVED, rank lower bound CERTIFIED:** the Jacobian rank at `(Hb,Kb)`
is exactly 53. The transversal minor gives rank at least 53; the smooth
family parameterization, with s equal to two actual phase coordinates,
provides two independent kernel vectors. No claim of regularity at every
other point of the continuous construction is made.

## 5. Tao: a complete interval exclusion

**Theorem 3 — PROVED, finite hypotheses CERTIFIED.** Tao's matrix is not
a triple edge. This proof does not use the archived elimination output
whose ideal-membership step was not independently replayed.

The matrix is `H[r,c]=exp(2pi i E[r,c]/3)` with E in `tao.py`.
Every column-pair difference has two occurrences of each residue modulo
3, an exact check of `H*H=6I`.

Cover `[0,1]^5` by closed equal bins, with first phase zero. At resolution
M, each variable's radian displacement from its midpoint is at most
`t=pi/M`. For a column of H let q_j be the six midpoint terms, q_0=1,
and S their sum. Any unbiased vector in the bin must satisfy

\[
 \big||S|-\sqrt6\big|\leq5t,
\]
\[
 \big||S|^2-6\big|
 \leq 2t\sum_{j=1}^5|\Im(\bar S q_j)|+t^2(25+5|S|).
\]

**PROVED.** Write `Delta S=sum q_j(exp(i delta_j)-1)`. Then
`|Delta S|<=5t` and
`|Delta S-i sum q_j delta_j|<=5t^2/2`. Expand
`|S+Delta S|^2` to obtain the two inequalities. The program discards a
bin only when Arb proves a strict violation. Every retained bin is split
into all 32 children, through M=6,12,24,48,96. Closed bin boundaries are
included; overlapping boundaries cause no loss of coverage.

For clustering, midpoint differences are wrapped integers d_j/M with
d_0=0. Their squared distance after removal of common phase is exactly

`(6 sum d_j^2 - (sum d_j)^2)/(6 M^2)`.

Assign a bin to a centre only when this is at most `(3/100)^2`. The
projected bin radius is at most `sqrt(29/6)/(2M)`: at vertices, five
coordinates are ±1/(2M), and their sum has absolute value at least
1/(2M). Convexity proves the bound on the whole cube. The label radius
is the largest assigned midpoint distance plus this bin radius.

**PROVED (distinct labels).** Two rays in one radius-s label can, after
phasing, be at normalized vector distance at most 4pi s. The replay
checks `4pi s < sqrt(2)` for every label. Orthogonal rays have distance
sqrt(2) under every relative phase, so they cannot share a label.

For two labels let `r=s_u+s_v`, `q_j=exp(2pi i(u_j-v_j))`, `S=sum q_j`.
Orthogonality requires both

\[
 |S|\leq2\pi\sqrt6\,r,
\]
\[
 |S|^2\leq 2\pi r\Big(\sum_j\Im(\bar S q_j)^2\Big)^{1/2}
              +2\pi^2 |S|r^2.
\]

**PROVED.** The phase difference has Euclidean norm at most r. The first
inequality is Cauchy–Schwarz and the exponential Lipschitz bound. For the
second, Taylor-expand the complex inner product, project onto S, and
bound the remainder by `2pi^2 sum delta_j^2`. The gradient has zero sum,
but using its full norm is already a valid upper bound.

**CERTIFIED result.** The five levels retain respectively
`7512, 24240, 16740, 8160, 6270` bins. They are covered by 155 labels;
the conservative graph has 70 edges. The exact search completes after
150 branch steps and finds no six-clique. A third orthonormal basis
would supply such a clique, a contradiction. These are replay counts,
not a claim that there are exactly 155 unbiased rays. ∎

## 6. What is still missing

**CERTIFIED input binding, not rerun of the full atlas:** the existing
Arb receipt matches the current 26 source files and certificate
`33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`.
The atlas contains 2775 seed balls plus the X-ball. This return does not
rerun its full C1/transfer computation.

**NUMERICAL / external execution evidence:** Rusty job 7346573, described
as running in the brief, ended after about 36 minutes; its batch step
reports OUT_OF_MEMORY. Replacement job 7346699 was running when checked.
The frozen snapshot in `reference/` contains 28 complete seed rows, all
claiming whole-ball exclusion with max_level=3, and no census rows.
The snapshot is partial, and the unbound summary rows are not certificates.

**NOT ESTABLISHED:** a complete triple neighbourhood N from those files.
There are 2747 missing seed indices in this snapshot, and the recorded
28 exclusions have not been replayed under TC's interval-only policy.
`results/input_audit.json` explicitly keeps all 2775 seed balls unresolved
for global classification, plus the X-ball. In particular, the empty
arrays `failed_cells` in those 28 rows do not imply N is empty. Live job
output may advance beyond the frozen snapshot without changing this return.

**NOT ESTABLISHED:** attachment of either local patch to an exhaustive
joint `(H,K)` cover for any entire seed cell or the X-ball. The two
patches certify full-triple phase boxes, not all third bases above any
one H-cell. They are not sufficient to mark any atlas seed resolved.

Further concrete obligations are:

1. Complete the seed subdivision; bind its rows to exact inputs and
   retain replayable exclusion witnesses. Recheck **all** discarded
   bins and edges in Arb, not a random sample. In the current
   `nothird.py`, Stage C still uses float margins.
2. Use exact dyadic cell centres. The existing subcell path rounds
   `r*u_c` to floats before its Arb phase-centre computation; the stated
   enclosure does not explicitly pay for that parameter-centre rounding.
   Its outside-ball check also uses float square roots. `cells.py`
   supplies exact box/ball intersection and rational cell-centre
   enclosures. The C1 normal remainder n must not be divided by 2^m.
3. Generate complete column covers and all surviving cliques. The
   numerical census stores signatures but not H,K witnesses; its scalar
   duplicate filter and finite start budget are not exhaustiveness proofs.
4. Extend the local construction to a finite atlas of its regular
   pieces, with explicit free-coordinate existence bounds and joint
   box coverage. Handle vanishing Fourier eigenvalues, rank drops and
   chart boundaries separately. Pointwise rank tests alone are insufficient.
5. Cover the X-ball in full triple space. The rank-55 isolated patch and
   rank-53 continuous patch require different local models; the
   quartet-exclusion theorem at F6 does not provide triple classification.

**NOT ESTABLISHED:** a counterexample. Failure of any bound, a surviving
clique, an unclassified numerical signature, or a missing row is an
unresolved obligation, never a certified counterexample.

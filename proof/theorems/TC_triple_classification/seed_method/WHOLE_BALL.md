# The original-ball classification test

**Scope.** The input is the entire original seed ball

\[
D=\{w\in\mathbb R^4:\|w\|_2\le r\},\qquad
\theta(w)=\theta_0+M_\theta w.
\]

The centre, four coordinates and radius are unchanged. For seed 1879,
`r = 0x1.020c49ba5e354p-4`, the exact stored binary64 value of 0.063.
The desired conclusion is

\[
\forall w\in D\quad\forall K:\quad
 (I,H(w)/\sqrt6,K/\sqrt6)\text{ is a MUB triple}
 \Longrightarrow\text{the triple is of Conjecture 1 type}.
\]

This document gives a sufficient, finite, replayable test for that statement.
**It does not assert that the test has passed on seed 1879.** The current
bounded run returns **NOT ESTABLISHED**. The separate radius-1/160 receipt
is not used as a substitute for this conclusion.

## 1. Cover every possible third basis

`seed_cover.run` starts from the complete five-phase torus, excludes bins only
by Arb inequalities valid uniformly on D, clusters the retained bins, and
enumerates **every** six-clique of the necessary orthogonality graph.
For the original seed 1879 at resolution 96 this gives 515 labels and 31,579
cliques. The complete enumeration is replayed before classification; a saved
list of cliques is not taken on trust. Exhausted cover/search caps reject.

Let Q be the horizontal phase lift furnished by the existing whole-ball
certificate:

\[
 Q(w)=Q_0+Uw+\tfrac12 H_2[w,w]+Xz_H(w),\quad \|z_H\|_2\le\tau.
\]

For each clique make a 55-phase box: 25 fully dephased H phases and 30 K
phases, with the first row of K fixed to one. The H bounds follow by applying
the exact dephasing map to this model and taking Euclidean operator bounds.

There are two relevant gauge details:

* A label radius \(\rho\) is measured **after projecting off common phase**.
  With the first phase fixed, each other phase displacement is bounded by
  \(\sqrt2\rho\), because its representing covector is \(e_i-e_0\).
* The torus cover uses the fixed row gauge at Q₀. To dephase H(w), each K
  phase must also be shifted by
  \(-[Q_{i0}(w)-Q_{i0}(0)]+[Q_{00}(w)-Q_{00}(0)]\).
  The same quadratic model bounds this shift uniformly on D.

Column permutations are immaterial for triple equivalence. Each clique is
put in a fixed order. Consequently every actual triple over D belongs to at
least one initial 55-phase box after a column permutation and phase lifts.

## 2. Classify a whole box by transverse injectivity

Let \(F:\mathbb R^{55}\to\mathbb R^{96}\) be the phase equations implemented
in `local.residual_jacobian`: orthogonality of H and K, and all 36 mutual
unbiasedness equations. Flatness and the chosen gauges are built into the
phase parametrization.

Choose two H phase coordinates s and call the other 53 coordinates y.
For **every** s in the candidate box, independently construct a known
continuous triple \(\Psi(s)\) having those same two H phase coordinates.
Section 3 gives the uniform existence certificate. Enclose both the candidate
box and all these known triples in a common box Y, choosing compatible phase
lifts. The free coordinates on the segment are fixed at s.

Choose any fixed rational/dyadic matrix \(B\in\mathbb R^{53\times96}\).
The check is

\[
\boxed{\quad
 q=\sup_{x\in Y}\|I_{53}-B D_yF(x)\|_\infty<1.
 \quad}
\]

The implementation encloses the full Jacobian in Arb, multiplies by the
fixed B, and bounds each absolute row sum. Floating pseudoinverses only
propose B. A numerical rank or singular-value threshold never accepts a box.

**PROVED implication.** If \(F(s,y)=0\), then \(F(\Psi(s))=0\) also. Writing
\(d=y-\Psi_y(s)\), the integral mean-value identity gives

\[
0=B\{F(s,y)-F(\Psi(s))\}
  =\left(\int_0^1 B D_yF(\Psi(s)+t(0,d))\,dt\right)d.
\]

Hence \(\|d\|_\infty\le q\|d\|_\infty\), so d=0. This identifies the
**entire triple**, including its third basis, with the explicit known
construction. It does not merely identify H with a known Hadamard family.

The segment is in the full phase space, where F is defined everywhere.
It need not remain inside the original seed ball or even consist of
Hadamard matrices. Thus an orthogonal projection leaving the seed ball is
not an assumption or a gap in this argument.

## 3. Known triples for an entire free-coordinate rectangle

Use the explicit construction and its algebraic verification in the parent
`PROOF.md`, Section 4. Its four phase increments p satisfy the complex equation

\[
G(p)=b+c/b+1/c+e+f/e+1/f=0,
\]

based at \((b,c,e,f)=(i,i,1,-1)\). Its dephased H phase increments are the
integer-linear map Cₕp. If C selects the two requested H coordinates, the
exact rational inverse of the matrix with rows \((DG(0),C)\) supplies
\(N_0,T_0\) with \(CN_0=0\), \(CT_0=I_2\).

For a target rectangle centred at s_c, a Newton iteration proposes a normal
centre z_c. Set \(p_c=T_0s_c+N_0z_c\). Exact dyadic proposals then give

\[
 N=N_0B_c,\qquad T=T_0+N_0Z_c,
 \qquad p=p_c+T(s-s_c)+Nz.
\]

Regardless of numerical proposal quality, \(Cp=s\) holds exactly. The
normal fixed-point map is \(z\mapsto z-G(p_c+T(s-s_c)+Nz)\), with real and
imaginary components understood. For \(d=T(s-s_c)\), the explicit residual
bound is

\[
 E=\|G(p_c)+DG(p_c)d\|_\infty
    +\tfrac12\sum_{\nu}|\nu\cdot d|^2.
\]

There are six frequencies, listed in `known_family.FREQUENCIES`, with
coefficients of modulus one. The second-order exponential remainder proves
this bound. On the full parameter enclosure check

\[
 q_G=\|I_2-DG(p)N\|_\infty<1,
 \qquad E+q_G\epsilon<\epsilon.
\]

Banach's theorem supplies a solution for every s. The spectral denominators
in the known K formula must be separated from zero, and its continuous
phase lifts must be certified. This is a constructional existence proof,
not an inference from small residuals or numerical classification invariants.

Recentering z_c is essential: at a nonzero s_c the normal enclosure now
shrinks with the free-coordinate rectangle. The method is not restricted to
the single fourth-root anchor or to seed planes through that anchor.

## 4. Exclude or subdivide everything else

Before the classification test, the program can narrow a box using two
zero-preserving operations.

1. Recover \(w=M_\theta^{-1}(\theta-\theta_0)\) from its four H seed phases.
   Intersect with the coordinate bounds of the original ball, exclude if
   the squared-distance lower bound exceeds r², and intersect H with the
   original quadratic phase model on the resulting interval enclosure of w.
   For intervals meeting zero the absolute-value lower bound is zero;
   squaring a negative interval endpoint would be invalid.
2. Apply parametric interval Newton with two phases free. For fixed free
   coordinates, transverse midpoint \(y_c\), and any fixed B, every zero
   satisfies
   \[
   y\in y_c-BF(s,y_c)+(I-BD_yF(S\times Y))(Y-y_c).
   \]
   Intersect with Y. Empty intersections or residual intervals separated
   from zero exclude the box. This inclusion is valid even if its matrix
   norm is at least one; such a norm does **not** establish uniqueness.

If neither exclusion nor the Section 2 test succeeds, split one coordinate
into two closed intervals. Their union contains the parent, including the
split boundary. The implementation can prioritize the four seed phases;
this changes efficiency only. No root census is used for completeness.

**PROVED whole-ball acceptance rule.** Starting with all initial clique
boxes, perform finitely many of these steps. If every leaf is either
excluded or classified by Section 2, all MUB triples over the entire
original ball are known continuous triples, hence are of Conjecture 1 type.

A time, node, or depth limit leaves unresolved leaves. The program then
returns **NOT ESTABLISHED**, even if many other leaves passed. Unvisited
initial roots are recorded by their index in the replayed clique list;
other unfinished leaves retain their phase boxes. No unresolved leaf can
be counted as an exclusion or covered by the smaller-ball receipt.

## 5. Replay and present limitation

From the repository root, with python-flint, NumPy and SymPy available:

```sh
python proof/theorems/TC_triple_classification/seed_method/whole_ball.py \
  --index 1879 --max-nodes 512 --max-depth 80 \
  --output proof/theorems/TC_triple_classification/seed_method/results/seed1879_whole_ball_attempt.json.gz
python -m unittest discover \
  -s proof/theorems/TC_triple_classification/seed_method \
  -p test_whole_ball.py -v
```

The output binds the unaltered atlas, original radius, replayed complete
clique cover, construction proposals and all transitive proof sources by
SHA-256. Tests exercise known-family existence away from the anchor, the
transverse test, original-ball centre/jet retention, phase-gauge conversion
for all ten known anchor bases, exact split coverage, and rejection of
incomplete searches.

**NOT ESTABLISHED:** classification of the original radius-0.063 ball.
The recorded 512-node run excludes 227 leaves and leaves 31,637 unresolved,
including 31,578 unvisited original clique roots. Exact prefix-free binary
path accounting gives total weight one for every initial clique. This
checks exhaustive bookkeeping, not completion of the classification.
The broad 55-phase boxes lose correlations between H, K and the four seed
parameters. The current contraction/subdivision run does not close them.
This is the remaining computational/analytic obstacle; the new whole-ball
acceptance rule does not itself remove it. Nor has this program certified
the other 2,774 seed balls or the X-ball. It currently implements the
continuous-family leaf test; an isolated-triple leaf needs the analogous
55-dimensional injectivity test with a certified isolated anchor.

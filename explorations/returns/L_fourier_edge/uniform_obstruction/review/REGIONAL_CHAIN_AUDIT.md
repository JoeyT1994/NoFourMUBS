# Independent review of the uniform companion obstruction

## Verdict and scope

The analytic reduction and exact finite-template obstruction **pass this
independent review**. A fresh run of `../region/verify_template_graph.py`
reproduced the retained graph receipt byte for byte. A fresh run of
`../region/verify_tube_graph_binding.py` passed after a list-versus-tuple
serialization comparison was corrected. A separate Gaussian-rational overlap
calculation, using six nested ascending set-intersection loops and without
importing the graph verifier, independently reproduced all 600 orthogonality
edges, 240 possible-unbiasedness edges, ten six-cliques, and 1,200 strict
clique–ray witnesses.

The two separately checked completion gates are now present. The native
enclosure arithmetic and cover proof passed the independent static audit in
`../algebra/INDEPENDENT_TUBE_AUDIT.md`. The fresh main cover finished with
exit zero in 723.216619 seconds, processing 5,066,657 nodes. I independently
rehashed its source, header, input and executable, validated all 120 printed
template boxes, and checked its unique final marker and exact tree counts.
The gates together establish the stated numerical neighborhood theorem.
I did not independently rerun the full 723-second search. The companion
proof needs neither a published global maximum nor a numerical census
assumption.

The associated `REGIONAL_CHAIN_AUDIT_RECEIPT.json` binds the reviewed files
and the fresh local replay receipts. The separate
`COMPLETED_COVER_EVIDENCE_RECEIPT.json` binds the actual completed execution;
the review does not turn a static audit into a search replay.

## 1. The exact statement delivered by complete containment

Let \(D\) be the literal raw Diţă matrix in the regional theorem, and let

\[
\epsilon=10^{-4},\qquad
\eta=30\epsilon+36\epsilon^2=\frac{75009}{25000000}.
\]

The anchor region consists of **all** raw Hadamards \(H\) satisfying

\[
\max_{i,j}|H_{ij}-D_{ij}|\le\epsilon.
\]

There is no restriction to a chosen Hadamard family, dephasing section,
regular parameter, or branch. A ray unbiased to the standard basis has a
unique representative \(x=(1,x_1,\ldots,x_5)^T\) with unit-modulus entries;
the corresponding unit vector is \(x/\sqrt6\).

For a ray also unbiased to \(H/\sqrt6\), the triangle inequality gives

\[
|(D^\dagger x)_j-(H^\dagger x)_j|\le6\epsilon,
\qquad |(H^\dagger x)_j|=\sqrt6.
\]

Therefore

\[
\bigl|| (D^\dagger x)_j|^2-6\bigr|
\le12\sqrt6\epsilon+36\epsilon^2<\eta.
\]

The program covers the sublevel conditions for columns 0 through 4. This
is a conservative relaxation: a physical candidate satisfies all six
conditions and hence these five. The actual tolerance is the outward
rounded value \(\eta_Q=\lceil Q\eta\rceil/Q\), \(Q=2^{44}\).

The actual template halfwidth is

\[
h=\frac{\lceil Q/100\rceil}{Q}
=\frac{175921860445}{17592186044416}.
\]

The binder directly checks the complex phases of the actual dyadic centers,
rather than assuming that their rounded angles equal the original
proposals. Each phase center is within \(\nu=10^{-9}\) of its Gaussian
rational template, and the exact strict inequality

\[
h+\nu<\rho=\frac{10001}{10^6}
\]

holds. Thus complete sublevel containment implies coordinatewise chordal
containment in the graph's template neighborhoods.

## 2. Why the approximate-residual search operations are necessary

The fixed Gaussian coefficients encode

\[
F_j(\theta)=2\sum_{r<s}
\cos\!\left(\theta_r-\theta_s+
\arg(\overline D_{rj}D_{sj})\right),\qquad \theta_0=0.
\]

This is exactly \(|(D^\dagger x)_j|^2-6\). The coefficient sign, the
\(-2\sin\) derivative at \(r\), and the \(+2\sin\) derivative at \(s\)
agree with the source. The binder reconstructs all 75 coefficients using
Gaussian-integer products and rational Machin bounds for \(\pi\).

For any current convex phase box \(B\), midpoint \(m\), point
\(x\in B\), and arbitrary finite rational matrix \(C\), write
\(y=F(x)\) and

\[
A_x=\int_0^1 DF(m+t(x-m))\,dt.
\]

Then

\[
x=m-C(F(m)-y)+(I-CA_x)(x-m).
\]

If \(|y_j|\le\eta_Q\), the source's enlargement of the midpoint
residual by the symmetric interval \([-\eta_Q,\eta_Q]^5\), before
multiplication by \(C\), encloses the middle term. An interval Jacobian
encloses \(A_x\). This gives a necessary enclosure for every sublevel
point even if \(C\) is singular or inaccurate. A failed floating-point
proposal merely leads to splitting.

Consequently range rejection, disjointness from this enclosure, and
intersection with it preserve exactly the required containment implication.
Accepting an enclosure contained in a template is also sound: the entire
current box need not be in that template, but every relevant point in it is.
The floating relative-volume comparison chooses between valid operations
and does not decide an excluded set or an interval endpoint.

The initial shifted cube contains a complete representative of the phase
torus because its width exceeds \(2\pi\). Each split uses two closed
children sharing the exact midpoint. No cut face, sublevel equality, or
template boundary is discarded. These are logical properties of the read
source; validation of every numerical enclosure and actual search
completion remains a separate gate.

The additional counter proof in [COUNTER_BOUND.md](../cover/COUNTER_BOUND.md)
also passes review. The sum of the five ceiling base-two logarithms of
integer widths starts at most 235 and decreases at every split, so the
unsigned depth field cannot wrap. The observed exact maximum depth 41
then bounds the completed binary tree by \(2^{42}-1\) nodes. Every
64-bit diagnostic counter increments at most once per node and cannot
wrap. This avoids a circular inference from the small printed node count.

## 3. Graph implication, incidences, and normalization

The rational template coordinates satisfy \(|w_{a,i}|\le R=1+10^{-10}\)
and \(w_{a,0}=1\). If physical rays \(x,y\) receive labels \(a,b\), then

\[
|x^\dagger y-w_a^\dagger w_b|
\le e:=5\rho(1+R).
\]

The orthogonality graph includes an edge whenever
\(|w_a^\dagger w_b|^2\le e^2\). Each template's diagonal overlap has
squared magnitude strictly larger than \(e^2\). Hence an orthogonal
sextuple necessarily receives six distinct, pairwise adjacent labels.
This holds even when neighborhoods overlap: any admissible label choices
obey the same implication. The exhaustive six-clique enumeration therefore
covers every possible completing basis.

For each of the ten six-cliques \(A\) and every label \(b\), including
labels within \(A\), the exact checker verifies a witness \(a\in A\)
such that

\[
\bigl||w_a^\dagger w_b|^2-6\bigr|>\frac{599}{100}.
\]

Physical inner products have magnitude at most six, and template inner
products have magnitude at most \(1+5R^2\). Therefore their squared
magnitudes differ by at most \((7+5R^2)e\). The checked rational inequality

\[
\frac{599}{100}-(7+5R^2)e>\frac92
\]

gives a raw squared-overlap residual strictly larger than \(9/2\).
The physical unit-vector probability is \(|x^\dagger y|^2/36\), so its
deviation from \(1/6\) is strictly larger than \(1/8\).

Apply this to every column of a second completing basis. There are six
different matrix positions, one in each column, each contributing more
than \((1/8)^2\). Thus the stated energy satisfies

\[
\Delta(B,C)=\sum_{j,k}
\left(\frac{|(B^\dagger C)_{jk}|^2}{36}-\frac16\right)^2
>\frac3{32}.
\]

More strongly, every completing triple lacks even one additional unbiased
ray. The second conservative graph's zero common-neighbor tests give an
independent weaker check of that conclusion.

The independent exact-atlas transfer in the algebra note, Section 1.1,
also passes review. Its actual and exact coordinates all have modulus
one. The inner-product error is therefore strictly below \(10\rho\),
and the squared-modulus error is strictly below \(120\rho\).
The checked minimum nonzero atlas squared overlap is greater than
\(1/50>(10\rho)^2\), so every actual basis maps to an exact atlas
sextuple. Its exact star gap of at least six yields the stronger raw
bound \(6-120\rho=119997/25000>9/2\). The phase association gate
gives the needed strict coordinate bound \(h+10^{-9}<\rho\).
This variant also makes no one-root-per-box assumption.

## 4. Exceptional loci and the finite algebra

No genericity assumption on candidate roots enters the regional argument.
Splitting roots, coincident roots, nonreduced complex points, and variations
in the projective boundary do not remove a physical ray from the compact
torus or from the complete containment implication. Even an abstract
positive-dimensional candidate set inside the boxes would obey the graph
proof. In this particular region the middle-minor theorem separately gives
finiteness, but the template proof does not require it.

The independently read `../algebra/FINITE_COMPANION_ALGEBRA.md` also passes
analytic review. The full unsaturated projective scheme has ten bilinear
equations on \(\mathbb P^5\times\mathbb P^5\). Nonzero middle minors give
the two complementary boundary support patterns. The boundary tangent
calculation forces the shared diagonal differential to vanish and leaves
only projective gauges. Hence each boundary point is reduced and isolated;
the Segre hyperplane argument forces the full scheme to be finite. Its
complete-intersection length is \(\binom{10}{5}=252\), with
\(2Z_2(H)\) reduced boundary points. The affine algebra retains all
remaining multiplicities and has length \(252-2Z_2(H)\).

The Laurent involution, ordered reciprocal-orthogonality equations, and
seven- and twelve-ray companion algebras have the stated physical-character
interpretation. No radical or unjustified generic fiber reduction is taken.
My self-contained proof and the separate uniform **projective** finite-flat
statement appear in `FINITE_COMMON_RAY_ALGEBRA.md`. Neither statement makes
the open affine algebra uniformly finite or supplies a companion obstruction
by itself.

All 400 middle minors of \(D\) have modulus at least two. For raw Hadamards
in the region, telescoping the six three-factor determinant terms yields
a change at most \(18\epsilon\). Thus all middle minors remain at least
\(9991/5000>0\). This proves the Fourier-free qualification using the
retained Fourier-routing equivalence.

## 5. Limits and provenance

Complete containment in 120 boxes does not alone prove exactly 120 rays,
uniqueness of a root in each box, or exactly ten actual companion bases.
The exact atlas independently supplies 120 actual rays and ten actual
companions at \(D\), which establishes nonvacuity there. The uniform
obstruction needs only that every companion maps to one of ten possible
label cliques.

The acquired primary sources and their hashes are recorded in
`SOURCE_ATTRIBUTION.md`. The interval engine is an explicitly modified descendant
of Sun's public source, not a claimed replay of Sun's different anchor
theorem. The Diţă literature and numerical searches proposed useful data;
the new exact graph and complete containment must support the new regional
claim. No statement here proves Global F, Global F′, or exclusion over all
Fourier-free anchors.

# Independent audit of the packed W11 certificate

This is a mathematical audit of `certificate/build_circuit.py`; no structural
derivation of the missing cross-side cancellation is claimed here.

## 1. Binding the circuit to the weighted contraction

For either side set

\[
d=P_0\overline{P_1}.
\]

The matrices returned by `scaled(G)` satisfy, entry by entry,

\[
Q^{(1)}(G,z)=\frac{H_0+gzH_1}{d}.
\]

In particular, the entries of `H1` deliberately omit a common factor `g`.
Their three nonzero entries are

\[
(H_1)_{01}=-2s(c_0-c_1),\qquad
(H_1)_{02}=\overline{P_1},\qquad
(H_1)_{21}=-P_0.
\]

For the corner, `U = E* adj(Gh)` and `det(Gh)=g` give

\[
K=-U/g,\qquad K^*=-U^*/g.
\]

The identity `g*=g` holds because `Gh` is Hermitian, or directly from its
displayed invariant formula. The two minus signs cancel in every contraction.

Write `(H0,H1,dh)` and `(V0,V1,dv)` for the two scaled side data. The separate
certificates `gram_g`, `gram_eta`, `gram_chi` justify using the horizontal
invariants on the vertical side. Set

\[
A=\langle V_0,UH_0U^*\rangle,\quad
B=\langle V_0,UH_1U^*\rangle,\quad
C=\langle V_1,UH_0U^*\rangle,\quad
D=\langle V_1,UH_1U^*\rangle,
\]

where `angle(X,Y)=sum_ac X_ac Y_ac = tr(X^T Y)`; there is no conjugation
of the first argument. Then the exact numerator identity is

\[
d_hd_vg^2 W_{11}(z,w)
= A+gzB+gwC+g^2zwD
-d_hd_vg^2(G_v)_{01}(G_h)_{01}.
\]

Consequently the two circuit roots

\[
f_1=B-C,
\]

\[
f_0=A+\chi C+\eta g^2D
-d_hd_vg^2(G_v)_{01}(G_h)_{01}
\]

are exactly the cleared coefficient identities needed for the stated ideal
membership. If they vanish, then

\[
W_{11}(z,w)
=\frac{B}{d_hd_vg}\left(z+w-\frac\chi g\right)
+\frac{D}{d_hd_v}(zw-\eta).
\]

Every scaling, index order, transpose and conjugation in `scaled()` and
`build()` agrees with this formula.

## 2. Why one packed integer zero proves a Laurent identity

For every circuit node, the metadata `lo` and `hi` bound all Laurent
exponents componentwise. For multiplication these boxes add; for addition
their componentwise hull is a valid bound. The recursively computed `norm`
bounds the sum of absolute coefficients: it adds for addition and multiplies
for multiplication. Negation multiplies by the monomial `-1`. All bounds
therefore follow by induction on the arithmetic circuit.

For a root box with widths `w_i=hi_i-lo_i`, use mixed-radix weights

\[
\rho_0=1,\qquad \rho_{i+1}=\rho_i(w_i+1).
\]

The map `e -> sum_i (e_i-lo_i) rho_i` is injective on that integer box.
Thus substituting `x_i=T^(rho_i)` after removing the root's common Laurent
monomial turns the Laurent polynomial into a univariate integer polynomial
without coefficient collisions.

Set `T=2^bit_length(norm)`. Unless the norm bound is zero, this satisfies
`T>norm`, so every coefficient has absolute value strictly less than `T`.
A nonzero integer polynomial with that bound cannot vanish at `T`: divide
by its lowest power of `T` and reduce modulo `T`; the lowest nonzero
coefficient would have to be divisible by `T`, which contradicts its bound.
When the norm bound is zero, the circuit already denotes the zero polynomial.

The evaluator stores each node after removing that node's own monomial
shift. For a multiplication node those shifts add exactly. For an addition
node the two extra shifts are nonnegative because its lower bound is the
componentwise minimum. The evaluator's bit shifts implement precisely those
powers of `T`. Different intermediate monomials are allowed to collide;
only the root's mixed-radix injection is needed for the implication from
integer zero to polynomial zero.

This is an exact deterministic certificate, not a sampled numerical test.

## 3. Implementation review and scope

The initial implementation used Python `assert` for its zero and shift
checks. The delivered builder rejects `python -O`/`-OO`. The independent
checker instead uses unconditional exceptions for these checks. The
optimization hazard identified during the audit is therefore resolved.

This method compresses the exact computational certificate. It does not
derive the cross-side cancellation from the metric identity or sparse
corner-side coupling, and it does not establish a Lean build time or memory
improvement until the generic packing theorem and integer computation are
actually integrated and checked in Lean.

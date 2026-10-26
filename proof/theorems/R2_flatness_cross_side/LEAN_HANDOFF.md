# Lean integration handoff: the 542-node exact circuit

## Status and intended integration

This package supplies a compact exact computational certificate for the two
`W11` coefficient identities and three complementary-Gram invariant identities.
It also supplies a proved change of coordinates transferring the resulting
matching-ideal identity to the conic contraction matrix `C`.

The original Lean repository and `lean/NoFourMUBS/L1/FlatData.lean` were not
included in the attachment. No Lean toolchain was available in this execution
environment. Consequently **no replacement Lean file has been compiled, no
existing Lean theorem has been replaced, and no Lean build-time or memory
saving has been measured**. Retain the existing certificate until an actual
Lean integration passes the project's normal checks.

The terminal cancellation is still computational. This package does not
derive it solely from the metric identity and the corner-side coupling.
No new axiom, trusted external zero assertion, or untested Lean source is
proposed here.

The relevant package files are:

| File | Role |
|---|---|
| `certificate/packed_circuit.json` | The exact 542-node integer Laurent circuit and its five named roots |
| `certificate/build_circuit.py` | Construction of those roots from the corner and scaled third moments |
| `verification/verify_target_binding.py` | Reconstructs the target circuit and checks exact equality with the stored JSON |
| `verification/check_packed_circuit.py` | Independent standard-library checker; recomputes support/norm bounds and checks separating integer evaluations |
| `proofs/COMPACT_W_CERTIFICATE.md` | Derivation of the cleared targets and ideal coefficients |
| `proofs/C_W_RELATION.md` | Covariance change of coordinates, label reduction, explicit inverse and ideal transfer |
| `proofs/PACKING_AUDIT.md` | Independent mathematical audit of the scaling and packing argument |
| `verification_results.json` | Recorded replay results; these are evidence from Python, not Lean proof terms |

All indices below are zero-based for the 3 by 3 matrices. The conic coordinate
indices are 1 and 2.

## 1. Exact mathematical targets

Start in the integer Laurent polynomial ring

\[
\mathscr L=\mathbb Z[a^{\pm1},b^{\pm1},c^{\pm1},d^{\pm1}].
\]

Formal conjugation fixes integer coefficients and negates every exponent.
It represents complex conjugation when all four seeds are unit phases. Form

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\quad
G_h=6I-EE^*,\quad G_v=6I-E^{\mathsf T}\bar E.
\]

For a side Gram write

\[
G=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix},
\qquad S=\bar s,\ T=\bar t,\ Q=\bar r.
\]

Use exactly the definitions of `g`, `eta`, `chi`, `P0`, `P1`, `c0`, and
`c1` in `reference/FLATNESS.md`, Sections 1 and 3. They are constructed
explicitly by `scaled(G)` in the circuit builder. Put

\[
d_G=P_0\bar P_1.
\]

The two matrices constructed there satisfy

\[
Q^{(1)}(G,z)=\frac{H_0(G)+gzH_1(G)}{d_G},
\tag{1}
\]

where

\[
H_0(G)=\begin{pmatrix}
Sd_G&S^2d_G-2s(g^2+c_1\chi+c_0c_1\eta)&STd_G-(\chi+c_0\eta)\bar P_1\\
3d_G&Sd_G&Td_G\\
rd_G&Srd_G-c_1\eta P_0&Sd_G
\end{pmatrix},
\]

\[
H_1(G)=\begin{pmatrix}
0&-2s(c_0-c_1)&\bar P_1\\
0&0&0\\
0&-P_0&0
\end{pmatrix}.
\]

In particular, `H1` omits the common factor `g`; that factor occurs explicitly
in (1). This is an important scaling convention for integration.

Let

\[
U=E^*\operatorname{adj}(G_h),\qquad
H_i=H_i(G_h),\quad V_i=H_i(G_v),\quad
d_h=d_{G_h},\quad d_v=d_{G_v},
\]

and set

\[
J_{ij}=\operatorname{tr}(V_i^{\mathsf T}UH_jU^*)
=\sum_{a,c}(V_i)_{ac}(UH_jU^*)_{ac}.
\tag{2}
\]

The first argument in this contraction is **not conjugated**. The ordinary
transpose is essential.

The five stored roots are:

| Root name | Node index | Laurent polynomial |
|---|---:|---|
| `linear_residual` | 522 | \(F_1=J_{01}-J_{10}\) |
| `constant_residual` | 535 | \(F_0=J_{00}+\chi J_{10}+\eta g^2J_{11}-d_hd_vg^2(G_v)_{01}(G_h)_{01}\) |
| `gram_g` | 537 | \(g_h-g_v\) |
| `gram_eta` | 539 | \(\eta_h-\eta_v\) |
| `gram_chi` | 541 | \(\chi_h-\chi_v\) |

The formal goal is to prove that each of these five root semantics is the
zero element of \(\mathscr L\). The stored JSON contains only the circuit
instructions and root indices; support boxes, coefficient bounds, and
packed evaluations are recomputed by the checker.

### From these zeros to `W11`

The existing determinant identity `det(Gh)=g`, Hermiticity of `Gh`, and the
definition of `K` give

\[
K=-U/g,\qquad K^*=-U^*/g.
\]

The two minus signs cancel. Using the three invariant-equality roots, both
sides can use the same `g`, `eta`, and `chi`. Substitution of (1) into the
third-moment formula gives

\[
d_hd_vg^2W_{11}(z,w)
=J_{00}+gzJ_{01}+gwJ_{10}+g^2zwJ_{11}
-d_hd_vg^2(G_v)_{01}(G_h)_{01}.
\tag{3}
\]

With \(h=\chi/g\), the exact residual identity is

\[
\begin{aligned}
d_hd_vg^2W_{11}(z,w)
={}&gJ_{10}(z+w-h)+g^2J_{11}(zw-\eta)\\
&+F_0+gzF_1.
\end{aligned}
\tag{4}
\]

Thus the two certified zeros prove the free-label polynomial identity

\[
\boxed{
W_{11}(z,w)=
\frac{J_{10}}{d_hd_vg}(z+w-h)
+\frac{J_{11}}{d_hd_v}(zw-\eta).
}
\tag{5}
\]

There is no need to expand either rational coefficient in the four seeds.
All denominators are among the existing strict-domain guards: `g>0` and
the appropriate `P_j` and their conjugates are nonzero. No additional
exceptional locus is needed.

## 2. A suitable circuit semantics

One elementary implementation uses finitely supported functions from
\(\mathbb Z^4\) to \(\mathbb Z\). Addition is coefficientwise and
multiplication is convolution. A choice of the repository's existing
Laurent-polynomial or monoid-algebra API can replace this representation;
the proof below does not depend on a particular Lean declaration name.

Each JSON node is one of:

- `mono`: an integer coefficient and four integer exponents;
- `add`: two earlier node indices;
- `mul`: two earlier node indices.

The checker requires every child index to be strictly smaller than its
parent. This supplies a direct induction order and prevents cycles. Define
the polynomial semantics of each node in that order. Formal conjugation
does not need a fourth circuit instruction: the builder has already
negated monomial exponents and recursively preserved addition/multiplication.

For target binding, formally define the corner, side invariants, scaled
matrices and contractions (1)--(2), then prove that the relevant circuit
roots denote exactly the five targets in Section 1. A verified circuit
constructor with a correctness theorem is one reusable route. A direct
proof for the 542-node typed constant is another. Merely proving that the
stored graph evaluates to zero, without tying it to the target formulas,
does not establish the flatness theorem.

The Python target-binding checker demonstrates the intended exact binding
but is not itself a Lean proof of it.

## 3. Bound propagation

For every node `i`, compute vectors \(\ell_i,u_i\in\mathbb Z^4\)
and a nonnegative integer \(N_i\). Prove by induction on nodes that:

1. Every exponent with a nonzero coefficient lies componentwise between
   \(\ell_i\) and \(u_i\).
2. The sum of the absolute values of all coefficients is at most \(N_i\).

Use these recurrences:

| Operation | Lower bound | Upper bound | Coefficient norm bound |
|---|---|---|---|
| \(cX^e\) | \(e\) | \(e\) | \(|c|\) |
| \(f+g\) | componentwise minimum | componentwise maximum | \(N_f+N_g\) |
| \(fg\) | \(\ell_f+\ell_g\) | \(u_f+u_g\) | \(N_fN_g\) |

For addition, the coefficient triangle inequality proves the norm bound.
For multiplication, use the convolution formula followed by the triangle
inequality and the finite double-sum identity. Cancellation can only make
the bounds looser; it never invalidates them. Negative monomials use their
coefficient's absolute value. A zero norm bound already proves the node
denotes zero.

These bounds are intentionally elementary. They need not be sharp.

## 4. Mixed-radix support encoding

Fix one root `r`, and let

\[
m_j=(u_r)_j-(\ell_r)_j+1>0,
\qquad
\rho_0=1,\quad \rho_{j+1}=m_j\rho_j.
\]

For an exponent \(e\) in the root box, define

\[
\kappa(e)=\sum_{j=0}^3(e_j-(\ell_r)_j)\rho_j.
\tag{6}
\]

Every digit \(e_j-(\ell_r)_j\) lies between 0 and \(m_j-1\).
Consequently \(\kappa\) is injective on the root box and lies between
0 and \(m_0m_1m_2m_3-1\).

A short proof recovers the first digit by reducing modulo \(m_0\),
subtracts it, divides by \(m_0\), and repeats. If a radix equals one,
its corresponding digit is necessarily zero and can be omitted. The same
argument proves injectivity for arbitrary finite dimension; specializing
to four variables is sufficient here.

Push the root coefficients forward along (6), obtaining an ordinary
integer polynomial \(p(T)\). Injectivity prevents coefficient collisions,
so the Laurent root is zero if and only if \(p\) is zero, and every
coefficient of \(p\) has absolute value at most \(N_r\).

## 5. The separating-integer lemma

The reusable number-theoretic lemma is:

> Let \(p\in\mathbb Z[T]\), let \(B\ge2\), and suppose every
> coefficient of \(p\) has absolute value strictly less than \(B\).
> If \(p(B)=0\), then \(p=0\).

Proof: if \(p\ne0\), take its smallest exponent `k` with nonzero
coefficient. Divide the evaluation by \(B^k\). The resulting integer is
that coefficient plus an integer multiple of \(B\). Therefore \(B\)
divides the coefficient, which contradicts its nonzero value and strict
absolute bound.

Equivalently one can induct on the polynomial after extracting its constant
term. No probabilistic identity test, analytic estimate, or irreducibility
assumption is involved.

The checker chooses

\[
b=\max(1,\operatorname{bitlength}(N_r)),\qquad B=2^b.
\]

It checks \(B>N_r\). The coefficient bound from Section 3 therefore
satisfies the lemma. Combining Sections 4 and 5 reduces the exact Laurent
zero to the equality of one explicitly computed integer with zero.

The integer can be large; its size is the price of this deterministic
compression. A short JSON file is not by itself a prediction of inexpensive
Lean proof checking.

## 6. Correctness of the scaled DAG evaluation

For the fixed root's weights \(\rho\), set

\[
\sigma_i=\sum_j(\ell_i)_j\rho_j.
\]

Define the scaled evaluation of node `i` by

\[
v_i=\sum_e [X^e]f_i\;B^{\sum_j(e_j-(\ell_i)_j)\rho_j}.
\tag{7}
\]

All exponents in (7) are nonnegative by the support bound, even though the
original Laurent exponents and \(\sigma_i\) may be negative.

The checker implements the following exact recurrences:

- A monomial node has \(v_i=c\).
- At a multiplication node with children `a,b`,
  \(\ell_i=\ell_a+\ell_b\), hence \(v_i=v_av_b\).
- At an addition node,
  \[
  v_i=B^{\sigma_a-\sigma_i}v_a+
      B^{\sigma_b-\sigma_i}v_b.
  \]
  Both shift exponents are nonnegative because the parent's lower vector
  is the componentwise minimum.

Integer left shifts in the Python checker implement multiplication by
\(B^k=2^{bk}\), including for negative integer values. A Lean implementation
may directly use integer multiplication by these powers rather than rely
on a particular bit-shift API.

Induction on the topological node order proves that the computed values
equal (7). In particular, the root value equals the univariate evaluation
\(p(B)\) from Section 4. Therefore root value zero, with the checked bound,
proves the required Laurent identity.

Intermediate exponent maps do not need to be injective: intermediate
values are simply exact evaluations. Injectivity is needed only on the
final root box when deducing that a zero evaluation implies zero
coefficients.

The Python implementation frees a child value after its last use. That is
only a memory optimization. A first formal version can keep all values;
an optimized version should preserve the invariant that every needed
child value remains available.

For a kernel-checked integration, the final integer equalities must be
proved inside the chosen formal workflow. A Python PASS line or a supplied
integer digest is not a substitute for that proof. The appropriate
decision procedure and its resource use must be tested against the actual
repository and Lean version before choosing the production arrangement.

## 7. Universal relabelling supplies all four weighted identities

Let `P_h` and `P_v` independently fix coordinate 0 and optionally exchange
coordinates 1 and 2. Transform

\[
E'=P_hEP_v^{\mathsf T},\quad
B'=P_hB,\quad V'=P_vV,\quad
K'=P_vKP_h^{\mathsf T}.
\]

These transformations preserve the normalized phase-corner form and the
strict hypotheses. They preserve the side labels and the matching
generators \(z+w-h\), \(zw-\eta\). The forced lower-right block `D` is
unchanged. If `J_h,J_v` are the corresponding 2 by 2 permutations, then

\[
W_b'=J_vW_bJ_h^{\mathsf T}.
\]

For the four-seed representation, the horizontal swap substitutes
\((a,b,c,d)\mapsto(c,d,a,b)\); the vertical swap substitutes
\((a,b,c,d)\mapsto(b,a,d,c)\). Thus the universal identity (5), with
these substitutions, supplies all entries of

\[
W_b=B_WS+D_WT,\qquad
S=z+w-h,\quad T=zw-\eta.
\tag{8}
\]

This is a universal theorem and relabelling argument. One scalar vanishing
at one fixed corner would not suffice.

## 8. Transfer from `W` to the conic contraction

For either normalized side `A=(1;x;y)`, define the 2 by 3 matrix of centered
conjugate coordinates

\[
\Psi_A=\begin{pmatrix}
\bar x_0-S/3&\bar x_1-S/3&\bar x_2-S/3\\
\bar y_0-T/3&\bar y_1-T/3&\bar y_2-T/3
\end{pmatrix},\qquad M_A=\Psi_A\Psi_A^{\mathsf T}.
\]

This covariance uses an ordinary transpose. Its affine formula is

\[
M_A(t)=\begin{pmatrix}
\frac23S^2-2s u_1(t)&\frac23ST-\beta(t)\\
\frac23ST-\beta(t)&\frac23T^2-2t_{\!G}u_2(t)
\end{pmatrix}.
\tag{9}
\]

Here \(t_G=G_{20}\) distinguishes the Gram coordinate from the label
variable in this display. The source notation uses `t` for the Gram
coordinate and `z` for the label.

From the prior projector identity
\(\Delta=\Psi_v^{\mathsf T}\mathcal C\Psi_h\), obtain

\[
\boxed{W_b=M_v\mathcal C M_h^{\mathsf T}.}
\tag{10}
\]

Moreover

\[
\det M_A=(\det\bar A)^2/3\ne0.
\]

Consequently `W11` is generally a mixture of the four conic contractions;
it must not be identified with a nonzero scalar multiple of `C11`.

### Work in the side quadratic algebra before taking representatives

Put \(q(t)=t^2-ht+\eta\) and work over the coefficient field or the
appropriate localization in

\[
\mathscr A=F[z,w]/(q(z),q(w)).
\]

The affine conic matrix and sparse projector matrices must be interpreted
after reduction modulo the appropriate side quadratic. In particular,
the raw products and `1/L00` in the sparse formulas are not literally
affine before this reduction. `proofs/C_W_RELATION.md`, Section 3 gives
the affine formulas and the inverse of `L00` using the existing `P0` guard.

To formalize (10) in this algebra, one may prove it directly from the
side moment and projector formulas. If instead using evaluation at the
two physical roots, explicitly establish it for all four independent
horizontal/vertical root choices and use uniqueness of the reduced
representative. A statement for only the matched root choices would not
justify (10) as an identity with independent labels.

The reduced covariance determinant `d(t)` satisfies

\[
d(t)d(h-t)=\mathcal N_A,
\qquad
\mathcal N_A=\frac{g^2}{9}
\frac{P_1P_2\bar P_0}{\bar P_1\bar P_2P_0}\ne0.
\tag{11}
\]

This gives an explicit inverse in the side quadratic algebra:

\[
M_A(t)^{-1}=\mathcal N_A^{-1}
\operatorname{red}_q\bigl(\operatorname{adj}(M_A(t))d(h-t)\bigr).
\tag{12}
\]

The phase ratio in (11) is essential: replacing the label by `h-t` does
not conjugate the Gram coefficients. No new nonvanishing guard is hidden
in (12). The exact per-side identity and its affine coefficient formulas
are in `proofs/C_W_RELATION.md`, equations (10a)--(10d), with an independent
generic Gram check in `verification/check_covariance_norm.py`.

### Explicit ideal transfer

In \(\mathscr A\), the two generators obey

\[
zS=wS=T,\qquad zT=wT=hT-\eta S,
\]
\[
zwS=hT-\eta S,\qquad zwT=(h^2-\eta)T-h\eta S.
\tag{13}
\]

Hence their span is stable under multiplication by both labels. Write

\[
M_v(w)^{-1}=V_0+wV_1,\qquad
M_h(z)^{-\mathsf T}=H_0+zH_1,
\]

where these are the inverse-covariance coefficients from (12), not the
scaled third-moment matrices used earlier. Define

\[
\mathfrak L_0(X)=V_0XH_0,\quad
\mathfrak L_1(X)=V_1XH_0+V_0XH_1,\quad
\mathfrak L_2(X)=V_1XH_1.
\]

Equations (8), (10), and (13) give

\[
\mathcal C=B_CS+D_CT,
\]

with the explicit coefficients

\[
\begin{aligned}
B_C={}&\mathfrak L_0(B_W)-\eta\mathfrak L_2(B_W)
-\eta\mathfrak L_1(D_W)-h\eta\mathfrak L_2(D_W),\\
D_C={}&\mathfrak L_1(B_W)+h\mathfrak L_2(B_W)
+\mathfrak L_0(D_W)+h\mathfrak L_1(D_W)
+(h^2-\eta)\mathfrak L_2(D_W).
\end{aligned}
\tag{14}
\]

Both the affine-`R` contraction defining `C` and the right side of (14)
have degree at most one in each independent label. The monomials
\(1,z,w,zw\) form a basis of the quadratic algebra, by successive monic
polynomial division. Therefore equality of these reduced representatives
is also an ordinary polynomial identity in \(F[z,w]\). Its `(1,1)` entry
is precisely the requested ideal membership for \(\mathcal C_{11}\).

Finally, matched physical labels satisfy \(w=\bar z\),
\(z+w=h\), and \(zw=\eta\), so every conic contraction vanishes.
The prior projector identity then gives \(\Delta=0\), namely flatness
of the forced block. The matching condition has been used explicitly at
this last specialization, rather than assumed during the circuit check.

## 9. Suggested integration order and acceptance criteria

1. Preserve the existing Lean theorem and certificate. Reproduce the Python
   package checks to confirm file integrity and the expected target data.
2. Formalize the denominator scaling (1)--(4) and the elementary strict
   denominator guards using the repository's existing statements.
3. Implement the circuit semantics and prove support/norm bound propagation,
   mixed-radix injectivity, the separating-integer lemma, and evaluator
   correctness once as reusable results.
4. Bind the concrete 542-node circuit to the five displayed targets and
   obtain checked zero theorems for the roots. Record the actual proof
   checking time and peak memory at this stage.
5. Derive (5), use universal relabelling, and integrate the covariance and
   quadratic-ideal transfer to obtain the `C11` theorem with its exact
   affine-representative convention.
6. Compare the resulting theorem signature and dependency/axiom audit with
   the existing route, then run the actual downstream build before replacing
   or removing any old certificate.

The present deliverable makes the proposed replacement concrete and
replayable. It establishes the exact computational route at the paper and
Python level; it does not certify an unperformed Lean build.

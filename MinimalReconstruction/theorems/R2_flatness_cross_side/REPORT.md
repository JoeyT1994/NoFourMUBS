# R2 return: compact exact certificate and the conic coordinate change

## Result and status

The requested ideal membership is **certified exactly** for the affine
conic representatives on every strict corner:

\[
\boxed{\mathcal C_{11}(z,w)
=B_C\left(z+w-\frac\chi g\right)+D_C(zw-\eta).}
\]

The proof uses a new compact representation of the existing weighted-defect
coefficient identities, then an explicit invertible change of coordinates
and a two-dimensional ideal calculation. It includes factored formulas
for the coefficients, exact verifiers, and all denominator guards.

**The preferred structural derivation of the terminal cross-side cancellation
from the metric and corner-side couplings was not obtained.** This return
completes the brief's computational fallback. The single-side structural
lemmas are retained as supplied; no completion, balance, symmetry, density,
or classification assumption is added.

The new certificate data occupy **8,481 bytes**. The complete core with its
formula builder, independent exact checker, and formula-binding check is
**22,765 bytes**. The input brief reports 229 KB for `FlatData.lean`, which
was not itself included. These are source/data sizes for different checking
representations. They do not establish a Lean build-time or memory saving.
No Lean source was changed and no Lean build was performed.

## 1. Precise interpretation of the conic target

Use the input's normalized corner

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\quad G_h=6I-EE^*,\quad G_v=6I-E^{\mathsf T}\bar E,
\quad K=-E^*G_h^{-1}.
\]

Let h=chi/g and q(t)=t^2-ht+eta. For either side set

\[
\beta_i(t)=\frac{\chi+c_i\eta-gt}{P_i},\qquad
L(t)=\bigl(\mathcal T(G)-\operatorname{diag}(\beta_i(t))\bigr)G^{-\mathsf T}.
\]

This is affine in t. In the sparse R formulas from return R, insert

\[
L_{00}^{-1}=\frac{g+c_0(h-t)}{\bar P_0}
\]

and reduce products modulo q(t). The lambda norm identity verifies this
inverse. Denote the resulting affine matrices by R_p(G,t). This reduction
is essential: the unreduced product expressions are not affine in an
unrestricted formal label.

The independent-label polynomial in the statement is therefore

\[
\mathcal C_{pq}(z,w)
=\operatorname{tr}\!\left(R_p(G_v,w)^{\mathsf T}
K R_q(G_h,z)K^*\right).
\]

It has degree at most one in each variable. At an actual side label the
reduced matrix agrees with the original sparse projector formula.
All divisions are by the already guarded g, P_i, and their conjugates.

## 2. A compact exact certificate for W11

For either Gram, put d_G=P_0 bar(P_1) and define

\[
H_0(G)=\begin{pmatrix}
Sd_G&S^2d_G-2s(g^2+c_1\chi+c_0c_1\eta)&STd_G-(\chi+c_0\eta)\bar P_1\\
3d_G&Sd_G&Td_G\\
rd_G&Sr d_G-c_1\eta P_0&Sd_G
\end{pmatrix},
\]

\[
H_1(G)=\begin{pmatrix}
0&-2s(c_0-c_1)&\bar P_1\\
0&0&0\\
0&-P_0&0
\end{pmatrix}.
\]

Multiplying through the supplied third-moment formulas gives

\[
Q^{(1)}(G,t)=\frac{H_0(G)+gtH_1(G)}{d_G}.
\]

Define U=E^*adj(G_h)=-gK. Its overall sign disappears from every
contraction below. Write H_i=H_i(G_h), V_i=H_i(G_v), and

\[
J_{ij}=\operatorname{tr}(V_i^{\mathsf T}UH_jU^*).
\]

The transpose is ordinary transpose; there is no conjugation on V_i in
this bilinear pairing. The weighted defect satisfies

\[
d_hd_vg^2W_{11}(z,w)
=J_{00}+gzJ_{01}+gwJ_{10}+g^2zwJ_{11}
-d_hd_vg^2S_vS_h.
\]

Set

\[
F_1=J_{01}-J_{10},\qquad
F_0=J_{00}+\chi J_{10}+\eta g^2J_{11}-d_hd_vg^2S_vS_h.
\]

The exact residual decomposition is

\[
\boxed{
d_hd_vg^2W_{11}
=gJ_{10}(z+w-h)+g^2J_{11}(zw-\eta)+F_0+gzF_1.
}
\]

The new arithmetic circuit proves F_0=F_1=0 as universal integer
Laurent-polynomial identities. Therefore

\[
\boxed{
W_{11}(z,w)=
\frac{J_{10}}{d_hd_vg}(z+w-h)
+\frac{J_{11}}{d_hd_v}(zw-\eta).
}
\]

These are explicit factored coefficients. The terminal zeros are checked
computationally; the displayed decomposition explains exactly which
mathematical claim the check certifies.

## 3. Why the compact integer check proves a global identity

The certificate contains 542 shared arithmetic nodes: integer Laurent
monomials, additions, and multiplications. Its roots are F1, F0, and the
three horizontal/vertical invariant differences. There are no calls to a
flatness theorem and no stored assertion substituted for either residual.

The checker derives a support box and an upper bound N for the sum of
absolute coefficients at every node. It then uses mixed-radix exponent
weights, which are injective on the root's support box, and an integer base
B>N. A nonzero polynomial with all coefficients smaller than B in absolute
value cannot vanish at B: its lowest nonzero coefficient would be a
nonzero multiple of B. The full argument is in `proofs/PACKING_LEMMA.md`.

The two large roots have these proved bounds:

| Target | Lower exponent vector | Upper exponent vector | N | B |
|---|---|---|---:|---:|
| F1 | (-5,-6,-6,-7) | (8,8,7,7) | 94,964,510,263,680 | 2^47 |
| F0 | (-7,-8,-8,-9) | (10,10,9,9) | 543,610,329,879,553,920 | 2^59 |

Their exact integer evaluations are zero. Thus this is a deterministic
certificate of the full Laurent identities. It involves neither physical
seed sampling nor floating-point arithmetic. The independent checker
recomputes the bounds, and a separate formula-binding check reconstructs
the target circuit from E, both Grams, the scaled moments, and U.

In the first complete replay the independent packed check took about **8.4 s**,
with peak resident memory **28,292 KiB** (about 27.6 MiB). These figures
describe the Python checker in this environment; they are retained in
`reference/first_complete_replay_results.json`. The optional rational
checks provide an independent symbolic confirmation; they are not required
by the dependency-free core.

## 4. Exact relation between C and W

For either side A, use the two centered evaluation rows Psi_A from return R
and form the **bilinear** covariance

\[
M_A=\Psi_A\Psi_A^{\mathsf T}
=\begin{pmatrix}
\frac23S^2-2s u_1&\frac23ST-\beta\\
\frac23ST-\beta&\frac23T^2-2t u_2
\end{pmatrix}.
\]

Because Psi_A times the all-ones vector is zero, bar(A) Psi_A^T has zero
first row and lower block M_A. Therefore, if W_b is the lower-right
2 by 2 block of W,

\[
\boxed{W_b=M_v\mathcal C M_h^{\mathsf T},\qquad
\mathcal C=M_v^{-1}W_bM_h^{-\mathsf T}.}
\]

The coordinate change is invertible everywhere in the strict domain:

\[
\boxed{\det M_A=\frac{(\det\bar A)^2}{3}
=-\frac{g\lambda_1\lambda_2}{3\lambda_0},\qquad
|\det M_A|=g/3>0.}
\]

To prove the determinant formula, subtract the means from the two
nonconstant rows of bar(A), producing a matrix N with rows 1,Psi_1,Psi_2.
Then NN^T=diag(3,M_A), while det N=det bar(A). This introduces no new
nonvanishing assumption.

At a fixed corner W11 is generally a combination of all four C entries.
It is not identified with a scalar multiple of C11. The correct one-entry
reduction is universal: independently swapping coordinates 1 and 2 on
the horizontal and vertical sides, with the corresponding corner row or
column swap, preserves the domain, labels, and forced block. It sends
W_b and C to J_v W_b J_h^T and J_v C J_h^T. Hence the universal W11
certificate supplies all four W entries and then all four C entries.

## 5. Explicit ideal coefficients for the conic matrix

Work in the four-dimensional quadratic algebra

\[
\mathscr A=F[z,w]/(z^2-hz+\eta,\ w^2-hw+\eta),
\]

where F is the rational coefficient field. Let

\[
S_m=z+w-h,\qquad T_m=zw-\eta.
\]

The matching ideal is exactly the span of S_m,T_m, because

\[
zS_m=wS_m=T_m,\quad
zT_m=wT_m=hT_m-\eta S_m,
\]

\[
zwS_m=hT_m-\eta S_m,\quad
zwT_m=(h^2-\eta)T_m-h\eta S_m.
\]

Let the four relabelled W certificates be written

\[
W_b=B_WS_m+D_WT_m.
\]

Take the reduced affine covariance inverses

\[
M_v(w)^{-1}=V_0'+wV_1',\qquad
M_h(z)^{-\mathsf T}=H_0'+zH_1'.
\]

These primes distinguish the inverse coefficients from the scaled
third-moment matrices in Section 2. Define

\[
\mathfrak L_0(X)=V_0'XH_0',\quad
\mathfrak L_1(X)=V_1'XH_0'+V_0'XH_1',\quad
\mathfrak L_2(X)=V_1'XH_1'.
\]

Then the requested conic coefficients are the entries of the explicit
matrices

\[
\boxed{\begin{aligned}
\mathcal B={}&\mathfrak L_0(B_W)-\eta\mathfrak L_2(B_W)
-\eta\mathfrak L_1(D_W)-h\eta\mathfrak L_2(D_W),\\
\mathcal D={}&\mathfrak L_1(B_W)+h\mathfrak L_2(B_W)
+\mathfrak L_0(D_W)+h\mathfrak L_1(D_W)
+(h^2-\eta)\mathfrak L_2(D_W).
\end{aligned}}
\]

In particular, B_C=mathcal B_11 and D_C=mathcal D_11. Multiplication
by the covariance inverses and the six displayed ideal rules give

\[
\mathcal C=\mathcal B S_m+\mathcal D T_m.
\]

Both sides are bilinear in the independent labels. Since 1,z,w,zw form
a basis of the quadratic algebra, equality here is also equality of
these bilinear representatives in F[z,w]. This proves precisely the
ideal membership requested in R2.

### No extra divisor in the covariance inverse

For one side let d(t)=red_q det M(t). The determinant formula and the
lambda norm identities imply

\[
d(t)d(h-t)=\mathcal N_A,
\qquad
\mathcal N_A=\frac{g^2}{9}
\frac{P_1P_2\bar P_0}{\bar P_1\bar P_2P_0}.
\]

Therefore

\[
M(t)^{-1}=\mathcal N_A^{-1}
\operatorname{red}_q\!\left[\operatorname{adj}(M(t))d(h-t)\right].
\]

The phase ratio in N_A is essential: exchanging labels does not conjugate
the Gram coefficients. Every divisor is already nonzero in the strict
domain. `proofs/C_W_RELATION.md` supplies the full affine coefficient
formulas; the optional checker verifies the determinant norm over six
independent Gram variables.

## 6. Independent direct conic verification

The optional rational checker also constructs R1 directly from L and
the lambda inverse, reduces in each side quadratic, and computes

\[
\mathcal C_{11}=A+Bz+Cw+Dzw.
\]

It checks B=C and A+hC+eta D=0 exactly in Q(a,b,c,d), without using the
coordinate-transfer formula to assume these conclusions. This is a
separate check of the conic target and its conventions.

Directly storing its expanded rational coefficients is not economical:

| Coefficient | W11 numerator/denominator terms | direct C11 numerator/denominator terms |
|---|---:|---:|
| A | 17,713 / 10,557 | 36,248 / 40,347 |
| B=C | 5,270 / 5,377 | 14,824 / 25,281 |
| D | 2,882 / 5,377 | 20,028 / 40,347 |

Only the direct conic B,D fractions require 2,331,469 bytes in expanded
JSON; factoring reduces this to 694,744 bytes. These are coefficient
data alone, without their proof. The compact circuit plus structural
coordinate transfer is the smaller route.

## 7. Size comparison and formal integration

| Component | Bytes |
|---|---:|
| Stored 542-node circuit | 8,481 |
| Formula builder and alternate evaluator | 7,776 |
| Independent exact checker | 5,052 |
| Target-binding checker | 1,456 |
| **Complete certificate core** | **22,765** |

The brief's 229 KB `FlatData.lean` was not supplied, so its exact byte
count and formal dependencies cannot be independently compared here.
Using 229,000 bytes as the stated approximate baseline, the data alone
are about 96.3% smaller and the complete core about 90.1% smaller.
The documentation, optional independent checkers, and copied reference
material are additional files, not hidden in these core counts.

This is a compact, exactly checked replacement candidate. Integration
still requires a Lean proof of the generic packing/evaluation lemmas,
binding the circuit to the existing formal definitions, proving the
conic coordinate change or retaining the existing W route, and compiling
under the project's normal trust requirements. The original certificate
should remain until that integration succeeds. Python timing and memory
are not predictions of Lean behavior.

The preferred direct structural cancellation from the metric identity,
sparse conics, and corner-side coupling remains open in this return.
The exact certificate, its global scope, the conic ideal transfer, and
the coordinate relation are complete at the stated paper/computational level.

# Minimal geometry obligations: L and D

## Precise goals

Let `Q` be the Hadamard quotient, `X` its non-Tao subspace, and `S={R>0}` in the four phase seeds. Write a dephased physical completion as `H=(E,B;C,D)`. Its **polynomial matched fibre** has the literal corner `E=E(p)` and satisfies

\[
2T(B)=\chi+i\sqrt R,\qquad 2T(C)=\chi-i\sqrt R,
\qquad
T(Y)=-\operatorname{perm}(Y)\det(Y)^2\prod_{i,j}\overline{Y_{ij}}.
\]

The signature `T` is polynomial in real and imaginary entries. The displayed relation is semialgebraic after adjoining a real `t>0` with `t²=R`; the square-root function itself is not called polynomial. On this physical matched fibre, the signature equations force both side determinants to be nonzero. The Gram equations then give `g=|det B|²=|det C|²>0`, so the relation is equivalently `Θ(B)=z₊=(χ+i√R)/(2g)` and `Θ(C)=bar(z₊)`.

The proposed minimal route uses:

- **L (L1 / `MatchedExistence`):** every seed in `S` has a nonempty matched fibre;
- **U (L2 / `MatchedUniqueness`):** that fibre is one Hadamard equivalence class, giving a map `f:S→Q`;
- **D:** `X ⊆ closure_Q({[F₆]} ∪ f(S) ∪ conj(f(S)))`.

**U (the root blueprint’s L2) has a complete paper proof using actual-side identities only.** Given two actual physical matched completions at the same strict seed, their defining signature equations already make the actual side determinants nonzero: a zero determinant would give `T=0`, contradicting `√R>0`. Fixed `G,z` then determines the λ-data and the Fourier reconstruction of each actual side. Orienting its two nonconstant Fourier coefficients by reflection gives positive ρ; a cube-root choice then accounts for precisely a column permutation, with the equal-modulus tie handled by the reflection. Repeat vertically and use upstream forced-completion uniqueness. This proof does not require the stronger universal identity `R=4(Im Ψ(B))²`, the generic faithful-embedding argument, or arbitrary-Gram existence from `MinimalConstruction/Proofs/SIDE_FIBER.md`. Its Lean formalisation remains pending.

The stronger direct side-fibre theorem additionally supplies physical horizontal and vertical side candidates at every strict seed; that existence assertion can be used for the reduction of L below. It has an explicit separate algebraic proof and witness checks in the handoff, but is new mathematics over upstream.

**The unresolved parts cannot be erased by finite-corner completeness:** L still needs lower-block flatness; D needs a global real-locus reach/density argument.

## 1. How L can avoid the full regular seed-domain theorem

The full `thm:regular-seed-domain` does considerably more than L needs. With strict-domain positivity and direct side existence already proved, L reduces to a universal rational fourth-moment identity. No product-regular guard or product-regular density hypothesis is needed if this identity is checked directly.

### 1.1 Exact algebraic target

Work in

\[
K=\mathbb Q(a,b,c,d),\qquad
A=K[z]/(z^2-hz+\eta),\qquad h=\chi/g,
\]

with the involution `a#=1/a`, etc., and `z#=h−z`. Set

\[
K_E=-E^*G_h^{-1}.
\]

For a side Gram `G`, define `P₀,P₁,P₂`, `c₀,c₁,c₂`, `g,η,χ` exactly as in `RECONSTRUCTION.md`. The row products and permanent of the side at `z` are the explicit rational functions

\[
u(z)=\frac{g^2+c_0\chi+c_0c_1\eta+g(c_1-c_0)z}{\bar P_0P_1},
\]

\[
v(z)=\frac{g^2+c_0\chi+c_0c_2\eta+g(c_2-c_0)z}{\bar P_0P_2},
\qquad
\pi(z)=\frac{gz+c_0\eta}{\bar P_0}.
\]

Let `T(G,z)` be the `6×6` moment matrix indexed by

\[
e=(0,0),(1,0),(0,1),(2,0),(1,1),(0,2),
\qquad T_{ij}=m_{e_i-e_j},
\]

where

\[
\begin{aligned}
m_{00}&=3,&m_{10}&=s,&m_{01}&=t,&m_{1,-1}&=\bar r,\\
m_{20}&=s^2-2u\bar s,&m_{02}&=t^2-2v\bar t,&m_{11}&=st-\pi,\\
m_{2,-1}&=s\bar r-u\bar\pi,&m_{-1,2}&=tr-v\bar\pi,&
m_{2,-2}&=\bar r^2-2(u/v)r,
\end{aligned}
\]

and `m_{−i,−j}=bar(m_{ij})`. Reduce every entry modulo the displayed monic quadratic:

\[
T_h=T_{h,0}+zT_{h,1},\qquad
T_v=T_{v,0}+zT_{v,1}.
\]

Let `L_E` be the symmetric-square matrix of `K_E`, indexed by unordered pairs `(a,b)` and `(c,d)`, with

\[
(L_E)_{(a,b),(c,d)}=
\sum_{(a',b')\in\operatorname{Ord}(a,b)}
\sum_{(c',d')\in\operatorname{Ord}(c,d)}
(K_E)_{a'c'}(K_E)_{b'd'},
\]

where `Ord` contains the distinct orderings only. Define

\[
A_{ij}=\operatorname{tr}(T_{v,i}^{\mathsf T}L_ET_{h,j}L_E^*),
\quad i,j\in\{0,1\}.
\]

The precise universal certificate consists of the following **two** rational identities in the four independent seed variables:

\[
\boxed{A_{01}-A_{10}=0,}
\qquad
\boxed{A_{00}+hA_{10}+\eta A_{11}-9=0.}
\tag{L-id}
\]

Indeed,

\[
\operatorname{tr}(T_v(G_v,\bar z)^{\mathsf T}L_ET_h(G_h,z)L_E^*)-9
=(A_{00}+hA_{10}+\eta A_{11}-9)+(A_{01}-A_{10})z.
\]

All denominators are explicit products of phase monomials, `g`, and `P_j` or their conjugates. The strict-domain theorem proves their nonvanishing. Clearing those denominators yields ordinary Laurent-polynomial zero identities; no saturation guess is necessary.

### 1.2 Why these identities prove L

For actual unit-entry sides, the handoff's universal moment identities give

\[
\operatorname{tr}(T_v^{\mathsf T}L_ET_hL_E^*)
=\sum_{i,j}|D_{ij}|^4.
\]

The block Gram equations and forced completion give `HH*=6I`, even before the bottom-right entries are known to be flat, so `Σ|D_ij|²=9`. Therefore

\[
\sum_{i,j}(|D_{ij}|^2-1)^2
=\sum_{i,j}|D_{ij}|^4-9.
\]

Identity (L-id) makes this sum of real squares zero and hence proves `EntrywiseUnit D`. The actual direct side candidates then satisfy `Retained`, and upstream's `retained_completion_isHadamard` proves the completed matrix Hadamard. The construction has the prescribed positive `Θ` labels by the direct side-fibre theorem.

This is a full *reduction* of L to an explicit certificate target. It is not a certificate until both rational identities have been evaluated to exact zero.

### 1.3 What existing evidence actually verifies

`verify_tao_pairings.py` verifies the universal moment/symmetric-square formulas, and then evaluates the flatness expression only at the finite Tao corner types. It does **not** verify (L-id) for four independent seeds.

`MATCHED_FLATNESS.md` proves L by importing the regular seed-domain theorem on a dense guarded locus, then using a compactness limit. It cannot be cited as a new proof avoiding that theorem without replacing its generic flatness input.

Upstream's `certificates/generic_cover/exact_lower_block_specialization.py` checks the norm identity at `(a,b,c,d)=(2,3,5,7)` only. `certificates/README.md` expressly says that the global minus identity comes from the printed irreducibility/density proof, not from a four-variable normal-form certificate. That printed proof also imports the existence of an irreducible complex component with a four-dimensional physical family (Bondal–Zhdanovskiy), plus dimension and semialgebraic arguments, none of which is proved by the upstream finite-corner Lean endpoint.

### 1.4 Bounded computation status

The three bounded exact FLINT attempts are in this directory:

- `verify_matched_residual_attempt.py`;
- `verify_matched_residual_combined.py`;
- `verify_matched_residual_division.py` (exact divisibility checks before GCD).

All three use exact rational functions over `Q(a,b,c,d)`, reduce the sheet variable to degree one, and accept only exact zero numerators. Each is limited to 240 wall seconds and 3 GiB address space. They do not use numerical sampling or any assumed matched-flatness identity. A successful final `PASS UNIVERSAL MATCHED FOURTH-MOMENT IDENTITY` and exit zero are required for acceptance.

**Final result: all three attempts timed out; neither coefficient was certified.** No mathematical failure of (L-id) was found, but no successful global identity certificate was obtained.

| Attempt | Outcome | Last reported algebra stage |
|---|---|---|
| Separate contractions | SIGALRM, tool exit 142, 240 s limit | At 168.15 CPU s, `A01` had 483,553 numerator and 477,415 denominator terms. `A10` was unfinished. |
| Combined zero residual | SIGALRM, child exit −14, measured wall time 240.0592 s | At 197.36 CPU s, the common-denominator loop had reached term 48 of 72, with 477,415 terms. |
| Divisibility before GCD | SIGALRM, child exit −14, measured wall time 240.1455 s | At 207.86 CPU s, the same loop had reached term 48 of 72, again with 477,415 terms. |

The address-space cap was not reported as the stopping condition; no peak-memory measurement is claimed. Receipts and the latter two logs are alongside the scripts. These are reproducible **uncompleted attempts**, kept under `work/`, not accepted proof certificates. All task status must keep L1 open. The verified source moment identities and the reduction to (L-id) remain useful, but do not by themselves establish the universal zero identities.

## 2. Why D does not follow from finite fibres or generic seed density

Upstream proves a finite-corner witness exists at every class and represents it by an actual retained output. This gives no theorem that all non-Tao outputs are limits of the strict matched outputs.

### 2.1 An elementary counterexample to the proposed inference

Consider the real algebraic set

\[
Y=\{(x,y,t):t(t-1)=0,\ xt=0\}\subset\mathbb R^3.
\]

Projection to `(x,y)` is surjective and every fibre has one or two points. The component `t=0` covers the entire seed plane. The component `x=0,t=1` is a separate line, supported entirely above the exceptional seed locus `x=0`. Points on that line are not limits of the generic component.

Thus finite fibres, a surjective retained atlas, and a generic full-dimensional family do not imply real density of that family in every output. This is a counterexample to the inference, **not a counterexample involving Hadamard matrices**.

Even irreducibility of a complex algebraic variety does not alone prove the needed physical density: the irreducible curve `y²=x²(x−1)` has an isolated real point at `(0,0)` and real arcs only at `x≥1`. Taking a product with a real interval produces an exceptional positive-dimensional real part. Real-locus attachment needs proof.

### 2.2 Exact remaining geometric obligation

After L and U, one sufficient theorem is:

> Every non-Tao retained output is a limit, modulo `Equivalent`, of strict matched outputs, their conjugates, or Fourier.

This is precisely D phrased in upstream's objects. To obtain it by algebraic components, one must prove that **each physical non-Tao component or stratum** lies in the real closure of an appropriate dominating matched component. Complex Zariski density on one component cannot replace this. Lower-dimensional or guard-zero-supported physical parts must be attached or excluded explicitly.

Possible stronger routes are:

1. MC1 plus strict fixed-seed pairing exhaustion and an exact classification of every nonmatched flat completion as Tao. This gives exact reach and hence D.
2. A deformation/attachment theorem for every exceptional stratum of the retained parameter space, together with matched generic reach on the main components.
3. The full product-regular escape theorem, **together with** a justified necessary-matching theorem and explicit handling of `H_cross` and limits at ramification.

None of these routes follows by modest manipulation of the existing finite-corner Lean theorem. The third is the handoff's current route; the first two would constitute new global results.

## 3. Source proof gap: generic flatness versus uniform matching necessity

The main-paper paragraph before `eq:affine-minus-matching-main` asserts that every physical guarded completion selects the unique minus-matched vertical root. Here “guarded” means the displayed guards are nonzero, without including matching in the premise. The proof material inspected establishes a weaker statement:

1. The supplement's restatement of `def:product-regularity` explicitly defines “lift” to be **affine-minus matched**.
2. Its restatement of `thm:regular-seed-domain` proves physicality of those matched lifts.
3. `prop:supp-generic-flatness` proves `F₋≡0` on the irreducible product cover and proves `F₊` is not identically zero by the single exact specialization `(2,3,5,7)`.

The last fact permits exceptional zeros of `F₊` on a proper subvariety. It therefore does not prove uniform necessity. At product ramification the two matchings coincide, so even an eventual correct exclusion must be restricted to the distinct-product-root case.

The exact unresolved statement is:

> A physical guarded completion with distinct product roots cannot satisfy the opposite affine identification and all nine lower-block flatness equations.

This is the PR-M input used twice by `NONMATCHED_EXCEPTIONS.md`, including its final transfer from global product-regular reach. No universal exclusion of such exceptional physical plus zeros was found in the supplied source or certificates. This is a **proof gap in the supplied justification**, not a demonstrated counterexample to the claimed theorem.

The supplement's global escape proof verifies existence of a frame where all eleven guards are nonzero. If “product regular” additionally means matched, guard existence is insufficient without the missing necessary direction. If it means only guards, the resulting theorem does not yet say the actual output belongs to the matched cover. The definitions must be kept separate in a Lean blueprint.

## 4. Honest A3 conclusion

L has an explicit potential replacement certificate with only two rational residuals, and a complete elementary implication from those identities plus the direct side theorem to physical matched nonemptiness. It becomes a new proved route only if the exact symbolic checks succeed or an explicit alternative zero certificate is supplied.

D remains a substantial global real-locus theorem. Neither a formal classification equality nor a generic dominance argument discharges it. The supplied source's uniform-matching necessity must be proved or replaced; treating its main-text assertion as a verified consequence of the generic minus identity would leave the key reach gap hidden.

Consequently, absent a successful new identity check and a global attachment/exclusion proof, the correct status is a conditional topological reduction with precisely stated geometry obligations. It is not a completed unconditional proof of connectedness over upstream Lean.

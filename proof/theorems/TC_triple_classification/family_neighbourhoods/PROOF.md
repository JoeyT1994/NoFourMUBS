# Conditional all-K classification on an original seed ball

**PROVED (conditional theorem).** If this checker returns `CERTIFIED`, every MUB triple whose second basis is represented by the specified original seed ball has the balanced common order-three ray symmetry, at one of its three anchors. It is therefore of Conjecture 1 type by the recognition argument in `../seed_method/reference/r0153/CHECKPOINT.md`, Section 8 (including its Section 6 amplitude argument). `CERTIFIED EMPTY` proves that no completing basis exists. A failed bound, missing proposal, resource cap, or unfinished run proves neither statement.

This is a sufficient certificate, not a theorem that the algorithm succeeds on every seed. Its inputs retain the original atlas record, four coordinates, centre, frame, and radius. The survivor list on Rusty is not part of this release. No claim of covering those approximately 200 balls follows from the local examples.

## 1. Source model and complete covering

The atlas checksum is pinned by `run.py`. C1 is freshly checked by `seedcert.certify_c1`. The existing interval theorem implemented in `patches.normal_form` is replayed on the same original ball, giving

\[
Q(w)=Q_0+Uw+\tfrac12H_2[w,w]+Xz(w),\qquad
\|w\|\le r,\quad\|z(w)\|\le\tau.
\]

These are horizontal phase coordinates in radians; the source chart identifies the continuous lift with the stored winding convention. The existing whole-ball proof supplies the branch and orientation conclusions. Our statements are conditional only on an actual represented Hadamard and its actual completing basis, not on the existence of a third basis for every parameter.

For Stage C, `model_stage_c_args` derives a sharper enclosure of this same domain. Let q and V be exact binary64 proposals for Q₀ and U. Then

\[
Q(w)=q+Vw+\nu,\quad \|\nu\|\le
\tfrac12\|H_2\|r^2+\|X\|\tau+\|Q_0-q\|+\|U-V\|r.
\]

All four terms and conversion errors are bounded in Arb. `seedcert.stage_c_args` additionally encloses conversion from radians to cycles. This changes the enclosing phase tube, not the original four coordinates, their mathematical centre w=0, or r. Fresh C1 and the quadratic-model theorem remain required.

Stage C enumerates the entire five-dimensional column phase torus at resolutions 12, 24, 48, 96, with this whole-ball enclosure. Its conservative binary64 error enclosures are exactly those documented in the source `proof/atlas/STAGEC.md` and `RIGOUR.md`: exponential tables come from Arb and every exclusion includes the proved error margin. This validated arithmetic is the only non-Arb proof arithmetic used here. Numerical Newton solves and least-squares fits merely propose colors and expansion points. No root-census completeness claim is used.

The necessary orthogonality graph has one vertex per covering label. Distinct orthogonal columns need distinct labels (each label has radius below 0.1 cycles). Initially colors are assigned by arbitrary proximity. A color is split until it is an independent set of the necessary label graph. Consequently every actual basis has six distinct colors forming a clique in the quotient graph. Every six-clique is enumerated; a search cap is failure, never exclusion.

Arc consistency removes a label only when no remaining color pattern supplies its five necessary other-color neighbors. Induction preserves every label of an actual completing basis. Quotient enumeration is repeated after pruning. All retained fine bins are mapped back to the exact clustering assignment. A bin of width 1/M has mean-zero phase displacement bounded by

\[ \rho=\frac{\pi}{M}\sqrt{29/6}. \]

Indeed, for five coordinates in [-a,a] and the first coordinate zero, the maximum squared norm after subtracting the mean is (29/6)a². The bin midpoints are exact integer multiples of 1/192. Their distances to arbitrary exact-binary64 proposed phases are computed in Arb, retaining the chosen integer windings. Thus each radius encloses the complete closed bin. It does not enclose merely its centre.

## 2. Conditional column contractions

Column phases are represented in the mean-zero subspace, with projector C = I - 11ᵀ/6. For a proposed column v₀, write

\[ v=v_0+Tw+e,\quad \|e\|\le\epsilon. \]

The six unbiasedness equations are

\[
f_c(Q,v)=\frac{|H_c^*e^{iv}|^2-6}{6}
       =\frac13\sum_{a<b}\cos(v_a-v_b-Q_{ac}+Q_{bc})=0.
\]

An arbitrary exact-binary64 preconditioner A is projected into the mean-zero output space. Its inverse defect C-AJvC, residual Af₀, and carrier defect A(JHU+JvT) are retained. Neither an exact root nor an exact inverse is assumed. The scalar Hessian and cubic Taylor remainder obey

\[
\|D^2f_c\|\le2,\qquad
|R_3(d)|\le\frac{\sqrt2}{3}\|d\|^3
\]

for the mean-zero six-vector of column phase differences. These follow from Σ(a<b)(dₐ-dᵦ)² = 6‖d‖² and |dₐ-dᵦ| ≤ √2‖d‖.

The checker sums signed Hessian terms before taking certified spectral norms. It combines the H₂ contribution with the w-w Hessian. It evaluates two valid quadratic bounds: in (w,e), and in (w,v-v₀). Either may be used. The linear Xz term is retained. If a bounds the linear phase difference and n its H-normal correction, the remaining quadratic normal contribution is at most 2an+n²; the cubic bound uses a+n. These are the formulas in `native_columns.improve`.

`localize_bins` additionally expands the same signed quadratic forms at each fine bin centre d, leaving only its small displacement of norm ρ unknown. It retains the signed d-quadratic constant and d-linear terms. Its maximum over all retained bins is a valid initial affine-error bound. Every contraction is an implication about already covered zeros. Success requires a strict Arb improvement; a failed improvement leaves the preceding bound intact. Iteration requires no existence or uniqueness assumption.

For a pair of columns, orthogonality requires

\[
|S_0|\le r\|D_wS_0\|+\sqrt6(\epsilon_a+\epsilon_b)
 +\tfrac12(\|T_b-T_a\|r+\epsilon_a+\epsilon_b)^2.
\]

The complex derivative is treated as a real 2-by-4 matrix. This follows from |e^{it}-1-it| ≤ t²/2 and Cauchy–Schwarz. The same formula applies to one fine bin (carrier zero, error ρ) and one already bounded column. Every rejected bin or color edge therefore excludes only impossible orthogonality.

`conditioned_columns` appends real and imaginary orthogonality equations against already bounded columns. All reference errors and their linear sensitivities are retained. It forms the signed Hessian in the blocks (w, target error, reference errors). For a complex orthogonality sum, the cubic remainder has modulus at most ‖d‖³/6; multiplication by a real/imaginary preconditioner row uses its Euclidean two-component norm. Reference estimates are used in the order obtained, so induction justifies successive improvements. There is no circular assumption of a final bound.

A numerical basis fit may propose a new v₀ for a pattern. Every fine-bin displacement is then translated in Arb by old v₀ minus new v₀, and all bounds are rebuilt. Fits never remove a bin or certify an equation. The same complete disjunction of patterns is retained.

## 3. Exact group action on the full triple equations

Use 72 real phases, 36 for H and 36 for K, and the 96 equations F consisting of real and imaginary column orthogonality for H and K, followed by the 36 normalized unbiasedness equations above. Their finite Fourier expansion is implemented in `moving_symmetry.layout`: 180 complex orthogonality terms and 540 real mixed terms.

The joint gauge consists of a common row phase for H and K and independent column phases. Its orthogonal complement has the rational projector

\[
W_{(b,r,c),(d,s,j)}=(\delta_{rs}-1/6)(\delta_{bd}\delta_{cj}-1/12).
\]

The candidate action fixes the rays of one anchor and has two 3-cycles on each other anchor. Its diagonal spectrum has two copies of each cubic root. Numerical monomial matching proposes permutations R,S,T and a balanced label assignment; the checker verifies their exact cycle structure. They act by P on H(r,c) ↦ H(Rr,Sc) and K(r,c) ↦ K(Rr,Tc).

A canonical phase array b supplies the diagonal cubic-root factors. At the identity anchor, bH(r,c) = -2π labels(r) posS(c)/3, with the analogous K formula. At the H anchor, bH(r,c) = 2π posR(r) labels(c)/3 and bK=0; interchange H,K for the K anchor. Here pos advances by one along each 3-cycle. Thus q ↦ b+P(q-b) preserves the zero set of F: it is a common row operation, basis-column permutations, and basis-column phases. This follows directly from the displayed canonical factors and is independent of whether b itself solves F.

Over rational arithmetic the checker verifies P³=I, WP=PW, W²=W=Wᵀ. With G=(I+P+P²)/3, it verifies that E=(I-G)W is an orthogonal projector of rank 40. Integer 2π windings may be chosen arbitrarily to make a useful lift; numerical gauge fitting is only a winding proposal. No smallness assertion is inferred from that fit.

## 4. Quantitative symmetry-forcing criterion

Let q denote the chosen lifted centre phases, L the joint carrier [U; T₀,…,T₅], and n the joint unknown phase errors. Gauge-transform an actual solution into

\[
x=b+W(q-b)+WLw+Wn.
\]

Let m=(I-G)W(q-b) and a=b+GW(q-b). Its symmetry image is

\[
x'=a+Pm+PWLw+PWn.
\]

Both are zeros of F, and d=x'-x lies in range E. At the symmetric reference a, an arbitrary exact-binary64 numerical inverse proposal gives A=E pinv(DF(a)E). The interval defect is η=‖E-A DF(a)E‖. The reference a need not be a zero.

For every point of the line segment from x to x', the code proves

\[
\|E-A DF(\cdot)E\|\le q_*<1.
\]

Here is the explicit bound used. Each Fourier term has frequency ℓ and a preconditioned complex coefficient. Its Jacobian change is its signed centre Hessian times the phase displacement, plus a remainder bounded by coefficient modulus times |ℓδ|²/2. The deterministic signed-linear variation at each endpoint is bounded by

\[
\|B(m)\|+r\|[B(L_1)\ \cdots\ B(L_4)]\|,
\]

where B(v)=A D²F(a)[v,E·]. Convexity bounds the segment's deterministic linear part by the larger endpoint bound.

The unknown H error has norm N = ‖H₂‖r²/2 + ‖X‖τ; the combined K error has norm E_K = (Σεc²)^(1/2). The flattened signed Hessian with first argument W and second argument E has certified norms h, hH, hK on the full space and its H/K first-argument blocks. The unknown linear part is bounded by the smaller of h sqrt(N²+E_K²) and hH N+hK E_K. These bounds hold for the whole segment because P preserves the H and K blocks, commutes with W, and is orthogonal. The rational Fourier matrix LW is formed exactly, preserving its zero entries.

For each Fourier term, a bound on its endpoint increment is

\[
\beta_\ell=|\ell m|+r\|\ell WL\|
 +\tfrac12r^2\|\ell WH_2\|_F+\tau\|\ell WX\|
 +\sum_c\|C(\ell W)_{K_c}\|\epsilon_c,
\]

with P applied at the other endpoint. The larger endpoint β bounds that term throughout the segment. Entrywise nonnegative multiplication of coefficient moduli, β²/2, and |ℓE| gives a matrix majorant M for the remaining Jacobian error. Its spectral norm bounds the actual remainder operator, since |Rv| ≤ M|v|.

The accepted number is

\[
q_* = \eta + \max(\hbox{endpoint deterministic bounds})
       + \min(h\sqrt{N^2+E_K^2},h_HN+h_KE_K)+\|M\| < 1.
\]

All norms in acceptance decisions are Arb-certified Gram-shift/LDL bounds; numerical SVD only proposes the shift. Interval inequalities are strict. Nonfinite norm bounds raise an error.

Finally 0=A(F(x')-F(x))=A∫DF(x+td)d dt implies ‖d‖ ≤ q_*‖d‖, hence d=0. In the gauge just used, the actual phase array is fixed by the canonical action. It therefore has the genuine balanced ambient order-three ray symmetry. The recognition argument cited at the start applies to the actual triple, not merely to an approximate template.

## 5. Scope and replay

A successful ball receipt must account for every remaining color six-clique by interval exclusion or the symmetry criterion. A ball with no remaining patterns is empty. The driver preserves every unresolved pattern, emits `NOT ESTABLISHED`, and exits nonzero if any requested index is unresolved. Receipts bind the atlas, seed record, executable sources, analytic proof, recognition reference, and arithmetic documentation by SHA-256. Resume rejects mismatched bindings. The batch driver supports an explicit index list and independent worker processes.

The receipt is an audit record of a replay, not a substitute for replaying these inequalities. It does not certify the global atlas coverage theorem, identify the inaccessible Rusty survivor list, certify the separate X-ball, or prove that every possible original seed passes this sufficient test.

## 6. Averaged moving equation (default, stronger test)

The default test replaces the symmetry-pair segment in Section 4 by the segment from the group average of a solution to that solution. This permits exact cancellation of the fixed residual, even when that average is not a zero.

The residual equations have an exact orthogonal order-three action Y with F(b+P(x-b))=YF(x). For each complex H/K column inner product, Y permutes its column pair, conjugates if the pair order reverses, and, on the fixed anchor, multiplies by ω^(labels(s)-labels(t)). The mixed squared-modulus equations are simply permuted by (S,T). `equation_moving_projector` constructs Y over Q(√3), verifies Y³=I and YᵀY=I exactly, and verifies the orthogonal projector

\[ Q_Y=I-(I+Y+Y^2)/3. \]

The preconditioner is now A=E A₀ Q_Y. Its actual interval inverse defect is rechecked. For every canonical P-fixed phase point a, F(a)=YF(a), hence AF(a)=0 exactly. This cancellation is a consequence of the constructed exact projector, not an inference from a small floating residual.

Write a solution as x=a₀+s+e, with a₀=b+GW(q-b), s=G(WLw+Wn), and e=m+E(Lw+n). Then x̄=a₀+s is canonically fixed. Thus

\[0=A(F(x)-F(\bar x))=A\int_0^1DF(\bar x+te)e\,dt.\]

The signed linear Jacobian variation integrates exactly at the midpoint displacement s+e/2. In Section 4's Hessian bound, replace the first-argument projector W by ((I+G)/2)W, the constant m by m/2, and the carrier by ((I+G)/2)WL. Bound the signed midpoint matrix directly. These replacements are rational and formed exactly before interval conversion.

For a Fourier term, let β₀ and β₁ bound its increments at x̄ and x. Its integrated Jacobian Taylor remainder is at most

\[ |\text{coefficient}|(\beta_0^2+\beta_0\beta_1+\beta_1^2)/6. \]

This follows by integrating ((1-t)β₀+tβ₁)²/2. The two endpoint bounds use transforms G and I in the same formula as Section 4. All other terms and the spectral-norm majorant construction are unchanged. A strict sum below one forces e=0, since e lies in range E. Therefore the actual solution itself has the canonical symmetry. This argument does not require the average point to solve the triple equations.

## 7. Full-basis scalar exclusions

`basis_exclusion` may additionally exclude an entire pattern using any exact-binary64 real functional y of the 96 equations. At the joint centre q, let f=F(q), J=DF(q), H=D²(yF)(q), L be the correlated carrier, and K be the insertion of the 36 mean-zero K errors. For every covered solution, |yf| is bounded by:

- r‖yJL‖ + τ‖yJ_HX‖ and the six individual linear K-error sensitivities;
- one half r² times the norm of LᵀHL plus yJ_HH₂, with its four-by-four indexing;
- r E_K‖LᵀHK‖ and one half E_K²‖KᵀHK‖;
- ‖H‖[(‖L‖r+E_K)N+N²/2] for the remaining H-normal quadratic terms;
- the cubic Taylor remainders of the H/K orthogonality sums and the mixed equations, with constants 1/6 and √2/3 from Section 2 and the actual correlated column-difference bounds.

The quadratic H₂ linear contribution is combined with the w-w form before its norm is taken. If the Arb lower bound for |yf| exceeds this upper bound, the pattern contains no zero. Numerical least squares only proposes y. The receipt records its exact binary64 entries and the strict inequality. Failure of this test leaves the pattern unchanged.

Before processing a color pattern, the checker may search the original necessary label graph restricted to its six colors. Only a completed empty search excludes the pattern. Finding one clique merely supplies a numerical proposal, and exhausting that optional search's budget supplies no exclusion. Every actual completing basis has such a label clique, so this additional rejection is sound.

Alternative equation weights may propose different pseudoinverses. Each resulting preconditioner is still treated as arbitrary exact binary64 data, followed by the exact equation-space projection and fresh Arb defect and derivative checks. Equation weighting is not an acceptance criterion.

## 8. Coupled contraction of the complete third basis

`joint_basis` uses all 96 equations to contract all six columns simultaneously, while keeping the original w and r. Let C_K be the block projector onto the six mean-zero column spaces, J=(J_H,J_K) the Jacobian at q=(Q₀,v₀), and A any exact-binary64 proposed left inverse projected into range C_K. Set a proposed carrier T in that range and L=[U;T]. Actual covered zeros have

\[
x=q+Lw+[h;e],\quad
h=\tfrac12H_2[w,w]+Xz,\quad
e=C_Ke,\quad \|e_c\|\le\epsilon_c.
\]

Write D=C_K-AJ_KC_K and N=\|H₂\|r²/2+\|X\|τ. Expanding AF(x)=0 to second order gives an enclosure for each scalar e_i. The code retains |(AF(q))_i|, r times the row norm of AJL, the row norm of D times E=(Σε_c²)^(1/2), and τ times the row norm of AJ_HX. No exact inverse, root, or vanishing carrier defect is assumed.

For each output i let B_i=D²(AF)_i(q). The remaining quadratic terms are bounded by

\[
\begin{split}
&\tfrac12r^2\|L^TB_iL+(AJ_HH_2)_i\|
+rE\|L^TB_iK\|+\tfrac12E^2\|K^TB_iK\|\\
&\qquad+rN\|L^TB_iH\|+EN\|K^TB_iH\|
+\tfrac12N^2\|H^TB_iH\|,
\end{split}
\]

where H and K insert the H error and mean-zero K error respectively. The H₂ row is reshaped as a four-by-four matrix. Each B_i is summed with its signed Fourier coefficients before taking norms. The cubic residual remainder is bounded separately for each complex H/K orthogonality equation by \|d\|³/6 and each mixed equation by √2\|d\|³/3, using the correlated differences (T_b−T_a)w+e_b−e_a and (T_b−CU_a)w+e_b−Ch_a. Independently valid phase-radius estimates may make these bounds smaller. Complex preconditioner coefficients use their real/imaginary Euclidean norm.

The Euclidean norm of the six scalar bounds for column c gives its next ε_c. Initially the old affine error is translated to T with the certified norm of the carrier difference; its independent phase-radius bound is also retained. Every update is a strict Arb improvement from preceding valid bounds. Therefore induction encloses every already-covered zero at each finite iteration. Failure to improve proves nothing and preserves the preceding bound. The output is used by the symmetry and scalar-exclusion tests, not by the earlier column contractors whose cached coefficients used a different carrier.

## 9. Complete fine-bin fallback

Coarse labels can permit combinations of columns that cannot occur in their smaller original bins. `fine_patterns` retains the original integer bin midpoints k/192 alongside every fine-bin displacement; fitted phases are never rounded back to propose these midpoints. On a remaining six-color pattern it replaces each coarse label by the union of its retained, closed fine bins. Each bin is enclosed in the mean-zero phase ball of radius ρ from Section 1, rounded strictly upward after conversion to cycles.

For each pair of distinct colors, the existing Stage C orthogonality test and joint necessary support test are replayed on these bin balls, with the same whole-original-ball H enclosure. Candidate edges are processed in disjoint batches; every retained candidate edge is written back, and every removed edge has passed the same strict Stage C exclusion as in an unbatched call. Pair results can be cached across patterns of the same unchanged cover. The cache is discarded for a refined cover. This changes evaluation order and memory use, not a necessary condition or error margin.

Arc consistency repeatedly removes a bin only if some other required color has no adjacent surviving bin. Every bin of any actual basis therefore survives by induction. A complete six-color clique search may certify the pattern empty. A found clique or exhausted search budget never certifies emptiness. Remaining bins, their displacements, and their initial radii are kept in the same order and passed back to the original interval contractors, conditional on this pattern. Every actual basis is still covered. There is no subdivision of w and no change to r.

The optional fallback has limits of 6,000 bins and 5,000,000 candidate edges per pattern, with joint tests in batches of 20,000 edges. A limit returns an unresolved outcome; it supplies no exclusion. This is distinct from the earlier coarse-label limits.

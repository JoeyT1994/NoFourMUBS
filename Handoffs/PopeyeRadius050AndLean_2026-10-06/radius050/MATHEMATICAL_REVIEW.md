# Incoming radius 1/20 packet: independent mathematical and semantic audit

This audit finds no new analytic gap or physical counterexample in the claimed **positive maximal-corner exclusion** on the two closed circular seed balls of radius `1/20`, after puncturing their centers. It does find an inherited defect in the original packet's floating-point environment guard. The mathematical conclusion remains conditional on sound interval execution and a successful fresh complete replay. This report does not provide that native replay and grants **zero physical Lean admissions**.

The immutable input is `radius-input-1over20`, supplied ZIP SHA-256 `6f3c8040ffdaa81ab5655ddbefa519cb641060c161e457747e0ff3afe1b95d64`, with accepting module `ProvenResults/Patch2442Local/Radius050Complete`. Only this review directory was written. No source packet, campaign queue, guard, registry, or Lean module was changed; no compiler was run by this audit.

## 1. Exact scope and verdict

The target assumes raw unit entries, `H H* = 6 I`, and a selected corner satisfying

`0 < R(E) = max_{400 positional corners Q} R(H_Q)`.

It excludes `0 < ||theta - theta_*||_(infinity,circular) <= 1/20` for either seed `(2,4,4,2) pi/3` or `(4,2,2,4) pi/3`. Maximality ties are allowed. This is the necessary physical strict-D0 maximal-corner statement; it is not a claim that every nonmaximal corner near F3 is impossible. At the center, `R(E)=0` directly contradicts the strict premise.

The seed radius is `1/20` radians. The local completion-angle width is the distinct parameter `DELTA > 1/10`. Neither is a matrix or projector distance. The proof does not assert radius `0.06`, an optimal radius, or the full no-four-MUB theorem. It neither removes the Tao/exceptional sectors of the global project nor relies on a classification of them. Any physical completion satisfying this local strict maximal hypothesis is covered regardless of its classification; nonstrict `M(H)=0` cases remain outside this local statement.

The verdict is **analytic and independent exact research evidence passes, original guard needs correction, complete native replay belongs to the separate replay record, full Lean admission remains open**. A repaired derivative must be identified by its own source hashes and replay receipt. It must not be silently described as an unchanged replay of the delivered original.

## 2. Physical reconstruction and branch coverage

For each side row, fixing its unit anchor `z` and required sum `S` reduces the other two normalized entries to the exhaustive two-point solution

`a (1/2 - i k), a (1/2 + i k)`, where `a = S conjugate(z) - 1` and `k = sqrt(1/|a|^2 - 1/4)`.

This uses only the prescribed sum and two unit-modulus conditions. The new radius does not cross a denominator zero or a square-root collision: on the outward native radius `7205759403792795 / 144115188075855872`, `|a| > 89/100` and `k^2 > 9/16`. The first branch has positive imaginary part because `(3/4)(1-2 rho)-rho > 0`. The exact margins are independently recorded in `CHECKS.json`.

The three-phase estimate is sufficient to bound the four differing entries of each normalized side block by `6 rho, 8 rho, 6 rho, 8 rho`. Equal Fourier orders of the two nontrivial rows would force their inner product to have modulus at least `3-32 rho`, while the physical corner requires at most `4 rho`. The independently checked strict margin is `3-36 rho > 0`. Thus the orders must be opposite. Swapping the two unanchored complementary columns fixes the chosen order; the row version gives the corresponding convention for C.

The improved Frobenius estimate `sqrt(200) rho` gives `sigma_min(K) >= sqrt(3)-sqrt(200) rho > 1`. The rational comparison `173/100-(283/20)rho > 1` is valid at the enlarged radius. The lower block is therefore uniquely forced by physical row orthogonality:

`T = -C E* Z0 (K*)^(-1)`.

The native multiplication order agrees with this formula. It uses `B=Z0 K`, hence `(B*)^(-1)=Z0 (K*)^(-1)`. No exceptional lower-block inversion or generic-denominator exclusion is being assumed.

An entry of each rotated cube-root triple has real part at least `1/2`; the side error is at most `8 rho < 1/2`. Complementary row/column permutations therefore allow the chosen z and x anchors in the closed right half-plane. Selecting these anchors and ordering the two remaining positions can be performed successively, preserving the selected leading corner. The full w and y circles remain present. This establishes the claimed anchor domain, not merely a nearby selected branch.

For clarity, the prose's imaginary-part estimate should be read relative to the reference real part `-1/2`. The general assertion that `sqrt(1-x^2)` is 1-Lipschitz everywhere on `[-3/4,-1/4]` would be false; it is unnecessary here. Its secant from `-1/2` has absolute slope below one on that interval, and the stated chord bound follows. This is an expository precision point, not a failed chart estimate.

## 3. Normalization, off-locus residuals, and side factors

The regenerated identity is the complementary-corner identity `R(p,-J,W)=-D(E)^2`, with `D` purely imaginary on the unit torus and `f=-iD=Im(D)`. For physical complementary column triples in fixed rows, all three off-diagonal Gram parameters change sign. Therefore `R(Q^c)=f(Q)^2`, and maximality implies `|f(Q)|<=sqrt(R(E))` for every tested corner. The argument does not incorrectly identify a corner's R with its own signed square.

There are nine lower-block flatness residuals, four real remaining row/column orthogonality components, and 81 mixed signed-corner residuals. All first thirteen vanish at a physical completion. The signed residuals satisfy the maximality bound. It is unnecessary for these thirteen equations alone to characterize physicality, because only necessary constraints are used for exclusion.

The fast signed formula is not justified by making arbitrary interval endpoints unit. Each mixed corner has two upper rows and two left columns. Consequently its first eight raw entries lie in E, B, or C and are identically unit on every real point of the auxiliary chart; only its lower-right entry may be nonunit. Negative raw powers are interpreted by conjugation, producing a polynomial extension. The separately-symbolized `d, conjugate(d)` identity then binds the fast formula to that extension throughout the real chart, including nonphysical lower blocks. Equality throughout this open analytic chart also binds Taylor coefficients. Existing source `lean/phase3/NativeSignedPhysical.lean` states this exact eight-unit hypothesis in `literalCornerSigned_eq_fast_of_eight_unit` and `mixedSigned_eq_fast_off_locus`; this audit read that source but did not recheck its dependency receipts or confer new Lean credit.

For the side pruning test, the exact seed factor is `3(z^2-w)(z-w^2)(zw-1)/(z^2 w^2)`. Perturbing the two relevant seed phases produces first-derivative norm sum `12+24 sqrt(3)` and quadratic remainder coefficient `112`. The native rule compares a lower bound for the squared factor modulus with `(QMAX+64 RHO)^2`. The required inequality `12+24(7/4)+112 RHO<64` was independently checked. The transpose supplies the other side. There is no division by a factor that can vanish; equality or an inconclusive factor bound is nonaccepting.

## 4. Independent source-bound check

All 850 nonzero incoming Taylor rows through degree ten agree with the previously independently reviewed degree-sixteen paired-cosine table. All 1,001 multi-indices through degree ten are accounted for, including zero coefficients. The lower orders vanish and the quartic is exactly `243 (u1 u4-u2 u3)^2`. The Laurent source bytes are unchanged. Independently recomputing the order-eleven frequency moment gives `31405613662277/51975`.

The independent script converts the polynomial to Bernstein form in two stages: it first expands each substitution `v=2s-1` in the power basis, then converts power monomials to degree-fixed Bernstein polynomials. This differs from the supplier's combined transformation routine. All 32,805 coefficients are computed with exact integer/rational arithmetic. At `rho=1/20`, the resulting complete upper bound is

`128215468606186277/66528000000000 < 1928 < 1936 = 44^2`.

The calculation also passes at the slightly enlarged native dyadic radius and exactly matches its retained rational bound. It includes the absolute error in replacing `sqrt(3)` by `1732051/10^6`, the degree-nine and ten norms, and the order-eleven exponential tail. Bernstein nonnegativity and partition of unity give a uniform cube bound. This is not sampling of directions. Reality and conjugation reverse the seed perturbations and preserve the cube, so the same bound covers the second seed.

No step divides by `u1 u4-u2 u3`, by rho on the center, or by another leading form. For positive rho, normalizing `u=rho v` is legitimate; at rho zero strictness is separately false. Degenerate directions and directions that approach the degeneracy cone together with rho remain included.

## 5. Taylor semantics and the radial contradiction

The ordinary degree-six backend maintains a radial remainder `tau h^7`, where `h=||xi||_infinity`. Its multiplication rule includes every discarded polynomial product and all products involving tails. Reciprocal and positive-square-root expansions use the actual constant coefficient, although it is enclosed by an interval. With this interpretation, the normalized nonconstant part has exactly zero constant. Setting its stored constant to zero is justified; it would not be justified if expansion were about an arbitrary unrelated representative of that interval.

The weighted global backend retains weights `2` on the seed variables and `3` on completion variables up to total weight `12`. Its tail is absolute on the whole cube. Products retain all terms with weight at most twelve and bound all omitted products and tails. Since each nonconstant variable has weight at least two, the seventh power in reciprocal/root series has no retained coefficient. Its analytic tail can therefore be bounded absolutely after six powers. The code does not interpret this as a radial error of order thirteen. A weighted build explicitly rejects the local-contraction command.

The 63 reference matrices are exact sixth-root physical matrices with all signed corners zero, and the 13 representatives cover their physical symmetry orbits. This supports omitting local residual constants exactly, rather than by a tolerance. The fixed `8 by 94` mixing matrices need no inverse property: the actual linear defect and every nonlinear term are enclosed. All 9,776 supplied dyadic entries were independently bound to denominator `2^38` values.

In the local normalized cube, `rho<=RHO h`. The physical source term is consequently `44 RHO^2 C_i h^2/W_ii`, with `C_i` the absolute row sum over signed residuals only. Summing the linear defect, higher coefficients, and radial tail gives `e_i h`. The replayed strict inequalities `e_i+b_i<1` imply `h<=max_i(e_i+b_i)h`, hence `h=0`, contradicting strictness. The code's coordinate division by W, identity subtraction, and signed-row absolute weights agree with this argument. There is no unproved positive minimum radial scale or missing inner annulus.

The fresh native values of those inequalities are not independently recomputed by this mathematical audit; they belong to the separate complete replay. Stored scores alone do not prove them.

## 6. Symmetries, full cover, and interface controls

The physical maps `H -> H^T`, `H -> S conjugate(H)`, and `H -> conjugate(H) S`, with S swapping indices 1 and 2 inside each three-block, produce the claimed anchor signed permutations and seed signed permutations. They preserve physicality, selected-corner maximality, the seed cube, and the two equal-width variable groups. The prescribed side orders are restored by conjugation and the swaps. Transpose covariance is needed only for physical completions; an arbitrary nonphysical chart point need not obey a transpose identity.

The initial anchor domain comprises 324 closed cells. Its intersections with full symmetry orbits give 102 representative cells; invariance of the restricted initial domain under every generator is not required. An independently written exact dyadic interval-tiling check covers all 38,421 terminal paths, with maximum depth twenty, and checks 153,684 geometric coordinate reconstructions against iterative bisection. Every child face is retained because the intervals are closed. The 63 references are not assumed to classify all completions: their complement is excluded by this separate global cover.

The public verifier validates complete geometry, rebuilds the selected backend, and recomputes each terminal rather than trusting its positive stored label. Invalid backend labels, unresolved terminals, failed domains, missing roots, and incomplete geometry prevent the public full result. Component mode cannot issue public box acceptance. The low-level membership helper alone is not a proof and must not be promoted as an exclusion certificate.

Independent interface controls accept twelve exact boundary/wrap cases and reject eighteen outside/center-touching cases and four malformed-input cases. Three pinned output paths were tested through the pure protection function without attempted writes. A separate Machin interval calculation checks all 2,354 unique original pilot boxes: every whole box lies strictly below `19/400` from one seed and has positive distance from its center. These are membership checks; their physical exclusion still requires the complete certificate. Radius-0.05 membership does not by itself close campaign boxes that extend outside the ball or replay the remainder of the campaign.

## 7. Confirmed inherited guard defect and formal obligations

All nineteen supplier source-comparison entries match the actual old and new files. The original `interval_model.hpp` is byte-identical to the old radius-1/40 packet, SHA-256 `dbdf8d6d81b388388b4a91b5af9d78aaaddd136e1fb6a21de065c33649aef124`. Its subnormal-environment guard compares subnormal floating-point values. The prior radius-1/40 review already records this defect; the focused incoming radius-3/100 review explicitly uses the later integer-bit correction. The new radius-1/20 source does not contain that correction.

In environments that treat subnormal inputs or outputs as zero, floating comparisons can themselves collapse the distinct tested quantities. The original guard therefore does not robustly establish its claimed gradual-underflow premise. The arithmetic regression checks also use floating comparisons for adjacency. This is a real fail-closed/portability defect, not a physical counterexample or a refutation of the analytic result under correctly enforced IEEE binary64 semantics. An independently checked process environment or an additive, explicitly hashed repaired derivative is required before treating the current local replay as execution evidence. The replay worker is handling the repair and its fresh complete run separately; this report does not anticipate their outcome.

Under `research_factory/LEAN_POLICY.md`, the exact finite calculations, analytic completion argument, interval/Taylor soundness, all local/global predicates, physical transport, and coverage must be connected by kernel-checked declarations with source hashes, dependencies, checker transcripts, and axiom audits. Existing algebraic/physical Lean lemmas can be reused only with their checked scope and provenance. This incoming archive is not a standalone Lean development. Successful native replay, agreement of exact calculations, or an older task's completion cannot close that remaining obligation.

## Audit artifacts

- `audit_checks.py` and `CHECKS.json`: independent source comparison, coefficient reuse and binding, two-stage Bernstein computation, exact chart margins, exact cover, and dense coefficient bindings.
- `interface_checks.py` and `INTERFACE_CHECKS.json`: negative/positive interface controls and independent whole-pilot membership.
- This report: analytic and semantic review, with full native replay expressly delegated to its separate record.

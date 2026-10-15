# Independent adversarial audit: return G, Theorem B (guarded PR-M)

Date: 2026-10-15. Auditor: independent referee pass. Repository read-only except the files named below.
Scope: `proof/coverage/returns/G_prm/PRM.md` §6 (and §0 statement), with everything in `G_prm/` that §6 relies on:
`verify_bridge.py`, `verify_cubic_guards.py`, `certificates/product_bridge.json`, `imports/I2_I3_FLATNESS.md` §§2–3,
and the source definitions in `ClassificationPaper/source/{paper_body,supp_body}.tex`. Format and conventions follow
`AUDIT_2026-10-15.md`.

**Bottom line.**
- I found **no mathematical error** in Theorem B.
- Every identity it uses holds exactly when re-derived independently. That includes the paper's companion
  polynomials, which I transcribed again from the `.tex`.
- Every numerical test on actual Hadamard matrices agrees with it. These were Fourier families, their transposes,
  and generic matrices reconstructed from random seeds.
- **Theorem B is not on the critical path.** Neither PROOF_v2.md nor the Lean development uses it.
- Its whole mathematical content is Theorem A plus a two-line algebraic bridge and an elementary μ₃ lemma. So it adds
  essentially no risk beyond Theorem A, which was audited and is in Lean.

| script | what it tests | runtime |
|---|---|---|
| `thmB_check1_bridge_symbolic.py` | sympy, exact: the paper's sextic re-expanded from my own transcription of A, B; c₆ = P₁P̄₀ (and = the printed c₆); c₀ = c₆#; c₅, c₁ relations; c₃ = −(1+X)(2L+δχ); (6.4); the free-symbol discriminant identity; the quadratic cofactor (6.2); u(z) = λ₀/λ₁ (6.1); the sign flip (6.3) | 1 s |
| `thmB_check2_reconstruction.py` | numerical: [CT]'s quadratic–cubic reconstruction from 400 random seeds, with all four pairings assembled. Also every positional corner of 12 Fourier-family matrices and 24 generic reconstructed matrices (11,328 guarded corners) | 2 s |
| `thmB_check3_tao_guards.py` | exact in ℤ[ω]: the 729 μ₃ sides (279/324/126), and **all 14,400 ordered frames** of S₆, both directions | 1 s |
| `thmB_check4_degenerate.py` | numerical: ramification ω_n = 0; the δ_h = 0 stratum; the plus residual tending to 0; the block identity of §6.3 | <1 s |

I also replayed the return's own `verify_bridge.py` and `verify_cubic_guards.py` (read-only; both pass, no files
changed). No Lean or lake was run.

---

## 1. Precise statement and where it is used

**Setting.** This is [CT]'s Definition `def:product-regularity`.
- Take a dephased corner E(a,b,c,d) with horizontal Gram data (s,t,r) from E and vertical data from Eᵀ.
- c_k are the coefficients of [CT]'s sextic Φ = z³(AA# − BB#).
- U_h = −c₃/((1+X)c₆), V_h = c₀/c₆, ω_n = |U_h|² − 4, and δ_h = |r|² − |t|².
- A **lift** consists of:
  - a horizontal product root u, the roots x of x³ − s x² + u s̄ x − u, and y = −A(x)/B(x);
  - the analogous vertical data m, p, q;
  - B = (1;x;y), C = (1;p;q)ᵀ, which satisfy the parent Gram equations BB* = 6I − EE* and C*C = 6I − E*E;
  - the forced block D = −C E* G_h⁻¹ B.
- The lift is **physical** if every coordinate is unimodular.
- The lift is **guarded** (product regular) if all of det E, det B, det C, c₆,h, c₆,v, δ_h, δ_v, Disc q_h,
  Disc q_v, Res(q_h,B_h) and Res(q_v,B_v) are nonzero.

**Theorem B.** Let a guarded physical lift have ω_n < 0. If its forced block D is entrywise unimodular, then

  m = (U_v − κ(2u − U_h))/2, with κ = δ_v c₆,h /(δ_h c₆,v)  (the affine-*minus* prescription).

Equivalently, the plus pairing is never flat there. Two consequences follow:
- [CT]'s specialised norm remainder F₊ is a nonzero element of K[p]/(q_v);
- Σ(|D_ij|² − 1)² > 0 for the plus pairing.

At ω_n = 0 the two prescriptions coincide, and nothing is claimed there.

**Proof structure (§6).**
1. *Bridge (§6.1).* ω_n = −δ²R/|c₆|². Hence ω_n < 0 ⇒ R > 0.
2. *Affine sheet map.* u = (L + gδz)/c₆, with z = −Ψ(B)/g, and similarly for m. So the plus prescription forces
   z_v = z_h, a nonreal value.
3. The plus lift is therefore a strict nonmatched Hadamard matrix. Theorem A makes it Tao.
4. *§6.2.* Every invertible μ₃ side has a repeated x-root or δ = 0, so no Tao frame is guarded. This contradicts
   the guard hypothesis.

**Where it is used. It is NOT on the critical path.**
- **PROOF_v2.md.** The main chain is Lemma 1.1 → Theorems 1.2–1.5 → Corollary 1.6 → §§2–6.
  - Theorem 1.4 is Theorem A (PRM §§2–5).
  - Corollary 1.6 is Theorem C (§7.3), which invokes only Theorem A ("Theorem A excludes a nonmatched pairing
    there").
  - Theorem B appears only in the Appendix (line 283), as a remark that Theorem 1.4 "also proves PR-M on the
    guarded locus".
- **Lean.** `no_four_mubs_of_coverage` needs `PRM.densityReach`, which comes from `nonmatched_tao` and
  `StrictCornerCoverage`. Searching `lean/NoFourMUBs` finds no ω_n, product-regular, κ or affine-minus object.
  PRM.md itself says no Lean port of §6 exists.
- **Theorem 1.5 / MC1.** PRM §7.2 explicitly does not use PR-M, and none of the critical-strip dossier files
  mention it.
- **Its role.** Theorem B only repairs the statement of [CT]'s regular-cover theorem
  (`eq:affine-minus-matching-main`), whose supplied proof (the irreducibility argument in
  `prop:supp-generic-flatness`) was the PR-M gap. That matters for the classification paper, not for the
  no-four-MUBs proof.

## 2. Step-by-step check

### §6.1 The bridge — VERIFIED (exact, independent)
- **Transcription.** I re-transcribed A and B from `supp_body.tex` (eq:supp-A-explicit, eq:supp-B-explicit). They
  agree term-for-term with `verify_bridge.py`.
  - My sympy expansion of Φ gives c₆ = P₁P̄₀ (= the return's f₆). It also agrees with the separately printed
    eq:supp-c6-explicit.
  - So κ in Theorem B is literally [CT]'s κ.
- **Coefficients.** The following hold exactly, with s, S, t, T, r, Q treated as six independent variables:
  - c₀ = c₆#, c₅ = −2s c₆, c₁ = −2s# c₀;
  - c₃ = −(1+X)(2L+δχ), hence U_h = (2L+δχ)/c₆;
  - (2L+δχ)² − 4c₆c₀ = −δ²R.

  So these are polynomial identities. They hold without any physical specialisation.
- **A sharper form.** After the norm identities |P_j|² = g² + c_jχ + c_j²η (also re-verified), the discriminant
  identity becomes an identity in free symbols g, χ, η, c₀, c₁. The quadratic-cofactor line of (6.2) is likewise a
  free-symbol identity. This is a stronger statement than the return makes.
- **(6.1).** u = λ₀/λ₁ = (L + gδz)/c₆. I verified it by cross-multiplying and reducing modulo z z̄ = η and
  g(z + z̄) = χ. It agrees with I3's formula u₁ = Ū, since the conjugate of u₁ is the same expression.
  Numerically, |u − (L+gδz)/c₆| ≤ 1.3e-10 on 258 actual reconstructed sides.
- **(6.3) and the sign.** 2u − U = (gδ/c₆)(2z − χ/g), and conjugation negates 2z − χ/g. So conjugate signatures
  give the minus sign and equal signatures give the plus sign, using g_h = g_v and χ_h = χ_v.
  - Numerically, 129 random seeds with ω_n < 0 (all four pairings each) gave:
    - the minus prescription always picks a genuine vertical root (error ≤ 5e-12);
    - the minus pairing is flat (≤ 5e-11) with conjugate signatures (≤ 4e-11);
    - the plus pairing has equal signatures (≤ 5e-11) and residual ≥ 0.053.
- **Guards used here.** Only c₆ ≠ 0, δ ≠ 0 and det B ≠ 0 (giving g > 0). R > 0 already follows from δ²R > 0.
  The step from R > 0 to η > 0 and P_j ≠ 0, needed for the λ formulas, is correct: 4g²η > χ² ≥ 0.
- **Sign relation.** Among 400 random seeds there was no seed with ω_n ≥ 0 and R > 0, and the bridge residual was
  ≤ 6e-13.
- **Necessity of the δ guard (check4 b).** At strict seeds with δ_h = 0 and R between 4.7 and 123, ω_n = 0. So
  "ω_n = 0 ⇒ R = 0" really needs the δ guard. The return states it only on the guarded locus, which is correct.

### Actual-matrix test of the conclusion — VERIFIED (numerical)
- I dephased every positional corner of three random members of each Fourier family, their transposes, 12 generic
  matrices reconstructed from random seeds, and the adjoints of those 12.
- **All 11,323** corners that are guarded with ω_n < 0 satisfy the minus prescription with the matrix's *actual*
  vertical product. The error is ≤ 8e-9 and typically 1e-11.
- So Theorem B holds on real data, including generic non-Fourier Hadamard matrices.
- Five further guarded corners had −1e-9 < ω_n < 0. In each, δ_h or R was small, which is the expected near-boundary
  behaviour and not an anomaly.

### §6.2 No Tao frame is product regular — VERIFIED (exact, exhaustive)
- **Hand proof.** The case split for x = (1, ω, ω²) is correct:
  - y constant or ∝ x is singular;
  - y ∝ x̄ makes both sides zero;
  - a repeated y gives |2β+γ|² = |γ−β|² = 3.
- **Dephased entries.** "Dephased frame ⇒ μ₃ entries" holds because the dephased entry is a ratio of four Tao
  entries.
- **Exact recount.** 279 singular, 324 with repeated x, and 126 with simple x and δ = 0.
- **Stronger than needed.** I ran over **all 14,400 ordered frames** of S₆ (ordered row triple × ordered column
  triple, dephased at the frame). Every frame has μ₃ entries, and **both** the horizontal and the vertical side
  fail a guard. 12,960 of these frames are strict (= 360/400 × 14,400, consistent with the earlier audit).

### §6.3 Necessity and the plus residual — VERIFIED, one interpretive paragraph imported
- **Hadamard property.** HH* = 6I for every lift with det B, det C ≠ 0, whether or not D is flat. This uses
  D = −CE*G_h⁻¹B, CC* + DD* = C(I + E*G⁻¹E)C*, and the push-through identity I + E*G⁻¹E = 6(6I − E*E)⁻¹.
  - Checked symbolically by hand and numerically: relative error 3e-14 in check4, and HH* = 6I to 3e-10 for all
    516 assembled pairings.
  - The row sums Σ_j |D_ij|² = 3 also hold to 2e-10.
- **The contradiction.** Plus + flat ⇒ dephased Hadamard (first row and column are ones) with R > 0 and
  z_v = z_h ∉ ℝ. This is exactly Theorem A's hypothesis, so the matrix is Tao, and that contradicts §6.2. The
  quantifiers are fine: Theorem A holds for every strict dephased Hadamard, with no guard needed.
- **F₊ paragraph (imported, not re-verified).** It identifies [CT]'s norm remainder with ∏_j |D_ij|² − 1 at the
  three vertical roots. This rests on [CT]'s own definitions of the interpolant d and its regular specialisation
  (`prop:supp-generic-flatness`, "At a physical point the three values of N are the row products of D";
  `lem:supp-regular-localization`).
  - I did not re-derive [CT]'s interpolant. Given that identification, the deduction is correct: Disc q_v ≠ 0
    makes K[p]/(q_v) ≅ ℂ³, and AM–GM with row sum 3 gives flatness.
  - This paragraph is interpretive and is not needed for the necessity statement itself.
- **No uniform bound (check4 c).** The plus residual tends to 0 as ω_n → 0⁻, e.g. 3.9e-3 at ω_n = −1.5e-3. This is
  consistent with the explicit disclaimer.

### §6.4 Ramification — VERIFIED
- I located five points with ω_n = 0, |δ| > 0.05 and |c₆| > 0.05 by bisection. At each:
  - R/g³ ≤ 3e-14, and u₊ = u₋ to within √(machine ε);
  - both prescriptions give the identical m = U_v/2.
- The coincident lift happened to be flat (defect ≤ 1e-13). The return correctly claims nothing there, and that
  locus is critical (R = 0), outside the strict machinery.
- Minor citation slip: "Equation (6.2) shows the two product roots coincide" should cite the discriminant ω_n = 0
  (6.4).

## 3. Ranked weak points

1. **Dependence on Theorem A (inherited, not new).** Every bit of the exclusion is Theorem A. Theorem A is audited
   and in Lean, but §6 itself has no Lean counterpart. Since Theorem B is off the critical path, this matters only
   if the classification paper is to cite it.
2. **The F₊ / norm-remainder paragraph (§6.3, second half).** It relies on [CT]'s definition and specialisation of
   the interpolant d, which I did not re-verify. It is harmless, because the necessity statement does not use it,
   but it is the only place §6 leans on [CT]'s unchecked machinery.
3. **Faithful transcription of [CT]'s coefficients.** The bridge is only as good as the transcription of
   A, B, c₃ and U_h. I re-transcribed independently and matched both the return and [CT]'s printed c₆. Residual
   risk is low.
4. **Guard dependence of "ω_n ⋚ 0 ⇔ R ⋛ 0".** It fails off the guarded locus: δ = 0 strict corners have ω_n = 0. The
   return states it correctly. Any external restatement of Theorem B must keep the δ and c₆ guards.
5. **Presentation.**
   - U is overloaded: in (2.3) it is ∏x_j, in (6.3) the sum of product roots.
   - f₆ versus c₆ should be stated as equal (they are).
   - §6.4 cites (6.2) where (6.4) is meant.
   - None of these affects correctness.

## Recommendation for PROOF_v2.md
Keep Theorem B in the Appendix only, as now. If it is mentioned, say "Theorem 1.4, combined with the identity
ω_n = −δ²R/|c₆|² and the fact that no Tao frame is product regular, gives [CT]'s affine-minus matching on the
guarded locus with ω_n < 0". No change to the main argument is needed.

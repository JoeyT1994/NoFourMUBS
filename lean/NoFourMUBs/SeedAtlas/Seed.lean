import NoFourMUBs.L1.SideCover
import NoFourMUBs.Step4

/-!
# Seed coordinates and oriented matched completions (`proof/seed_atlas/SPEC.md` §1)

* `seedOf θ = (e^{iθ₁}, …, e^{iθ₄})`: the seed of four real phases, with `E(θ) = [[1,1,1],[1,a,b],[1,c,d]]`
  (`θ₁ ↔ E₁₁`, `θ₂ ↔ E₁₂`, `θ₃ ↔ E₂₁`, `θ₄ ↔ E₂₂`, `Step2.seedCorner`).
* `psi X = perm(X) det(X)² ∏ X̄_ab`, the SPEC's side signature `Ψ(X) = perm(X) det(X)² / ∏ X_ab` on phase blocks.
  It is `−Step2.sideSignature X` (`psi_eq`); `PROOF.md` §2.1 writes `T = −Ψ`.
* `MatchedO o p H` (`o = ±1`): `H` is dephased, its leading corner is `E(p)`, and its side signatures are the roots
  `2T(B) = χ − o i√R`, `2T(C) = χ + o i√R`.  For a strict seed this says exactly that `sign Im Ψ(B) = o` and
  `sign Im Ψ(Cᵀ) = −o` (`matchedO_of_signs`, `signs_of_matchedO`), the SPEC's orientation and matching.
  **Convention:** `PROOF.md`'s positive matched completion `H₊` (`Step2.Matched`, `−Ψ(B) = ζ₊`) is `o = −1` here
  (`matchedO_neg_iff`); `o = +1` is its conjugate (`matchedO_conj`).

The two side formulas (`right_formula`, `lower_formula`): for a dephased Hadamard `D` with leading corner `E(p)` and a
side with `Im T ≠ 0`, `2 Re T = χ(p)` and `R(p) = 4 (Im T)²` (`PROOF.md` Lemma 2.1, `Side.TS_root`,
`Side.RS_eq_im_sq`; the vertical side has the same `χ` and `R`, `L1.FlatCircuits.hv_eq`).  So the signs of the two
`Im Ψ` decide the orientation and the matching, and force `R(p) > 0`.

Matched uniqueness holds for either orientation (`matchedO_unique`, from `Step2.matchedUniqueness`), and the oriented
matched relation is closed (`isClosed_matchedO`).
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Side NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.SeedAtlas

/-! ### Seeds of real phases -/

/-- The Euclidean norm on `ℝ⁴`, in the form of `RecordCert` and Stage C (`Admissible`). -/
def wnorm (w : Fin 4 → ℝ) : ℝ := Real.sqrt (∑ k, w k ^ 2)

/-- The seed of four real phases. -/
def seedOf (θ : Fin 4 → ℝ) : Seed := fun i => Circle.exp (θ i)

lemma continuous_seedOf : Continuous seedOf :=
  continuous_pi fun i => Circle.exp.continuous.comp (continuous_apply i)

lemma continuous_wnorm : Continuous wnorm := by
  unfold wnorm; fun_prop

lemma wnorm_nonneg (w : Fin 4 → ℝ) : 0 ≤ wnorm w := Real.sqrt_nonneg _

lemma abs_le_wnorm (w : Fin 4 → ℝ) (k : Fin 4) : |w k| ≤ wnorm w := by
  unfold wnorm
  apply Real.abs_le_sqrt
  exact Finset.single_le_sum (f := fun k => w k ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ k)

/-- Integer windings do not change the seed. -/
lemma seedOf_add_winding (θ : Fin 4 → ℝ) (N : Fin 4 → ℤ) :
    seedOf (θ + (2 * Real.pi) • fun i => (N i : ℝ)) = seedOf θ := by
  funext i
  simp only [seedOf, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  rw [mul_comm, Circle.exp_add, Circle.exp_int_mul_two_pi, mul_one]

/-! ### The SPEC's `Ψ` and orientations -/

/-- `Ψ(X) = perm(X) det(X)² ∏ X̄_ab` (`= perm(X) det(X)² / ∏ X_ab` on phase blocks). -/
def psi (X : Mat3) : ℂ := permanent3 X * X.det ^ 2 * ∏ i : I3, ∏ j : I3, star (X i j)

lemma psi_eq (X : Mat3) : psi X = -sideSignature X := by
  simp only [psi, sideSignature]; ring

/-- An orientation `o ∈ {±1}` as a real number. -/
def osgn (o : ℤˣ) : ℝ := ((o : ℤ) : ℝ)

lemma osgn_cases (o : ℤˣ) : (o = 1 ∧ osgn o = 1) ∨ (o = -1 ∧ osgn o = -1) := by
  rcases Int.units_eq_one_or o with h | h
  · exact Or.inl ⟨h, by simp [osgn, h]⟩
  · exact Or.inr ⟨h, by simp [osgn, h]⟩

lemma osgn_neg (o : ℤˣ) : osgn (-o) = -osgn o := by simp [osgn]

lemma osgn_sq (o : ℤˣ) : osgn o ^ 2 = 1 := by
  rcases osgn_cases o with ⟨-, h⟩ | ⟨-, h⟩ <;> rw [h] <;> norm_num

/-- **The oriented matched relation** (SPEC §1): `H` is dephased with leading corner `E(p)`, and
`2T(B) = χ − o i√R`, `2T(C) = χ + o i√R` (`T = −Ψ`). -/
def MatchedO (o : ℤˣ) (p : Seed) (H : Mat6) : Prop :=
  Dephased H ∧ leadingBlock H = seedCorner p ∧
    2 * sideSignature (rightBlock H) = (seedChi p : ℂ) - ((osgn o * Real.sqrt (seedR p) : ℝ) : ℂ) * Complex.I ∧
    2 * sideSignature (lowerBlock H) = (seedChi p : ℂ) + ((osgn o * Real.sqrt (seedR p) : ℝ) : ℂ) * Complex.I

/-- `o = −1` is `PROOF.md`'s positive matched relation `Step2.Matched`. -/
theorem matchedO_neg_iff {p : Seed} (hp : 0 < seedR p) (H : Had6) :
    MatchedO (-1) p H.1 ↔ Matched ⟨p, hp⟩ H := by
  have e : osgn (-1) = -1 := by simp [osgn]
  unfold MatchedO Matched
  rw [e]
  push_cast
  simp only [one_mul, neg_mul, sub_neg_eq_add, ← sub_eq_add_neg]

/-! ### Conjugation -/

lemma seedChi_eq' (p : Seed) : seedChi p = L1.gChi (L1.FlatCircuits.sh (L1.seedVec p))
    (L1.FlatCircuits.th (L1.seedVec p)) (L1.FlatCircuits.rh (L1.seedVec p)) := rfl

lemma seedR_eq' (p : Seed) : seedR p = L1.gR (L1.FlatCircuits.sh (L1.seedVec p))
    (L1.FlatCircuits.th (L1.seedVec p)) (L1.FlatCircuits.rh (L1.seedVec p)) := rfl

lemma seedChi_conj (p : Seed) : seedChi (L1.conjSeed p) = seedChi p := by
  have e := L1.Gh_conj (L1.seedVec p)
  have hJ : ∀ s t r : ℂ, L1.gChi (conj s) (conj t) (conj r) = L1.gChi s t r := by
    intro s t r
    have hJ : L1.gJ (conj s) (conj t) (conj r) = L1.gJ s t r := by
      simp only [L1.gJ, Complex.conj_conj]
      rw [← Complex.conj_re (s * r * conj t)]
      simp [map_mul]
    simp only [L1.gChi, L1.gPs, L1.gX, hJ, Complex.normSq_conj]
  have e2 := congrArg (fun g => L1.gChi g.1 g.2.1 g.2.2) e
  simp only [L1.Gh, L1.conj3, hJ] at e2
  rw [seedChi_eq', seedChi_eq', L1.seedVec_conj]
  exact e2

lemma sideSignature_map_conj (B : Mat3) : sideSignature (B.map conj) = conj (sideSignature B) := by
  simp only [sideSignature, permanent3_expand, Matrix.det_fin_three, Fin.prod_univ_three,
    Matrix.map_apply, map_mul, map_neg, map_pow, map_add, map_sub, Complex.star_def]

lemma seedCorner_conj (p : Seed) : seedCorner (L1.conjSeed p) = (seedCorner p).map conj := by
  have h := L1.seedVec_conj p
  ext i j
  fin_cases i <;> fin_cases j <;> simp [seedCorner, corner] <;>
    first | rfl | exact congrFun h _

lemma conj_matchedO {o : ℤˣ} {p : Seed} {H : Mat6} (h : MatchedO o p H) :
    MatchedO (-o) (L1.conjSeed p) (conjM H) := by
  obtain ⟨hd, hE, hB, hC⟩ := h
  refine ⟨⟨fun j => by simp [conjM, hd.1 j], fun i => by simp [conjM, hd.2 i]⟩, ?_, ?_, ?_⟩
  · rw [seedCorner_conj, ← hE]; rfl
  · have : rightBlock (conjM H) = (rightBlock H).map conj := rfl
    rw [this, sideSignature_map_conj, seedChi_conj, L1.seedR_conj, osgn_neg]
    have := congrArg conj hB
    simp only [map_mul, map_sub, Complex.conj_ofReal, Complex.conj_I, map_ofNat] at this
    rw [show (2 : ℂ) * conj (sideSignature (rightBlock H)) = _ from this]
    push_cast; ring
  · have : lowerBlock (conjM H) = (lowerBlock H).map conj := rfl
    rw [this, sideSignature_map_conj, seedChi_conj, L1.seedR_conj, osgn_neg]
    have := congrArg conj hC
    simp only [map_mul, map_add, Complex.conj_ofReal, Complex.conj_I, map_ofNat] at this
    rw [show (2 : ℂ) * conj (sideSignature (lowerBlock H)) = _ from this]
    push_cast; ring

lemma conjSeed_conjSeed (p : Seed) : L1.conjSeed (L1.conjSeed p) = p := by
  funext i; simp [L1.conjSeed]

/-- Conjugation exchanges the two orientations: `f₋(θ) = conj f₊(θ̄)`. -/
theorem matchedO_conj {o : ℤˣ} {p : Seed} {H : Mat6} :
    MatchedO (-o) (L1.conjSeed p) (conjM H) ↔ MatchedO o p H := by
  constructor
  · intro h
    have := conj_matchedO h
    rwa [neg_neg, conjSeed_conjSeed, conjugate_conjugate] at this
  · exact conj_matchedO

/-! ### Uniqueness -/

/-- **Matched uniqueness in either orientation** (`Step2.matchedUniqueness`, `PROOF.md` Theorem 2.3). -/
theorem matchedO_unique {o : ℤˣ} {p : Seed} (hp : 0 < seedR p) {H K : Mat6} (hH : Hadamard6.IsHadamard H)
    (hK : Hadamard6.IsHadamard K) (h1 : MatchedO o p H) (h2 : MatchedO o p K) : Equivalent H K := by
  rcases Int.units_eq_one_or o with rfl | rfl
  · have hp' : 0 < seedR (L1.conjSeed p) := by rw [L1.seedR_conj]; exact hp
    have e := matchedUniqueness ⟨L1.conjSeed p, hp'⟩ ⟨conjM H, isHadamard_conjM hH⟩ ⟨conjM K, isHadamard_conjM hK⟩
      ((matchedO_neg_iff hp' ⟨conjM H, isHadamard_conjM hH⟩).1 (conj_matchedO h1))
      ((matchedO_neg_iff hp' ⟨conjM K, isHadamard_conjM hK⟩).1 (conj_matchedO h2))
    have := equivalent_conjugate e
    simpa only [conjugate_conjugate] using this
  · exact matchedUniqueness ⟨p, hp⟩ ⟨H, hH⟩ ⟨K, hK⟩ ((matchedO_neg_iff hp ⟨H, hH⟩).1 h1)
      ((matchedO_neg_iff hp ⟨K, hK⟩).1 h2)

/-! ### The side formulas -/

section Formulas

variable {D : Mat6} (hD : Hadamard6.IsHadamard D) (hd : Dephased D) {p : Seed} (hE : leadingBlock D = seedCorner p)
include hD hd hE

omit hD hd in
lemma toBlocks₁₁_eq : Matrix.toBlocks₁₁ D = L1.FlatCircuits.Em (L1.seedVec p) := by
  rw [show Matrix.toBlocks₁₁ D = leadingBlock D from rfl, hE]; rfl

/-- The horizontal side: `2 Re T(B) = χ(p)` and `R(p) = 4 (Im T(B))²` when `Im T(B) ≠ 0`. -/
theorem right_formula (hT : (sideSignature (rightBlock D)).im ≠ 0) :
    2 * (sideSignature (rightBlock D)).re = seedChi p ∧ seedR p = 4 * (sideSignature (rightBlock D)).im ^ 2 := by
  set ρ := L1.seedVec p
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => Circle.normSq_coe _
  set B := rightBlock D
  have hB0 : ∀ j, B 0 j = 1 := fun j => hd.1 (.inr j)
  have gB : B * Bᴴ = Hadamard6.sixI3 - L1.FlatCircuits.Em ρ * (L1.FlatCircuits.Em ρ)ᴴ := by
    have := (Hadamard6.hadamard_row_block_grams hD).1
    rw [toBlocks₁₁_eq hE] at this
    rw [← this]; exact (add_sub_cancel_left _ _).symm
  obtain ⟨g1, g2, g3⟩ := gram_rows B hB0
  rw [gB, L1.G_eq' hu] at g1 g2 g3
  simp only [Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.tail_cons, Matrix.empty_val', Matrix.cons_val_fin_one,
    Matrix.head_fin_const] at g1 g2 g3
  have sigB : sideSignature B = TS (B 1) (B 2) := sig_rows B hB0
  rw [sigB] at hT ⊢
  have hx : ∀ j, Complex.normSq (B 1 j) = 1 := fun j => hD.1 _ _
  have hy : ∀ j, Complex.normSq (B 2 j) = 1 := fun j => hD.1 _ _
  have hh : hS (B 1) (B 2) ≠ 0 := by
    intro h0; apply hT; simp [TS, h0]
  obtain ⟨-, r2⟩ := TS_root hx hy hh
  have hRS := RS_eq_im_sq hx hy hh
  rw [← g1, ← g2, ← g3] at r2 hRS
  rw [L1.chiS_eq] at r2
  rw [L1.RS_eq] at hRS
  constructor
  · have := congrArg Complex.re r2
    simp only [Complex.add_re, Complex.conj_re, Complex.ofReal_re] at this
    rw [seedChi_eq']; linarith
  · rw [seedR_eq']; exact hRS

/-- The vertical side: `2 Re T(C) = χ(p)` and `R(p) = 4 (Im T(C))²` when `Im T(C) ≠ 0`. -/
theorem lower_formula (hT : (sideSignature (lowerBlock D)).im ≠ 0) :
    2 * (sideSignature (lowerBlock D)).re = seedChi p ∧ seedR p = 4 * (sideSignature (lowerBlock D)).im ^ 2 := by
  set ρ := L1.seedVec p
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => Circle.normSq_coe _
  set C := lowerBlock D
  have hC0 : ∀ i, C i 0 = 1 := fun i => hd.2 (.inr i)
  have gC : Cᴴ * C = Hadamard6.sixI3 - (L1.FlatCircuits.Em ρ)ᴴ * L1.FlatCircuits.Em ρ := by
    have := (Hadamard6.hadamard_column_block_grams hD).1
    rw [toBlocks₁₁_eq hE] at this
    rw [← this]; exact (add_sub_cancel_left _ _).symm
  obtain ⟨c1, c2, c3⟩ := gram_cols C hC0
  rw [gC, L1.Gv_eq' hu] at c1 c2 c3
  simp only [Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, Matrix.empty_val', Matrix.cons_val_fin_one]
    at c1 c2 c3
  have sigC : sideSignature C = TS (fun j => C j 1) (fun j => C j 2) := sig_cols C hC0
  rw [sigC] at hT ⊢
  have hx : ∀ j, Complex.normSq (C j 1) = 1 := fun j => hD.1 _ _
  have hy : ∀ j, Complex.normSq (C j 2) = 1 := fun j => hD.1 _ _
  have hh : hS (fun j => C j 1) (fun j => C j 2) ≠ 0 := by
    intro h0; apply hT; simp [TS, h0]
  obtain ⟨-, r2⟩ := TS_root hx hy hh
  have hRS := RS_eq_im_sq hx hy hh
  rw [← c1, ← c2, ← c3] at r2 hRS
  rw [L1.chiS_eq] at r2
  rw [L1.RS_eq] at hRS
  obtain ⟨eg, ee, ec⟩ := L1.FlatCircuits.hv_eq hu
  have eR : L1.gR (L1.FlatCircuits.sv ρ) (L1.FlatCircuits.tv ρ) (L1.FlatCircuits.rv ρ) =
      L1.gR (L1.FlatCircuits.sh ρ) (L1.FlatCircuits.th ρ) (L1.FlatCircuits.rh ρ) := by
    simp only [L1.gR, eg, ee, ec]
  rw [ec] at r2
  rw [eR] at hRS
  constructor
  · have := congrArg Complex.re r2
    simp only [Complex.add_re, Complex.conj_re, Complex.ofReal_re] at this
    rw [seedChi_eq']; linarith
  · rw [seedR_eq']; exact hRS

end Formulas

/-- A side signature with `2 Re T = χ` and `R = 4 (Im T)²` is `(χ ± i√R)/2`, the sign being that of `Im T`. -/
lemma two_T_eq {T : ℂ} {χ R : ℝ} (h1 : 2 * T.re = χ) (h2 : R = 4 * T.im ^ 2) (ε : ℝ) (hε : ε ^ 2 = 1)
    (hpos : 0 < ε * T.im) : 2 * T = (χ : ℂ) + ((ε * Real.sqrt R : ℝ) : ℂ) * Complex.I := by
  have hs : Real.sqrt R = 2 * |T.im| := by
    rw [h2, show 4 * T.im ^ 2 = (2 * |T.im|) ^ 2 by rw [mul_pow, sq_abs]; ring]
    exact Real.sqrt_sq (by positivity)
  have hεabs : ε * |T.im| = T.im := by
    have h0 : (ε - 1) * (ε + 1) = 0 := by linear_combination hε
    rcases mul_eq_zero.1 h0 with h | h
    · have h : ε = 1 := by linarith
      subst h; simp at hpos ⊢; exact hpos.le
    · have h : ε = -1 := by linarith
      subst h; simp at hpos ⊢; rw [abs_of_neg (by linarith)]; ring
  apply Complex.ext
  · simp; linarith
  · simp [hs]; linarith [hεabs]

/-- **Signs decide the orientation.** A dephased Hadamard matrix with leading corner `E(p)`, `sign Im Ψ(B) = o` and
`sign Im Ψ(C) = −o` is matched with orientation `o` at `p`, and `p` is strict. -/
theorem matchedO_of_signs {o : ℤˣ} {D : Mat6} (hD : Hadamard6.IsHadamard D) (hd : Dephased D) {p : Seed}
    (hE : leadingBlock D = seedCorner p) (hB : 0 < osgn o * (psi (rightBlock D)).im)
    (hC : 0 < -osgn o * (psi (lowerBlock D)).im) : 0 < seedR p ∧ MatchedO o p D := by
  rw [psi_eq, Complex.neg_im] at hB hC
  have hBim : (sideSignature (rightBlock D)).im ≠ 0 := by
    intro h0; rw [h0] at hB; simp at hB
  have hCim : (sideSignature (lowerBlock D)).im ≠ 0 := by
    intro h0; rw [h0] at hC; simp at hC
  obtain ⟨b1, b2⟩ := right_formula hD hd hE hBim
  obtain ⟨c1, c2⟩ := lower_formula hD hd hE hCim
  refine ⟨by rw [b2]; positivity, hd, hE, ?_, ?_⟩
  · have := two_T_eq b1 b2 (-osgn o) (by rw [neg_sq, osgn_sq]) (by linarith)
    rw [this]; push_cast; ring
  · exact two_T_eq c1 c2 (osgn o) (osgn_sq o) (by linarith)

/-- Conversely, a matched completion at a strict seed has `sign Im Ψ(B) = o` and `sign Im Ψ(C) = −o`. -/
theorem signs_of_matchedO {o : ℤˣ} {p : Seed} (hp : 0 < seedR p) {D : Mat6} (h : MatchedO o p D) :
    0 < osgn o * (psi (rightBlock D)).im ∧ 0 < -osgn o * (psi (lowerBlock D)).im := by
  obtain ⟨-, -, hB, hC⟩ := h
  have hs : 0 < Real.sqrt (seedR p) := Real.sqrt_pos.2 hp
  have eB := congrArg Complex.im hB
  have eC := congrArg Complex.im hC
  simp at eB eC
  rw [psi_eq, psi_eq, Complex.neg_im, Complex.neg_im]
  rcases osgn_cases o with ⟨-, h⟩ | ⟨-, h⟩ <;> rw [h] at eB eC ⊢ <;> constructor <;> linarith

/-! ### Closedness -/

@[fun_prop] lemma continuous_psi : Continuous psi := by
  unfold psi; fun_prop

theorem isClosed_matchedO (o : ℤˣ) : IsClosed {z : Seed × Mat6 | MatchedO o z.1 z.2} := by
  have hval : Continuous (fun z : Seed × Mat6 => z.2) := continuous_snd
  unfold MatchedO Dephased
  simp only [Set.ofPred_and, Set.ofPred_forall]
  refine ((isClosed_iInter fun j => isClosed_eq
    ((continuous_apply_apply (Sum.inl (0 : I3)) j).comp hval) continuous_const).inter
    (isClosed_iInter fun i => isClosed_eq
      ((continuous_apply_apply i (Sum.inl (0 : I3))).comp hval) continuous_const)).inter ?_
  refine (isClosed_eq (by fun_prop) (by fun_prop)).inter ?_
  exact (isClosed_eq (by fun_prop) (by fun_prop)).inter (isClosed_eq (by fun_prop) (by fun_prop))

/-! ### Corners of a Hadamard matrix -/

/-- The matrix `g · K` dephased at the ordered corner `(σ(0,1,2), τ(0,1,2))`: rows `σ`, columns `τ`, then
dephased by its first row and column. -/
def cornerMat (k : Fin 4) (σ τ : Equiv.Perm I6) (K : Mat6) : Mat6 :=
  dephase ((gfun k K).submatrix σ τ)

lemma equivalent_cornerMat (k : Fin 4) (σ τ : Equiv.Perm I6) {K : Mat6} (hK : Hadamard6.IsHadamard K) :
    Equivalent (gfun k K) (cornerMat k σ τ K) := by
  have e1 : Equivalent (gfun k K) ((gfun k K).submatrix σ τ) :=
    ⟨σ, τ, fun _ => 1, fun _ => 1, fun _ => by simp, fun _ => by simp, fun i j => by simp⟩
  exact equivalent_trans e1 (equivalent_dephase (isHadamard_of_equivalent e1 (isHadamard_gfun hK k)).1)

lemma isHadamard_cornerMat (k : Fin 4) (σ τ : Equiv.Perm I6) {K : Mat6} (hK : Hadamard6.IsHadamard K) :
    Hadamard6.IsHadamard (cornerMat k σ τ K) :=
  isHadamard_of_equivalent (equivalent_cornerMat k σ τ hK) (isHadamard_gfun hK k)

lemma dephased_cornerMat (k : Fin 4) (σ τ : Equiv.Perm I6) {K : Mat6} (hK : Hadamard6.IsHadamard K) :
    Dephased (cornerMat k σ τ K) :=
  dephase_isDephased (isHadamard_of_equivalent
    ⟨σ, τ, fun _ => 1, fun _ => 1, fun _ => by simp, fun _ => by simp, fun i j => by simp⟩
    (isHadamard_gfun hK k)).1

/-- **A corner with the right signs is a matched completion.**  If the corner of `g · K` at `(σ, τ)` has seed `p`,
`sign Im Ψ(B) = o` and `sign Im Ψ(C) = −o`, then `g · K` is equivalent to a matched completion with orientation `o`
at the strict seed `p`.  (The nonmatched converse is not needed.) -/
theorem matchedO_of_corner {o : ℤˣ} (k : Fin 4) (σ τ : Equiv.Perm I6) {K : Mat6} (hK : Hadamard6.IsHadamard K) {p : Seed}
    (hE : leadingBlock (cornerMat k σ τ K) = seedCorner p)
    (hB : 0 < osgn o * (psi (rightBlock (cornerMat k σ τ K))).im)
    (hC : 0 < -osgn o * (psi (lowerBlock (cornerMat k σ τ K))).im) :
    0 < seedR p ∧ ∃ K', Hadamard6.IsHadamard K' ∧ MatchedO o p K' ∧ Equivalent (gfun k K) K' :=
  have h := matchedO_of_signs (isHadamard_cornerMat k σ τ hK) (dephased_cornerMat k σ τ hK) hE hB hC
  ⟨h.1, _, isHadamard_cornerMat k σ τ hK, h.2, equivalent_cornerMat k σ τ hK⟩

/-- The phases `Q'` of `g · e^{iQ}`: `±Q` or `±Qᵀ`. -/
def gphase : Fin 4 → RMat6 → RMat6 := ![id, fun Q => -Q, transpose, fun Q => -Qᵀ]

lemma gfun_phaseMat (k : Fin 4) (Q : RMat6) : gfun k (phaseMat Q) = phaseMat (gphase k Q) := by
  have e : ∀ x : ℝ, (starRingEnd ℂ) (Complex.exp (x * Complex.I)) = Complex.exp (((-x : ℝ) : ℂ) * Complex.I) := by
    intro x; rw [← SignedPerm.exp_neg_mul_I]; push_cast; ring_nf
  fin_cases k
  · rfl
  · ext i j; exact e (Q i j)
  · rfl
  · ext i j; exact e (Q j i)

/-- The corner phase differences `Q'_{ab} − Q'_{a0} − Q'_{0b} + Q'_{00}` at rows `σ`, columns `τ`. -/
def cornerD (Q' : RMat6) (σ τ : Equiv.Perm I6) (a b : I3) : ℝ :=
  Q' (σ (.inl a)) (τ (.inl b)) - Q' (σ (.inl a)) (τ (.inl 0)) - Q' (σ (.inl 0)) (τ (.inl b)) +
    Q' (σ (.inl 0)) (τ (.inl 0))

/-- **The corner seed is linear in the phases** (SPEC §4, T1): `θ'₁ = Q'_{i₁j₁} − Q'_{i₁j₀} − Q'_{i₀j₁} + Q'_{i₀j₀}`
and likewise, for `Q'` the phases of `g · K` and `(i₀, i₁, i₂) = σ(0, 1, 2)`, `(j₀, j₁, j₂) = τ(0, 1, 2)`. -/
def cornerTheta (Q' : RMat6) (σ τ : Equiv.Perm I6) : Fin 4 → ℝ :=
  ![cornerD Q' σ τ 1 1, cornerD Q' σ τ 1 2, cornerD Q' σ τ 2 1, cornerD Q' σ τ 2 2]

lemma leadingBlock_dephase_phaseMat (Q' : RMat6) (σ τ : Equiv.Perm I6) (a b : I3) :
    leadingBlock (dephase ((phaseMat Q').submatrix σ τ)) a b = (Circle.exp (cornerD Q' σ τ a b) : ℂ) := by
  rw [Circle.coe_exp]
  simp only [leadingBlock, dephase, phaseTransform, dephaseRowFactor, dephaseColumnFactor,
    Matrix.submatrix_apply, phaseMat, Matrix.of_apply, Complex.star_def, ← Complex.exp_conj]
  simp only [map_mul, Complex.conj_ofReal, Complex.conj_I, ← Complex.exp_add]
  congr 1; simp only [cornerD]; push_cast; ring

theorem leadingBlock_cornerMat_phaseMat (k : Fin 4) (σ τ : Equiv.Perm I6) (Q : RMat6) :
    leadingBlock (cornerMat k σ τ (phaseMat Q)) = seedCorner (seedOf (cornerTheta (gphase k Q) σ τ)) := by
  rw [cornerMat, gfun_phaseMat]
  have z1 : ∀ b, cornerD (gphase k Q) σ τ 0 b = 0 := fun b => by simp only [cornerD]; ring
  have z2 : ∀ a, cornerD (gphase k Q) σ τ a 0 = 0 := fun a => by simp only [cornerD]; ring
  ext a b
  rw [leadingBlock_dephase_phaseMat]
  fin_cases a <;> fin_cases b <;>
    simp [seedCorner, corner, seedOf, cornerTheta, z1, z2]

end NoFourMUBs.SeedAtlas

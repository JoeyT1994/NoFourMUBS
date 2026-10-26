import NoFourMUBs.SeedAtlas.Cert
import NoFourMUBs.X.Remainder

/-!
# The tangent frame of `F6` (return X §3.1)

The four natural tangent generators of return X eq. (7), projected horizontally, are rank one:

  `V₀ = σ αᵀ/6`, `V₁ = σ βᵀ/6`, `V₂ = α σᵀ/6`, `V₃ = β σᵀ/6`,

with `σ = (1, −1, 1, −1, 1, −1)`, `α = (1, −2, 1, 1, −2, 1)`, `β = (1, 1, −2, 1, 1, −2)` (rows and columns in the
order `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`, i.e. `0, …, 5`).  `6 V_k` is the integer matrix `vz k`.  They are
horizontal with Gram matrix `G = [[2, −1], [−1, 2]] ⊕ [[2, −1], [−1, 2]]` (eq. (8)).

`frame_split`: every horizontal `δ` is `δ = Σ_k w_k V_k + ν` with `ν` horizontal and orthogonal to every `V_k`,
`‖w‖² ≤ ‖Σ w_k V_k‖²` (`G − I ⪰ 0`), `‖Σ w_k V_k‖² + ‖ν‖² = ‖δ‖²`, and every column of the tangent part has
`‖(Σ w_k V_k)_{:,i}‖² ≤ ‖Σ w_k V_k‖²/3` (eq. (10): `G/3 − C_i ⪰ 0`).
-/

open Matrix Hadamard6

namespace NoFourMUBs.X

open NoFourMUBs NoFourMUBs.SeedAtlas

/-- `σ = (1, −1, 1, −1, 1, −1)`. -/
def sg : I6 → ℤ
  | .inl i => ![1, -1, 1] i
  | .inr i => ![-1, 1, -1] i

/-- `α = (1, −2, 1, 1, −2, 1)`. -/
def al : I6 → ℤ
  | .inl i => ![1, -2, 1] i
  | .inr i => ![1, -2, 1] i

/-- `β = (1, 1, −2, 1, 1, −2)`. -/
def be : I6 → ℤ
  | .inl i => ![1, 1, -2] i
  | .inr i => ![1, 1, -2] i

/-- `6 V_k`, integral. -/
def vz (k : Fin 4) (j i : I6) : ℤ := ![sg j * al i, sg j * be i, al j * sg i, be j * sg i] k

/-- The horizontal tangent generators `V_k = vz k / 6`. -/
noncomputable def V : Fin 4 → RMat6 := fun k j i => (vz k j i : ℝ) / 6

/-- The Gram matrix `G` of the `V_k`. -/
def gram : Fin 4 → Fin 4 → ℝ := ![![2, -1, 0, 0], ![-1, 2, 0, 0], ![0, 0, 2, -1], ![0, 0, -1, 2]]

lemma sum_I6 (f : I6 → ℝ) : ∑ j, f j = f (.inl 0) + f (.inl 1) + f (.inl 2) + f (.inr 0) + f (.inr 1) + f (.inr 2) := by
  simp [Fintype.sum_sum_type, Fin.sum_univ_three]; ring

lemma sum_fin4 (f : Fin 4 → ℝ) : ∑ k, f k = f 0 + f 1 + f 2 + f 3 := by
  simp [Fin.sum_univ_four]

lemma V_horizontal (k : Fin 4) : IsHorizontal (V k) := by
  refine ⟨fun j => ?_, fun i => ?_⟩
  · rw [sum_I6]; fin_cases k <;> rcases j with j | j <;> fin_cases j <;> simp [V, vz, sg, al, be] <;> norm_num
  · rw [sum_I6]; fin_cases k <;> rcases i with i | i <;> fin_cases i <;> simp [V, vz, sg, al, be] <;> norm_num

lemma V_inner (k l : Fin 4) : ∑ a, ∑ c, V k a c * V l a c = gram k l := by
  simp only [sum_I6]
  fin_cases k <;> fin_cases l <;> simp [V, vz, sg, al, be, gram] <;> norm_num

/-- The tangent part `Σ_k w_k V_k`, entrywise. -/
lemma tang_apply (w : Fin 4 → ℝ) (j i : I6) : tang V w j i = ∑ k, w k * V k j i := by
  show (∑ k, w k • V k) j i = _
  rw [Matrix.sum_apply]; simp

/-- `⟨Σ w_k V_k, X⟩ = Σ_k w_k ⟨V_k, X⟩`. -/
lemma inner_tang (w : Fin 4 → ℝ) (X : RMat6) :
    ∑ a, ∑ c, tang V w a c * X a c = ∑ k, w k * ∑ a, ∑ c, V k a c * X a c := by
  simp only [tang_apply, Finset.sum_mul, Finset.mul_sum]
  calc ∑ a, ∑ c, ∑ k, w k * V k a c * X a c = ∑ a, ∑ k, ∑ c, w k * V k a c * X a c :=
        Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ k, ∑ a, ∑ c, w k * V k a c * X a c := Finset.sum_comm
    _ = _ := Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun a _ =>
        Finset.sum_congr rfl fun c _ => by ring

/-- `⟨Σ w_k V_k, V_l⟩ = (G w)_l`. -/
lemma inner_tang_V (w : Fin 4 → ℝ) (l : Fin 4) : ∑ a, ∑ c, tang V w a c * V l a c = ∑ k, w k * gram k l := by
  rw [inner_tang]; simp only [V_inner]

lemma inner_V_tang (w : Fin 4 → ℝ) (l : Fin 4) : ∑ a, ∑ c, V l a c * tang V w a c = ∑ k, w k * gram k l := by
  rw [← inner_tang_V]
  exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun c _ => mul_comm _ _

/-- `‖Σ w_k V_k‖² = wᵀ G w`. -/
lemma sumsq_tang (w : Fin 4 → ℝ) :
    sumsq (tang V w) = 2 * w 0 ^ 2 - 2 * w 0 * w 1 + 2 * w 1 ^ 2 + 2 * w 2 ^ 2 - 2 * w 2 * w 3 + 2 * w 3 ^ 2 := by
  have h : sumsq (tang V w) = ∑ a, ∑ c, tang V w a c * tang V w a c := by
    simp only [sumsq, sq]
  rw [h, inner_tang]
  simp only [inner_V_tang, sum_fin4, gram]
  simp; ring

lemma tang_horizontal (w : Fin 4 → ℝ) : IsHorizontal (tang V w) := by
  refine ⟨fun j => ?_, fun i => ?_⟩
  · simp only [tang_apply]; rw [Finset.sum_comm]
    exact Finset.sum_eq_zero fun k _ => by rw [← Finset.mul_sum, (V_horizontal k).1 j, mul_zero]
  · simp only [tang_apply]; rw [Finset.sum_comm]
    exact Finset.sum_eq_zero fun k _ => by rw [← Finset.mul_sum, (V_horizontal k).2 i, mul_zero]

/-- Return X eq. (10): `3 ‖(Σ w_k V_k)_{:,i}‖² ≤ ‖Σ w_k V_k‖²`. -/
lemma col_tang (w : Fin 4 → ℝ) (i : I6) : 3 * ∑ j, tang V w j i ^ 2 ≤ sumsq (tang V w) := by
  rw [sumsq_tang]
  simp only [tang_apply, sum_fin4, sum_I6]
  rcases i with i | i <;> fin_cases i <;> simp [V, vz, sg, al, be] <;> ring_nf <;>
    nlinarith [sq_nonneg (w 0 - w 1), sq_nonneg (w 2 - w 3), sq_nonneg (w 0 + w 1), sq_nonneg (w 2 + w 3),
      sq_nonneg (w 0), sq_nonneg (w 1), sq_nonneg (w 2), sq_nonneg (w 3)]

/-- `‖w‖² ≤ ‖Σ w_k V_k‖²` (`G − I ⪰ 0`). -/
lemma wnorm_sq_le (w : Fin 4 → ℝ) : wnorm w ^ 2 ≤ sumsq (tang V w) := by
  rw [sumsq_tang, wnorm, Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _), sum_fin4]
  nlinarith [sq_nonneg (w 0 - w 1), sq_nonneg (w 2 - w 3)]

lemma isHorizontal_sub' {Y Z : RMat6} (hY : IsHorizontal Y) (hZ : IsHorizontal Z) : IsHorizontal (Y - Z) :=
  ⟨fun i => by simp [Matrix.sub_apply, Finset.sum_sub_distrib, hY.1 i, hZ.1 i],
   fun j => by simp [Matrix.sub_apply, Finset.sum_sub_distrib, hY.2 j, hZ.2 j]⟩

/-- The frame coordinates `w = G⁻¹ g`, `g_k = ⟨V_k, δ⟩`. -/
noncomputable def coords (δ : RMat6) : Fin 4 → ℝ :=
  let g : Fin 4 → ℝ := fun k => ∑ a, ∑ c, V k a c * δ a c
  ![(2 * g 0 + g 1) / 3, (g 0 + 2 * g 1) / 3, (2 * g 2 + g 3) / 3, (g 2 + 2 * g 3) / 3]

/-- **The tangent–normal split** (return X §3.1). -/
theorem frame_split (δ : RMat6) (hδ : IsHorizontal δ) :
    ∃ w : Fin 4 → ℝ, ∃ ν : RMat6, δ = tang V w + ν ∧ IsHorizontal ν ∧ (∀ k, ∑ a, ∑ c, V k a c * ν a c = 0) ∧
      wnorm w ^ 2 ≤ sumsq (tang V w) ∧ sumsq (tang V w) + sumsq ν = sumsq δ ∧
      ∀ i, 3 * ∑ j, tang V w j i ^ 2 ≤ sumsq (tang V w) := by
  set w := coords δ
  set ν := δ - tang V w
  have horth : ∀ k, ∑ a, ∑ c, V k a c * ν a c = 0 := by
    intro k
    have h1 : ∑ a, ∑ c, V k a c * ν a c = ∑ a, ∑ c, V k a c * δ a c - ∑ a, ∑ c, tang V w a c * V k a c := by
      simp only [ν, Matrix.sub_apply, mul_sub, Finset.sum_sub_distrib]
      congr 1
      exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun c _ => by ring
    rw [h1, inner_tang_V, sum_fin4]
    fin_cases k <;> simp [w, coords, gram] <;> ring
  have hcross : ∑ a, ∑ c, tang V w a c * ν a c = 0 := by
    rw [inner_tang]; exact Finset.sum_eq_zero fun k _ => by rw [horth k, mul_zero]
  refine ⟨w, ν, by simp [ν], isHorizontal_sub' hδ (tang_horizontal w), horth, wnorm_sq_le w, ?_, col_tang w⟩
  have e : δ = tang V w + ν := by simp [ν]
  rw [e, sumsq_add_of_orth hcross]

end NoFourMUBs.X

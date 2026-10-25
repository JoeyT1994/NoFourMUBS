import Mathlib.Topology.MetricSpace.Contracting
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Pi
import Mathlib.Analysis.Calculus.Deriv.Shift
import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse

/-!
# The Krawczyk test (`proof/seed_atlas/SPEC.md` §2, step 2: the side tube)

For `F : ℝᵐ → ℝᵐ`, a predictor `φ_p`, a radius `ρ` (the tube `φ_p + [−ρ, ρ]ᵐ` is the sup-norm ball), any real
matrix `Y`, `b ≥ |Y F(φ_p)|` entrywise and `qᵢ ≥ Σⱼ |(I − Y J(ξ))ᵢⱼ|` for every `ξ` in the tube:

**if `bᵢ + qᵢ ρ < ρ` for every `i`, then `F` has exactly one zero in the tube, and it lies within `bᵢ + qᵢ ρ` of
`φ_p` in each coordinate** (`krawczyk`).

`J` is the Jacobian, entered as directional derivatives (`hF`); `Y` need not be an inverse of anything — its
invertibility follows from the test (`isUnit_det_of_rowsum`).  The proof: `T(φ) = φ − Y F(φ)` maps the tube into
itself and contracts it (mean value theorem, coordinate by coordinate, `krawczyk_mv`), so it has a fixed point (Banach);
fixed points of `T` are the zeros of `F`.

`krawczyk_param`: the parametric form used for the seed box (`θ = θ_c + M_θ u`, `φ_p = φ_pred(u)`): for every
parameter value in the box, exactly one zero in the tube around the predictor.
-/

open Metric Set Filter Topology

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

variable {m : ℕ}

lemma exists_max_lt_one (q : Fin m → ℝ) (hq : ∀ i, q i < 1) : ∃ K : ℝ, 0 ≤ K ∧ K < 1 ∧ ∀ i, q i ≤ K := by
  rcases isEmpty_or_nonempty (Fin m) with h | h
  · exact ⟨0, le_rfl, one_pos, fun i => isEmptyElim i⟩
  · obtain ⟨i0, -, hi0⟩ := Finset.exists_max_image Finset.univ q Finset.univ_nonempty
    exact ⟨max 0 (q i0), le_max_left _ _, max_lt one_pos (hq i0),
      fun i => (hi0 i (Finset.mem_univ i)).trans (le_max_right _ _)⟩

/-- Componentwise bounds `|xᵢ| ≤ qᵢ r` with `qᵢ ≤ K` give `‖x‖ ≤ K r` (sup norm). -/
lemma norm_le_of_comp {x : Fin m → ℝ} {K r : ℝ} (hK : 0 ≤ K) (hr : 0 ≤ r) {q : Fin m → ℝ}
    (hq : ∀ i, q i ≤ K) (h : ∀ i, |x i| ≤ q i * r) : ‖x‖ ≤ K * r :=
  (pi_norm_le_iff_of_nonneg (by positivity)).2 fun i => by
    rw [Real.norm_eq_abs]; exact (h i).trans (mul_le_mul_of_nonneg_right (hq i) hr)

lemma abs_le_norm_pi (x : Fin m → ℝ) (i : Fin m) : |x i| ≤ ‖x‖ := by
  rw [← Real.norm_eq_abs]; exact norm_le_pi_norm x i

/-- The test forces `ρ > 0` (when `m ≥ 1`) and `qᵢ < 1`. -/
lemma q_lt_one {b q : Fin m → ℝ} {ρ : ℝ} (hb0 : ∀ i, 0 ≤ b i) (hq0 : ∀ i, 0 ≤ q i) (hρ : 0 ≤ ρ)
    (hc : ∀ i, b i + q i * ρ < ρ) (i : Fin m) : q i < 1 := by
  have h1 := hc i
  have hρ' : 0 < ρ := by nlinarith [hb0 i, hq0 i]
  by_contra h
  have h' : 1 ≤ q i := le_of_not_gt h
  nlinarith [hb0 i]

/-- **Krawczyk, mean-value form.** -/
theorem krawczyk_mv (F : (Fin m → ℝ) → (Fin m → ℝ)) (φp : Fin m → ℝ) (ρ : ℝ) (Y : Matrix (Fin m) (Fin m) ℝ)
    (hY : IsUnit Y.det) (b q : Fin m → ℝ) (hb : ∀ i, |(Y.mulVec (F φp)) i| ≤ b i) (hq0 : ∀ i, 0 ≤ q i)
    (hmv : ∀ φ ∈ closedBall φp ρ, ∀ ψ ∈ closedBall φp ρ, ∀ i,
      |((φ - ψ) - Y.mulVec (F φ - F ψ)) i| ≤ q i * ‖φ - ψ‖)
    (hc : ∀ i, b i + q i * ρ < ρ) (hρ : 0 ≤ ρ) :
    (∃ φ ∈ closedBall φp ρ, F φ = 0 ∧ ∀ i, |φ i - φp i| ≤ b i + q i * ρ) ∧
      ∀ φ ∈ closedBall φp ρ, ∀ ψ ∈ closedBall φp ρ, F φ = 0 → F ψ = 0 → φ = ψ := by
  have hb0 : ∀ i, 0 ≤ b i := fun i => (abs_nonneg _).trans (hb i)
  obtain ⟨K, hK0, hK1, hqK⟩ := exists_max_lt_one q (q_lt_one hb0 hq0 hρ hc)
  set T : (Fin m → ℝ) → (Fin m → ℝ) := fun φ => φ - Y.mulVec (F φ)
  have hTd : ∀ φ ψ, T φ - T ψ = (φ - ψ) - Y.mulVec (F φ - F ψ) := by
    intro φ ψ; simp only [T, Matrix.mulVec_sub]; abel
  have hlip : ∀ φ ∈ closedBall φp ρ, ∀ ψ ∈ closedBall φp ρ, ‖T φ - T ψ‖ ≤ K * ‖φ - ψ‖ := by
    intro φ hφ ψ hψ
    rw [hTd]; exact norm_le_of_comp hK0 (norm_nonneg _) hqK (hmv φ hφ ψ hψ)
  have hcomp : ∀ φ ∈ closedBall φp ρ, ∀ i, |T φ i - φp i| ≤ b i + q i * ρ := by
    intro φ hφ i
    have e : T φ i - φp i = ((φ - φp) - Y.mulVec (F φ - F φp)) i - (Y.mulVec (F φp)) i := by
      simp only [T, Pi.sub_apply, Matrix.mulVec_sub]; ring
    rw [e]
    have h1 := hmv φ hφ φp (mem_closedBall_self hρ) i
    have h2 : ‖φ - φp‖ ≤ ρ := by rw [← dist_eq_norm]; exact hφ
    calc _ ≤ |((φ - φp) - Y.mulVec (F φ - F φp)) i| + |(Y.mulVec (F φp)) i| := abs_sub _ _
      _ ≤ q i * ρ + b i := add_le_add (h1.trans (mul_le_mul_of_nonneg_left h2 (hq0 i))) (hb i)
      _ = b i + q i * ρ := by ring
  have hmaps : MapsTo T (closedBall φp ρ) (closedBall φp ρ) := by
    intro φ hφ
    rw [mem_closedBall, dist_eq_norm]
    refine (pi_norm_le_iff_of_nonneg hρ).2 fun i => ?_
    rw [Real.norm_eq_abs, Pi.sub_apply]
    exact (hcomp φ hφ i).trans (hc i).le
  have hcontr : ContractingWith ⟨K, hK0⟩ (hmaps.restrict T _ _) := by
    refine ⟨hK1, LipschitzWith.of_dist_le_mul fun x y => ?_⟩
    simp only [Subtype.dist_eq, MapsTo.val_restrict_apply, dist_eq_norm]
    exact hlip x x.2 y y.2
  have hY' : Function.Injective Y.mulVec :=
    Matrix.mulVec_injective_iff_isUnit.2 ((Matrix.isUnit_iff_isUnit_det Y).2 hY)
  obtain ⟨φ, hφ, hfix, -⟩ := hcontr.exists_fixedPoint' isClosed_closedBall.isComplete hmaps
    (mem_closedBall_self hρ) (edist_ne_top _ _)
  have hF0 : F φ = 0 := by
    have h1 : Y.mulVec (F φ) = 0 := by
      have : T φ = φ := hfix
      simp only [T, sub_eq_self] at this; exact this
    exact hY' (h1.trans (Matrix.mulVec_zero Y).symm)
  refine ⟨⟨φ, hφ, hF0, fun i => ?_⟩, ?_⟩
  · have := hcomp φ hφ i
    rwa [show T φ = φ from hfix] at this
  · intro φ₁ h₁ φ₂ h₂ e₁ e₂
    have h := hlip φ₁ h₁ φ₂ h₂
    have : T φ₁ - T φ₂ = φ₁ - φ₂ := by rw [hTd, e₁, e₂, sub_zero, Matrix.mulVec_zero, sub_zero]
    rw [this] at h
    have h0 : ‖φ₁ - φ₂‖ = 0 := by nlinarith [norm_nonneg (φ₁ - φ₂)]
    exact sub_eq_zero.1 (norm_eq_zero.1 h0)

/-- The mean value theorem along a segment, for one coordinate of `φ − Y F(φ)`. -/
lemma mv_coord (F : (Fin m → ℝ) → (Fin m → ℝ)) (J : (Fin m → ℝ) → Matrix (Fin m) (Fin m) ℝ)
    (Y : Matrix (Fin m) (Fin m) ℝ) (s : Set (Fin m → ℝ)) (hs : Convex ℝ s)
    (hF : ∀ ξ ∈ s, ∀ v : Fin m → ℝ, HasDerivAt (fun t : ℝ => F (ξ + t • v)) ((J ξ).mulVec v) 0)
    {q : Fin m → ℝ} (hq : ∀ ξ ∈ s, ∀ i, ∑ j, |(1 - Y * J ξ) i j| ≤ q i) {φ ψ : Fin m → ℝ} (hφ : φ ∈ s)
    (hψ : ψ ∈ s) (i : Fin m) : |((φ - ψ) - Y.mulVec (F φ - F ψ)) i| ≤ q i * ‖φ - ψ‖ := by
  set v := φ - ψ
  set k : ℝ → ℝ := fun t => (ψ + t • v) i - (Y.mulVec (F (ψ + t • v))) i
  have hseg : ∀ t ∈ Icc (0 : ℝ) 1, ψ + t • v ∈ s := by
    intro t ht
    have := hs.add_smul_sub_mem hψ hφ ht
    simpa [v] using this
  have hderiv : ∀ t ∈ Icc (0 : ℝ) 1,
      HasDerivAt k (v i - (Y.mulVec ((J (ψ + t • v)).mulVec v)) i) t := by
    intro t ht
    set ξ := ψ + t • v
    have h0 := hF ξ (hseg t ht) v
    have h1 : HasDerivAt (fun t' : ℝ => F (ψ + t' • v)) ((J ξ).mulVec v) t := by
      have := HasDerivAt.comp_sub_const t t (by rwa [sub_self])
      refine this.congr_of_eventuallyEq (Eventually.of_forall fun t' => ?_)
      simp only [ξ, sub_smul]; congr 1; abel
    have h2 : HasDerivAt (fun t' : ℝ => (Y.mulVec (F (ψ + t' • v))) i)
        ((Y.mulVec ((J ξ).mulVec v)) i) t := by
      simp only [Matrix.mulVec, dotProduct]
      exact HasDerivAt.fun_sum fun j _ => (hasDerivAt_pi.1 h1 j).const_mul (Y i j)
    have h3 : HasDerivAt (fun t' : ℝ => (ψ + t' • v) i) (v i) t := by
      simpa using ((hasDerivAt_id t).mul_const (v i)).const_add (ψ i)
    exact h3.sub h2
  have hbound : ∀ t ∈ Ico (0 : ℝ) 1, ‖v i - (Y.mulVec ((J (ψ + t • v)).mulVec v)) i‖ ≤ q i * ‖v‖ := by
    intro t ht
    have e : v i - (Y.mulVec ((J (ψ + t • v)).mulVec v)) i = ((1 - Y * J (ψ + t • v)).mulVec v) i := by
      rw [Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec]; rfl
    rw [e, Real.norm_eq_abs]
    simp only [Matrix.mulVec, dotProduct]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    calc ∑ j, |(1 - Y * J (ψ + t • v)) i j * v j| ≤ ∑ j, |(1 - Y * J (ψ + t • v)) i j| * ‖v‖ :=
          Finset.sum_le_sum fun j _ => by
            rw [abs_mul]; exact mul_le_mul_of_nonneg_left (abs_le_norm_pi v j) (abs_nonneg _)
      _ = (∑ j, |(1 - Y * J (ψ + t • v)) i j|) * ‖v‖ := by rw [Finset.sum_mul]
      _ ≤ q i * ‖v‖ := mul_le_mul_of_nonneg_right (hq _ (hseg t (Ico_subset_Icc_self ht)) i) (norm_nonneg _)
  have := norm_image_sub_le_of_norm_deriv_le_segment' (f := k)
    (fun t ht => (hderiv t ht).hasDerivWithinAt) hbound 1 ⟨zero_le_one, le_rfl⟩
  have e1 : k 1 - k 0 = ((φ - ψ) - Y.mulVec (F φ - F ψ)) i := by
    simp only [k, v, one_smul, zero_smul, add_zero, Pi.sub_apply, Matrix.mulVec_sub]
    rw [add_sub_cancel]; ring
  rw [e1, Real.norm_eq_abs, sub_zero, mul_one] at this
  exact this

/-- The row-sum test makes `Y` invertible: `‖I − Y J‖_∞ < 1` forces `Y J`, hence `Y`, invertible. -/
lemma isUnit_det_of_rowsum (Y A : Matrix (Fin m) (Fin m) ℝ) {q : Fin m → ℝ} {K : ℝ} (hK1 : K < 1)
    (hqK : ∀ i, q i ≤ K) (hq : ∀ i, ∑ j, |(1 - Y * A) i j| ≤ q i) : IsUnit Y.det := by
  have hinj : Function.Injective (Y * A).mulVec := by
    intro w₁ w₂ h
    set w := w₁ - w₂
    have hw : (Y * A).mulVec w = 0 := by simp only [w, Matrix.mulVec_sub, h, sub_self]
    have hcomp : ∀ i, |w i| ≤ q i * ‖w‖ := by
      intro i
      have e : w i = ((1 - Y * A).mulVec w) i := by
        rw [Matrix.sub_mulVec, Matrix.one_mulVec, hw, sub_zero]
      rw [e]
      simp only [Matrix.mulVec, dotProduct]
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      calc ∑ j, |(1 - Y * A) i j * w j| ≤ ∑ j, |(1 - Y * A) i j| * ‖w‖ :=
            Finset.sum_le_sum fun j _ => by
              rw [abs_mul]; exact mul_le_mul_of_nonneg_left (abs_le_norm_pi w j) (abs_nonneg _)
        _ = (∑ j, |(1 - Y * A) i j|) * ‖w‖ := by rw [Finset.sum_mul]
        _ ≤ q i * ‖w‖ := mul_le_mul_of_nonneg_right (hq i) (norm_nonneg _)
    have hK0 : ∀ i, 0 ≤ q i := fun i => (Finset.sum_nonneg fun j _ => abs_nonneg _).trans (hq i)
    rcases isEmpty_or_nonempty (Fin m) with hm | hm
    · funext i; exact isEmptyElim i
    · obtain ⟨i0⟩ := hm
      have hK' : 0 ≤ K := (hK0 i0).trans (hqK i0)
      have h1 := norm_le_of_comp hK' (norm_nonneg w) hqK hcomp
      have h0 : ‖w‖ = 0 := by nlinarith [norm_nonneg w]
      exact sub_eq_zero.1 (norm_eq_zero.1 h0)
  have hu : IsUnit (Y * A) := Matrix.mulVec_injective_iff_isUnit.1 hinj
  rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_mul] at hu
  exact isUnit_of_mul_isUnit_left hu

/-- **The Krawczyk test** (SPEC §2, step 2). -/
theorem krawczyk (F : (Fin m → ℝ) → (Fin m → ℝ)) (J : (Fin m → ℝ) → Matrix (Fin m) (Fin m) ℝ)
    (φp : Fin m → ℝ) (ρ : ℝ) (Y : Matrix (Fin m) (Fin m) ℝ) (b q : Fin m → ℝ)
    (hF : ∀ ξ ∈ closedBall φp ρ, ∀ v : Fin m → ℝ, HasDerivAt (fun t : ℝ => F (ξ + t • v)) ((J ξ).mulVec v) 0)
    (hb : ∀ i, |(Y.mulVec (F φp)) i| ≤ b i)
    (hq : ∀ ξ ∈ closedBall φp ρ, ∀ i, ∑ j, |(1 - Y * J ξ) i j| ≤ q i)
    (hc : ∀ i, b i + q i * ρ < ρ) (hρ : 0 ≤ ρ) :
    (∃ φ ∈ closedBall φp ρ, F φ = 0 ∧ ∀ i, |φ i - φp i| ≤ b i + q i * ρ) ∧
      ∀ φ ∈ closedBall φp ρ, ∀ ψ ∈ closedBall φp ρ, F φ = 0 → F ψ = 0 → φ = ψ := by
  have hq0 : ∀ i, 0 ≤ q i := fun i =>
    (Finset.sum_nonneg fun j _ => abs_nonneg _).trans (hq φp (mem_closedBall_self hρ) i)
  have hb0 : ∀ i, 0 ≤ b i := fun i => (abs_nonneg _).trans (hb i)
  obtain ⟨K, -, hK1, hqK⟩ := exists_max_lt_one q (q_lt_one hb0 hq0 hρ hc)
  have hY := isUnit_det_of_rowsum Y (J φp) hK1 hqK (hq φp (mem_closedBall_self hρ))
  exact krawczyk_mv F φp ρ Y hY b q hb hq0
    (fun φ hφ ψ hψ i => mv_coord F J Y _ (convex_closedBall φp ρ) hF hq hφ hψ i) hc hρ

/-- **The parametric Krawczyk test:** for every parameter value `u` of the box, exactly one zero of `F u` in the
tube around the predictor `φ_pred(u)`, within `bᵢ + qᵢ ρ` of it. -/
theorem krawczyk_param {P : Type*} (box : Set P) (F : P → (Fin m → ℝ) → (Fin m → ℝ))
    (J : P → (Fin m → ℝ) → Matrix (Fin m) (Fin m) ℝ) (φp : P → Fin m → ℝ) (ρ : ℝ)
    (Y : Matrix (Fin m) (Fin m) ℝ) (b q : Fin m → ℝ)
    (hF : ∀ u ∈ box, ∀ ξ ∈ closedBall (φp u) ρ, ∀ v : Fin m → ℝ,
      HasDerivAt (fun t : ℝ => F u (ξ + t • v)) ((J u ξ).mulVec v) 0)
    (hb : ∀ u ∈ box, ∀ i, |(Y.mulVec (F u (φp u))) i| ≤ b i)
    (hq : ∀ u ∈ box, ∀ ξ ∈ closedBall (φp u) ρ, ∀ i, ∑ j, |(1 - Y * J u ξ) i j| ≤ q i)
    (hc : ∀ i, b i + q i * ρ < ρ) (hρ : 0 ≤ ρ) (u : P) (hu : u ∈ box) :
    (∃ φ ∈ closedBall (φp u) ρ, F u φ = 0 ∧ ∀ i, |φ i - φp u i| ≤ b i + q i * ρ) ∧
      ∀ φ ∈ closedBall (φp u) ρ, ∀ ψ ∈ closedBall (φp u) ρ, F u φ = 0 → F u ψ = 0 → φ = ψ :=
  krawczyk (F u) (J u) (φp u) ρ Y b q (hF u hu) (hb u hu) (hq u hu) hc hρ

end NoFourMUBs.SeedAtlas.Method

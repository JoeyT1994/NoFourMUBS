import NoFourMUBs.Record
import NoFourMUBs.KernelAtlas.Labels
import NoFourMUBs.KernelAtlas.Tangent

/-!
# The tangent frame in the kernel: `hproj`, `hlam`, `hcol`

A rational frame `F : Fin 4 → I6 → I6 → ℚ` (cast to `T = F.toR`) with Gram matrix `G_kl = ⟨T_k, T_l⟩`.
`frameOK` checks, in exact rational arithmetic:
* every `T_k` is horizontal (row and column sums vanish);
* `‖G − I‖_F² ≤ e_G²` with `0 ≤ e_G < 1`, `g² (1 − e_G) ≥ 1`, `g ≥ 0`, `λ ≥ 1 + e_G`;
* for every column `i`, the column Gram `G⁽ⁱ⁾_kl = Σ_a T_k a i T_l a i` has absolute row sums `≤ t²`, `t ≥ 0`;
* `G · Gi = I` for the supplied rational inverse `Gi`.

Then (`frame_proj`, `frame_lam`, `frame_col`): every horizontal `δ` is `Tη + ν` with `ν` horizontal, `ν ⟂ T_k` and
`‖η‖ ≤ g ‖δ‖` (take `η = Gi ⟨T, δ⟩`); `‖Tη‖² ≤ λ ‖η‖²`; `‖(Tη)_{:,i}‖ ≤ t ‖η‖`.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

abbrev QFrame := Fin 4 → I6 → I6 → ℚ

noncomputable def QFrame.toR (F : QFrame) : Fin 4 → RMat6 := fun k a c => (F k a c : ℝ)

def s6 (f : I6 → ℚ) : ℚ := f (.inl 0) + f (.inl 1) + f (.inl 2) + f (.inr 0) + f (.inr 1) + f (.inr 2)
def s4 (f : Fin 4 → ℚ) : ℚ := f 0 + f 1 + f 2 + f 3

def gramQ (F : QFrame) (k l : Fin 4) : ℚ := s6 fun a => s6 fun c => F k a c * F l a c
def gramColQ (F : QFrame) (i : I6) (k l : Fin 4) : ℚ := s6 fun a => F k a i * F l a i

def all4 (f : Fin 4 → Bool) : Bool := f 0 && f 1 && f 2 && f 3

/-- The rational constants of the frame. -/
structure FrameQ where
  eG : ℚ
  g : ℚ
  lam : ℚ
  t : ℚ
  Gi : Fin 4 → Fin 4 → ℚ

def kd (k l : Fin 4) : ℚ := if k = l then 1 else 0

def frameOK (F : QFrame) (q : FrameQ) : Bool :=
  (all4 fun k => allI6 fun a => decide (s6 (fun c => F k a c) = 0)) &&
  (all4 fun k => allI6 fun c => decide (s6 (fun a => F k a c) = 0)) &&
  decide (s4 (fun k => s4 fun l => (gramQ F k l - kd k l) ^ 2) ≤ q.eG ^ 2) &&
  decide (0 ≤ q.eG) && decide (q.eG < 1) && decide (1 ≤ q.g ^ 2 * (1 - q.eG)) && decide (0 ≤ q.g) &&
  decide (1 + q.eG ≤ q.lam) && decide (0 ≤ q.t) &&
  (allI6 fun i => all4 fun k => decide (s4 (fun l => |gramColQ F i k l|) ≤ q.t ^ 2)) &&
  (all4 fun k => all4 fun m => decide (s4 (fun l => gramQ F k l * q.Gi l m) = kd k m))

/-! ### Sums -/

lemma sum_fin4 (f : Fin 4 → ℝ) : ∑ k, f k = f 0 + f 1 + f 2 + f 3 := by
  rw [Fin.sum_univ_four]

lemma s6_cast (f : I6 → ℚ) : ((s6 f : ℚ) : ℝ) = ∑ j, (f j : ℝ) := by
  rw [sum_I6R]; simp only [s6]; push_cast; ring

lemma s4_cast (f : Fin 4 → ℚ) : ((s4 f : ℚ) : ℝ) = ∑ k, (f k : ℝ) := by
  rw [sum_fin4]; simp only [s4]; push_cast; ring

lemma all4_spec {f : Fin 4 → Bool} (h : all4 f = true) : ∀ k, f k = true := by
  simp only [all4, Bool.and_eq_true] at h
  intro k; fin_cases k
  exacts [h.1.1.1, h.1.1.2, h.1.2, h.2]

/-- `G_kl` over the reals. -/
lemma gram_cast (F : QFrame) (k l : Fin 4) :
    ((gramQ F k l : ℚ) : ℝ) = ∑ a, ∑ c, F.toR k a c * F.toR l a c := by
  simp only [gramQ, s6_cast, QFrame.toR]; push_cast; rfl

lemma gramCol_cast (F : QFrame) (i : I6) (k l : Fin 4) :
    ((gramColQ F i k l : ℚ) : ℝ) = ∑ a, F.toR k a i * F.toR l a i := by
  simp only [gramColQ, s6_cast, QFrame.toR]; push_cast; rfl

/-! ### Quadratic forms in `η` -/

/-- `Tη`. -/
noncomputable def tcomb (T : Fin 4 → RMat6) (η : Fin 4 → ℝ) : RMat6 := ∑ k, η k • T k

lemma tcomb_apply (T : Fin 4 → RMat6) (η : Fin 4 → ℝ) (a c : I6) : tcomb T η a c = ∑ k, η k * T k a c := by
  simp [tcomb, Matrix.sum_apply]

lemma sumsq_tcomb (T : Fin 4 → RMat6) (η : Fin 4 → ℝ) :
    sumsq (tcomb T η) = ∑ k, ∑ l, η k * η l * ∑ a, ∑ c, T k a c * T l a c := by
  simp only [sumsq, tcomb_apply, sum_I6R, Fin.sum_univ_four]; ring

/-- `|Σ_kl η_k η_l E_kl| ≤ e ‖η‖²` when `Σ E² ≤ e²`. -/
lemma quad_err {E : Fin 4 → Fin 4 → ℝ} {e : ℝ} (he : 0 ≤ e) (hE : ∑ k, ∑ l, E k l ^ 2 ≤ e ^ 2) (η : Fin 4 → ℝ) :
    |∑ k, ∑ l, η k * η l * E k l| ≤ e * ∑ k, η k ^ 2 := by
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq (Finset.univ (α := Fin 4 × Fin 4))
    (fun p => η p.1 * η p.2) (fun p => E p.1 p.2)
  simp only [Fintype.sum_prod_type] at hcs
  have h1 : ∑ k, ∑ l, (η k * η l) ^ 2 = (∑ k, η k ^ 2) ^ 2 := by
    rw [sq (∑ k, η k ^ 2), Finset.sum_mul_sum]
    exact Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => by ring
  rw [h1] at hcs
  have hS : 0 ≤ ∑ k, η k ^ 2 := Finset.sum_nonneg fun k _ => sq_nonneg _
  have h2 : (∑ k, ∑ l, η k * η l * E k l) ^ 2 ≤ (e * ∑ k, η k ^ 2) ^ 2 := by
    calc _ ≤ (∑ k, η k ^ 2) ^ 2 * ∑ k, ∑ l, E k l ^ 2 := hcs
      _ ≤ (∑ k, η k ^ 2) ^ 2 * e ^ 2 := mul_le_mul_of_nonneg_left hE (sq_nonneg _)
      _ = _ := by ring
  exact abs_le_of_sq_le_sq' h2 (mul_nonneg he hS) |> fun h => abs_le.mpr h

/-- Gershgorin for a quadratic form: `Σ A_kl η_k η_l ≤ m ‖η‖²` when every absolute row and column sum is `≤ m`. -/
lemma quad_gersh {A : Fin 4 → Fin 4 → ℝ} {m : ℝ} (hrow : ∀ k, ∑ l, |A k l| ≤ m) (hcol : ∀ l, ∑ k, |A k l| ≤ m)
    (η : Fin 4 → ℝ) : ∑ k, ∑ l, η k * η l * A k l ≤ m * ∑ k, η k ^ 2 := by
  have h1 : ∀ k l, η k * η l * A k l ≤ (|A k l| * η k ^ 2 + |A k l| * η l ^ 2) / 2 := by
    intro k l
    have : η k * η l * A k l ≤ |η k * η l| * |A k l| := by
      rw [← abs_mul]; exact le_abs_self _
    have h2 : |η k * η l| ≤ (η k ^ 2 + η l ^ 2) / 2 := by
      rw [abs_mul]; nlinarith [sq_nonneg (|η k| - |η l|), sq_abs (η k), sq_abs (η l), abs_nonneg (η k),
        abs_nonneg (η l)]
    nlinarith [abs_nonneg (A k l), abs_nonneg (η k * η l)]
  have h3 : ∑ k, ∑ l, (|A k l| * η k ^ 2 + |A k l| * η l ^ 2) / 2 =
      (∑ k, η k ^ 2 * ∑ l, |A k l| + ∑ l, η l ^ 2 * ∑ k, |A k l|) / 2 := by
    simp only [Fin.sum_univ_four]; ring
  have hr : ∑ k, η k ^ 2 * ∑ l, |A k l| ≤ m * ∑ k, η k ^ 2 := by
    rw [Finset.mul_sum]
    exact Finset.sum_le_sum fun k _ => by rw [mul_comm m]; exact mul_le_mul_of_nonneg_left (hrow k) (sq_nonneg _)
  have hc : ∑ l, η l ^ 2 * ∑ k, |A k l| ≤ m * ∑ k, η k ^ 2 := by
    rw [Finset.mul_sum]
    exact Finset.sum_le_sum fun l _ => by rw [mul_comm m]; exact mul_le_mul_of_nonneg_left (hcol l) (sq_nonneg _)
  calc ∑ k, ∑ l, η k * η l * A k l ≤ ∑ k, ∑ l, (|A k l| * η k ^ 2 + |A k l| * η l ^ 2) / 2 :=
        Finset.sum_le_sum fun k _ => Finset.sum_le_sum fun l _ => h1 k l
    _ = _ := h3
    _ ≤ m * ∑ k, η k ^ 2 := by linarith

lemma inner_sub_comb (Tk : RMat6) (T : Fin 4 → RMat6) (δ : RMat6) (η : Fin 4 → ℝ) :
    ∑ a, ∑ c, Tk a c * (δ - ∑ l, η l • T l) a c =
      ∑ a, ∑ c, Tk a c * δ a c - ∑ l, η l * ∑ a, ∑ c, Tk a c * T l a c := by
  have hS : ∀ a c, (δ - ∑ l, η l • T l) a c = δ a c - ∑ l, η l * T l a c := by
    intro a c; simp [Matrix.sum_apply]
  simp only [hS]
  simp only [sum_I6R, Fin.sum_univ_four]
  ring

/-! ### Soundness -/

section
variable {F : QFrame} {q : FrameQ} (h : frameOK F q = true)
include h

lemma frameOK_parts :
    (∀ k a, s6 (fun c => F k a c) = 0) ∧ (∀ k c, s6 (fun a => F k a c) = 0) ∧
    s4 (fun k => s4 fun l => (gramQ F k l - kd k l) ^ 2) ≤ q.eG ^ 2 ∧ 0 ≤ q.eG ∧ q.eG < 1 ∧
    1 ≤ q.g ^ 2 * (1 - q.eG) ∧ 0 ≤ q.g ∧ 1 + q.eG ≤ q.lam ∧ 0 ≤ q.t ∧
    (∀ i k, s4 (fun l => |gramColQ F i k l|) ≤ q.t ^ 2) ∧
    (∀ k m, s4 (fun l => gramQ F k l * q.Gi l m) = kd k m) := by
  simp only [frameOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hr, hc⟩, hE⟩, he0⟩, he1⟩, hg⟩, hg0⟩, hl⟩, ht0⟩, hcol⟩, hinv⟩ := h
  refine ⟨fun k a => ?_, fun k c => ?_, hE, he0, he1, hg, hg0, hl, ht0, fun i k => ?_, fun k m => ?_⟩
  · simpa using allI6_spec (all4_spec hr k) a
  · simpa using allI6_spec (all4_spec hc k) c
  · simpa using all4_spec (allI6_spec hcol i) k
  · simpa using all4_spec (all4_spec hinv k) m

/-- Every `T_k` is horizontal. -/
lemma frame_hor (k : Fin 4) : IsHorizontal (F.toR k) := by
  obtain ⟨hr, hc, -⟩ := frameOK_parts h
  refine ⟨fun a => ?_, fun c => ?_⟩
  · have := congrArg (fun x : ℚ => (x : ℝ)) (hr k a); simp only [s6_cast, Rat.cast_zero] at this; exact this
  · have := congrArg (fun x : ℚ => (x : ℝ)) (hc k c); simp only [s6_cast, Rat.cast_zero] at this; exact this

lemma frame_gram_err : ∑ k, ∑ l, ((gramQ F k l : ℝ) - kd k l) ^ 2 ≤ (q.eG : ℝ) ^ 2 := by
  obtain ⟨-, -, hE, -⟩ := frameOK_parts h
  have := (Rat.cast_le (K := ℝ)).mpr hE
  simp only [s4_cast] at this; push_cast at this; exact this

lemma sumsq_tcomb_bounds (η : Fin 4 → ℝ) :
    (1 - (q.eG : ℝ)) * ∑ k, η k ^ 2 ≤ sumsq (tcomb F.toR η) ∧
      sumsq (tcomb F.toR η) ≤ (1 + (q.eG : ℝ)) * ∑ k, η k ^ 2 := by
  obtain ⟨-, -, -, he0, -⟩ := frameOK_parts h
  have he0' : (0 : ℝ) ≤ q.eG := by exact_mod_cast he0
  have herr := quad_err he0' (frame_gram_err h) η
  have hsplit : sumsq (tcomb F.toR η) = ∑ k, η k ^ 2 + ∑ k, ∑ l, η k * η l * ((gramQ F k l : ℝ) - kd k l) := by
    rw [sumsq_tcomb]
    simp only [← gram_cast, mul_sub, Finset.sum_sub_distrib]
    have : ∑ k, ∑ l, η k * η l * ((kd k l : ℚ) : ℝ) = ∑ k, η k ^ 2 := by
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Finset.sum_eq_single k (fun l _ hl => by simp [kd, Ne.symm hl]) (by simp)]
      simp [kd, sq]
    rw [this]; ring
  rw [hsplit]
  constructor <;> [linarith [neg_abs_le (∑ k, ∑ l, η k * η l * ((gramQ F k l : ℝ) - kd k l))];
    linarith [le_abs_self (∑ k, ∑ l, η k * η l * ((gramQ F k l : ℝ) - kd k l))]]

/-- **`hlam`.** -/
theorem frame_lam (η : Fin 4 → ℝ) :
    sumsq (∑ k, η k • F.toR k) ≤ (q.lam : ℝ) * Real.sqrt (∑ k, η k ^ 2) ^ 2 := by
  obtain ⟨-, -, -, -, -, -, -, hl, -⟩ := frameOK_parts h
  have hl' : 1 + (q.eG : ℝ) ≤ q.lam := by exact_mod_cast hl
  rw [Real.sq_sqrt (Finset.sum_nonneg fun k _ => sq_nonneg _)]
  have := (sumsq_tcomb_bounds h η).2
  have hS : 0 ≤ ∑ k, η k ^ 2 := Finset.sum_nonneg fun k _ => sq_nonneg _
  exact this.trans (mul_le_mul_of_nonneg_right hl' hS)

/-- **`hcol`.** -/
theorem frame_col (η : Fin 4 → ℝ) (i : I6) :
    colnorm (∑ k, η k • F.toR k) i ≤ (q.t : ℝ) * Real.sqrt (∑ k, η k ^ 2) := by
  obtain ⟨-, -, -, -, -, -, -, -, ht0, hcol, -⟩ := frameOK_parts h
  have ht0' : (0 : ℝ) ≤ q.t := by exact_mod_cast ht0
  have hrow : ∀ k, ∑ l, |(gramColQ F i k l : ℝ)| ≤ (q.t : ℝ) ^ 2 := by
    intro k
    have := (Rat.cast_le (K := ℝ)).mpr (hcol i k)
    simp only [s4_cast] at this; push_cast at this; exact this
  have hsym : ∀ k l, gramColQ F i k l = gramColQ F i l k := by
    intro k l; simp only [gramColQ, s6]; ring
  have hcolb : ∀ l, ∑ k, |(gramColQ F i k l : ℝ)| ≤ (q.t : ℝ) ^ 2 := by
    intro l; simp only [hsym _ l]; exact hrow l
  have hq := quad_gersh hrow hcolb η
  have hexp : ∑ a, (∑ k, η k * F.toR k a i) ^ 2 = ∑ k, ∑ l, η k * η l * (gramColQ F i k l : ℝ) := by
    simp only [gramCol_cast, sum_I6R, Fin.sum_univ_four]; ring
  unfold colnorm vnorm
  have hcolsum : ∑ j, (∑ k, η k • F.toR k) j i ^ 2 = ∑ a, (∑ k, η k * F.toR k a i) ^ 2 := by
    simp [Matrix.sum_apply]
  rw [hcolsum, hexp]
  have hS : 0 ≤ ∑ k, η k ^ 2 := Finset.sum_nonneg fun k _ => sq_nonneg _
  rw [show (q.t : ℝ) * Real.sqrt (∑ k, η k ^ 2) = Real.sqrt ((q.t : ℝ) ^ 2 * ∑ k, η k ^ 2) by
    rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq ht0']]
  exact Real.sqrt_le_sqrt hq

/-- **`hproj`.** -/
theorem frame_proj (δ : RMat6) (hδ : IsHorizontal δ) :
    ∃ η : Fin 4 → ℝ, ∃ ν : RMat6, δ = (∑ k, η k • F.toR k) + ν ∧ IsHorizontal ν ∧
      (∀ k, ∑ a, ∑ c, F.toR k a c * ν a c = 0) ∧ Real.sqrt (∑ k, η k ^ 2) ≤ (q.g : ℝ) * frob δ := by
  obtain ⟨-, -, -, he0, he1, hg, hg0, -, -, -, hinv⟩ := frameOK_parts h
  set b : Fin 4 → ℝ := fun m => ∑ a, ∑ c, F.toR m a c * δ a c
  set η : Fin 4 → ℝ := fun l => ∑ m, (q.Gi l m : ℝ) * b m
  set ν : RMat6 := δ - ∑ k, η k • F.toR k
  have hinvR : ∀ k m, ∑ l, (gramQ F k l : ℝ) * q.Gi l m = kd k m := by
    intro k m
    have := congrArg (fun x : ℚ => (x : ℝ)) (hinv k m)
    simp only [s4_cast] at this; push_cast at this; exact this
  have horth : ∀ k, ∑ a, ∑ c, F.toR k a c * ν a c = 0 := by
    intro k
    have e1 : ∑ a, ∑ c, F.toR k a c * ν a c = b k - ∑ l, η l * (gramQ F k l : ℝ) := by
      rw [show ν = δ - ∑ l, η l • F.toR l from rfl, inner_sub_comb]
      simp only [gram_cast]; rfl
    have e2 : ∑ l, η l * (gramQ F k l : ℝ) = b k := by
      simp only [η, Finset.sum_mul]
      rw [Finset.sum_comm]
      have : ∀ m, ∑ l, (q.Gi l m : ℝ) * b m * (gramQ F k l : ℝ) = kd k m * b m := by
        intro m; rw [← hinvR k m, Finset.sum_mul]; exact Finset.sum_congr rfl fun l _ => by ring
      simp only [this]
      rw [Finset.sum_eq_single k (fun m _ hm => by simp [kd, Ne.symm hm]) (by simp)]
      simp [kd]
    rw [e1, e2, sub_self]
  have hνh : IsHorizontal ν := by
    obtain ⟨hr, hc⟩ := hδ
    refine ⟨fun a => ?_, fun c => ?_⟩
    · simp only [ν, Matrix.sub_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_sub_distrib, hr]
      rw [Finset.sum_comm]
      simp only [← Finset.mul_sum, (frame_hor h _).1, mul_zero, Finset.sum_const_zero, sub_zero]
    · simp only [ν, Matrix.sub_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_sub_distrib, hc]
      rw [Finset.sum_comm]
      simp only [← Finset.mul_sum, (frame_hor h _).2, mul_zero, Finset.sum_const_zero, sub_zero]
  refine ⟨η, ν, by rw [show ν = δ - ∑ k, η k • F.toR k from rfl]; abel, hνh, horth, ?_⟩
  -- ‖Tη‖² ≤ ‖δ‖² by orthogonality, and ‖Tη‖² ≥ (1 − e_G) ‖η‖²
  have hTν : ∑ a, ∑ c, tcomb F.toR η a c * ν a c = 0 := by
    have : ∑ a, ∑ c, tcomb F.toR η a c * ν a c = ∑ k, η k * ∑ a, ∑ c, F.toR k a c * ν a c := by
      simp only [tcomb_apply, sum_I6R, Fin.sum_univ_four]; ring
    rw [this]; simp only [horth, mul_zero, Finset.sum_const_zero]
  have hδsplit : δ = tcomb F.toR η + ν := by
    rw [show ν = δ - ∑ k, η k • F.toR k from rfl, tcomb]; abel
  have hsq : sumsq δ = sumsq (tcomb F.toR η) + sumsq ν := by rw [hδsplit]; exact sumsq_add_of_orth hTν
  have hle : sumsq (tcomb F.toR η) ≤ sumsq δ := by linarith [sumsq_nonneg ν]
  have hlow := (sumsq_tcomb_bounds h η).1
  have he1' : (q.eG : ℝ) < 1 := by exact_mod_cast he1
  have hg' : 1 ≤ (q.g : ℝ) ^ 2 * (1 - q.eG) := by exact_mod_cast hg
  have hg0' : (0 : ℝ) ≤ q.g := by exact_mod_cast hg0
  have hS : 0 ≤ ∑ k, η k ^ 2 := Finset.sum_nonneg fun k _ => sq_nonneg _
  have hη2 : ∑ k, η k ^ 2 ≤ (q.g : ℝ) ^ 2 * sumsq δ := by nlinarith [sumsq_nonneg δ]
  rw [frob_eq_sqrt, show (q.g : ℝ) * Real.sqrt (sumsq δ) = Real.sqrt ((q.g : ℝ) ^ 2 * sumsq δ) by
    rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hg0']]
  exact Real.sqrt_le_sqrt hη2

end

end NoFourMUBs.KernelAtlas

/-! ### The kernel frame `Tmat` as a rational frame -/

namespace NoFourMUBs.KernelAtlas

def frameOf (tc : TCfg) (tq : TParQ) : QFrame := fun k j i => (((tc.Tp k j i : ℤ) - tc.OT : ℤ) : ℚ) / tq.DT

lemma frameOf_toR (tc : TCfg) (tq : TParQ) : (frameOf tc tq).toR = Tmat tc tq := by
  funext k j i; simp [QFrame.toR, frameOf, Tmat]

end NoFourMUBs.KernelAtlas

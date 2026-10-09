import NoFourMUBs.StageC.Bins
import NoFourMUBs.StageC.Assembly

/-!
# Stage C: the Cover property from bins and labels (C1–C3)

* `exists_phases`: a flat vector is `c · e(β)` with `β₀ = 0` and `β ∈ [0, 1]⁶`.
* `inLabel_of_wrap` (C3, covering): if `u − v = h + k + μ` with `k` integral, `Σh = 0` and `‖h‖ + X ≤ s`, then
  `e(u + x) ∈ 𝔅(v, s)` whenever `Σx = 0` and `‖x‖ ≤ X`.
* `cover_of_leaves`: if the leaf bins cover `[0, 1]⁵` and every leaf is either *rejected* (no vector of the bin is
  unbiased to all columns of `H`) or *labelled* (the bin lies in a label), then every flat vector unbiased to all
  columns of `H` lies in a label: the **Cover** hypothesis of `not_quartetEdge`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-! ### Global phases -/

lemma colUnb_smul {H : Mat6} {w : I6 → ℂ} {c : ℂ} (hc : ‖c‖ = 1) :
    ColUnb H (fun j => c * w j) ↔ ColUnb H w := by
  unfold ColUnb
  have : ∀ i, ∑ j, star (H j i) * (c * w j) = c * ∑ j, star (H j i) * w j := fun i => by
    rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
  simp only [this, norm_mul, hc, one_mul]

lemma inLabel_smul {v : I6 → ℝ} {s : ℝ} {w : I6 → ℂ} {c : ℂ} (hc : ‖c‖ = 1) (h : InLabel v s w) :
    InLabel v s (fun j => c * w j) := by
  obtain ⟨c', hc', x, hx0, hx, hw⟩ := h
  exact ⟨c * c', by rw [norm_mul, hc, hc', one_mul], x, hx0, hx, fun j => by show c * w j = _; rw [hw j]; ring⟩

/-! ### Phases of a flat vector -/

lemma e_one : e 1 = 1 := by
  rw [e]; convert Complex.exp_two_pi_mul_I using 2; push_cast; ring

lemma e_add_one (t : ℝ) : e (t + 1) = e t := by rw [e_add, e_one, mul_one]

lemma e_arg {z : ℂ} (hz : ‖z‖ = 1) : e (Complex.arg z / (2 * Real.pi)) = z := by
  have h := Complex.norm_mul_exp_arg_mul_I z
  rw [hz, Complex.ofReal_one, one_mul] at h
  have e2 : (((2 * Real.pi * (Complex.arg z / (2 * Real.pi)) : ℝ)) : ℂ) = (Complex.arg z : ℂ) := by
    congr 1; field_simp
  rw [e, e2]; exact h

theorem exists_phases {w : I6 → ℂ} (hw : Flat w) :
    ∃ c : ℂ, ‖c‖ = 1 ∧ ∃ β : I6 → ℝ, β j0 = 0 ∧ (∀ j, 0 ≤ β j ∧ β j ≤ 1) ∧ ∀ j, w j = c * e (β j) := by
  set c := w j0
  have hc : ‖c‖ = 1 := hw j0
  have hcc : c * star c = 1 := by
    rw [Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq, hc]; norm_num
  let z : I6 → ℂ := fun j => w j * star c
  have hz : ∀ j, ‖z j‖ = 1 := fun j => by simp [z, hw j, hc]
  let β' : I6 → ℝ := fun j => Complex.arg (z j) / (2 * Real.pi)
  have hβ' : ∀ j, -(1 / 2) < β' j ∧ β' j ≤ 1 / 2 := fun j => by
    have h1 := Complex.neg_pi_lt_arg (z j)
    have h2 := Complex.arg_le_pi (z j)
    have hp := Real.pi_pos
    constructor
    · rw [lt_div_iff₀ (by positivity)]; linarith
    · rw [div_le_iff₀ (by positivity)]; linarith
  refine ⟨c, hc, fun j => if β' j < 0 then β' j + 1 else β' j, ?_, ?_, ?_⟩
  · have : z j0 = 1 := by simp only [z]; exact hcc
    simp [β', this]
  · intro j
    obtain ⟨l, r⟩ := hβ' j
    dsimp only
    split_ifs with h <;> constructor <;> linarith
  · intro j
    have hzj : e (β' j) = z j := e_arg (hz j)
    have hw' : w j = c * z j := by
      simp only [z]; rw [mul_comm (w j), ← mul_assoc, hcc, one_mul]
    dsimp only
    split_ifs
    · rw [e_add_one, hzj, hw']
    · rw [hzj, hw']

/-! ### Vector norm triangle inequality -/

lemma vnorm_add_le (h x : I6 → ℝ) : vnorm (h + x) ≤ vnorm h + vnorm x := by
  have cs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ h x
  have hA : 0 ≤ ∑ j, h j ^ 2 := Finset.sum_nonneg fun _ _ => sq_nonneg _
  have hB : 0 ≤ ∑ j, x j ^ 2 := Finset.sum_nonneg fun _ _ => sq_nonneg _
  have hcs : ∑ j, h j * x j ≤ vnorm h * vnorm x := by
    rw [vnorm, vnorm, ← Real.sqrt_mul hA]
    exact (le_abs_self _).trans (Real.abs_le_sqrt cs)
  have hexp : ∑ j, (h + x) j ^ 2 = ∑ j, h j ^ 2 + 2 * ∑ j, h j * x j + ∑ j, x j ^ 2 := by
    simp only [Pi.add_apply, add_sq, Finset.sum_add_distrib, Finset.mul_sum]; ring_nf
  have hh : vnorm h ^ 2 = ∑ j, h j ^ 2 := Real.sq_sqrt hA
  have hx : vnorm x ^ 2 = ∑ j, x j ^ 2 := Real.sq_sqrt hB
  calc vnorm (h + x) ≤ Real.sqrt ((vnorm h + vnorm x) ^ 2) := by
        rw [vnorm]; exact Real.sqrt_le_sqrt (by rw [hexp, add_sq, hh, hx]; linarith)
    _ = vnorm h + vnorm x := Real.sqrt_sq (add_nonneg (vnorm_nonneg h) (vnorm_nonneg x))

/-! ### C3: label covering -/

lemma e_int (k : ℤ) : e k = 1 := by
  rw [e]; convert Complex.exp_int_mul_two_pi_mul_I k using 2; push_cast; ring

lemma e_add_int (t : ℝ) (k : ℤ) : e (t + k) = e t := by rw [e_add, e_int, mul_one]

/-- **C3 (covering).**  If `u − v = h + k + μ` with `k` integral, `Σh = 0` and `‖h‖ + X ≤ s`, then `e(u + x)` lies
in `𝔅(v, s)` for every `x` with `Σx = 0` and `‖x‖ ≤ X`. -/
theorem inLabel_of_wrap {u v h : I6 → ℝ} {k : I6 → ℤ} {μ s X : ℝ}
    (hwrap : ∀ j, u j - v j = h j + k j + μ) (hh : ∑ j, h j = 0) (hs : vnorm h + X ≤ s)
    {x : I6 → ℝ} (hx0 : ∑ j, x j = 0) (hx : vnorm x ≤ X) : InLabel v s (fun j => e (u j + x j)) := by
  refine ⟨e μ, norm_e μ, h + x, ?_, ?_, fun j => ?_⟩
  · simp only [Pi.add_apply, Finset.sum_add_distrib, hh, hx0, add_zero]
  · exact (vnorm_add_le h x).trans (by linarith)
  · have : u j + x j = (v j + (h + x) j + μ) + k j := by simp only [Pi.add_apply]; linarith [hwrap j]
    show e (u j + x j) = _
    rw [this, e_add_int, e_add, mul_comm]

/-! ### Cover from leaf bins -/

/-- **Cover.**  Leaf bins `(u_l, a_l)` cover `[0, 1]⁵`; each leaf is rejected or lies in a label. -/
theorem cover_of_leaves {ι α : Type*} {H : Mat6} {u : ι → I6 → ℝ} {a : ι → ℝ} {v : α → I6 → ℝ}
    {s : α → ℝ} (hu0 : ∀ l, u l j0 = 0)
    (htree : ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → ∃ l, 0 ≤ a l ∧ ∀ j, |β j - u l j| ≤ a l)
    (hleaf : ∀ l, (∀ d : I6 → ℝ, d j0 = 0 → (∀ j, |d j| ≤ a l) →
        ¬ ColUnb H (fun j => e (u l j + centre d j))) ∨
      (∃ b, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * a l ^ 2 →
        InLabel (v b) (s b) (fun j => e (u l j + x j)))) :
    ∀ w, Flat w → ColUnb H w → ∃ b, InLabel (v b) (s b) w := by
  intro w hw hcol
  obtain ⟨c, hc, β, hβ0, hβ, hwβ⟩ := exists_phases hw
  obtain ⟨l, hal, hl⟩ := htree β hβ0 hβ
  set d : I6 → ℝ := fun j => β j - u l j
  have hd0 : d j0 = 0 := by simp only [d, hβ0, hu0, sub_self]
  obtain ⟨h2, -, -⟩ := bin_bounds hal hd0 hl
  set m := (∑ k, d k) / 6
  have hw' : w = fun j => (c * e m) * e (u l j + centre d j) := by
    funext j
    rw [hwβ j, mul_assoc, ← e_add]; congr 2; simp only [centre, d, m]; ring
  have hcm : ‖c * e m‖ = 1 := by rw [norm_mul, hc, norm_e, one_mul]
  rcases hleaf l with hrej | ⟨b, hlab⟩
  · rw [hw', colUnb_smul (w := fun j => e (u l j + centre d j)) hcm] at hcol
    exact absurd hcol (hrej d hd0 hl)
  · exact ⟨b, by rw [hw']; exact inLabel_smul hcm (hlab _ (sum_centre d) h2)⟩

end NoFourMUBs.StageC

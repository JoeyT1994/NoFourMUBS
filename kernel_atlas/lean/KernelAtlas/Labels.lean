import KernelAtlas.Bins

/-!
# Label membership in the kernel (Stage C, C3)

A depth-0 survivor of the bin tree (midpoint `uvec k₁ … k₅`, half-width `a = 1/192`) must lie in a label
`𝔅(v, s)` (`InLabel`) for every perturbation `x` with `Σx = 0` and `Σx² ≤ (29/6) a²`.  A label `L` has centre
`v = uvec w₁ … w₅` and radius `s = sn / 2³⁰`.

The test is `inLabel_of_wrap` in integers.  With `E_m = (k_m + 288 − w_m) mod 192`, the wrapped difference is
`D_m = E_m − 96 ∈ [−96, 96)` and `k_m − w_m ≡ D_m (mod 192)`; `h = D/192 − mean(D)/192` (with `D_{j₀} = 0`).
Since `6ΣD² − (ΣD)²` is invariant under a common shift, it equals `6 S₂ − S₁²` for `Ẽ = (96, E₁, …, E₅)`, all in `ℕ`.
With `X = x̄/192`, `x̄ = 2198484327/10⁹ ≥ √(29/6)`, `A = sn · 192·10⁹`, `B = 2198484327 · 2³⁰` and
`Q = (2³⁰ · 10⁹)²`, the condition `‖h‖ + X ≤ s` follows from

  `B ≤ A`  and  `6 S₂ Q ≤ 6 (A − B)² + S₁² Q`.

`leafL labs` accepts a bin when some label of `labs` passes (`List.any`, first success);
`labsOK` checks once that every centre index is `< 192`.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

/-- A label: centre midpoints `w_m / 192` (`m = 1, …, 5`; coordinate `j₀` is `0`) and radius `sn / 2³⁰`. -/
structure Lab where
  w1 : ℕ
  w2 : ℕ
  w3 : ℕ
  w4 : ℕ
  w5 : ℕ
  sn : ℕ

/-- The wrapped difference `(k + 288 − w) mod 192`. -/
def wrapE (k w : ℕ) : ℕ := (k + 288 - w) % 192

def labA (L : Lab) : ℕ := L.sn * 192000000000
def labB : ℕ := 2198484327 * 2 ^ 30
def labQ : ℕ := (2 ^ 30 * 1000000000) ^ 2

def labS1 (e1 e2 e3 e4 e5 : ℕ) : ℕ := 96 + e1 + e2 + e3 + e4 + e5
def labS2 (e1 e2 e3 e4 e5 : ℕ) : ℕ := 96 * 96 + e1 * e1 + e2 * e2 + e3 * e3 + e4 * e4 + e5 * e5

/-- The integer form of `‖h‖ + X ≤ s`. -/
def labTest (A e1 e2 e3 e4 e5 : ℕ) : Bool :=
  Nat.ble labB A &&
    Nat.ble (6 * labS2 e1 e2 e3 e4 e5 * labQ) (6 * ((A - labB) * (A - labB)) + labS1 e1 e2 e3 e4 e5 ^ 2 * labQ)

/-- Bin `(k₁, …, k₅)` lies in label `L`. -/
def labOK (L : Lab) (k1 k2 k3 k4 k5 : ℕ) : Bool :=
  labTest (labA L) (wrapE k1 L.w1) (wrapE k2 L.w2) (wrapE k3 L.w3) (wrapE k4 L.w4) (wrapE k5 L.w5)

/-- The leaf function: some label of `labs` contains the bin. -/
noncomputable def leafL (labs : List Lab) : LeafFn := fun _ t1 t2 t3 t4 t5 => labs.any fun L => labOK L t1.k t2.k t3.k t4.k t5.k

/-- Every centre index is `< 192` (checked once per Record). -/
def labsOK (labs : List Lab) : Bool :=
  labs.all fun L => Nat.blt L.w1 192 && Nat.blt L.w2 192 && Nat.blt L.w3 192 && Nat.blt L.w4 192 && Nat.blt L.w5 192

/-- Every radius is `< 1/10` (checked once per Record). -/
def labsSmall (labs : List Lab) : Bool := labs.all fun L => Nat.blt (10 * L.sn) (2 ^ 30)

noncomputable def Lab.v (L : Lab) : I6 → ℝ := uvec L.w1 L.w2 L.w3 L.w4 L.w5
noncomputable def Lab.s (L : Lab) : ℝ := L.sn / 2 ^ 30

/-- The perturbation radius `X = x̄ / 192`. -/
noncomputable def labX : ℝ := 2198484327 / 192000000000

/-! ### Soundness -/

lemma wrap_int {k w : ℕ} (hw : w < 192) :
    ∃ q : ℤ, ((k : ℝ) - w) / 192 = ((wrapE k w : ℝ) - 96) / 192 + q := by
  obtain ⟨Q, hQ⟩ : ∃ Q : ℕ, Q = (k + 288 - w) / 192 := ⟨_, rfl⟩
  obtain ⟨M, hM⟩ : ∃ M : ℕ, M = (k + 288 - w) % 192 := ⟨_, rfl⟩
  refine ⟨(Q : ℤ) - 1, ?_⟩
  have hdm := Nat.div_add_mod (k + 288 - w) 192
  rw [← hQ, ← hM] at hdm
  have hle : w ≤ k + 288 := by omega
  have h2 : ((192 * Q + M : ℕ) : ℝ) = k + 288 - w := by rw [hdm, Nat.cast_sub hle]; push_cast; ring
  have hE : wrapE k w = M := by rw [wrapE, hM]
  rw [hE]
  push_cast at h2 ⊢
  linarith

lemma sum_I6R (f : I6 → ℝ) : ∑ j, f j =
    f (Sum.inl 0) + f (Sum.inl 1) + f (Sum.inl 2) + (f (Sum.inr 0) + f (Sum.inr 1) + f (Sum.inr 2)) := by
  rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]

lemma vnorm_le_labX {x : I6 → ℝ} (hx : ∑ j, x j ^ 2 ≤ 29 / 6 * (1 / 192) ^ 2) : vnorm x ≤ labX := by
  unfold vnorm labX
  exact Real.sqrt_le_iff.mpr ⟨by norm_num, hx.trans (by norm_num)⟩

/-- **Label soundness.** -/
theorem labOK_sound {L : Lab} (hw1 : L.w1 < 192) (hw2 : L.w2 < 192) (hw3 : L.w3 < 192) (hw4 : L.w4 < 192)
    (hw5 : L.w5 < 192) {k1 k2 k3 k4 k5 : ℕ} (h : labOK L k1 k2 k3 k4 k5 = true) {x : I6 → ℝ}
    (hx0 : ∑ j, x j = 0) (hx : ∑ j, x j ^ 2 ≤ 29 / 6 * (1 / 192) ^ 2) :
    InLabel L.v L.s (fun j => e (uvec k1 k2 k3 k4 k5 j + x j)) := by
  obtain ⟨q1, hq1⟩ := wrap_int (k := k1) hw1
  obtain ⟨q2, hq2⟩ := wrap_int (k := k2) hw2
  obtain ⟨q3, hq3⟩ := wrap_int (k := k3) hw3
  obtain ⟨q4, hq4⟩ := wrap_int (k := k4) hw4
  obtain ⟨q5, hq5⟩ := wrap_int (k := k5) hw5
  set E1 := wrapE k1 L.w1 with hE1
  set E2 := wrapE k2 L.w2 with hE2
  set E3 := wrapE k3 L.w3 with hE3
  set E4 := wrapE k4 L.w4 with hE4
  set E5 := wrapE k5 L.w5 with hE5
  set μ : ℝ := ((E1 : ℝ) + E2 + E3 + E4 + E5 - 480) / (6 * 192) with hμ
  let D : I6 → ℝ
    | .inl 0 => 0 | .inl 1 => (E1 : ℝ) - 96 | .inl 2 => (E2 : ℝ) - 96 | .inr 0 => (E3 : ℝ) - 96
    | .inr 1 => (E4 : ℝ) - 96 | .inr 2 => (E5 : ℝ) - 96
  let kk : I6 → ℤ
    | .inl 0 => 0 | .inl 1 => q1 | .inl 2 => q2 | .inr 0 => q3 | .inr 1 => q4 | .inr 2 => q5
  let hv : I6 → ℝ := fun j => D j / 192 - μ
  simp only [labOK, labTest, Bool.and_eq_true, Nat.ble_eq] at h
  obtain ⟨hBA, hC⟩ := h
  refine inLabel_of_wrap (k := kk) (μ := μ) (X := labX) (h := hv) ?_ ?_ ?_ hx0 (vnorm_le_labX hx)
  · intro j
    rcases j with j | j <;> fin_cases j <;>
      simp only [uvec, Lab.v, hv, D, kk, Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk] <;> push_cast <;> linarith
  · rw [sum_I6R]; simp only [hv, D, hμ]; ring
  · -- ‖h‖ ≤ s − X from the integer inequality
    have hA : ((labA L : ℕ) : ℝ) = L.sn * 192000000000 := by simp [labA]
    have hB : ((labB : ℕ) : ℝ) = 2198484327 * 2 ^ 30 := by norm_num [labB]
    have hQ : ((labQ : ℕ) : ℝ) = (2 ^ 30 * 1000000000) ^ 2 := by norm_num [labQ]
    have hCr : (6 * labS2 E1 E2 E3 E4 E5 * labQ : ℕ) ≤ (6 * ((labA L - labB) * (labA L - labB)) +
        labS1 E1 E2 E3 E4 E5 ^ 2 * labQ : ℕ) := hC
    have hCr' := (Nat.cast_le (α := ℝ)).mpr hCr
    simp only [labS1, labS2] at hCr'
    push_cast [Nat.cast_sub hBA] at hCr'
    rw [hA, hB, hQ] at hCr'
    set g : ℝ := L.s - labX with hg
    have hgdef : g = ((L.sn : ℝ) * 192000000000 - 2198484327 * 2 ^ 30) / (2 ^ 30 * 192000000000) := by
      rw [hg, Lab.s, labX]; field_simp
    have hBA' : (2198484327 * 2 ^ 30 : ℝ) ≤ L.sn * 192000000000 := by
      have := (Nat.cast_le (α := ℝ)).mpr hBA; rw [hA, hB] at this; exact this
    have hg0 : 0 ≤ g := by rw [hgdef]; apply div_nonneg <;> [linarith; positivity]
    have key : ∑ j, hv j ^ 2 = (6 * (96 * 96 + (E1 : ℝ) * E1 + E2 * E2 + E3 * E3 + E4 * E4 + E5 * E5) -
        (96 + (E1 : ℝ) + E2 + E3 + E4 + E5) ^ 2) / (6 * 192 ^ 2) := by
      rw [sum_I6R]; simp only [hv, D, hμ]; ring
    have hsum : ∑ j, hv j ^ 2 ≤ g ^ 2 := by
      rw [key, hgdef, div_pow, div_le_div_iff₀ (by positivity) (by positivity)]
      have h192 := mul_le_mul_of_nonneg_left hCr' (sq_nonneg (192 : ℝ))
      linarith
    have : vnorm hv ≤ g := Real.sqrt_le_iff.mpr ⟨hg0, hsum⟩
    linarith

/-- **Leaf soundness**: a bin accepted by `leafL labs` lies in some label of `labs`. -/
theorem leafL_sound {labs : List Lab} (hok : labsOK labs = true) {acc : V12} {t1 t2 t3 t4 t5 : CT}
    (h : leafL labs acc t1 t2 t3 t4 t5 = true) :
    ∃ L ∈ labs, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * (1 / 192) ^ 2 →
      InLabel L.v L.s (fun j => e (uvec t1.k t2.k t3.k t4.k t5.k j + x j)) := by
  simp only [leafL, List.any_eq_true] at h
  obtain ⟨L, hL, hok1⟩ := h
  simp only [labsOK, List.all_eq_true, Bool.and_eq_true, Nat.blt_eq] at hok
  obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := hok L hL
  exact ⟨L, hL, fun x hx0 hx => labOK_sound h1 h2 h3 h4 h5 hok1 hx0 hx⟩

lemma labsSmall_spec {labs : List Lab} (h : labsSmall labs = true) {L : Lab} (hL : L ∈ labs) : L.s < 1 / 10 := by
  simp only [labsSmall, List.all_eq_true, Nat.blt_eq] at h
  have h1 : ((10 * L.sn : ℕ) : ℝ) < ((2 ^ 30 : ℕ) : ℝ) := by exact_mod_cast h L hL
  push_cast at h1
  rw [Lab.s, div_lt_iff₀ (by positivity)]; linarith

lemma labsOK_spec {labs : List Lab} (h : labsOK labs = true) {L : Lab} (hL : L ∈ labs) :
    L.w1 < 192 ∧ L.w2 < 192 ∧ L.w3 < 192 ∧ L.w4 < 192 ∧ L.w5 < 192 := by
  simp only [labsOK, List.all_eq_true, Bool.and_eq_true, Nat.blt_eq] at h
  obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h L hL
  exact ⟨h1, h2, h3, h4, h5⟩

end NoFourMUBs.KernelAtlas

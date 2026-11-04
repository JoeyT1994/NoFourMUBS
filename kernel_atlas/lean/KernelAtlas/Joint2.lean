import KernelAtlas.Tangent2S

/-!
# The joint edge test (6.23) in the kernel: real-number core

`StageC.edgeOExcl_of_joint` / `edgeUExcl_of_joint` exclude a quartet edge between two labels from two multipliers
`y₀, y₁ ∈ ℝ⁶` (one per label centre) and an edge multiplier `y_e`.  As for the v2 tangent test, the kernel reads the
multipliers from a hint and checks the inequality from integer data; the per-label data are the integer node values
of the label centre (`labBnd`), and the pair data are the table values of `e(v_a − v_b)` (`joint_core`).
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

noncomputable section

/-! ### One label: the real bounds from integer data -/

/-- The real bounds of one label centre `u` and one multiplier `y`, from the integer bounds of the v2 test. -/
structure LabBounds (P : RMat6) (u y : I6 → ℝ) (T : Fin 4 → RMat6) (Z eW eN : ℝ)
    (GJ : I6 → ℝ) (Bt : Fin 4 → ℝ) (Cl : ℝ) (Gb Y1 Yinf SY2 SY1 SYinf NJ : ℝ) : Prop where
  jty : ∀ j, |Jty ((1 / (2 * Real.pi)) • P) u y j + GJ j / (6 * Z ^ 2)| ≤ Y1 * eW / 6
  g : ∀ j, ‖∑ i, (y i : ℂ) * star (S ((1 / (2 * Real.pi)) • P) u i) * q ((1 / (2 * Real.pi)) • P) u j i‖ ≤
    Gb / (6 * Z ^ 2) + Y1 * eW / 6
  yinf : ∀ i, |y i| ≤ Yinf
  y1 : ∑ i, |y i| ≤ Y1
  sy2 : vnorm (fun i => |y i| * ‖S ((1 / (2 * Real.pi)) • P) u i‖) ≤ SY2 / (Real.sqrt 6 * Z)
  sy1 : ∑ i, |y i| * ‖S ((1 / (2 * Real.pi)) • P) u i‖ ≤ SY1 / (Real.sqrt 6 * Z)
  syinf : ∀ i, |y i| * ‖S ((1 / (2 * Real.pi)) • P) u i‖ ≤ SYinf / (Real.sqrt 6 * Z)
  nn : Real.sqrt (∑ i, ∑ j, (y i * Jm ((1 / (2 * Real.pi)) • P) u i j) ^ 2) ≤ NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1
  cc : |∑ i, y i * cc ((1 / (2 * Real.pi)) • P) u i - Cl / (24 * Real.pi * Z ^ 2)| ≤ Y1 * eN / (24 * Real.pi)

set_option maxHeartbeats 4000000 in
/-- **The bounds of one label centre**, from integer node values (as in `lin2_real`). -/
theorem labBnd {P : RMat6} {u : I6 → ℝ} {Z ε1 E : ℝ} (hZ : 0 < Z) (hε : 0 ≤ ε1)
    {wt : I6 → I6 → ℂ} {s : I6 → ℂ}
    (hw : ∀ j i, ‖wt j i / (Z : ℂ) - wexp P u j i‖ ≤ ε1) (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E)
    (y : I6 → ℝ) {T : Fin 4 → RMat6} {Th : Fin 4 → I6 → I6 → ℝ} {DT tcol : ℝ} (hDT : 0 < DT)
    (hT : ∀ k j i, T k j i = Th k j i / DT) (htcol : ∀ k i, ∑ j, |Th k j i| ≤ tcol * DT)
    {Gb NJ SY2 SY1 SYinf Yinf Y1 : ℝ} {Sp : I6 → ℝ}
    (hNJ0 : 0 ≤ NJ) (hNJ : ∑ i, y i ^ 2 * ∑ j, (star (s i) * wt j i).im ^ 2 ≤ NJ ^ 2)
    (hGb : ∀ j, ‖∑ i, (y i : ℂ) * (star (s i) * wt j i)‖ ≤ Gb)
    (hSp : ∀ i, ‖s i‖ + E * Z ≤ Sp i)
    (hSY2 : ∑ i, y i ^ 2 * Sp i ^ 2 ≤ SY2 ^ 2) (hSY20 : 0 ≤ SY2)
    (hSY1 : SY1 = ∑ i, |y i| * Sp i) (hSYinf : ∀ i, |y i| * Sp i ≤ SYinf)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : Y1 = ∑ i, |y i|)
    {GJ : I6 → ℝ} (hGJ : ∀ j, GJ j = ∑ i, y i * (star (s i) * wt j i).im)
    {Bt : Fin 4 → ℝ} (hBt : ∀ k, Bt k = ∑ i, y i * ∑ j, Th k j i * (star (s i) * wt j i).im)
    {Cl : ℝ} (hCl : Cl = ∑ i, y i * (‖s i‖ ^ 2 - 6 * Z ^ 2)) :
    LabBounds P u y T Z ((6 + E) * ε1 + E) (E * (12 + E)) GJ Bt Cl Gb Y1 Yinf SY2 SY1 SYinf NJ ∧
    ∀ k, |Bty ((1 / (2 * Real.pi)) • P) u y T k + Bt k / (6 * DT * Z ^ 2)| ≤ Y1 * ((6 + E) * ε1 + E) * tcol / 6 := by
  obtain rfl : GJ = fun j => ∑ i, y i * (star (s i) * wt j i).im := funext hGJ
  obtain rfl : Bt = fun k => ∑ i, y i * ∑ j, Th k j i * (star (s i) * wt j i).im := funext hBt
  subst hCl
  set P' := (1 / (2 * Real.pi)) • P with hP'
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hE : 0 ≤ E := (norm_nonneg _).trans (hs j0)
  set eW := (6 + E) * ε1 + E with heW
  set eN := E * (12 + E) with heN
  have heW0 : 0 ≤ eW := by positivity
  have hZ2 : 0 < Z ^ 2 := by positivity
  set Jt : I6 → I6 → ℝ := fun i j => (star (s i) * wt j i).im with hJt
  have hJ : ∀ i j, |6 * Jm P' u i j + Jt i j / Z ^ 2| ≤ eW := fun i j => J_err hZ hw hs hε i j
  have hSp0 : ∀ i, 0 ≤ Sp i := fun i => (by positivity : (0:ℝ) ≤ ‖s i‖ + E * Z).trans (hSp i)
  refine ⟨⟨?_, ?_, hYinf, le_of_eq hY1.symm, ?_, ?_, ?_, ?_, ?_⟩, ?_⟩
  · -- Jty
    intro j
    have e : 6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2 = ∑ i, y i * (6 * Jm P' u i j + Jt i j / Z ^ 2) := by
      simp only [Jty, Finset.mul_sum, Finset.sum_div, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    have hb : |6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2| ≤ Y1 * eW := by
      rw [e, hY1, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hJ i j) (abs_nonneg _)
    have e2 : Jty P' u y j + (∑ i, y i * Jt i j) / (6 * Z ^ 2) =
        (6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2) / 6 := by field_simp
    rw [e2, abs_div, abs_of_pos (by norm_num : (0:ℝ) < 6)]
    exact div_le_div_of_nonneg_right hb (by norm_num)
  · -- G
    intro j
    have hZc : ((Z : ℂ) ^ 2) ≠ 0 := by exact_mod_cast hZ2.ne'
    have e : ∑ i, (y i : ℂ) * star (S P' u i) * q P' u j i =
        (∑ i, (y i : ℂ) * (star (s i) * wt j i)) / (6 * (Z : ℂ) ^ 2) +
        ∑ i, (y i : ℂ) * ((6 * (star (S P' u i) * q P' u j i) - star (s i) * wt j i / ((Z : ℂ) ^ 2)) / 6) := by
      rw [Finset.sum_div, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      field_simp; ring
    rw [e]
    refine (norm_add_le _ _).trans (add_le_add ?_ ?_)
    · rw [norm_div]
      have : ‖6 * (Z : ℂ) ^ 2‖ = 6 * Z ^ 2 := by
        rw [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZ]; norm_num
      rw [this]; exact div_le_div_of_nonneg_right (hGb j) (by positivity)
    · refine (norm_sum_le _ _).trans ?_
      rw [hY1, Finset.sum_mul, Finset.sum_div]
      refine Finset.sum_le_sum fun i _ => ?_
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, norm_div]
      have h6n : ‖(6 : ℂ)‖ = 6 := by norm_num
      rw [h6n]
      have h := mul_le_mul_of_nonneg_left
        (div_le_div_of_nonneg_right (C_err hZ hw hs hε i j) (by norm_num : (0:ℝ) ≤ 6)) (abs_nonneg (y i))
      calc _ ≤ _ := h
        _ = |y i| * eW / 6 := by ring
  · -- SY2
    have hSi : ∀ i, |y i| * ‖S P' u i‖ ≤ |y i| * Sp i / (Real.sqrt 6 * Z) := by
      intro i
      have h1 : ‖S P' u i‖ ≤ Sp i / (Real.sqrt 6 * Z) :=
        (S_le hZ hs i).trans (div_le_div_of_nonneg_right (hSp i) (by positivity))
      rw [mul_div_assoc]; exact mul_le_mul_of_nonneg_left h1 (abs_nonneg _)
    unfold vnorm
    have hsq : ∑ i, (|y i| * ‖S P' u i‖) ^ 2 ≤ (SY2 / (Real.sqrt 6 * Z)) ^ 2 := by
      calc ∑ i, (|y i| * ‖S P' u i‖) ^ 2 ≤ ∑ i, (|y i| * Sp i / (Real.sqrt 6 * Z)) ^ 2 :=
            Finset.sum_le_sum fun i _ => pow_le_pow_left₀ (by positivity) (hSi i) 2
        _ = (∑ i, y i ^ 2 * Sp i ^ 2) / (Real.sqrt 6 * Z) ^ 2 := by
            rw [Finset.sum_div]; exact Finset.sum_congr rfl fun i _ => by rw [div_pow, mul_pow, sq_abs]
        _ ≤ SY2 ^ 2 / (Real.sqrt 6 * Z) ^ 2 := div_le_div_of_nonneg_right hSY2 (by positivity)
        _ = (SY2 / (Real.sqrt 6 * Z)) ^ 2 := by rw [div_pow]
    calc Real.sqrt _ ≤ Real.sqrt ((SY2 / (Real.sqrt 6 * Z)) ^ 2) := Real.sqrt_le_sqrt hsq
      _ = _ := Real.sqrt_sq (by positivity)
  · -- SY1
    rw [hSY1, Finset.sum_div]
    refine Finset.sum_le_sum fun i _ => ?_
    have h1 : ‖S P' u i‖ ≤ Sp i / (Real.sqrt 6 * Z) :=
      (S_le hZ hs i).trans (div_le_div_of_nonneg_right (hSp i) (by positivity))
    rw [mul_div_assoc]; exact mul_le_mul_of_nonneg_left h1 (abs_nonneg _)
  · -- SYinf
    intro i
    have h1 : ‖S P' u i‖ ≤ Sp i / (Real.sqrt 6 * Z) :=
      (S_le hZ hs i).trans (div_le_div_of_nonneg_right (hSp i) (by positivity))
    have h2 : |y i| * ‖S P' u i‖ ≤ |y i| * Sp i / (Real.sqrt 6 * Z) := by
      rw [mul_div_assoc]; exact mul_le_mul_of_nonneg_left h1 (abs_nonneg _)
    exact h2.trans (div_le_div_of_nonneg_right (hSYinf i) (by positivity))
  · -- N
    rw [hY1]; exact N_bound hZ hNJ0 hJ hNJ
  · -- cc
    have e : ∑ i, y i * cc P' u i - (∑ i, y i * (‖s i‖ ^ 2 - 6 * Z ^ 2)) / (24 * Real.pi * Z ^ 2) =
        (∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2)) / (24 * Real.pi) := by
      rw [Finset.sum_div, Finset.sum_div, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [cc_cyc]; field_simp; ring
    rw [e, abs_div, abs_of_pos (by positivity : (0:ℝ) < 24 * Real.pi)]
    apply div_le_div_of_nonneg_right _ (by positivity)
    rw [hY1, Finset.sum_mul]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
    rw [abs_mul]; exact mul_le_mul_of_nonneg_left (N_err hZ hs i) (abs_nonneg _)
  · -- Bty
    intro k
    have e1 : 6 * DT * Bty P' u y T k = ∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j) := by
      simp only [Bty, hT, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      field_simp
    have e2 : 6 * DT * ((∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)) =
        ∑ i, y i * ∑ j, Th k j i * (Jt i j / Z ^ 2) := by
      rw [mul_div_assoc', mul_comm (6 * DT), ← div_div, mul_div_cancel_right₀ _ (by positivity), Finset.sum_div]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [mul_div_assoc, Finset.sum_div]
      exact congrArg _ (Finset.sum_congr rfl fun j _ => by ring)
    have e : 6 * DT * (Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)) =
        ∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2) := by
      rw [mul_add, e1, e2, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← mul_add, ← Finset.sum_add_distrib]
      exact congrArg _ (Finset.sum_congr rfl fun j _ => by ring)
    have hb : |∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2)| ≤ Y1 * (tcol * DT) * eW := by
      rw [hY1, Finset.sum_mul, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul, mul_assoc]
      refine mul_le_mul_of_nonneg_left ?_ (abs_nonneg _)
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      calc ∑ j, |Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2)| ≤ ∑ j, |Th k j i| * eW :=
            Finset.sum_le_sum fun j _ => by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hJ i j) (abs_nonneg _)
        _ = (∑ j, |Th k j i|) * eW := by rw [Finset.sum_mul]
        _ ≤ tcol * DT * eW := mul_le_mul_of_nonneg_right (htcol k i) heW0
    rw [← e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 6 * DT)] at hb
    rw [le_div_iff₀ (by norm_num : (0:ℝ) < 6)]
    nlinarith

/-! ### Two labels and the pair: the joint inequality -/

lemma vnorm_add_err {f g : I6 → ℝ} {c : ℝ} (h : ∀ j, |g j| ≤ c) : vnorm (fun j => f j + g j) ≤ vnorm f + Real.sqrt 6 * c := by
  have hc : 0 ≤ c := (abs_nonneg _).trans (h j0)
  refine (sqrt_sum_add_le f g).trans (add_le_add le_rfl ?_)
  have : ∑ j, g j ^ 2 ≤ 6 * c ^ 2 := by
    calc ∑ j, g j ^ 2 ≤ ∑ _j : I6, c ^ 2 := Finset.sum_le_sum fun j _ => by
          rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (h j) 2
      _ = 6 * c ^ 2 := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp
  calc Real.sqrt (∑ j, g j ^ 2) ≤ Real.sqrt (6 * c ^ 2) := Real.sqrt_le_sqrt this
    _ = Real.sqrt 6 * c := by rw [Real.sqrt_mul (by norm_num), Real.sqrt_sq hc]

lemma vnorm_scale (f : I6 → ℝ) {a : ℝ} (ha : 0 < a) {V : ℝ} (hV0 : 0 ≤ V) (hV : ∑ j, f j ^ 2 ≤ V ^ 2) :
    vnorm (fun j => f j / a) ≤ V / a := by
  unfold vnorm
  have : ∑ j, (f j / a) ^ 2 = (∑ j, f j ^ 2) / a ^ 2 := by rw [Finset.sum_div]; exact Finset.sum_congr rfl fun j _ => by rw [div_pow]
  rw [this, Real.sqrt_div' _ (by positivity), Real.sqrt_sq ha.le]
  apply div_le_div_of_nonneg_right _ ha.le
  calc Real.sqrt _ ≤ Real.sqrt (V ^ 2) := Real.sqrt_le_sqrt hV
    _ = V := Real.sqrt_sq hV0

/-- The integer form of `24 π Z² · 𝓔^{ball}`, with rational upper bounds for the constants. -/
def EBq (pihi s6hi Kbar rbar rFbar nbar Z eW s NJ Gb Y1 Yinf SY2 SY1 SYinf : ℝ) : ℝ :=
  4 * pihi * nbar * NJ + 4 * s6hi * pihi * nbar * eW * Z ^ 2 * Y1 +
    24 * pihi ^ 2 * Z ^ 2 * min (Yinf * (Kbar * s + rFbar) ^ 2) (Y1 * (Kbar * s + rbar) ^ 2) +
    4 * pihi ^ 2 * s ^ 2 * Gb + 4 * pihi ^ 2 * s ^ 2 * Z ^ 2 * eW * Y1 +
    8 * pihi ^ 2 * Z * s * min (SY2 * rFbar) (SY1 * rbar) + 4 * pihi ^ 2 * Z * min (SYinf * rFbar ^ 2) (SY1 * rbar ^ 2)

set_option maxHeartbeats 4000000 in
lemma eball_le {pihi s6hi Kbar rbar rFbar nbar Z eW s NJ Gb Y1 Yinf SY2 SY1 SYinf K r rF n : ℝ}
    (hZ : 0 < Z) (hs : 0 ≤ s) (heW : 0 ≤ eW) (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi)
    (hK0 : 0 ≤ K) (hKb : K ≤ Kbar) (hr0 : 0 ≤ r) (hr : r ≤ rbar) (hrF0 : 0 ≤ rF) (hrF : rF ≤ rFbar)
    (hn0 : 0 ≤ n) (hn : n ≤ nbar) (hNJ0 : 0 ≤ NJ) (hGb0 : 0 ≤ Gb) (hY10 : 0 ≤ Y1) (hYinf0 : 0 ≤ Yinf)
    (hSY20 : 0 ≤ SY2) (hSY10 : 0 ≤ SY1) (hSYinf0 : 0 ≤ SYinf) :
    24 * Real.pi * Z ^ 2 * Eball n (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) K s r rF Yinf Y1
      (Gb / (6 * Z ^ 2) + Y1 * eW / 6) (SY2 / (Real.sqrt 6 * Z)) (SY1 / (Real.sqrt 6 * Z)) (SYinf / (Real.sqrt 6 * Z)) ≤
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW s NJ Gb Y1 Yinf SY2 SY1 SYinf := by
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hpihi0 : 0 ≤ pihi := by linarith
  have hZ2 : 0 < Z ^ 2 := by positivity
  have h66 : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
  have hKb0 : 0 ≤ Kbar := hK0.trans hKb
  set M := 24 * Real.pi * Z ^ 2 with hM
  have hM0 : 0 ≤ M := by positivity
  have hMp : M * Real.pi ≤ 24 * pihi ^ 2 * Z ^ 2 := by
    rw [hM]
    have := mul_le_mul hpi hpi hpi0.le hpihi0
    nlinarith
  have hnb0 : 0 ≤ nbar := hn0.trans hn
  have hs60 : 0 ≤ s6hi := h6.le.trans hs6
  unfold Eball EBq
  -- the ν-term
  have t1 : M * (n * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1)) ≤
      4 * pihi * nbar * NJ + 4 * s6hi * pihi * nbar * eW * Z ^ 2 * Y1 := by
    have h1 : n * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) ≤ nbar * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) :=
      mul_le_mul_of_nonneg_right hn (by positivity)
    have e : M * (nbar * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1)) =
        4 * Real.pi * nbar * NJ + 24 / Real.sqrt 6 * (Real.pi * nbar * eW * Z ^ 2 * Y1) := by rw [hM]; field_simp; ring
    have h24 : 24 / Real.sqrt 6 ≤ 4 * s6hi := by
      rw [div_le_iff₀ h6]; have := mul_le_mul_of_nonneg_right hs6 h6.le; linarith
    have c1 := mul_le_mul_of_nonneg_left h1 hM0
    have c2 := mul_le_mul h24 (mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ nbar * eW * Z ^ 2 * Y1))
      (by positivity) (by positivity)
    have c3 := mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ 4 * nbar * NJ)
    nlinarith
  -- the bracket
  set m1 := min (Yinf * (K * s + rF) ^ 2) (Y1 * (K * s + r) ^ 2)
  set m2 := min (SY2 / (Real.sqrt 6 * Z) * rF) (SY1 / (Real.sqrt 6 * Z) * r)
  set m3 := min (SYinf / (Real.sqrt 6 * Z) * rF ^ 2) (SY1 / (Real.sqrt 6 * Z) * r ^ 2)
  have hm1 : m1 ≤ min (Yinf * (Kbar * s + rFbar) ^ 2) (Y1 * (Kbar * s + rbar) ^ 2) := by
    have hKs : K * s ≤ Kbar * s := mul_le_mul_of_nonneg_right hKb hs
    exact min_le_min (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (add_le_add hKs hrF) 2) hYinf0)
      (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (add_le_add hKs hr) 2) hY10)
  have hm2 : m2 ≤ min (SY2 * rFbar) (SY1 * rbar) / (Real.sqrt 6 * Z) := by
    rw [← min_div_div_right (by positivity : (0:ℝ) ≤ Real.sqrt 6 * Z)]
    exact min_le_min (by rw [div_mul_eq_mul_div]; exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hrF hSY20) (by positivity))
      (by rw [div_mul_eq_mul_div]; exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hr hSY10) (by positivity))
  have hm3 : m3 ≤ min (SYinf * rFbar ^ 2) (SY1 * rbar ^ 2) / (Real.sqrt 6 * Z) := by
    rw [← min_div_div_right (by positivity : (0:ℝ) ≤ Real.sqrt 6 * Z)]
    exact min_le_min (by rw [div_mul_eq_mul_div]; exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hrF0 hrF 2) hSYinf0) (by positivity))
      (by rw [div_mul_eq_mul_div]; exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hr0 hr 2) hSY10) (by positivity))
  have hm10 : 0 ≤ m1 := le_min (by positivity) (by positivity)
  have hm20 : 0 ≤ m2 := le_min (by positivity) (by positivity)
  have hm30 : 0 ≤ m3 := le_min (by positivity) (by positivity)
  set br := m1 + (Gb / (6 * Z ^ 2) + Y1 * eW / 6) * s ^ 2 + 2 / Real.sqrt 6 * s * m2 + 1 / Real.sqrt 6 * m3 with hbr
  have hbr0 : 0 ≤ br := by positivity
  have hb2 : 24 * pihi ^ 2 * Z ^ 2 * br ≤
      24 * pihi ^ 2 * Z ^ 2 * min (Yinf * (Kbar * s + rFbar) ^ 2) (Y1 * (Kbar * s + rbar) ^ 2) +
      4 * pihi ^ 2 * s ^ 2 * Gb + 4 * pihi ^ 2 * s ^ 2 * Z ^ 2 * eW * Y1 +
      8 * pihi ^ 2 * Z * s * min (SY2 * rFbar) (SY1 * rbar) + 4 * pihi ^ 2 * Z * min (SYinf * rFbar ^ 2) (SY1 * rbar ^ 2) := by
    have hc : 0 ≤ 24 * pihi ^ 2 * Z ^ 2 := by positivity
    have a1 := mul_le_mul_of_nonneg_left hm1 hc
    have a2 : 24 * pihi ^ 2 * Z ^ 2 * ((Gb / (6 * Z ^ 2) + Y1 * eW / 6) * s ^ 2) =
        4 * pihi ^ 2 * s ^ 2 * Gb + 4 * pihi ^ 2 * s ^ 2 * Z ^ 2 * eW * Y1 := by field_simp; ring
    have a3 : 24 * pihi ^ 2 * Z ^ 2 * (2 / Real.sqrt 6 * s * m2) ≤ 8 * pihi ^ 2 * Z * s * min (SY2 * rFbar) (SY1 * rbar) := by
      have := mul_le_mul_of_nonneg_left hm2 (by positivity : (0:ℝ) ≤ 24 * pihi ^ 2 * Z ^ 2 * (2 / Real.sqrt 6 * s))
      calc _ = 24 * pihi ^ 2 * Z ^ 2 * (2 / Real.sqrt 6 * s) * m2 := by ring
        _ ≤ _ := this
        _ = _ := by field_simp; rw [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
    have a4 : 24 * pihi ^ 2 * Z ^ 2 * (1 / Real.sqrt 6 * m3) ≤ 4 * pihi ^ 2 * Z * min (SYinf * rFbar ^ 2) (SY1 * rbar ^ 2) := by
      have := mul_le_mul_of_nonneg_left hm3 (by positivity : (0:ℝ) ≤ 24 * pihi ^ 2 * Z ^ 2 * (1 / Real.sqrt 6))
      calc _ = 24 * pihi ^ 2 * Z ^ 2 * (1 / Real.sqrt 6) * m3 := by ring
        _ ≤ _ := this
        _ = _ := by field_simp; rw [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
    have e : 24 * pihi ^ 2 * Z ^ 2 * br = 24 * pihi ^ 2 * Z ^ 2 * m1 +
        24 * pihi ^ 2 * Z ^ 2 * ((Gb / (6 * Z ^ 2) + Y1 * eW / 6) * s ^ 2) +
        24 * pihi ^ 2 * Z ^ 2 * (2 / Real.sqrt 6 * s * m2) + 24 * pihi ^ 2 * Z ^ 2 * (1 / Real.sqrt 6 * m3) := by
      rw [hbr]; ring
    rw [e, a2]; linarith only [a1, a3, a4]
  have hb1 : M * (Real.pi * br) ≤ 24 * pihi ^ 2 * Z ^ 2 * br := by
    calc M * (Real.pi * br) = (M * Real.pi) * br := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_right hMp hbr0
  have e : M * (n * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) + Real.pi * br) =
      M * (n * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1)) + M * (Real.pi * br) := by ring
  rw [show M * (n * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) +
      Real.pi * (m1 + (Gb / (6 * Z ^ 2) + Y1 * eW / 6) * s ^ 2 + 2 / Real.sqrt 6 * s * m2 + 1 / Real.sqrt 6 * m3)) =
      M * (n * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) + Real.pi * br) by rw [hbr], e]
  linarith only [t1, hb1, hb2]

set_option maxHeartbeats 8000000 in
/-- **The joint inequality** from the bounds of two labels, an approximated pair vector `D`, pair scalar `q_y` and
edge term `E_E`, and one comparison of integer (or rational) quantities. -/
theorem joint_core {P : RMat6} {va vb y0 y1 : I6 → ℝ} {T : Fin 4 → RMat6} {Z eW eN DT tcol : ℝ}
    {GJa GJb : I6 → ℝ} {Bta Btb : Fin 4 → ℝ}
    {Ca Cb Gba Y1a Yinfa SY2a SY1a SYinfa NJa Gbb Y1b Yinfb SY2b SY1b SYinfb NJb : ℝ}
    (hZ : 0 < Z) (hDT : 0 < DT) (heW : 0 ≤ eW) (heN : 0 ≤ eN) (htcol : 0 ≤ tcol)
    (LA : LabBounds P va y0 T Z eW eN GJa Bta Ca Gba Y1a Yinfa SY2a SY1a SYinfa NJa)
    (LB : LabBounds P vb y1 T Z eW eN GJb Btb Cb Gbb Y1b Yinfb SY2b SY1b SYinfb NJb)
    (hBa : ∀ k, |Bty ((1 / (2 * Real.pi)) • P) va y0 T k + Bta k / (6 * DT * Z ^ 2)| ≤ Y1a * eW * tcol / 6)
    (hBb : ∀ k, |Bty ((1 / (2 * Real.pi)) • P) vb y1 T k + Btb k / (6 * DT * Z ^ 2)| ≤ Y1b * eW * tcol / 6)
    {D Dz : I6 → ℝ} {dE : ℝ} (hD : ∀ j, |D j - Dz j / (6 * Z ^ 2)| ≤ dE)
    {qy qz qerr : ℝ} (hq : |qy - qz / (24 * Real.pi * Z ^ 2)| ≤ qerr / (24 * Real.pi * Z ^ 2))
    {EEr EEb : ℝ} (hEE : 24 * Real.pi * Z ^ 2 * EEr ≤ EEb)
    {VNa VNb UB : ℝ} (hVNa0 : 0 ≤ VNa) (hVNa : ∑ j, (-GJa j + Dz j) ^ 2 ≤ VNa ^ 2)
    (hVNb0 : 0 ≤ VNb) (hVNb : ∑ j, (-GJb j - Dz j) ^ 2 ≤ VNb ^ 2)
    (hUB0 : 0 ≤ UB) (hUB : ∑ k, (Bta k + Btb k) ^ 2 ≤ UB ^ 2)
    {sa sb : ℝ} (hsa : 0 ≤ sa) (hsb : 0 ≤ sb)
    {pihi s6hi Kbar rbar rFbar rHbar nbar : ℝ} (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi)
    {K r rF rH n : ℝ} (hK0 : 0 ≤ K) (hKb : K ≤ Kbar) (hr0 : 0 ≤ r) (hr : r ≤ rbar) (hrF0 : 0 ≤ rF)
    (hrF : rF ≤ rFbar) (hrH0 : 0 ≤ rH) (hrH : rH ≤ rHbar) (hn0 : 0 ≤ n) (hn : n ≤ nbar)
    (hNJa0 : 0 ≤ NJa) (hGba0 : 0 ≤ Gba) (hY1a0 : 0 ≤ Y1a) (hYinfa0 : 0 ≤ Yinfa) (hSY2a0 : 0 ≤ SY2a)
    (hSY1a0 : 0 ≤ SY1a) (hSYinfa0 : 0 ≤ SYinfa)
    (hNJb0 : 0 ≤ NJb) (hGbb0 : 0 ≤ Gbb) (hY1b0 : 0 ≤ Y1b) (hYinfb0 : 0 ≤ Yinfb) (hSY2b0 : 0 ≤ SY2b)
    (hSY1b0 : 0 ≤ SY1b) (hSYinfb0 : 0 ≤ SYinfb)
    (hcheck : 4 * pihi * sa * VNa + 4 * s6hi * pihi * sa * Z ^ 2 * (eW * Y1a + 6 * dE) +
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW sa NJa Gba Y1a Yinfa SY2a SY1a SYinfa +
      4 * pihi * sb * VNb + 4 * s6hi * pihi * sb * Z ^ 2 * (eW * Y1b + 6 * dE) +
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW sb NJb Gbb Y1b Yinfb SY2b SY1b SYinfb +
      4 * pihi * rHbar * UB / DT + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * (Y1a + Y1b) + EEb <
      |Ca + Cb + qz| - ((Y1a + Y1b) * eN * Z ^ 2 + qerr)) :
    sa * vnorm (fun j => Jty ((1 / (2 * Real.pi)) • P) va y0 j + D j) +
      Eball n (NJa / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1a) K sa r rF Yinfa Y1a (Gba / (6 * Z ^ 2) + Y1a * eW / 6)
        (SY2a / (Real.sqrt 6 * Z)) (SY1a / (Real.sqrt 6 * Z)) (SYinfa / (Real.sqrt 6 * Z)) +
      sb * vnorm (fun j => Jty ((1 / (2 * Real.pi)) • P) vb y1 j - D j) +
      Eball n (NJb / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1b) K sb r rF Yinfb Y1b (Gbb / (6 * Z ^ 2) + Y1b * eW / 6)
        (SY2b / (Real.sqrt 6 * Z)) (SY1b / (Real.sqrt 6 * Z)) (SYinfb / (Real.sqrt 6 * Z)) +
      rH * Real.sqrt (∑ k, (Bty ((1 / (2 * Real.pi)) • P) va y0 T k + Bty ((1 / (2 * Real.pi)) • P) vb y1 T k) ^ 2) +
      EEr <
      |∑ i, y0 i * cc ((1 / (2 * Real.pi)) • P) va i + ∑ i, y1 i * cc ((1 / (2 * Real.pi)) • P) vb i + qy| := by
  set P' := (1 / (2 * Real.pi)) • P with hP'
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hpihi0 : 0 ≤ pihi := by linarith
  have hs60 : 0 ≤ s6hi := h6.le.trans hs6
  have hZ2 : 0 < Z ^ 2 := by positivity
  have hdE : 0 ≤ dE := (abs_nonneg _).trans (hD j0)
  have hrHb0 : 0 ≤ rHbar := hrH0.trans hrH
  set M := 24 * Real.pi * Z ^ 2 with hM
  have hM0 : 0 < M := by positivity
  have h24 : 24 / Real.sqrt 6 ≤ 4 * s6hi := by
    rw [div_le_iff₀ h6]; have := mul_le_mul_of_nonneg_right hs6 h6.le
    have e : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
    linarith
  -- (a) the label vectors
  have va_b : vnorm (fun j => Jty P' va y0 j + D j) ≤ VNa / (6 * Z ^ 2) + Real.sqrt 6 * (Y1a * eW / 6 + dE) := by
    have e : (fun j => Jty P' va y0 j + D j) = fun j => (-GJa j + Dz j) / (6 * Z ^ 2) +
        ((Jty P' va y0 j + GJa j / (6 * Z ^ 2)) + (D j - Dz j / (6 * Z ^ 2))) := by
      funext j; field_simp; ring
    rw [e]
    refine (vnorm_add_err fun j => (abs_add_le _ _).trans (add_le_add (LA.jty j) (hD j))).trans ?_
    exact add_le_add (vnorm_scale _ (by positivity) hVNa0 hVNa) le_rfl
  have vb_b : vnorm (fun j => Jty P' vb y1 j - D j) ≤ VNb / (6 * Z ^ 2) + Real.sqrt 6 * (Y1b * eW / 6 + dE) := by
    have e : (fun j => Jty P' vb y1 j - D j) = fun j => (-GJb j - Dz j) / (6 * Z ^ 2) +
        ((Jty P' vb y1 j + GJb j / (6 * Z ^ 2)) - (D j - Dz j / (6 * Z ^ 2))) := by
      funext j; field_simp; ring
    rw [e]
    refine (vnorm_add_err fun j => (abs_sub _ _).trans (add_le_add (LB.jty j) (hD j))).trans ?_
    exact add_le_add (vnorm_scale _ (by positivity) hVNb0 hVNb) le_rfl
  have Ta : M * (sa * vnorm (fun j => Jty P' va y0 j + D j)) ≤
      4 * pihi * sa * VNa + 4 * s6hi * pihi * sa * Z ^ 2 * (eW * Y1a + 6 * dE) := by
    have h1 := mul_le_mul_of_nonneg_left va_b (by positivity : (0:ℝ) ≤ M * sa)
    have e : M * sa * (VNa / (6 * Z ^ 2) + Real.sqrt 6 * (Y1a * eW / 6 + dE)) =
        4 * Real.pi * sa * VNa + 4 * Real.sqrt 6 * (Real.pi * sa * Z ^ 2 * (eW * Y1a + 6 * dE)) := by
      rw [hM]; field_simp; ring
    have c1 := mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ 4 * sa * VNa)
    have c2 := mul_le_mul (by linarith : 4 * Real.sqrt 6 ≤ 4 * s6hi)
      (mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ sa * Z ^ 2 * (eW * Y1a + 6 * dE)))
      (by positivity) (by positivity)
    calc M * (sa * vnorm (fun j => Jty P' va y0 j + D j)) = M * sa * vnorm (fun j => Jty P' va y0 j + D j) := by ring
      _ ≤ _ := h1
      _ = _ := e
      _ ≤ _ := by nlinarith
  have Tb : M * (sb * vnorm (fun j => Jty P' vb y1 j - D j)) ≤
      4 * pihi * sb * VNb + 4 * s6hi * pihi * sb * Z ^ 2 * (eW * Y1b + 6 * dE) := by
    have h1 := mul_le_mul_of_nonneg_left vb_b (by positivity : (0:ℝ) ≤ M * sb)
    have e : M * sb * (VNb / (6 * Z ^ 2) + Real.sqrt 6 * (Y1b * eW / 6 + dE)) =
        4 * Real.pi * sb * VNb + 4 * Real.sqrt 6 * (Real.pi * sb * Z ^ 2 * (eW * Y1b + 6 * dE)) := by
      rw [hM]; field_simp; ring
    have c1 := mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ 4 * sb * VNb)
    have c2 := mul_le_mul (by linarith : 4 * Real.sqrt 6 ≤ 4 * s6hi)
      (mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ sb * Z ^ 2 * (eW * Y1b + 6 * dE)))
      (by positivity) (by positivity)
    calc M * (sb * vnorm (fun j => Jty P' vb y1 j - D j)) = M * sb * vnorm (fun j => Jty P' vb y1 j - D j) := by ring
      _ ≤ _ := h1
      _ = _ := e
      _ ≤ _ := by nlinarith
  -- (b) the balls
  have Ea := eball_le (pihi := pihi) (s6hi := s6hi) (Kbar := Kbar) (rbar := rbar) (rFbar := rFbar) (nbar := nbar)
    (Z := Z) (eW := eW) (s := sa) (NJ := NJa) (Gb := Gba) (Y1 := Y1a) (Yinf := Yinfa) (SY2 := SY2a) (SY1 := SY1a)
    (SYinf := SYinfa) hZ hsa heW hpi hs6 hK0 hKb hr0 hr hrF0 hrF hn0 hn hNJa0 hGba0 hY1a0 hYinfa0 hSY2a0 hSY1a0 hSYinfa0
  have Eb := eball_le (pihi := pihi) (s6hi := s6hi) (Kbar := Kbar) (rbar := rbar) (rFbar := rFbar) (nbar := nbar)
    (Z := Z) (eW := eW) (s := sb) (NJ := NJb) (Gb := Gbb) (Y1 := Y1b) (Yinf := Yinfb) (SY2 := SY2b) (SY1 := SY1b)
    (SYinf := SYinfb) hZ hsb heW hpi hs6 hK0 hKb hr0 hr hrF0 hrF hn0 hn hNJb0 hGbb0 hY1b0 hYinfb0 hSY2b0 hSY1b0 hSYinfb0
  -- (c) the frame term
  set m := (Y1a + Y1b) * eW * tcol / 6 with hm
  have hm0 : 0 ≤ m := by positivity
  have hBn : Real.sqrt (∑ k, (Bty P' va y0 T k + Bty P' vb y1 T k) ^ 2) ≤ UB / (6 * DT * Z ^ 2) + 2 * m := by
    set f : Fin 4 → ℝ := fun k => -((Bta k + Btb k) / (6 * DT * Z ^ 2))
    set g : Fin 4 → ℝ := fun k => (Bty P' va y0 T k + Bta k / (6 * DT * Z ^ 2)) +
      (Bty P' vb y1 T k + Btb k / (6 * DT * Z ^ 2))
    have hfg : ∀ k, Bty P' va y0 T k + Bty P' vb y1 T k = f k + g k := fun k => by simp only [f, g]; field_simp; ring
    simp only [hfg]
    refine (sqrt_sum_add_le f g).trans (add_le_add ?_ ?_)
    · have hD6 : (0 : ℝ) < 6 * DT * Z ^ 2 := by positivity
      have e : ∑ k, f k ^ 2 = (∑ k, (Bta k + Btb k) ^ 2) / (6 * DT * Z ^ 2) ^ 2 := by
        rw [Finset.sum_div]; exact Finset.sum_congr rfl fun k _ => by simp only [f]; rw [neg_sq, div_pow]
      rw [e, Real.sqrt_div' _ (by positivity), Real.sqrt_sq hD6.le]
      apply div_le_div_of_nonneg_right _ hD6.le
      calc Real.sqrt _ ≤ Real.sqrt (UB ^ 2) := Real.sqrt_le_sqrt hUB
        _ = UB := Real.sqrt_sq hUB0
    · have hg : ∀ k, |g k| ≤ m := fun k => by
        have := (abs_add_le _ _).trans (add_le_add (hBa k) (hBb k)); rw [hm]; simp only [g]; linarith
      have e : ∑ k, g k ^ 2 ≤ ∑ _k : Fin 4, m ^ 2 := Finset.sum_le_sum fun k _ => by
        rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (hg k) 2
      rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin] at e
      calc Real.sqrt (∑ k, g k ^ 2) ≤ Real.sqrt ((2 * m) ^ 2) := Real.sqrt_le_sqrt (by simp at e; nlinarith)
        _ = 2 * m := Real.sqrt_sq (by positivity)
  have TB : M * (rH * Real.sqrt (∑ k, (Bty P' va y0 T k + Bty P' vb y1 T k) ^ 2)) ≤
      4 * pihi * rHbar * UB / DT + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * (Y1a + Y1b) := by
    have h1 : rH * Real.sqrt (∑ k, (Bty P' va y0 T k + Bty P' vb y1 T k) ^ 2) ≤ rHbar * (UB / (6 * DT * Z ^ 2) + 2 * m) :=
      mul_le_mul hrH hBn (Real.sqrt_nonneg _) hrHb0
    have e : M * (rHbar * (UB / (6 * DT * Z ^ 2) + 2 * m)) =
        Real.pi * (4 * rHbar * UB / DT + 8 * rHbar * tcol * eW * Z ^ 2 * (Y1a + Y1b)) := by rw [hM, hm]; field_simp; ring
    have c := mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ 4 * rHbar * UB / DT + 8 * rHbar * tcol * eW * Z ^ 2 * (Y1a + Y1b))
    have := mul_le_mul_of_nonneg_left h1 hM0.le
    calc M * (rH * Real.sqrt (∑ k, (Bty P' va y0 T k + Bty P' vb y1 T k) ^ 2))
        ≤ M * (rHbar * (UB / (6 * DT * Z ^ 2) + 2 * m)) := this
      _ = _ := e
      _ ≤ _ := c
      _ = _ := by ring
  -- (d) the left side
  have hL : (|Ca + Cb + qz| - ((Y1a + Y1b) * eN * Z ^ 2 + qerr)) / M ≤
      |∑ i, y0 i * cc P' va i + ∑ i, y1 i * cc P' vb i + qy| := by
    have ea := LA.cc; have eb := LB.cc
    have e : ∑ i, y0 i * cc P' va i + ∑ i, y1 i * cc P' vb i + qy =
        (Ca + Cb + qz) / M + ((∑ i, y0 i * cc P' va i - Ca / M) + (∑ i, y1 i * cc P' vb i - Cb / M) +
          (qy - qz / M)) := by rw [hM]; field_simp; ring
    rw [e]
    have h1 : |(∑ i, y0 i * cc P' va i - Ca / M) + (∑ i, y1 i * cc P' vb i - Cb / M) + (qy - qz / M)| ≤
        ((Y1a + Y1b) * eN * Z ^ 2 + qerr) / M := by
      refine (abs_add_le _ _).trans ?_
      refine (add_le_add (abs_add_le _ _) le_rfl).trans ?_
      have q1 : Y1a * eN / (24 * Real.pi) = Y1a * eN * Z ^ 2 / M := by rw [hM]; field_simp
      have q2 : Y1b * eN / (24 * Real.pi) = Y1b * eN * Z ^ 2 / M := by rw [hM]; field_simp
      rw [← hM] at ea eb
      have := add_le_add (add_le_add ea eb) hq
      rw [q1, q2] at this
      calc _ ≤ Y1a * eN * Z ^ 2 / M + Y1b * eN * Z ^ 2 / M + qerr / M := this
        _ = _ := by field_simp
    have h2 := abs_sub_abs_le_abs_sub ((Ca + Cb + qz) / M) (-((∑ i, y0 i * cc P' va i - Ca / M) +
      (∑ i, y1 i * cc P' vb i - Cb / M) + (qy - qz / M)))
    rw [sub_neg_eq_add, abs_neg] at h2
    have h3 : |(Ca + Cb + qz) / M| = |Ca + Cb + qz| / M := by rw [abs_div, abs_of_pos hM0]
    rw [h3] at h2
    have : (|Ca + Cb + qz| - ((Y1a + Y1b) * eN * Z ^ 2 + qerr)) / M = |Ca + Cb + qz| / M - ((Y1a + Y1b) * eN * Z ^ 2 + qerr) / M := by
      rw [sub_div]
    rw [this]; linarith
  -- assemble
  set LHS := sa * vnorm (fun j => Jty P' va y0 j + D j) +
      Eball n (NJa / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1a) K sa r rF Yinfa Y1a (Gba / (6 * Z ^ 2) + Y1a * eW / 6)
        (SY2a / (Real.sqrt 6 * Z)) (SY1a / (Real.sqrt 6 * Z)) (SYinfa / (Real.sqrt 6 * Z)) +
      sb * vnorm (fun j => Jty P' vb y1 j - D j) +
      Eball n (NJb / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1b) K sb r rF Yinfb Y1b (Gbb / (6 * Z ^ 2) + Y1b * eW / 6)
        (SY2b / (Real.sqrt 6 * Z)) (SY1b / (Real.sqrt 6 * Z)) (SYinfb / (Real.sqrt 6 * Z)) +
      rH * Real.sqrt (∑ k, (Bty P' va y0 T k + Bty P' vb y1 T k) ^ 2) + EEr with hLHS
  have hMLHS : M * LHS < |Ca + Cb + qz| - ((Y1a + Y1b) * eN * Z ^ 2 + qerr) := by
    have e : M * LHS = M * (sa * vnorm (fun j => Jty P' va y0 j + D j)) +
        M * Eball n (NJa / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1a) K sa r rF Yinfa Y1a (Gba / (6 * Z ^ 2) + Y1a * eW / 6)
          (SY2a / (Real.sqrt 6 * Z)) (SY1a / (Real.sqrt 6 * Z)) (SYinfa / (Real.sqrt 6 * Z)) +
        M * (sb * vnorm (fun j => Jty P' vb y1 j - D j)) +
        M * Eball n (NJb / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1b) K sb r rF Yinfb Y1b (Gbb / (6 * Z ^ 2) + Y1b * eW / 6)
          (SY2b / (Real.sqrt 6 * Z)) (SY1b / (Real.sqrt 6 * Z)) (SYinfb / (Real.sqrt 6 * Z)) +
        M * (rH * Real.sqrt (∑ k, (Bty P' va y0 T k + Bty P' vb y1 T k) ^ 2)) + M * EEr := by rw [hLHS]; ring
    rw [e]; linarith only [Ta, Tb, Ea, Eb, TB, hEE, hcheck]
  have : LHS < (|Ca + Cb + qz| - ((Y1a + Y1b) * eN * Z ^ 2 + qerr)) / M := by
    rw [lt_div_iff₀ hM0]; linarith only [hMLHS]
  exact this.trans_le hL

/-! ### The O and U joint tests -/

lemma Se_close {va vb : I6 → ℝ} {qc : I6 → ℂ} {eU : ℝ} (hq : ∀ j, ‖Qe va vb j - qc j‖ ≤ eU) :
    ‖Se va vb - ∑ j, qc j‖ ≤ 6 * eU := by
  rw [Se, ← Finset.sum_sub_distrib]
  refine (norm_sum_le _ _).trans ?_
  calc ∑ j, ‖Qe va vb j - qc j‖ ≤ ∑ _j : I6, eU := Finset.sum_le_sum fun j _ => hq j
    _ = 6 * eU := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp

lemma norm_Se_le (va vb : I6 → ℝ) : ‖Se va vb‖ ≤ 6 := by
  rw [Se]; refine (norm_sum_le _ _).trans (le_of_eq ?_)
  simp only [Qe, norm_e, Finset.sum_const, Finset.card_univ, card_I6]; norm_num

set_option maxHeartbeats 8000000 in
/-- **The joint O test**: integer bounds of two labels, table approximations `qc` of `e(v_a − v_b)` and one
comparison exclude the orthogonality edge, for every admissible `δ`. -/
theorem jointO_excl {P : RMat6} {va vb y0 y1 : I6 → ℝ} {T : Fin 4 → RMat6} {Z eW eN DT tcol eU : ℝ}
    {GJa GJb : I6 → ℝ} {Bta Btb : Fin 4 → ℝ}
    {Ca Cb Gba Y1a Yinfa SY2a SY1a SYinfa NJa Gbb Y1b Yinfb SY2b SY1b SYinfb NJb : ℝ}
    (hZ : 0 < Z) (hDT : 0 < DT) (heW : 0 ≤ eW) (heN : 0 ≤ eN) (htcol : 0 ≤ tcol) (heU : 0 ≤ eU)
    (LA : LabBounds P va y0 T Z eW eN GJa Bta Ca Gba Y1a Yinfa SY2a SY1a SYinfa NJa)
    (LB : LabBounds P vb y1 T Z eW eN GJb Btb Cb Gbb Y1b Yinfb SY2b SY1b SYinfb NJb)
    (hBa : ∀ k, |Bty ((1 / (2 * Real.pi)) • P) va y0 T k + Bta k / (6 * DT * Z ^ 2)| ≤ Y1a * eW * tcol / 6)
    (hBb : ∀ k, |Bty ((1 / (2 * Real.pi)) • P) vb y1 T k + Btb k / (6 * DT * Z ^ 2)| ≤ Y1b * eW * tcol / 6)
    {qc : I6 → ℂ} (hq : ∀ j, ‖Qe va vb j - qc j‖ ≤ eU) (ye1 ye2 : ℝ)
    {VNa VNb UB yN : ℝ} (hVNa0 : 0 ≤ VNa)
    (hVNa : ∑ j, (-GJa j + 6 * Z ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im)) ^ 2 ≤ VNa ^ 2)
    (hVNb0 : 0 ≤ VNb) (hVNb : ∑ j, (-GJb j - 6 * Z ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im)) ^ 2 ≤ VNb ^ 2)
    (hUB0 : 0 ≤ UB) (hUB : ∑ k, (Bta k + Btb k) ^ 2 ≤ UB ^ 2)
    (hyN0 : 0 ≤ yN) (hyN : ye1 ^ 2 + ye2 ^ 2 ≤ yN ^ 2)
    {sa sb : ℝ} (hsa : 0 ≤ sa) (hsb : 0 ≤ sb)
    {pihi s6hi Kbar rbar rFbar rHbar nbar : ℝ} (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi)
    {K r rF rH n : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ Kbar) (hr : r ≤ rbar) (hrF : rF ≤ rFbar) (hrH : rH ≤ rHbar) (hn : n ≤ nbar)
    (hNJa0 : 0 ≤ NJa) (hGba0 : 0 ≤ Gba) (hY1a0 : 0 ≤ Y1a) (hYinfa0 : 0 ≤ Yinfa) (hSY2a0 : 0 ≤ SY2a)
    (hSY1a0 : 0 ≤ SY1a) (hSYinfa0 : 0 ≤ SYinfa)
    (hNJb0 : 0 ≤ NJb) (hGbb0 : 0 ≤ Gbb) (hY1b0 : 0 ≤ Y1b) (hYinfb0 : 0 ≤ Yinfb) (hSY2b0 : 0 ≤ SY2b)
    (hSY1b0 : 0 ≤ SY1b) (hSYinfb0 : 0 ≤ SYinfb)
    (hcheck : 4 * pihi * sa * VNa + 4 * s6hi * pihi * sa * Z ^ 2 * (eW * Y1a + 6 * ((|ye1| + |ye2|) * eU)) +
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW sa NJa Gba Y1a Yinfa SY2a SY1a SYinfa +
      4 * pihi * sb * VNb + 4 * s6hi * pihi * sb * Z ^ 2 * (eW * Y1b + 6 * ((|ye1| + |ye2|) * eU)) +
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW sb NJb Gbb Y1b Yinfb SY2b SY1b SYinfb +
      4 * pihi * rHbar * UB / DT + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * (Y1a + Y1b) +
      24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2 * yN <
      |Ca + Cb + 12 * Z ^ 2 * (ye1 * (∑ j, qc j).re + ye2 * (∑ j, qc j).im)| -
        ((Y1a + Y1b) * eN * Z ^ 2 + 72 * Z ^ 2 * eU * (|ye1| + |ye2|))) :
    ∀ δ, Admissible T rH n r rF δ → EdgeOExcl ((1 / (2 * Real.pi)) • P) δ va sa vb sb := by
  intro δ ⟨⟨η, ν, hδ, hη, hν⟩, hrc, hrFc⟩
  have hpi0 := Real.pi_pos
  have hrH0 : 0 ≤ rH := (Real.sqrt_nonneg _).trans hη
  have hn0 : 0 ≤ n := (frob_nonneg _).trans hν
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans (hrc j0)
  have hrF0 : 0 ≤ rF := (frob_nonneg _).trans hrFc
  have hZ2 : 0 < Z ^ 2 := by positivity
  have hSe := Se_close hq
  refine edgeOExcl_of_joint (ye1 := ye1) (ye2 := ye2) hδ hη hν hrc hrFc hK0 hK LA.yinf LA.y1 LA.g LA.sy2 LA.sy1
    LA.syinf LA.nn LB.yinf LB.y1 LB.g LB.sy2 LB.sy1 LB.syinf LB.nn ?_
  refine joint_core (Dz := fun j => 6 * Z ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im)) (dE := (|ye1| + |ye2|) * eU)
    (qz := 12 * Z ^ 2 * (ye1 * (∑ j, qc j).re + ye2 * (∑ j, qc j).im)) (qerr := 72 * Z ^ 2 * eU * (|ye1| + |ye2|))
    (EEb := 24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2 * yN) hZ hDT heW heN htcol LA LB hBa hBb ?_ ?_ ?_
    hVNa0 hVNa hVNb0 hVNb hUB0 hUB hsa hsb hpi hs6 hK0 hKb hr0 hr hrF0 hrF hrH0 hrH hn0 hn
    hNJa0 hGba0 hY1a0 hYinfa0 hSY2a0 hSY1a0 hSYinfa0 hNJb0 hGbb0 hY1b0 hYinfb0 hSY2b0 hSY1b0 hSYinfb0 hcheck
  · -- D
    intro j
    have e : ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re - 6 * Z ^ 2 * (ye2 * (qc j).re - ye1 * (qc j).im) / (6 * Z ^ 2) =
        ye2 * (Qe va vb j - qc j).re - ye1 * (Qe va vb j - qc j).im := by
      simp only [Complex.sub_re, Complex.sub_im]; field_simp; ring
    rw [e]
    have h1 := Complex.abs_re_le_norm (Qe va vb j - qc j)
    have h2 := Complex.abs_im_le_norm (Qe va vb j - qc j)
    calc |ye2 * (Qe va vb j - qc j).re - ye1 * (Qe va vb j - qc j).im|
        ≤ |ye2| * |(Qe va vb j - qc j).re| + |ye1| * |(Qe va vb j - qc j).im| := by
          rw [← abs_mul, ← abs_mul]; exact abs_sub _ _
      _ ≤ |ye2| * eU + |ye1| * eU := add_le_add (mul_le_mul_of_nonneg_left (h1.trans (hq j)) (abs_nonneg _))
          (mul_le_mul_of_nonneg_left (h2.trans (hq j)) (abs_nonneg _))
      _ = (|ye1| + |ye2|) * eU := by ring
  · -- q
    have e : ye1 * ((Se va vb).re / (2 * Real.pi)) + ye2 * ((Se va vb).im / (2 * Real.pi)) -
        12 * Z ^ 2 * (ye1 * (∑ j, qc j).re + ye2 * (∑ j, qc j).im) / (24 * Real.pi * Z ^ 2) =
        (ye1 * (Se va vb - ∑ j, qc j).re + ye2 * (Se va vb - ∑ j, qc j).im) / (2 * Real.pi) := by
      simp only [Complex.sub_re, Complex.sub_im]; field_simp; ring
    rw [e, abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * Real.pi)]
    have h1 := (Complex.abs_re_le_norm (Se va vb - ∑ j, qc j)).trans hSe
    have h2 := (Complex.abs_im_le_norm (Se va vb - ∑ j, qc j)).trans hSe
    have h3 : |ye1 * (Se va vb - ∑ j, qc j).re + ye2 * (Se va vb - ∑ j, qc j).im| ≤ (|ye1| + |ye2|) * (6 * eU) := by
      refine (abs_add_le _ _).trans ?_
      rw [abs_mul, abs_mul]
      nlinarith [abs_nonneg ye1, abs_nonneg ye2]
    calc _ ≤ (|ye1| + |ye2|) * (6 * eU) / (2 * Real.pi) := div_le_div_of_nonneg_right h3 (by positivity)
      _ = _ := by field_simp; ring
  · -- E_E
    have h1 : Real.sqrt (ye1 ^ 2 + ye2 ^ 2) ≤ yN := by
      calc Real.sqrt (ye1 ^ 2 + ye2 ^ 2) ≤ Real.sqrt (yN ^ 2) := Real.sqrt_le_sqrt hyN
        _ = yN := Real.sqrt_sq hyN0
    have h2 : 24 * Real.pi * Z ^ 2 * (Real.pi * (sa + sb) ^ 2) ≤ 24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2 := by
      have := mul_le_mul hpi hpi hpi0.le (by linarith)
      have h0 : 0 ≤ 24 * Z ^ 2 * (sa + sb) ^ 2 := by positivity
      nlinarith
    calc 24 * Real.pi * Z ^ 2 * (Real.sqrt (ye1 ^ 2 + ye2 ^ 2) * (Real.pi * (sa + sb) ^ 2))
        = Real.sqrt (ye1 ^ 2 + ye2 ^ 2) * (24 * Real.pi * Z ^ 2 * (Real.pi * (sa + sb) ^ 2)) := by ring
      _ ≤ yN * (24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2) :=
          mul_le_mul h1 h2 (by positivity) hyN0
      _ = _ := by ring

set_option maxHeartbeats 8000000 in
/-- **The joint U test.** -/
theorem jointU_excl {P : RMat6} {va vb y0 y1 : I6 → ℝ} {T : Fin 4 → RMat6} {Z eW eN DT tcol eU : ℝ}
    {GJa GJb : I6 → ℝ} {Bta Btb : Fin 4 → ℝ}
    {Ca Cb Gba Y1a Yinfa SY2a SY1a SYinfa NJa Gbb Y1b Yinfb SY2b SY1b SYinfb NJb : ℝ}
    (hZ : 0 < Z) (hDT : 0 < DT) (heW : 0 ≤ eW) (heN : 0 ≤ eN) (htcol : 0 ≤ tcol) (heU : 0 ≤ eU)
    (LA : LabBounds P va y0 T Z eW eN GJa Bta Ca Gba Y1a Yinfa SY2a SY1a SYinfa NJa)
    (LB : LabBounds P vb y1 T Z eW eN GJb Btb Cb Gbb Y1b Yinfb SY2b SY1b SYinfb NJb)
    (hBa : ∀ k, |Bty ((1 / (2 * Real.pi)) • P) va y0 T k + Bta k / (6 * DT * Z ^ 2)| ≤ Y1a * eW * tcol / 6)
    (hBb : ∀ k, |Bty ((1 / (2 * Real.pi)) • P) vb y1 T k + Btb k / (6 * DT * Z ^ 2)| ≤ Y1b * eW * tcol / 6)
    {qc : I6 → ℂ} (hq : ∀ j, ‖Qe va vb j - qc j‖ ≤ eU) (ye : ℝ)
    {VNa VNb UB QN : ℝ} (hVNa0 : 0 ≤ VNa)
    (hVNa : ∑ j, (-GJa j + -ye * Z ^ 2 * (star (∑ j', qc j') * qc j).im) ^ 2 ≤ VNa ^ 2)
    (hVNb0 : 0 ≤ VNb) (hVNb : ∑ j, (-GJb j - -ye * Z ^ 2 * (star (∑ j', qc j') * qc j).im) ^ 2 ≤ VNb ^ 2)
    (hUB0 : 0 ≤ UB) (hUB : ∑ k, (Bta k + Btb k) ^ 2 ≤ UB ^ 2)
    (hQN : Z * ‖∑ j, qc j‖ ≤ QN)
    {sa sb : ℝ} (hsa : 0 ≤ sa) (hsb : 0 ≤ sb)
    {pihi s6hi Kbar rbar rFbar rHbar nbar : ℝ} (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi)
    {K r rF rH n : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ Kbar) (hr : r ≤ rbar) (hrF : rF ≤ rFbar) (hrH : rH ≤ rHbar) (hn : n ≤ nbar)
    (hNJa0 : 0 ≤ NJa) (hGba0 : 0 ≤ Gba) (hY1a0 : 0 ≤ Y1a) (hYinfa0 : 0 ≤ Yinfa) (hSY2a0 : 0 ≤ SY2a)
    (hSY1a0 : 0 ≤ SY1a) (hSYinfa0 : 0 ≤ SYinfa)
    (hNJb0 : 0 ≤ NJb) (hGbb0 : 0 ≤ Gbb) (hY1b0 : 0 ≤ Y1b) (hYinfb0 : 0 ≤ Yinfb) (hSY2b0 : 0 ≤ SY2b)
    (hSY1b0 : 0 ≤ SY1b) (hSYinfb0 : 0 ≤ SYinfb)
    (hcheck : 4 * pihi * sa * VNa + 4 * s6hi * pihi * sa * Z ^ 2 * (eW * Y1a + 6 * (|ye| * ((12 + 6 * eU) * eU) / 6)) +
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW sa NJa Gba Y1a Yinfa SY2a SY1a SYinfa +
      4 * pihi * sb * VNb + 4 * s6hi * pihi * sb * Z ^ 2 * (eW * Y1b + 6 * (|ye| * ((12 + 6 * eU) * eU) / 6)) +
      EBq pihi s6hi Kbar rbar rFbar nbar Z eW sb NJb Gbb Y1b Yinfb SY2b SY1b SYinfb +
      4 * pihi * rHbar * UB / DT + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * (Y1a + Y1b) +
      24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2 * (1 + (QN / Z + 6 * eU) / 6) * |ye| <
      |Ca + Cb + ye * (Z ^ 2 * ‖∑ j, qc j‖ ^ 2 - 6 * Z ^ 2)| -
        ((Y1a + Y1b) * eN * Z ^ 2 + |ye| * Z ^ 2 * (6 * eU * (12 + 6 * eU)))) :
    ∀ δ, Admissible T rH n r rF δ → EdgeUExcl ((1 / (2 * Real.pi)) • P) δ va sa vb sb := by
  intro δ ⟨⟨η, ν, hδ, hη, hν⟩, hrc, hrFc⟩
  have hpi0 := Real.pi_pos
  have hrH0 : 0 ≤ rH := (Real.sqrt_nonneg _).trans hη
  have hn0 : 0 ≤ n := (frob_nonneg _).trans hν
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans (hrc j0)
  have hrF0 : 0 ≤ rF := (frob_nonneg _).trans hrFc
  have hZ2 : 0 < Z ^ 2 := by positivity
  have hSe := Se_close hq
  set Qc := ∑ j, qc j with hQc
  have hS6 := norm_Se_le va vb
  have hQc6 : ‖Qc‖ ≤ 6 + 6 * eU := by
    calc ‖Qc‖ = ‖Se va vb - (Se va vb - Qc)‖ := by ring_nf
      _ ≤ ‖Se va vb‖ + ‖Se va vb - Qc‖ := norm_sub_le _ _
      _ ≤ 6 + 6 * eU := add_le_add hS6 hSe
  refine edgeUExcl_of_joint (ye := ye) hδ hη hν hrc hrFc hK0 hK LA.yinf LA.y1 LA.g LA.sy2 LA.sy1
    LA.syinf LA.nn LB.yinf LB.y1 LB.g LB.sy2 LB.sy1 LB.syinf LB.nn ?_
  have key := joint_core (D := fun j => ye * DU va vb j) (Dz := fun j => -ye * Z ^ 2 * (star Qc * qc j).im)
    (dE := |ye| * ((12 + 6 * eU) * eU) / 6) (qy := ye * ((‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi)))
    (qz := ye * (Z ^ 2 * ‖Qc‖ ^ 2 - 6 * Z ^ 2)) (qerr := |ye| * Z ^ 2 * (6 * eU * (12 + 6 * eU)))
    (EEr := Real.pi * (sa + sb) ^ 2 * (1 + ‖Se va vb‖ / 6) * |ye|)
    (EEb := 24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2 * (1 + (QN / Z + 6 * eU) / 6) * |ye|)
    hZ hDT heW heN htcol LA LB hBa hBb ?_ ?_ ?_
    hVNa0 hVNa hVNb0 hVNb hUB0 hUB hsa hsb hpi hs6 hK0 hKb hr0 hr hrF0 hrF hrH0 hrH hn0 hn
    hNJa0 hGba0 hY1a0 hYinfa0 hSY2a0 hSY1a0 hSYinfa0 hNJb0 hGbb0 hY1b0 hYinfb0 hSY2b0 hSY1b0 hSYinfb0 hcheck
  · exact key
  · -- D
    intro j
    have hQe : ‖Qe va vb j‖ = 1 := norm_e _
    have e : ye * DU va vb j - -ye * Z ^ 2 * (star Qc * qc j).im / (6 * Z ^ 2) =
        -ye * (star (Se va vb) * Qe va vb j - star Qc * qc j).im / 6 := by
      simp only [DU, Complex.sub_im]; field_simp; ring
    rw [e, abs_div, abs_of_pos (by norm_num : (0:ℝ) < 6), abs_mul, abs_neg]
    apply div_le_div_of_nonneg_right _ (by norm_num)
    apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
    refine (Complex.abs_im_le_norm _).trans ?_
    have e2 : star (Se va vb) * Qe va vb j - star Qc * qc j =
        star (Se va vb - Qc) * Qe va vb j + star Qc * (Qe va vb j - qc j) := by simp only [star_sub]; ring
    rw [e2]
    refine (norm_add_le _ _).trans ?_
    rw [norm_mul, norm_mul, norm_star, norm_star, hQe, mul_one]
    have := mul_le_mul hQc6 (hq j) (norm_nonneg _) (by linarith)
    nlinarith [hSe]
  · -- q
    have e : ye * ((‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi)) - ye * (Z ^ 2 * ‖Qc‖ ^ 2 - 6 * Z ^ 2) / (24 * Real.pi * Z ^ 2) =
        ye * (‖Se va vb‖ ^ 2 - ‖Qc‖ ^ 2) / (24 * Real.pi) := by field_simp; ring
    rw [e, abs_div, abs_of_pos (by positivity : (0:ℝ) < 24 * Real.pi), abs_mul]
    have h1 : |‖Se va vb‖ ^ 2 - ‖Qc‖ ^ 2| ≤ 6 * eU * (12 + 6 * eU) := by
      have d1 : |‖Se va vb‖ - ‖Qc‖| ≤ 6 * eU := (abs_norm_sub_norm_le _ _).trans hSe
      have e3 : ‖Se va vb‖ ^ 2 - ‖Qc‖ ^ 2 = (‖Se va vb‖ - ‖Qc‖) * (‖Se va vb‖ + ‖Qc‖) := by ring
      rw [e3, abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ ‖Se va vb‖ + ‖Qc‖)]
      exact mul_le_mul d1 (by linarith) (by positivity) (by positivity)
    calc |ye| * |‖Se va vb‖ ^ 2 - ‖Qc‖ ^ 2| / (24 * Real.pi) ≤ |ye| * (6 * eU * (12 + 6 * eU)) / (24 * Real.pi) :=
          div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left h1 (abs_nonneg _)) (by positivity)
      _ = _ := by field_simp
  · -- E_E
    have hS : ‖Se va vb‖ ≤ QN / Z + 6 * eU := by
      have h1 : ‖Qc‖ ≤ QN / Z := by rw [le_div_iff₀ hZ]; linarith
      calc ‖Se va vb‖ = ‖Qc + (Se va vb - Qc)‖ := by ring_nf
        _ ≤ ‖Qc‖ + ‖Se va vb - Qc‖ := norm_add_le _ _
        _ ≤ _ := add_le_add h1 hSe
    have h2 : 24 * Real.pi * Z ^ 2 * (Real.pi * (sa + sb) ^ 2) ≤ 24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2 := by
      have := mul_le_mul hpi hpi hpi0.le (by linarith)
      have h0 : 0 ≤ 24 * Z ^ 2 * (sa + sb) ^ 2 := by positivity
      nlinarith
    have h3 : (1 + ‖Se va vb‖ / 6) * |ye| ≤ (1 + (QN / Z + 6 * eU) / 6) * |ye| :=
      mul_le_mul_of_nonneg_right (by linarith) (abs_nonneg _)
    calc 24 * Real.pi * Z ^ 2 * (Real.pi * (sa + sb) ^ 2 * (1 + ‖Se va vb‖ / 6) * |ye|)
        = (24 * Real.pi * Z ^ 2 * (Real.pi * (sa + sb) ^ 2)) * ((1 + ‖Se va vb‖ / 6) * |ye|) := by ring
      _ ≤ (24 * pihi ^ 2 * Z ^ 2 * (sa + sb) ^ 2) * ((1 + (QN / Z + 6 * eU) / 6) * |ye|) :=
          mul_le_mul h2 h3 (by positivity) (by positivity)
      _ = _ := by ring

end

end NoFourMUBs.KernelAtlas

import NoFourMUBs.StageC.Edge

/-!
# Stage C, C4: the joint test (6.23) with the common tangent variable `η`

For an edge between labels `a`, `b` (vectors `e(v_a + x_a)`, `e(v_b + x_b)`, both unbiased to every column of the same
`E(P + δ)`, `δ = Σ_k η_k T_k + ν`), any `y₀, y₁ ∈ ℝ⁶` and edge weight `y_e`:

  `|y₀·c⁰ + y₁·c¹ + y_e·q_E| ≤ s_a‖J_aᵀy₀ + D_Eᵀy_e‖ + 𝓔_a(y₀) + s_b‖J_bᵀy₁ − D_Eᵀy_e‖ + 𝓔_b(y₁)
                               + r_H‖B_aᵀy₀ + B_bᵀy₁‖ + E_E‖y_e‖`,

with `𝓔_t` the ball remainder (`X = s_t`, `G`-form of the pure-x term).  The η-coefficients combine **before** the
norm is taken.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

lemma abs_le_vnorm (x : I6 → ℝ) (j : I6) : |x j| ≤ vnorm x := by
  rw [vnorm]; apply Real.abs_le_sqrt
  exact Finset.single_le_sum (f := fun k => x k ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ j)

/-- The ball remainder `𝓔^{ball}(y)` of the joint test. -/
noncomputable def Eball (n N K s r rF Yinf Y1 G SY2 SY1 SYinf : ℝ) : ℝ :=
  n * N + Real.pi * (min (Yinf * (K * s + rF) ^ 2) (Y1 * (K * s + r) ^ 2) + G * s ^ 2 +
    2 / Real.sqrt 6 * s * min (SY2 * rF) (SY1 * r) + 1 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2))

/-- One vector of a label ball: `|y·c + (Jᵀy)·x − η·(Bᵀy)| ≤ 𝓔^{ball}(y)`. -/
lemma ball_core {P δ : RMat6} {v y x : I6 → ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ} {ν : RMat6}
    {n K s r rF Yinf Y1 G SY2 SY1 SYinf N : ℝ}
    (hδ : δ = (∑ k, η k • T k) + ν) (hν : frob ν ≤ n) (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hx : vnorm x ≤ s)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : ∑ i, |y i| ≤ Y1)
    (hG : ∀ j, ‖∑ i, (y i : ℂ) * star (S P v i) * q P v j i‖ ≤ G)
    (hSY2 : vnorm (fun i => |y i| * ‖S P v i‖) ≤ SY2) (hSY1 : ∑ i, |y i| * ‖S P v i‖ ≤ SY1)
    (hSYinf : ∀ i, |y i| * ‖S P v i‖ ≤ SYinf) (hN : Real.sqrt (∑ i, ∑ j, (y i * Jm P v i j) ^ 2) ≤ N)
    (hcol : ColUnb (E (P + δ)) (fun j => e (v j + x j))) :
    |∑ i, y i * cc P v i + ∑ j, Jty P v y j * x j - ∑ k, η k * Bty P v y T k| ≤
      Eball n N K s r rF Yinf Y1 G SY2 SY1 SYinf := by
  have hc := core_bound (I := s) hδ hν hr hrF hK0 hK hx (fun j => (abs_le_vnorm x j).trans hx) hYinf hY1 hG
    hSY2 hSY1 hSYinf hN hcol
  refine hc.trans ?_
  unfold Eball
  have : min (G * s ^ 2) (K * SY2 * s * s) ≤ G * s ^ 2 := min_le_left _ _
  have hpi := Real.pi_pos
  nlinarith

lemma vnorm_neg (x : I6 → ℝ) : vnorm (fun j => -x j) = vnorm x := by unfold vnorm; simp only [neg_sq]

lemma vnorm_sub_le (x y : I6 → ℝ) : vnorm (fun j => x j - y j) ≤ vnorm x + vnorm y := by
  have h := vnorm_add_le x (fun j => -y j)
  rw [vnorm_neg] at h
  have e : (fun j => x j - y j) = x + fun j => -y j := by funext j; simp [sub_eq_add_neg]
  rw [e]; exact h

/-- **Joint test, U edges.** -/
theorem joint_U {P δ : RMat6} {va vb xa xb y0 y1 : I6 → ℝ} {ye : ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ}
    {ν : RMat6} {n K sa sb r rF rH : ℝ}
    {Yinf0 Y10 G0 SY20 SY10 SYinf0 N0 Yinf1 Y11 G1 SY21 SY11 SYinf1 N1 : ℝ}
    (hδ : δ = (∑ k, η k • T k) + ν) (hη : Real.sqrt (∑ k, η k ^ 2) ≤ rH) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hxa : vnorm xa ≤ sa) (hxb : vnorm xb ≤ sb)
    (hcola : ColUnb (E (P + δ)) (fun j => e (va j + xa j)))
    (hcolb : ColUnb (E (P + δ)) (fun j => e (vb j + xb j)))
    (hunb : ‖Se' va vb (fun j => xa j - xb j)‖ ^ 2 = 6)
    (hYinf0 : ∀ i, |y0 i| ≤ Yinf0) (hY10 : ∑ i, |y0 i| ≤ Y10)
    (hG0 : ∀ j, ‖∑ i, (y0 i : ℂ) * star (S P va i) * q P va j i‖ ≤ G0)
    (hSY20 : vnorm (fun i => |y0 i| * ‖S P va i‖) ≤ SY20) (hSY10 : ∑ i, |y0 i| * ‖S P va i‖ ≤ SY10)
    (hSYinf0 : ∀ i, |y0 i| * ‖S P va i‖ ≤ SYinf0) (hN0 : Real.sqrt (∑ i, ∑ j, (y0 i * Jm P va i j) ^ 2) ≤ N0)
    (hYinf1 : ∀ i, |y1 i| ≤ Yinf1) (hY11 : ∑ i, |y1 i| ≤ Y11)
    (hG1 : ∀ j, ‖∑ i, (y1 i : ℂ) * star (S P vb i) * q P vb j i‖ ≤ G1)
    (hSY21 : vnorm (fun i => |y1 i| * ‖S P vb i‖) ≤ SY21) (hSY11 : ∑ i, |y1 i| * ‖S P vb i‖ ≤ SY11)
    (hSYinf1 : ∀ i, |y1 i| * ‖S P vb i‖ ≤ SYinf1) (hN1 : Real.sqrt (∑ i, ∑ j, (y1 i * Jm P vb i j) ^ 2) ≤ N1) :
    |∑ i, y0 i * cc P va i + ∑ i, y1 i * cc P vb i + ye * ((‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi))| ≤
      sa * vnorm (fun j => Jty P va y0 j + ye * DU va vb j) + Eball n N0 K sa r rF Yinf0 Y10 G0 SY20 SY10 SYinf0 +
      sb * vnorm (fun j => Jty P vb y1 j - ye * DU va vb j) + Eball n N1 K sb r rF Yinf1 Y11 G1 SY21 SY11 SYinf1 +
      rH * Real.sqrt (∑ k, (Bty P va y0 T k + Bty P vb y1 T k) ^ 2) +
      Real.pi * (sa + sb) ^ 2 * (1 + ‖Se va vb‖ / 6) * |ye| := by
  have c0 := ball_core hδ hν hr hrF hK0 hK hxa hYinf0 hY10 hG0 hSY20 hSY10 hSYinf0 hN0 hcola
  have c1 := ball_core hδ hν hr hrF hK0 hK hxb hYinf1 hY11 hG1 hSY21 hSY11 hSYinf1 hN1 hcolb
  set z : I6 → ℝ := fun j => xa j - xb j
  have hz : vnorm z ≤ sa + sb := (vnorm_sub_le xa xb).trans (add_le_add hxa hxb)
  have he := edge_U_identity hz hunb
  set qU := (‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi)
  set EU := Real.pi * (sa + sb) ^ 2 * (1 + ‖Se va vb‖ / 6)
  have he' : |ye * qU + ye * ∑ j, DU va vb j * z j| ≤ EU * |ye| := by
    rw [← mul_add, abs_mul, mul_comm]; exact mul_le_mul_of_nonneg_right he (abs_nonneg _)
  -- linear parts
  set La := ∑ j, (Jty P va y0 j + ye * DU va vb j) * xa j
  set Lb := ∑ j, (Jty P vb y1 j - ye * DU va vb j) * xb j
  set Lη := ∑ k, η k * (Bty P va y0 T k + Bty P vb y1 T k)
  have hLa : |La| ≤ sa * vnorm (fun j => Jty P va y0 j + ye * DU va vb j) := by
    refine (abs_sum_mul_le _ _).trans ?_
    rw [mul_comm]; exact mul_le_mul_of_nonneg_right hxa (vnorm_nonneg _)
  have hLb : |Lb| ≤ sb * vnorm (fun j => Jty P vb y1 j - ye * DU va vb j) := by
    refine (abs_sum_mul_le _ _).trans ?_
    rw [mul_comm]; exact mul_le_mul_of_nonneg_right hxb (vnorm_nonneg _)
  have hLη : |Lη| ≤ rH * Real.sqrt (∑ k, (Bty P va y0 T k + Bty P vb y1 T k) ^ 2) :=
    (abs_sum_mul_le _ _).trans (mul_le_mul_of_nonneg_right hη (Real.sqrt_nonneg _))
  -- the algebraic identity
  have hid : ∑ i, y0 i * cc P va i + ∑ i, y1 i * cc P vb i + ye * qU =
      (∑ i, y0 i * cc P va i + ∑ j, Jty P va y0 j * xa j - ∑ k, η k * Bty P va y0 T k) +
      (∑ i, y1 i * cc P vb i + ∑ j, Jty P vb y1 j * xb j - ∑ k, η k * Bty P vb y1 T k) +
      (ye * qU + ye * ∑ j, DU va vb j * z j) - La - Lb + Lη := by
    have e1 : La = ∑ j, Jty P va y0 j * xa j + ye * ∑ j, DU va vb j * xa j := by
      simp only [La, add_mul, Finset.sum_add_distrib, Finset.mul_sum]
      congr 1; exact Finset.sum_congr rfl fun j _ => by ring
    have e2 : Lb = ∑ j, Jty P vb y1 j * xb j - ye * ∑ j, DU va vb j * xb j := by
      simp only [Lb, sub_mul, Finset.sum_sub_distrib, Finset.mul_sum]
      congr 1; exact Finset.sum_congr rfl fun j _ => by ring
    have e3 : ∑ j, DU va vb j * z j = ∑ j, DU va vb j * xa j - ∑ j, DU va vb j * xb j := by
      simp only [z, mul_sub, Finset.sum_sub_distrib]
    have e4 : Lη = ∑ k, η k * Bty P va y0 T k + ∑ k, η k * Bty P vb y1 T k := by
      simp only [Lη, mul_add, Finset.sum_add_distrib]
    rw [e1, e2, e3, e4]; ring
  rw [hid]
  set A := ∑ i, y0 i * cc P va i + ∑ j, Jty P va y0 j * xa j - ∑ k, η k * Bty P va y0 T k
  set B := ∑ i, y1 i * cc P vb i + ∑ j, Jty P vb y1 j * xb j - ∑ k, η k * Bty P vb y1 T k
  set C := ye * qU + ye * ∑ j, DU va vb j * z j
  rw [abs_le] at c0 c1 he' hLa hLb hLη ⊢
  constructor <;> linarith [c0.1, c0.2, c1.1, c1.2, he'.1, he'.2, hLa.1, hLa.2, hLb.1, hLb.2, hLη.1, hLη.2]

/-- **Joint test, O edges** (edge weight `y_e = (y₁, y₂)`; `D_Oᵀy_e = y₁(−Im Q) + y₂ Re Q`). -/
theorem joint_O {P δ : RMat6} {va vb xa xb y0 y1 : I6 → ℝ} {ye1 ye2 : ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ}
    {ν : RMat6} {n K sa sb r rF rH : ℝ}
    {Yinf0 Y10 G0 SY20 SY10 SYinf0 N0 Yinf1 Y11 G1 SY21 SY11 SYinf1 N1 : ℝ}
    (hδ : δ = (∑ k, η k • T k) + ν) (hη : Real.sqrt (∑ k, η k ^ 2) ≤ rH) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hxa : vnorm xa ≤ sa) (hxb : vnorm xb ≤ sb)
    (hcola : ColUnb (E (P + δ)) (fun j => e (va j + xa j)))
    (hcolb : ColUnb (E (P + δ)) (fun j => e (vb j + xb j)))
    (horth : Se' va vb (fun j => xa j - xb j) = 0)
    (hYinf0 : ∀ i, |y0 i| ≤ Yinf0) (hY10 : ∑ i, |y0 i| ≤ Y10)
    (hG0 : ∀ j, ‖∑ i, (y0 i : ℂ) * star (S P va i) * q P va j i‖ ≤ G0)
    (hSY20 : vnorm (fun i => |y0 i| * ‖S P va i‖) ≤ SY20) (hSY10 : ∑ i, |y0 i| * ‖S P va i‖ ≤ SY10)
    (hSYinf0 : ∀ i, |y0 i| * ‖S P va i‖ ≤ SYinf0) (hN0 : Real.sqrt (∑ i, ∑ j, (y0 i * Jm P va i j) ^ 2) ≤ N0)
    (hYinf1 : ∀ i, |y1 i| ≤ Yinf1) (hY11 : ∑ i, |y1 i| ≤ Y11)
    (hG1 : ∀ j, ‖∑ i, (y1 i : ℂ) * star (S P vb i) * q P vb j i‖ ≤ G1)
    (hSY21 : vnorm (fun i => |y1 i| * ‖S P vb i‖) ≤ SY21) (hSY11 : ∑ i, |y1 i| * ‖S P vb i‖ ≤ SY11)
    (hSYinf1 : ∀ i, |y1 i| * ‖S P vb i‖ ≤ SYinf1) (hN1 : Real.sqrt (∑ i, ∑ j, (y1 i * Jm P vb i j) ^ 2) ≤ N1) :
    |∑ i, y0 i * cc P va i + ∑ i, y1 i * cc P vb i + (ye1 * ((Se va vb).re / (2 * Real.pi)) + ye2 * ((Se va vb).im / (2 * Real.pi)))| ≤
      sa * vnorm (fun j => Jty P va y0 j + (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) + Eball n N0 K sa r rF Yinf0 Y10 G0 SY20 SY10 SYinf0 +
      sb * vnorm (fun j => Jty P vb y1 j - (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) + Eball n N1 K sb r rF Yinf1 Y11 G1 SY21 SY11 SYinf1 +
      rH * Real.sqrt (∑ k, (Bty P va y0 T k + Bty P vb y1 T k) ^ 2) +
      Real.sqrt (ye1 ^ 2 + ye2 ^ 2) * (Real.pi * (sa + sb) ^ 2) := by
  have c0 := ball_core hδ hν hr hrF hK0 hK hxa hYinf0 hY10 hG0 hSY20 hSY10 hSYinf0 hN0 hcola
  have c1 := ball_core hδ hν hr hrF hK0 hK hxb hYinf1 hY11 hG1 hSY21 hSY11 hSYinf1 hN1 hcolb
  set z : I6 → ℝ := fun j => xa j - xb j
  have hz : vnorm z ≤ sa + sb := (vnorm_sub_le xa xb).trans (add_le_add hxa hxb)
  have he' := edge_O_identity hz horth ye1 ye2
  -- linear parts
  set La := ∑ j, (Jty P va y0 j + (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) * xa j
  set Lb := ∑ j, (Jty P vb y1 j - (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) * xb j
  set Lη := ∑ k, η k * (Bty P va y0 T k + Bty P vb y1 T k)
  have hLa : |La| ≤ sa * vnorm (fun j => Jty P va y0 j + (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) := by
    refine (abs_sum_mul_le _ _).trans ?_
    rw [mul_comm]; exact mul_le_mul_of_nonneg_right hxa (vnorm_nonneg _)
  have hLb : |Lb| ≤ sb * vnorm (fun j => Jty P vb y1 j - (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) := by
    refine (abs_sum_mul_le _ _).trans ?_
    rw [mul_comm]; exact mul_le_mul_of_nonneg_right hxb (vnorm_nonneg _)
  have hLη : |Lη| ≤ rH * Real.sqrt (∑ k, (Bty P va y0 T k + Bty P vb y1 T k) ^ 2) :=
    (abs_sum_mul_le _ _).trans (mul_le_mul_of_nonneg_right hη (Real.sqrt_nonneg _))
  -- the algebraic identity
  set C := ye1 * ((Se va vb).re / (2 * Real.pi) + ∑ j, -(Qe va vb j).im * z j) +
    ye2 * ((Se va vb).im / (2 * Real.pi) + ∑ j, (Qe va vb j).re * z j)
  have hid : ∑ i, y0 i * cc P va i + ∑ i, y1 i * cc P vb i +
      (ye1 * ((Se va vb).re / (2 * Real.pi)) + ye2 * ((Se va vb).im / (2 * Real.pi))) =
      (∑ i, y0 i * cc P va i + ∑ j, Jty P va y0 j * xa j - ∑ k, η k * Bty P va y0 T k) +
      (∑ i, y1 i * cc P vb i + ∑ j, Jty P vb y1 j * xb j - ∑ k, η k * Bty P vb y1 T k) + C - La - Lb + Lη := by
    have e1 : La = ∑ j, Jty P va y0 j * xa j + (ye1 * ∑ j, -(Qe va vb j).im * xa j + ye2 * ∑ j, (Qe va vb j).re * xa j) := by
      simp only [La, add_mul, Finset.sum_add_distrib, Finset.mul_sum]
      congr 1; congr 1 <;> exact Finset.sum_congr rfl fun j _ => by ring
    have e2 : Lb = ∑ j, Jty P vb y1 j * xb j - (ye1 * ∑ j, -(Qe va vb j).im * xb j + ye2 * ∑ j, (Qe va vb j).re * xb j) := by
      simp only [Lb, sub_mul, add_mul, Finset.sum_sub_distrib, Finset.sum_add_distrib, Finset.mul_sum]
      congr 1; congr 1 <;> exact Finset.sum_congr rfl fun j _ => by ring
    have e3a : ∑ j, -(Qe va vb j).im * z j = ∑ j, -(Qe va vb j).im * xa j - ∑ j, -(Qe va vb j).im * xb j := by
      simp only [z, mul_sub, Finset.sum_sub_distrib]
    have e3b : ∑ j, (Qe va vb j).re * z j = ∑ j, (Qe va vb j).re * xa j - ∑ j, (Qe va vb j).re * xb j := by
      simp only [z, mul_sub, Finset.sum_sub_distrib]
    have e4 : Lη = ∑ k, η k * Bty P va y0 T k + ∑ k, η k * Bty P vb y1 T k := by
      simp only [Lη, mul_add, Finset.sum_add_distrib]
    simp only [C]
    rw [e1, e2, e3a, e3b, e4]; ring
  rw [hid]
  set A := ∑ i, y0 i * cc P va i + ∑ j, Jty P va y0 j * xa j - ∑ k, η k * Bty P va y0 T k
  set B := ∑ i, y1 i * cc P vb i + ∑ j, Jty P vb y1 j * xb j - ∑ k, η k * Bty P vb y1 T k
  rw [abs_le] at c0 c1 he' hLa hLb hLη ⊢
  constructor <;> linarith [c0.1, c0.2, c1.1, c1.2, he'.1, he'.2, hLa.1, hLa.2, hLb.1, hLb.2, hLη.1, hLη.2]

end NoFourMUBs.StageC

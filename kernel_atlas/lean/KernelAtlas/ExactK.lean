import KernelAtlas.BoundaryK

/-!
# Exact memberships in Records: the `fourier` and `tao` fields in the kernel

A matrix `e^{iπM}` (`M` rational) lies, after a signed permutation `A` and an integer winding `N`, in the Record
`(P_t, R_t)` if `‖h(A(πM) + 2πN − P_t)‖ < R_t` (Lemma 4.1 with `u = ν = 0`). With `π̃ ≤ π ≤ π̃ + 10⁻²⁰` and
`M' = AM + 2N`, the kernel checks (`memOK`)
`sumsq(h(π̃M' − P_t)) < D²`, `D = R_t − 10⁻²⁰ (sumsq M' + 1)/2 ≥ 0`.

* `fourierHadamard = affineFourierMatrix ω 1 1` has entries `ζ^m`, `ζ = e^{iπ/3}` (`fourier_eq`);
* `taoMatrix ω` for the two primitive cube roots `ω = e^{±2πi/3}` (`cubic_roots`) has entries `e^{±2πik/3}`
  (`tao_eq`).
`fourierK` and `taoK` give the fields `fourier` and `tao` of `AtlasCertificate` for any atlas containing the target
Records (centres and radii as hypotheses, as for `boundaryK`).
-/

open Matrix Hadamard6 NoFourMUBs

namespace NoFourMUBs.KernelAtlas

/-! ### The check -/

/-- The horizontal projection over `ℚ`. -/
def horQ (X : I6 → I6 → ℚ) (a b : I6) : ℚ :=
  X a b - s6 (X a) / 6 - s6 (fun c => X c b) / 6 + s6 (fun c => s6 (X c)) / 36

def sq6 (X : I6 → I6 → ℚ) : ℚ := s6 fun a => s6 fun b => X a b ^ 2

/-- `M' = A M + 2N`. -/
def mPr (Mq : I6 → I6 → ℚ) (t : BTgt) (a b : I6) : ℚ := t.actQ Mq a b + 2 * (mg t.N a b : ℚ)

def memD (Mq : I6 → I6 → ℚ) (t : BTgt) : ℚ := t.Rt - 1 / 10 ^ 20 * (sq6 (mPr Mq t) + 1) / 2

/-- The exact membership test of `e^{iπM}` in the target Record of `t` (the fields `Y`, `G`, `Th` are unused). -/
def memOK (Mq : I6 → I6 → ℚ) (t : BTgt) : Bool :=
  permChk t.rp t.rpi && permChk t.cp t.cpi && decide (0 ≤ memD Mq t) &&
  decide (sq6 (horQ fun a b => piLo * mPr Mq t a b - t.pt a b) < memD Mq t ^ 2)

/-! ### Soundness -/

lemma hor_ofRat (X : I6 → I6 → ℚ) :
    hor (Matrix.of fun a b => (X a b : ℝ)) = Matrix.of fun a b => (horQ X a b : ℝ) := by
  ext i j
  simp only [hor_apply, rowMean, colMean, allMean, Matrix.of_apply, horQ]
  push_cast [s6_cast]
  rfl

lemma sumsq_ofRat (X : I6 → I6 → ℚ) : sumsq (Matrix.of fun a b => (X a b : ℝ)) = (sq6 X : ℝ) := by
  simp only [sumsq, sq6, Matrix.of_apply, s6_cast]
  push_cast; rfl

/-- The phase matrix `πM`. -/
noncomputable def piM (Mq : I6 → I6 → ℚ) : RMat6 := Matrix.of fun i j => Real.pi * (Mq i j : ℝ)

lemma mem_sound {Mq : I6 → I6 → ℚ} {t : BTgt} (h : memOK Mq t = true) {Pt : RMat6} (hPt : Pt = Pmat t.pt)
    {Rt : ℝ} (hRt : (t.Rt : ℝ) ≤ Rt) :
    frob (hor (t.sp.act (piM Mq) + (2 * Real.pi) • t.wind.map (Int.cast : ℤ → ℝ) - Pt) +
      hor (t.sp.act 0)) + 0 < Rt := by
  simp only [memOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨h1, h2⟩, hD0⟩, hlt⟩ := h
  set Mr : RMat6 := Matrix.of fun a b => (mPr Mq t a b : ℝ)
  set Yl : RMat6 := Matrix.of fun a b => ((piLo * mPr Mq t a b - t.pt a b : ℚ) : ℝ)
  have hY : t.sp.act (piM Mq) + (2 * Real.pi) • t.wind.map (Int.cast : ℤ → ℝ) - Pt =
      Yl + (Real.pi - piLo) • Mr := by
    ext i j
    by_cases hcj : t.cj = true <;> by_cases htr : t.tr = true <;>
      simp [hcj, htr, Yl, Mr, mPr, BTgt.actQ, piM, hPt, Pmat, BTgt.wind, sp_act h1 h2] <;> ring
  have h0 : t.sp.act (0 : RMat6) = 0 := by simpa using act_smul t.sp 0 0
  have hpi1 := piLo_le_pi
  have hpi2 : Real.pi - piLo ≤ 1 / 10 ^ 20 := by
    have := Real.pi_lt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith
  have hfY : frob (hor Yl) < memD Mq t := by
    apply frob_lt_of_sumsq (by exact_mod_cast hD0)
    rw [hor_ofRat, sumsq_ofRat]
    exact_mod_cast hlt
  have hS : sumsq Mr = (sq6 (mPr Mq t) : ℝ) := sumsq_ofRat _
  have hS0 : (0 : ℝ) ≤ (sq6 (mPr Mq t) : ℝ) := by rw [← hS]; exact sumsq_nonneg _
  have hfM : frob (hor ((Real.pi - piLo) • Mr)) ≤ 1 / 10 ^ 20 * ((sq6 (mPr Mq t) : ℝ) + 1) / 2 := by
    refine (frob_hor_le _).trans ?_
    rw [frob_smul, frob_eq_sqrt Mr, hS, abs_of_nonneg (by linarith)]
    have := sqrt_le_half _ hS0
    have := Real.sqrt_nonneg (sq6 (mPr Mq t) : ℝ)
    nlinarith
  have hDr : ((memD Mq t : ℚ) : ℝ) = t.Rt - 1 / 10 ^ 20 * ((sq6 (mPr Mq t) : ℝ) + 1) / 2 := by
    simp only [memD]; push_cast; ring
  rw [hY, h0, hor_add, hor_zero, add_zero, add_zero]
  have := frob_add_le (hor Yl) (hor ((Real.pi - piLo) • Mr))
  linarith

/-- Lemma 4.1 with `u = ν = 0`, keeping the `Γ`-image explicit. -/
lemma inRecord_gam (A : SignedPerm) (N : Matrix I6 I6 ℤ) {Ps Pt : RMat6} {Rt : ℝ}
    (h : frob (hor (A.act Ps + (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ) - Pt) + hor (A.act 0)) + 0 < Rt) :
    InRecord Pt Rt (A.gam (phaseMat Ps)) := by
  have h0 : A.act (0 : RMat6) = 0 := by simpa using act_smul A 0 0
  rw [h0, hor_zero, add_zero, add_zero] at h
  set W : RMat6 := (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ)
  refine ⟨hor (A.act Ps + W - Pt), hor_isHorizontal _, h, ?_⟩
  have h1 := A.equivalent_act Ps
  have h2 : phaseMat (A.act Ps) = phaseMat (A.act Ps + W) := (phaseMat_add_winding _ N).symm
  have h3 := phaseMat_equivalent_add_hor Pt (A.act Ps + W - Pt)
  rw [add_sub_cancel] at h3
  rw [h2] at h1
  exact equivalent_equivalence.trans h1 (equivalent_equivalence.symm h3)

/-- **Exact membership**: `e^{iπM}`, after `Γ`, is a point of the Record `A l`. -/
theorem covered_of_memOK {ι : Type*} (A : ι → RecordCert) (l : ι) {Mq : I6 → I6 → ℚ} {t : BTgt}
    (h : memOK Mq t = true) (hP : (A l).P = Pmat t.pt) (hR : (t.Rt : ℝ) ≤ (A l).R) :
    ∃ K, InAtlas A K ∧ Equivalent (t.sp.gam (phaseMat (piM Mq))) K := by
  obtain ⟨δ, hδ, hlt, he⟩ := inRecord_gam t.sp t.wind (mem_sound h hP hR)
  exact ⟨_, ⟨l, δ, hδ, hlt.le, rfl⟩, he⟩

lemma gam_id {t : BTgt} (hcj : t.cj = false) (htr : t.tr = false) (H : Mat6) : t.sp.gam H = H := by
  simp [SignedPerm.gam, BTgt.sp, hcj, htr]

/-! ### Sixth roots of unity -/

/-- `e^{iπm/3}`. -/
noncomputable def cisT (m : ℤ) : ℂ := Complex.exp (↑(Real.pi * (((m : ℚ) / 3 : ℚ) : ℝ)) * Complex.I)

lemma cisT_eq (m : ℤ) (c s : ℝ) (hc : Real.cos (Real.pi * (m / 3)) = c) (hs : Real.sin (Real.pi * (m / 3)) = s) :
    cisT m = ⟨c, s⟩ := by
  apply Complex.ext
  · rw [cisT, Complex.exp_ofReal_mul_I_re]; push_cast; exact hc
  · rw [cisT, Complex.exp_ofReal_mul_I_im]; push_cast; exact hs

lemma cisT_0 : cisT 0 = 1 := by
  rw [cisT_eq 0 1 0 (by simp) (by simp)]; rfl

lemma s3sq : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)

lemma omega_eq : standardOmega = ⟨-(1 / 2), Real.sqrt 3 / 2⟩ := rfl

lemma omega_sq : standardOmega ^ 2 = ⟨-(1 / 2), -(Real.sqrt 3 / 2)⟩ := by
  apply Complex.ext <;> simp [standardOmega, pow_two] <;> nlinarith [s3sq]

lemma omega_conj : (starRingEnd ℂ) standardOmega = ⟨-(1 / 2), -(Real.sqrt 3 / 2)⟩ := by
  apply Complex.ext <;> simp [standardOmega]

lemma omega_conj_sq : (starRingEnd ℂ) standardOmega ^ 2 = standardOmega := by
  rw [omega_conj]; apply Complex.ext <;> simp [standardOmega, pow_two] <;> nlinarith [s3sq]

lemma cisT_1 : cisT 1 = -(standardOmega ^ 2) := by
  rw [cisT_eq 1 (1 / 2) (Real.sqrt 3 / 2) (by push_cast; rw [mul_one_div]; exact Real.cos_pi_div_three)
    (by push_cast; rw [mul_one_div]; exact Real.sin_pi_div_three), omega_sq]
  apply Complex.ext <;> simp

lemma cisT_2 : cisT 2 = standardOmega := by
  have e : Real.pi * ((2 : ℤ) / 3 : ℝ) = Real.pi - Real.pi / 3 := by push_cast; ring
  rw [cisT_eq 2 (-(1 / 2)) (Real.sqrt 3 / 2) (by rw [e, Real.cos_pi_sub, Real.cos_pi_div_three])
    (by rw [e, Real.sin_pi_sub, Real.sin_pi_div_three])]; rfl

lemma cisT_3 : cisT 3 = -1 := by
  have e : Real.pi * ((3 : ℤ) / 3 : ℝ) = Real.pi := by push_cast; ring
  rw [cisT_eq 3 (-1) 0 (by rw [e, Real.cos_pi]) (by rw [e, Real.sin_pi])]
  apply Complex.ext <;> simp

lemma cisT_4 : cisT 4 = standardOmega ^ 2 := by
  have e : Real.pi * ((4 : ℤ) / 3 : ℝ) = Real.pi / 3 + Real.pi := by push_cast; ring
  rw [cisT_eq 4 (-(1 / 2)) (-(Real.sqrt 3 / 2)) (by rw [e, Real.cos_add_pi, Real.cos_pi_div_three])
    (by rw [e, Real.sin_add_pi, Real.sin_pi_div_three]), omega_sq]

lemma cisT_5 : cisT 5 = -standardOmega := by
  have e : Real.pi * ((5 : ℤ) / 3 : ℝ) = -(Real.pi / 3) + 2 * Real.pi := by push_cast; ring
  rw [cisT_eq 5 (1 / 2) (-(Real.sqrt 3 / 2)) (by rw [e, Real.cos_add_two_pi, Real.cos_neg, Real.cos_pi_div_three])
    (by rw [e, Real.sin_add_two_pi, Real.sin_neg, Real.sin_pi_div_three])]
  apply Complex.ext <;> simp [standardOmega]

lemma cisT_m2 : cisT (-2) = (starRingEnd ℂ) standardOmega := by
  have e : Real.pi * ((-2 : ℤ) / 3 : ℝ) = -(Real.pi - Real.pi / 3) := by push_cast; ring
  rw [cisT_eq (-2) (-(1 / 2)) (-(Real.sqrt 3 / 2))
    (by rw [e, Real.cos_neg, Real.cos_pi_sub, Real.cos_pi_div_three])
    (by rw [e, Real.sin_neg, Real.sin_pi_sub, Real.sin_pi_div_three]), omega_conj]

lemma cisT_m4 : cisT (-4) = (starRingEnd ℂ) standardOmega ^ 2 := by
  have e : Real.pi * ((-4 : ℤ) / 3 : ℝ) = -(Real.pi / 3 + Real.pi) := by push_cast; ring
  rw [cisT_eq (-4) (-(1 / 2)) (Real.sqrt 3 / 2)
    (by rw [e, Real.cos_neg, Real.cos_add_pi, Real.cos_pi_div_three])
    (by rw [e, Real.sin_neg, Real.sin_add_pi, Real.sin_pi_div_three]; ring), omega_conj_sq]; rfl

/-! ### The two primitive cube roots -/

lemma cubic_roots {ω : ℂ} (h : IsPrimitiveCubicPhase ω) : ω = standardOmega ∨ ω = (starRingEnd ℂ) standardOmega := by
  obtain ⟨-, hq⟩ := h
  have hre := congrArg Complex.re hq
  have him := congrArg Complex.im hq
  simp [pow_two] at hre him
  have hy : ω.im * (2 * ω.re + 1) = 0 := by linarith
  rcases mul_eq_zero.mp hy with h0 | h1
  · exfalso; rw [h0] at hre; nlinarith [sq_nonneg (ω.re + 1 / 2)]
  have hx : ω.re = -(1 / 2) := by linarith
  have hy2 : ω.im ^ 2 = (Real.sqrt 3 / 2) ^ 2 := by rw [div_pow, s3sq]; nlinarith
  rcases sq_eq_sq_iff_eq_or_eq_neg.mp hy2 with hp | hn
  · left; apply Complex.ext <;> simp [standardOmega, hx, hp]
  · right; apply Complex.ext <;> simp [standardOmega, hx, hn]

/-! ### The matrices -/

/-- The exponents of `fourierHadamard` in powers of `ζ = e^{iπ/3}`. -/
def fourierMZ : Matrix I6 I6 ℤ :=
  Matrix.fromBlocks !![0, 0, 0; 0, 3, 0; 0, 0, 2] !![0, 0, 0; 3, 0, 3; 2, 4, 4]
    !![0, 3, 2; 0, 0, 4; 0, 3, 4] !![5, 4, 1; 4, 2, 2; 1, 2, 5]

def fourierMq (i j : I6) : ℚ := ((fourierMZ i j : ℤ) : ℚ) / 3

theorem fourier_eq : Step2.fourierHadamard.1 = phaseMat (piM fourierMq) := by
  ext i j
  change _ = cisT (fourierMZ i j)
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [Step2.fourierHadamard, affineFourierMatrix, fourierMZ, cisT_0, cisT_1, cisT_2, cisT_3, cisT_4, cisT_5]

/-- The exponents of `taoMatrix ω` in powers of `ω`. -/
def taoMZ : Matrix I6 I6 ℤ :=
  Matrix.fromBlocks !![0, 0, 0; 0, 0, 1; 0, 1, 0] !![0, 0, 0; 1, 2, 2; 2, 2, 1]
    !![0, 1, 2; 0, 2, 2; 0, 2, 1] !![0, 1, 2; 1, 0, 1; 2, 1, 0]

def taoMq (sg : ℤ) (i j : I6) : ℚ := ((2 * sg * taoMZ i j : ℤ) : ℚ) / 3

theorem tao_eq_pos : taoMatrix standardOmega = phaseMat (piM (taoMq 1)) := by
  ext i j
  change _ = cisT (2 * 1 * taoMZ i j)
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [taoMatrix, taoMZ, cisT_0, cisT_2, cisT_4]

theorem tao_eq_neg : taoMatrix ((starRingEnd ℂ) standardOmega) = phaseMat (piM (taoMq (-1))) := by
  ext i j
  change _ = cisT (2 * (-1) * taoMZ i j)
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [taoMatrix, taoMZ, cisT_0, cisT_m2, cisT_m4]

/-! ### The fields -/

/-- **The `fourier` field** for any atlas containing the target Record of `t`. -/
theorem fourierK {ι : Type*} (A : ι → RecordCert) (l : ι) {t : BTgt} (h : memOK fourierMq t = true)
    (hP : (A l).P = Pmat t.pt) (hR : (t.Rt : ℝ) ≤ (A l).R) : Step2.FourierAnchorCertificate (InAtlas A) := by
  obtain ⟨K, hK, he⟩ := covered_of_memOK A l h hP hR
  refine ⟨t.sp.gam (phaseMat (piM fourierMq)), K, ?_, hK, he⟩
  rw [fourier_eq]; exact t.sp.inGamma_gam _

/-- **The `tao` field** for any atlas containing the Record of `tp` and `tn` (one alignment for each cube root,
without transposition or conjugation). -/
theorem taoK {ι : Type*} (A : ι → RecordCert) (l : ι) {tp tn : BTgt} (hp : memOK (taoMq 1) tp = true)
    (hn : memOK (taoMq (-1)) tn = true) (hpg : tp.cj = false ∧ tp.tr = false) (hng : tn.cj = false ∧ tn.tr = false)
    (hPp : (A l).P = Pmat tp.pt) (hRp : (tp.Rt : ℝ) ≤ (A l).R) (hPn : (A l).P = Pmat tn.pt)
    (hRn : (tn.Rt : ℝ) ≤ (A l).R) :
    ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K := by
  intro ω hω
  rcases cubic_roots hω with rfl | rfl
  · obtain ⟨K, hK, he⟩ := covered_of_memOK A l hp hPp hRp
    rw [gam_id hpg.1 hpg.2, ← tao_eq_pos] at he
    exact ⟨K, hK, he⟩
  · obtain ⟨K, hK, he⟩ := covered_of_memOK A l hn hPn hRn
    rw [gam_id hng.1 hng.2, ← tao_eq_neg] at he
    exact ⟨K, hK, he⟩

end NoFourMUBs.KernelAtlas

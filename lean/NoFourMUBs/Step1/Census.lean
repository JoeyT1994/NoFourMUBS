import NoFourMUBs.Step1.Lift

/-!
# Step 1: the census of maxima of `R` (`Step2.MaximumCensus`)

Let `q = e^{iα} = (1 + i√15)/4` (`α = arccos(1/4)`) and `ζ = e^{2πi/3}`.  For `k ∈ {0,1,2}` and a sign, put
`a = ζᵏq^{±1}`, `b = ζᵏq^{∓1}`; the traces `2a + ā²`, `2b + b̄²` have the ordered triples
`(a, a, ā²)`, `(a, ā², a)`, `(ā², a, a)` (and the same for `b`).  The `54` lifts `Ψ` of these triples are the
`anchors` (`18` distinct seeds, since `Ψ` is three-to-one).

**Theorem (`maximumCensus`).** Every positive local maximum of `R` on `T⁴` is an anchor.

Proof: lift the seed (`exists_Psi`); a local maximum of `R` is a relative local maximum of `ℛ` on `D × D`
(`relmax_of_seed`); the census on `D × D` (`relmax_census`) gives `z³ = ±1`, `Re w = ±1/4`; the fibre lemma
identifies the triples.  Each anchor has `R = R(1/4, 1) = 3¹³/2¹² > 0`.
-/

open Filter Topology ComplexConjugate NoFourMUBs.Step1Saddle NoFourMUBs.Step2

namespace NoFourMUBs.Step1Geo

/-- `q = e^{iα}`, `cos α = 1/4`. -/
noncomputable def qC : Circle := Circle.exp (Real.arccos (1 / 4))

/-- `ζ = e^{2πi/3}`. -/
noncomputable def ζC : Circle := Circle.exp (2 * Real.pi / 3)

lemma qC_re : (qC : ℂ).re = 1 / 4 := by
  rw [qC, Circle.coe_exp, Complex.exp_ofReal_mul_I_re, Real.cos_arccos (by norm_num) (by norm_num)]

lemma ζC_prim : IsPrimitiveRoot (ζC : ℂ) 3 := by
  have h := Complex.isPrimitiveRoot_exp 3 (by norm_num)
  convert h using 1
  rw [ζC, Circle.coe_exp]; congr 1; push_cast; ring

/-- The roots `a` and `b` of an anchor. -/
noncomputable def aOf (k : Fin 3) (s : Bool) : Circle := ζC ^ (k : ℕ) * (if s then qC else qC⁻¹)
noncomputable def bOf (k : Fin 3) (s : Bool) : Circle := ζC ^ (k : ℕ) * (if s then qC⁻¹ else qC)

/-- The three orderings of the triple `(a, a, ā²)`. -/
noncomputable def ordT (i : Fin 3) (a : Circle) : Tr := reord (![0, 2, 3] i) (a, a)

abbrev AnchorIdx := Fin 3 × Bool × Fin 3 × Fin 3

noncomputable def anchorQ (n : AnchorIdx) : Tr × Tr :=
  (ordT n.2.2.1 (aOf n.1 n.2.1), ordT n.2.2.2 (bOf n.1 n.2.1))

noncomputable def anchorSeed (n : AnchorIdx) : Seed := Psi (anchorQ n)

lemma sumT_diag (a : Circle) : sumT (a, a) = 2 * (a : ℂ) + star (a : ℂ) ^ 2 := by
  have := Circle.coe_ne_zero a
  simp only [sumT, coe_third, Complex.star_def, conj_circle]; field_simp; ring

lemma sumT_ordT (i : Fin 3) (a : Circle) : sumT (ordT i a) = 2 * (a : ℂ) + star (a : ℂ) ^ 2 := by
  rw [ordT, sumT_reord, sumT_diag]

lemma coe_aOf (k : Fin 3) (s : Bool) :
    (aOf k s : ℂ) = (ζC : ℂ) ^ (k : ℕ) * (if s then (qC : ℂ) else star (qC : ℂ)) := by
  cases s <;> simp [aOf, Complex.star_def, ← Circle.coe_inv_eq_conj]

lemma coe_bOf (k : Fin 3) (s : Bool) :
    (bOf k s : ℂ) = (ζC : ℂ) ^ (k : ℕ) * star (if s then (qC : ℂ) else star (qC : ℂ)) := by
  cases s <;> simp [bOf, Complex.star_def, ← Circle.coe_inv_eq_conj]

lemma Phi_anchorQ (n : AnchorIdx) :
    Phi (anchorQ n) = Tp ((ζC : ℂ) ^ (n.1 : ℕ)) (if n.2.1 then (qC : ℂ) else star (qC : ℂ)) := by
  simp only [Phi, anchorQ, sumT_ordT, coe_aOf, coe_bOf, Tp]

lemma Rch_anchor : Rch (1 / 4) 1 = 3 ^ 13 / 2 ^ 12 := by norm_num [Rch, Lp, Mp, Np]

lemma seedR_anchor (n : AnchorIdx) : seedR (anchorSeed n) = 3 ^ 13 / 2 ^ 12 := by
  have hz : Complex.normSq ((ζC : ℂ) ^ (n.1 : ℕ)) = 1 := by rw [map_pow, Circle.normSq_coe, one_pow]
  have hw : Complex.normSq (if n.2.1 then (qC : ℂ) else star (qC : ℂ)) = 1 := by
    split_ifs
    · exact Circle.normSq_coe _
    · exact normSq_star_one (Circle.normSq_coe _)
  have hre : (if n.2.1 then (qC : ℂ) else star (qC : ℂ)).re = 1 / 4 := by
    split_ifs
    · exact qC_re
    · rw [Complex.star_def, Complex.conj_re, qC_re]
  have h3 : (((ζC : ℂ) ^ (n.1 : ℕ)) ^ 3).re = 1 := by
    rw [← pow_mul, mul_comm, pow_mul, ζC_prim.pow_eq_one, one_pow, Complex.one_re]
  rw [anchorSeed, seedR_Psi, Phi_anchorQ, calRUV_Tp hz hw, hre, h3, Rch_anchor]

lemma anchor_pos (n : AnchorIdx) : 0 < seedR (anchorSeed n) := by rw [seedR_anchor]; norm_num

/-- **The maximum anchors.** -/
noncomputable def anchors : Finset StrictSeed := by
  classical exact Finset.univ.image fun n : AnchorIdx => (⟨anchorSeed n, anchor_pos n⟩ : StrictSeed)

/-! ### The census -/

lemma eq_qC {w : ℂ} (hw : Complex.normSq w = 1) (hre : w.re = 1 / 4) : w = qC ∨ w = star (qC : ℂ) := by
  have hq := Circle.normSq_coe qC
  rw [Complex.normSq_apply] at hw hq
  rw [qC_re] at hq; rw [hre] at hw
  have : (w.im - (qC : ℂ).im) * (w.im + (qC : ℂ).im) = 0 := by linear_combination hw - hq
  rcases mul_eq_zero.mp this with h | h
  · left; exact Complex.ext (by rw [hre, qC_re]) (by linarith)
  · right; refine Complex.ext (by rw [hre, Complex.star_def, Complex.conj_re, qC_re]) ?_
    rw [Complex.star_def, Complex.conj_im]; linarith

lemma cube_eq_one {z : ℂ} (hz : Complex.normSq z = 1) (h : (z ^ 3).re = 1) : z ^ 3 = 1 := by
  have hZ : Complex.normSq (z ^ 3) = 1 := by rw [map_pow, hz, one_pow]
  rw [Complex.normSq_apply, h] at hZ
  have him : (z ^ 3).im = 0 := by nlinarith
  exact Complex.ext (by rw [h, Complex.one_re]) (by rw [him, Complex.one_im])

lemma Tp_neg (z w : ℂ) : Tp (-z) (-w) = Tp z w := by
  simp only [Tp, neg_mul_neg, star_neg, mul_neg, neg_mul, neg_neg]

/-- The census on `D × D`, normalised: `z = ζᵏ`, `w = q` or `q̄`. -/
lemma normal_census {U V : ℂ} (hU : InD U) (hV : InD V) (hpos : 0 < calRUV U V)
    (hmax : IsLocalMaxOn calRUV' DD (U, V)) :
    ∃ (k : Fin 3) (s : Bool), (U, V) = Tp ((ζC : ℂ) ^ (k : ℕ)) (if s then (qC : ℂ) else star (qC : ℂ)) := by
  obtain ⟨z, w, hz, hw, hT, hc⟩ := relmax_census hU hV hpos hmax
  obtain ⟨z0, w0, hz0, hw0, hT0, h3, hre⟩ : ∃ z0 w0 : ℂ, Complex.normSq z0 = 1 ∧ Complex.normSq w0 = 1 ∧
      (U, V) = Tp z0 w0 ∧ (z0 ^ 3).re = 1 ∧ w0.re = 1 / 4 := by
    rcases hc with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · exact ⟨z, w, hz, hw, hT, h1, h2⟩
    · refine ⟨-z, -w, by rwa [Complex.normSq_neg], by rwa [Complex.normSq_neg], by rw [Tp_neg]; exact hT, ?_, ?_⟩
      · rw [show (-z) ^ 3 = -(z ^ 3) by ring, Complex.neg_re, h1]; norm_num
      · rw [Complex.neg_re, h2]; norm_num
  obtain ⟨i, hi, hζ⟩ := ζC_prim.eq_pow_of_pow_eq_one (cube_eq_one hz0 h3)
  rcases eq_qC hw0 hre with h | h
  · exact ⟨⟨i, hi⟩, true, by rw [hT0, ← hζ, h]; simp⟩
  · exact ⟨⟨i, hi⟩, false, by rw [hT0, ← hζ, h]; simp⟩

lemma ordT_of_reord (m : Fin 6) (a : Circle) : ∃ i, reord m (a, a) = ordT i a := by
  fin_cases m
  · exact ⟨0, rfl⟩
  · exact ⟨0, rfl⟩
  · exact ⟨1, rfl⟩
  · exact ⟨2, rfl⟩
  · exact ⟨1, rfl⟩
  · exact ⟨2, rfl⟩

/-- **Step 1 (Theorem 1).** Every positive local maximum of `R` on `T⁴` is one of the anchors. -/
theorem maximumCensus : MaximumCensus anchors := by
  intro p hp hmax
  obtain ⟨q, rfl⟩ := exists_Psi p
  have hrel := relmax_of_seed hmax
  have hpos : 0 < calRUV' (Phi q) := by rw [← seedR_Psi]; exact hp
  obtain ⟨k, s, hks⟩ := normal_census (sumT_inD q.1) (sumT_inD q.2) hpos hrel
  have e1 : sumT (aOf k s, aOf k s) = sumT q.1 := by
    rw [sumT_diag, coe_aOf]; exact (Prod.ext_iff.mp hks).1.symm
  have e2 : sumT (bOf k s, bOf k s) = sumT q.2 := by
    rw [sumT_diag, coe_bOf]; exact (Prod.ext_iff.mp hks).2.symm
  obtain ⟨m1, hm1⟩ := fibre e1
  obtain ⟨m2, hm2⟩ := fibre e2
  obtain ⟨i, hi⟩ := ordT_of_reord m1 (aOf k s)
  obtain ⟨j, hj⟩ := ordT_of_reord m2 (bOf k s)
  have hq : q = anchorQ (k, s, i, j) := Prod.ext (hm1.trans hi) (hm2.trans hj)
  simp only [anchors, Finset.mem_image, Finset.mem_univ, true_and]
  exact ⟨(k, s, i, j), Subtype.ext (by simp only [anchorSeed, ← hq])⟩

end NoFourMUBs.Step1Geo

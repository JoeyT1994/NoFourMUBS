import KernelAtlas.WholeBall.CentreRegular

/-! A single certified centre supplies both the entry enclosures and the
analytic phase germ. The side roots used by the germ are exactly those used
by the dyadic entry and argument models. -/

open Matrix Complex Hadamard6 NoFourMUBs.Side NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.KernelAtlas.Seed Filter Topology
open scoped Matrix.Norms.Elementwise

namespace NoFourMUBs.KernelAtlas.WholeBall

structure CertifiedCentre (B : BallD) (D : BoxD) (o : ℤˣ)
    extends RegularCentre (th0R B) o where
  phase : RMat6
  completion_eq : centreCompletion (th0R B) phiH phiV = phaseMat phase
  seed_eq : cornerTheta phase 1 1 = th0R B
  phase_models : ∀ i j, (gT (qModels B D) (ix i j)).Has 0 (phase i j : ℂ)
  entry_models : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat phase i j)

theorem certifiedCentreCheck_sound {B : BallD} {D : BoxD} {o : ℤˣ}
    (h : regularCentreCheck B D = true) (ho : B.o = (o : ℤ)) :
    Nonempty (CertifiedCentre B D o) := by
  simp only [regularCentreCheck, Bool.and_eq_true] at h
  have hR := (centreCheck_sound h.1.1 ho).1
  have hc := h.1.1
  simp only [centreCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hu : InBox D.hb (0 : Fin 4 → ℝ) := by
    intro j
    simp only [Pi.zero_apply, abs_zero]
    exact rn_nonneg _
  have hw : wOf D (0 : Fin 4 → ℝ) = 0 := by
    ext j; fin_cases j <;> simp [wOf, hc.2, gi, rq]
  have hθ : (fun k : Fin 4 => thR B (wOf D 0) k) = th0R B := by
    ext k
    rw [thR_eq, hw, Matrix.mulVec_zero, add_zero]
  let e := (l4 (thetaT B D)).map (expI D.hb nT)
  have hk : coreOK B D =
      ((l4 (thetaT B D)).all (fun t => expOK t nT) &&
      (sideK D.hb (gramH D.hb e) D.phH D.YH D.tubeH).ok &&
      (sideK D.hb (gramV D.hb e) D.phV D.YV D.tubeV).ok &&
      signAny D.hb B.o (centreRows B D false) && signAny D.hb (-B.o) (centreRows B D true) &&
      (forcedT D.hb D.Xp D.A0 (ET e) (BT (centreRows B D false)) (CT3 (centreRows B D true))).ok &&
      (l9 fun q => argOK D.hb nT (gi D.argA q)
        (gT (forcedT D.hb D.Xp D.A0 (ET e) (BT (centreRows B D false))
          (CT3 (centreRows B D true))).D q)).all id) := rfl
  rw [hk] at hc
  simp only [Bool.and_eq_true] at hc
  obtain ⟨⟨⟨⟨⟨⟨hexp, hkH⟩, hkV⟩, hsH⟩, hsV⟩, hforce⟩, hargok⟩ := hc.1
  have hcor := has_corner (B := B) (D := D) hu hexp
  obtain ⟨hGH, hGV⟩ := has_gram hu hcor
  obtain ⟨φH, hhs, hht, hhr, hphH, hxH, hyH⟩ := side_sound hu hGH hkH
  obtain ⟨φV, hvs, hvt, hvr, hphV, hxV, hyV⟩ := side_sound hu hGV hkV
  have hIh := sideRegularCheck_sound hu hxH hyH h.1.2
  have hIv := sideRegularCheck_sound hu hxV hyV h.2
  have ho' : B.o = 1 ∨ B.o = -1 := by
    rcases Int.units_eq_one_or o with h1 | h1 <;> simp [ho, h1]
  have ho'' : -B.o = 1 ∨ -B.o = -1 := by rcases ho' with h1 | h1 <;> simp [h1]
  have hsh := signAny_sound hu hxH hyH ho' hsH
  have hsv := signAny_sound hu hxV hyV ho'' hsV
  have hos : osgn o = (B.o : ℝ) := by simp [osgn, ho]
  change sS (sx φH) = L1.FlatCircuits.sh (phaseSeed (fun k => thR B (wOf D 0) k)) at hhs
  change sS (sy φH) = L1.FlatCircuits.th (phaseSeed (fun k => thR B (wOf D 0) k)) at hht
  change rS (sx φH) (sy φH) = L1.FlatCircuits.rh (phaseSeed (fun k => thR B (wOf D 0) k)) at hhr
  change sS (sx φV) = L1.FlatCircuits.sv (phaseSeed (fun k => thR B (wOf D 0) k)) at hvs
  change sS (sy φV) = L1.FlatCircuits.tv (phaseSeed (fun k => thR B (wOf D 0) k)) at hvt
  change rS (sx φV) (sy φV) = L1.FlatCircuits.rv (phaseSeed (fun k => thR B (wOf D 0) k)) at hvr
  rw [hθ] at hhs hht hhr hvs hvt hvr
  have hsH : 0 < osgn o * (psi (sideMatrix φH)).im := by
    simpa only [sideMatrix, hos] using hsh
  have hsV : 0 < -osgn o * (psi (sideMatrix φV)).im := by
    simpa only [sideMatrix, hos, Int.cast_neg] using hsv
  have hrootH : sideResidual false (th0R B, φH) = 0 := by
    ext i
    fin_cases i <;> simp [sideResidual, sideF, sideG, hhs, hht, hhr]
  have hrootV : sideResidual true (th0R B, φV) = 0 := by
    ext i
    fin_cases i <;> simp [sideResidual, sideF, sideG, hvs, hvt, hvr]
  have hm := matched_of_sides (o := o) (p := seedOf (th0R B))
    (by simpa only [phaseSeed_eq] using hhs)
    (by simpa only [phaseSeed_eq] using hht)
    (by simpa only [phaseSeed_eq] using hhr)
    (by simpa only [phaseSeed_eq] using hvs)
    (by simpa only [phaseSeed_eq] using hvt)
    (by simpa only [phaseSeed_eq] using hvr) hsH hsV
  let E3 := L1.FlatCircuits.Em (phaseSeed (th0R B))
  let B3 := sideMatrix φH
  let C3 := (sideMatrix φV)ᵀ
  have hHad : Hadamard6.IsHadamard (completion E3 B3 C3) := hm.2.1
  have hDmul : Hadamard6.forcedD E3 B3 C3 * B3ᴴ = -(C3 * E3ᴴ) :=
    Method.forced_mul (cross_of_hadamard hHad)
  have hcor' : Has3 0 (ET e) E3 := by
    have he := has3_ET hcor
    change Has3 0 (ET e) (L1.FlatCircuits.Em
      (phaseSeed (fun k : Fin 4 => thR B (wOf D 0) k))) at he
    rw [hθ] at he
    exact he
  have hDh := forced_sound hu hcor' (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDmul hforce
  set argD := l9 fun q => argT D.hb nT (gi D.argA q)
    (gT (forcedT D.hb D.Xp D.A0 (ET e) (BT (centreRows B D false))
      (CT3 (centreRows B D true))).D q)
  have harg : ∀ a b : Fin 3, ∃ Φ : ℝ,
      Hadamard6.forcedD E3 B3 C3 a b = Complex.exp ((Φ : ℂ) * I) ∧
      (gT argD (3 * a + b)).Has 0 (Φ : ℂ) := by
    intro a b
    have hk : 3 * (a : ℕ) + b < 9 := by omega
    obtain ⟨Φ, hΦ, hmodel⟩ := has_argT hu (all_l9 hargok hk) (hDh a b)
    have hunit : ‖Hadamard6.forcedD E3 B3 C3 a b‖ = 1 := by
      have hh := hHad.1 (.inr a) (.inr b)
      rw [Complex.normSq_eq_norm_sq] at hh
      exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) (by norm_num)).1 hh
    refine ⟨Φ, ?_, ?_⟩
    · rw [hΦ, hunit, Complex.ofReal_one, one_mul]
    · dsimp only [argD]
      rw [gT_l9 _ hk]; exact hmodel
  choose Φ hΦD hΦm using harg
  set Q : RMat6 := Matrix.of fun i j => Qf (e4 (th0R B)) (e6 φH) (e6 φV) (e9 Φ) (ix i j)
  have hphase : phaseMat Q = centreCompletion (th0R B) φH φV := by
    dsimp only [Q]
    rw [phaseMat_Qf hΦD]
    rfl
  have hthk : ∀ k, (gT (l4 (thetaT B D)) k).Has 0 (e4 (th0R B) k : ℂ) := by
    intro k
    by_cases hk : k < 4
    · rw [gT_l4 _ hk]
      simp only [e4, dif_pos hk]
      have hh := has_thetaT B D k (u := (0 : Fin 4 → ℝ))
      simpa only [← hθ] using hh
    · rw [gT_ge _ (by simp [l4]; omega)]
      simp only [e4, dif_neg hk]
      exact has_zero' 0
  have hHk : ∀ k, (gT (tubeT D.phH (sideK D.hb (gramH D.hb e) D.phH D.YH D.tubeH).e) k).Has 0
      (e6 φH k : ℂ) := by
    intro k
    by_cases hk : k < 6
    · simp only [e6, dif_pos hk]; exact hphH ⟨k, hk⟩
    · rw [gT_ge _ (by simp [tubeT, l6]; omega)]
      simp only [e6, dif_neg hk]; exact has_zero' 0
  have hVk : ∀ k, (gT (tubeT D.phV (sideK D.hb (gramV D.hb e) D.phV D.YV D.tubeV).e) k).Has 0
      (e6 φV k : ℂ) := by
    intro k
    by_cases hk : k < 6
    · simp only [e6, dif_pos hk]; exact hphV ⟨k, hk⟩
    · rw [gT_ge _ (by simp [tubeT, l6]; omega)]
      simp only [e6, dif_neg hk]; exact has_zero' 0
  have hAk : ∀ k, (gT argD k).Has 0 (e9 Φ k : ℂ) := by
    intro k
    by_cases hk : k < 9
    · simp only [e9, dif_pos hk]
      have hh := hΦm ⟨k / 3, by omega⟩ ⟨k % 3, by omega⟩
      simp only [] at hh
      rwa [show 3 * (k / 3) + k % 3 = k by omega] at hh
    · rw [gT_ge _ (by simp [argD, l9]; omega)]
      simp only [e9, dif_neg hk]; exact has_zero' 0
  refine ⟨{
    phiH := φH, phiV := φV, strict := hR, rootH := hrootH, rootV := hrootV,
    detH := hIh, detV := hIv, signH := hsH, signV := hsV, phase := Q,
    completion_eq := hphase.symm, seed_eq := ?_, phase_models := ?_, entry_models := ?_ }⟩
  · ext k
    fin_cases k <;> norm_num [Q, cornerTheta, Qf, e4, ix, sidx, cornerD]
  · intro i j
    exact has_QT (h := D.hb) hthk hHk hVk hAk (ix_lt i j)
  · intro i j
    rw [hphase]
    exact has_blocksT hcor' (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDh i j

theorem CertifiedCentre.phase_germ {B : BallD} {D : BoxD} {o : ℤˣ}
    (C : CertifiedCentre B D o) :
    ∃ q : (Fin 4 → ℝ) → RMat6, AnalyticAt ℝ q (th0R B) ∧ q (th0R B) = C.phase ∧
      ∀ᶠ θ in 𝓝 (th0R B), IsHorizontal (q θ - C.phase) ∧ cornerTheta (q θ) 1 1 = θ ∧
        Hadamard6.IsHadamard (phaseMat (q θ)) ∧ RepO o (seedOf θ) (phaseMat (q θ)) :=
  local_matched_phase_germ C.strict C.rootH C.rootV C.detH C.detV
    C.signH C.signV C.completion_eq C.seed_eq

end NoFourMUBs.KernelAtlas.WholeBall

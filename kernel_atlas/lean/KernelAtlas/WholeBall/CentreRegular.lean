import KernelAtlas.WholeBall.Centre
import KernelAtlas.WholeBall.SideRegular

/-! The exact centre checker also certifies the side Jacobians and therefore
constructs the analytic matched-completion germ used in Z's continuation step. -/

open Matrix Complex Hadamard6 NoFourMUBs.Side NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.KernelAtlas.Seed Filter Topology
open scoped Matrix.Norms.Elementwise

namespace NoFourMUBs.KernelAtlas.WholeBall

def centreRows (B : BallD) (D : BoxD) (v : Bool) : List CT :=
  let e := (l4 (thetaT B D)).map (expI D.hb nT)
  if v then tubeRows D.hb D.phV (sideK D.hb (gramV D.hb e) D.phV D.YV D.tubeV).e
  else tubeRows D.hb D.phH (sideK D.hb (gramH D.hb e) D.phH D.YH D.tubeH).e

def regularCentreCheck (B : BallD) (D : BoxD) : Bool :=
  centreCheck B D && sideRegularCheck D.hb (centreRows B D false) D.YH &&
    sideRegularCheck D.hb (centreRows B D true) D.YV

theorem regularCentreCheck_centre {B : BallD} {D : BoxD}
    (h : regularCentreCheck B D = true) : centreCheck B D = true := by
  simp only [regularCentreCheck, Bool.and_eq_true] at h
  exact h.1.1

structure RegularCentre (θ : Fin 4 → ℝ) (o : ℤˣ) where
  phiH : Fin 6 → ℝ
  phiV : Fin 6 → ℝ
  strict : 0 < seedR (seedOf θ)
  rootH : sideResidual false (θ, phiH) = 0
  rootV : sideResidual true (θ, phiV) = 0
  detH : IsUnit (sideJ phiH).det
  detV : IsUnit (sideJ phiV).det
  signH : 0 < osgn o * (psi (sideMatrix phiH)).im
  signV : 0 < -osgn o * (psi (sideMatrix phiV)).im

theorem regularCentreCheck_sound {B : BallD} {D : BoxD} {o : ℤˣ}
    (h : regularCentreCheck B D = true) (ho : B.o = (o : ℤ)) :
    Nonempty (RegularCentre (th0R B) o) := by
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
  obtain ⟨⟨⟨⟨⟨⟨hexp, hkH⟩, hkV⟩, hsH⟩, hsV⟩, _hforce⟩, _harg⟩ := hc.1
  have hcor := has_corner (B := B) (D := D) hu hexp
  obtain ⟨hGH, hGV⟩ := has_gram hu hcor
  obtain ⟨φH, hhs, hht, hhr, -, hxH, hyH⟩ := side_sound hu hGH hkH
  obtain ⟨φV, hvs, hvt, hvr, -, hxV, hyV⟩ := side_sound hu hGV hkV
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
  refine ⟨⟨φH, φV, hR, ?_, ?_, hIh, hIv, ?_, ?_⟩⟩
  · ext i
    fin_cases i <;> simp [sideResidual, sideF, sideG, hhs, hht, hhr]
  · ext i
    fin_cases i <;> simp [sideResidual, sideF, sideG, hvs, hvt, hvr]
  · simpa only [sideMatrix, hos] using hsh
  · simpa only [sideMatrix, hos, Int.cast_neg] using hsv

theorem RegularCentre.analytic_germ {θ : Fin 4 → ℝ} {o : ℤˣ} (C : RegularCentre θ o) :
    ∃ H : (Fin 4 → ℝ) → Mat6, AnalyticAt ℝ H θ ∧
      H θ = centreCompletion θ C.phiH C.phiV ∧
      ∀ᶠ v in 𝓝 θ, Hadamard6.IsHadamard (H v) ∧ MatchedO o (seedOf v) (H v) :=
  analytic_matched_germ C.strict C.rootH C.rootV
    (sideResidual_partial_invertible false θ C.phiH C.detH)
    (sideResidual_partial_invertible true θ C.phiV C.detV) C.signH C.signV

end NoFourMUBs.KernelAtlas.WholeBall

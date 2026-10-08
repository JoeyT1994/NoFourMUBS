import SupplierTablePhaseBinding
import RoundedCentreOverlap
import WholeCellBallInclusion

/-! The literal scalar label test covers every actual ray of the same closed
cell. The overlap lower bound is derived from the rounded products and
margin37, and the continuous chord bound is derived from MemCell. Only the
table/quotient/norm and ceiling contracts remain as arithmetic hypotheses. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007 Mub6.Numerical.ClusterTube48

namespace Seed0024ClusterTube20261007

theorem supplier_rounded_ball_includes_cell
    (s : Cell) (hs : s.level≤7) (theta : Turns) (htheta : MemCell s theta)
    (C : Mub6.Vector) (hC : Mub6.Numerical.IsRawUnitRay C)
    (c t p : Fin 5 → ℂ) (Q r dist rad : ℝ) (hQ : 1≤Q)
    (hcr : ∀i,|(c i-(Q:ℂ)*C i.succ).re|<1)
    (hci : ∀i,|(c i-(Q:ℂ)*C i.succ).im|<1)
    (htr : ∀i,|(t i-(Q:ℂ)*circlePoint (2*Real.pi*cellMidpoint s i)).re|<1)
    (hti : ∀i,|(t i-(Q:ℂ)*circlePoint (2*Real.pi*cellMidpoint s i)).im|<1)
    (hpr : ∀i,|(p i).re-((c i).re*(t i).re+(c i).im*(t i).im)/Q|<1)
    (hpi : ∀i,|(p i).im-((c i).re*(t i).im-(c i).im*(t i).re)/Q|<1)
    (hfloor : |r-‖(Q:ℂ)+∑i,p i‖|<1)
    (hdist : 0≤dist) (hrad : 0≤rad)
    (hdist2 : 36*Q^2-(max 0 (r-37))^2≤dist^2)
    (hradceil : 710*Q*(supplierHalfStep s:ℝ)/(113*218880)≤rad)
    (htest : (dist+6*rad)*27<30*Q) :
    rawProjectorDistance C (turnRay theta)<(5:ℝ)/27 := by
  have hM := turnRay_isRawUnitRay (cellMidpoint s)
  have hX := turnRay_isRawUnitRay theta
  have hCnorm : ∀i,‖C i‖=1 := by
    intro i
    have h := hC.2 i
    rw [Complex.normSq_eq_norm_sq] at h
    nlinarith [norm_nonneg (C i)]
  have hMnorm : ∀i,‖turnRay (cellMidpoint s) i‖=1 := by
    intro i
    have h := hM.2 i
    rw [Complex.normSq_eq_norm_sq] at h
    nlinarith [norm_nonneg (turnRay (cellMidpoint s) i)]
  have htr' : ∀i,|(t i-(Q:ℂ)*turnRay (cellMidpoint s) i.succ).re|<1 := by
    intro i
    simpa only [turnRay_succ] using htr i
  have hti' : ∀i,|(t i-(Q:ℂ)*turnRay (cellMidpoint s) i.succ).im|<1 := by
    intro i
    simpa only [turnRay_succ] using hti i
  have hlower := literal_rounded_centre_lo_lower C (turnRay (cellMidpoint s))
    hC.1 hM.1 hCnorm hMnorm c t p Q r hQ hcr hci htr' hti' hpr hpi hfloor
  have hlower' : max 0 (r-37)≤Q*‖Mub6.Numerical.rawOverlap C (turnRay (cellMidpoint s))‖ :=
    hlower
  have hQpos : 0<Q := by linarith
  exact scalar_ball_test_includes_point C (turnRay (cellMidpoint s)) (turnRay theta)
    hC.2 hM.2 hX.2 Q (max 0 (r-37)) dist rad hQpos (le_max_left _ _) hdist hrad
    hlower' hdist2 (supplier_cell_native_chord s hs theta htheta Q rad hQpos hradceil) htest

theorem supplier_rounded_exact_centre_label
    (s : Cell) (hs : s.level≤7) (theta : Turns) (htheta : MemCell s theta)
    (label : Fin 48) (c t p : Fin 5 → ℂ) (Q r dist rad : ℝ) (hQ : 1≤Q)
    (hcr : ∀i,|(c i-(Q:ℂ)*exactCentre label i.succ).re|<1)
    (hci : ∀i,|(c i-(Q:ℂ)*exactCentre label i.succ).im|<1)
    (htr : ∀i,|(t i-(Q:ℂ)*circlePoint (2*Real.pi*cellMidpoint s i)).re|<1)
    (hti : ∀i,|(t i-(Q:ℂ)*circlePoint (2*Real.pi*cellMidpoint s i)).im|<1)
    (hpr : ∀i,|(p i).re-((c i).re*(t i).re+(c i).im*(t i).im)/Q|<1)
    (hpi : ∀i,|(p i).im-((c i).re*(t i).im-(c i).im*(t i).re)/Q|<1)
    (hfloor : |r-‖(Q:ℂ)+∑i,p i‖|<1)
    (hdist : 0≤dist) (hrad : 0≤rad)
    (hdist2 : 36*Q^2-(max 0 (r-37))^2≤dist^2)
    (hradceil : 710*Q*(supplierHalfStep s:ℝ)/(113*218880)≤rad)
    (htest : (dist+6*rad)*27<30*Q) :
    centreProjectorLabel label (turnRay theta) :=
  (supplier_rounded_ball_includes_cell s hs theta htheta (exactCentre label)
    (all_centres_isRawUnitRay label) c t p Q r dist rad hQ hcr hci htr hti hpr hpi
    hfloor hdist hrad hdist2 hradceil htest).le

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.supplier_rounded_ball_includes_cell
#print axioms Seed0024ClusterTube20261007.supplier_rounded_exact_centre_label

import CriticalModulusSignedDomain
import CriticalLightSheet
import CriticalRationalParam

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalModulusDomain20261003
open CriticalPhysical20261003
noncomputable section

theorem parameter_p (k : ℝ) : CriticalRationalParam20261003.p k=p k := rfl

theorem parameter_j (k : ℝ) :
    CriticalRationalParam20261003.j k=8*k/(h k)^2 := rfl

theorem parameter_w (k : ℝ) : CriticalRationalParam20261003.w k=w k := by
  have hd : 1+k^2≠0 := ne_of_gt (h_pos k)
  dsimp [CriticalRationalParam20261003.w,CriticalRationalParam20261003.q,w,h]
  field_simp [hd]
  ring

/-- The trace constraint follows from the actual three complex correlations.
No unit-entry, nonzero-correlation or matrix-reconstruction assumption is needed. -/
theorem momentJ_square_bound (s t r : ℂ) :
    (momentJ s t r)^2≤4*(Complex.normSq s*Complex.normSq t*Complex.normSq r) := by
  have hb : ((r*s*star t).re)^2≤Complex.normSq (r*s*star t) := by
    rw [Complex.normSq_apply]
    nlinarith [sq_nonneg ((r*s*star t).im)]
  have hn : Complex.normSq (r*s*star t)=
      Complex.normSq s*Complex.normSq t*Complex.normSq r := by
    have ht : Complex.normSq (star t)=Complex.normSq t := Complex.normSq_conj t
    rw [map_mul,map_mul,ht]
    ring
  rw [hn] at hb
  change (2*(r*s*star t).re)^2≤_
  nlinarith

/-- The interval cover now applies to the squared moduli of the actual
matrix correlations. The three parameter identities remain explicit inputs;
the trace bound is derived here, not assumed. All poles and zero correlations
are retained, and the signed parameter is transported only via absolute value. -/
theorem actual_block_allowed_abs (E : Matrix (Fin 3) (Fin 3) ℂ) (k : ℝ)
    (hk : k≠0)
    (hp : CriticalLightSheet20261003.sideP E=CriticalRationalParam20261003.p k)
    (hj : CriticalLightSheet20261003.sideJ E=CriticalRationalParam20261003.j k)
    (hw : CriticalLightSheet20261003.sideW E=CriticalRationalParam20261003.w k) :
    Allowed |k| (Complex.normSq (CriticalLightSheet20261003.sideS E)*
      Complex.normSq (CriticalLightSheet20261003.sideT E)*
      Complex.normSq (CriticalLightSheet20261003.sideR E)) := by
  let s := CriticalLightSheet20261003.sideS E
  let t := CriticalLightSheet20261003.sideT E
  let r := CriticalLightSheet20261003.sideR E
  apply physical_allowed_abs (Complex.normSq s) (Complex.normSq t)
    (Complex.normSq r) k _ hk
  · exact hp.trans (parameter_p k)
  · have hw' := hw.trans (parameter_w k)
    change Complex.normSq s*Complex.normSq t+
      Complex.normSq s*Complex.normSq r+Complex.normSq t*Complex.normSq r-
      Complex.normSq s*Complex.normSq t*Complex.normSq r=w k at hw'
    linarith
  · rfl
  · have hb := momentJ_square_bound s t r
    change (CriticalLightSheet20261003.sideJ E)^2≤_ at hb
    rw [hj,parameter_j] at hb
    exact hb

end
#print axioms parameter_p
#print axioms parameter_j
#print axioms parameter_w
#print axioms momentJ_square_bound
#print axioms actual_block_allowed_abs
end CriticalModulusDomain20261003

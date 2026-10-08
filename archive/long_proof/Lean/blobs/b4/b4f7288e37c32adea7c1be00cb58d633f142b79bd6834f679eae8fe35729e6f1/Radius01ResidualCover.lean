import Radius01ModelContainment
import NativeResidual94

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

/-- The actual source chart and all 94 necessary residual conditions are now
obtained from the physical seed-ball hypotheses alone. The score bound remains
sqrt(R); a stronger Taylor q bound and certified exclusion of these parameters
are separate, still-open proof obligations. -/
theorem physical_native_residual94_cover01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ u angles : Fin 4 → ℝ,
      (∀ i, |u i| ≤ r) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      let J := nativeChart (seedCorner b u) (fun i => phase (angles i))
      0 < leadingR J ∧ leadingR J=leadingR H ∧
      (∀ index : Fin 94, index.val<13 → residual94 J index=0) ∧
      (∀ index : Fin 94, 13 ≤ index.val → |residual94 J index| ≤ Real.sqrt (leadingR J)) := by
  obtain ⟨rows,cols,u,angles,hrows,hcols,hu,hn,hdom,hperm,hJ,hdJ,hmJ,hRJ,hposJ⟩ :=
    physical_nativeChart_cover01 hH hd hm hR b r hball hr
  exact ⟨u,angles,hu,hn,hdom,hposJ,hRJ,physical_residual94_constraints hJ hmJ hposJ⟩

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.physical_native_residual94_cover01

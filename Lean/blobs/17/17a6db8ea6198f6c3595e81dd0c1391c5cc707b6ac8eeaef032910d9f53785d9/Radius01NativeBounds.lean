import Radius01ColumnTransport

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

/-- The literal native inverse is applied to K*, so its determinant bound is
transported explicitly to that adjoint rather than assumed from K. -/
theorem constructedSideK_adjoint_margin01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) :
    (3/5:ℝ) < ‖nativeDeterminant (constructedSideK E z)ᴴ‖ := by
  rw [nativeDeterminant_eq_det,Matrix.det_conjTranspose]
  simpa using constructedSideK_determinant_margin01 E z hz r hs hr

theorem constructedSideK_native_inverse_bound01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) (i j : Fin 3) :
    ‖nativeInverse (constructedSideK E z)ᴴ i j‖ ≤ 10/3 := by
  apply nativeInverse_entry_bound
  · intro k l
    simpa using constructedSideK_unit01 E z hz r hs hr l k
  · rw [← nativeDeterminant_eq_det]
    exact constructedSideK_adjoint_margin01 E z hz r hs hr

theorem constructedSideK_native_inverse_two_sided01 (E : Mat3) (z : Fin 3 → ℂ)
    (hz : ∀ i, Complex.normSq (z i)=1) (r : ℝ)
    (hs : ∀ i : Fin 3, i ≠ 0 → ‖sideSum E i‖ ≤ 2*r)
    (hr : r ≤ radiusEnvelope01) :
    (constructedSideK E z)ᴴ*nativeInverse (constructedSideK E z)ᴴ=1 ∧
      nativeInverse (constructedSideK E z)ᴴ*(constructedSideK E z)ᴴ=1 := by
  have hn : ((constructedSideK E z)ᴴ).det ≠ 0 := by
    rw [Matrix.det_conjTranspose]
    simpa using constructedSideK_det_ne_zero01 E z hz r hs hr
  exact ⟨nativeInverse_right _ hn,nativeInverse_left _ hn⟩

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_adjoint_margin01
#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_native_inverse_bound01
#print axioms Centiradian20261006.ChartRadius0120261006.constructedSideK_native_inverse_two_sided01

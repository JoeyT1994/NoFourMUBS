import KarlssonCertificateConsumer
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Numerical.GraphKernel Mub6.Classification.KarlssonCompiler
noncomputable section

/-- Exact inclusion of the inner carrier in the outer carrier. -/
def CarrierSubregion (inner outer : CarrierRegion) : Prop :=
  ∀ i j, RectangleIncludes (inner i j) (outer i j)

instance (inner outer : CarrierRegion) : Decidable (CarrierSubregion inner outer) := by
  unfold CarrierSubregion
  infer_instance

theorem carrier_subregion_sound {inner outer : CarrierRegion}
    (h : CarrierSubregion inner outer) {H : BasisMatrix}
    (hH : CarrierBox inner H) : CarrierBox outer H :=
  fun i j => rectangle_includes_sound (h i j) (hH i j)

theorem enclosure_enlarge {j : Job} {inner outer : CarrierRegion}
    (hencl : Encloses j inner) (hsub : CarrierSubregion inner outer) : Encloses j outer := by
  intro hLive
  obtain ⟨K,hK,hbox⟩ := hencl hLive
  exact ⟨K,hK,carrier_subregion_sound hsub hbox⟩

theorem carrier_exclusion_restrict {inner outer : CarrierRegion}
    (hsub : CarrierSubregion inner outer) (hex : CarrierExcluded outer) : CarrierExcluded inner := by
  intro K hK hbox
  exact hex K hK (carrier_subregion_sound hsub hbox)

/-- One certificate for an outer enclosure can close every job whose proved
enclosure lies inside it. This does not infer any certificate or inclusion. -/
theorem checked_carrier_reuse {n : ℕ} {j : Job} {inner outer : CarrierRegion}
    (hencl : Encloses j inner) (hsub : CarrierSubregion inner outer)
    (cert : LocalCertificate n) (hcheck : checkLocal outer cert = true)
    (hrow : StandardFirstRow outer) : ¬ Live j :=
  checked_leaf_closes (enclosure_enlarge hencl hsub) cert hcheck hrow

#print axioms carrier_subregion_sound
#print axioms enclosure_enlarge
#print axioms carrier_exclusion_restrict
#print axioms checked_carrier_reuse
end
end Mub6.Classification.KarlssonLedger

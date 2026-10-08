import PhysicalCarrierEnclosures
set_option maxRecDepth 8192
set_option maxHeartbeats 0
namespace Mub6.Classification.CarrierExports.RootCarrierExport
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CompactCover Mub6.Classification.CarrierIntervals

def coordinateIndex : FreeCoordinate → Fin 16
  | Sum.inl (i,j) => ⟨2*i.val+j.val, by omega⟩
  | Sum.inr (Sum.inl (i,j)) => ⟨4+3*i.val+j.val, by omega⟩
  | Sum.inr (Sum.inr (i,j)) => ⟨10+2*i.val+j.val, by omega⟩
def signs : CarrierSigns := fun q => ![false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] (coordinateIndex q)
def parameters : ParameterBox := fun q => ![⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩] (coordinateIndex q)
def exported : CarrierRegion := ![![⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩],![⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩],![⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩],![⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩],![⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩],![⟨(1 / 1 : ℚ),(1 / 1 : ℚ),(0 / 1 : ℚ),(0 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(0 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩,⟨(-1 / 1 : ℚ),(1 / 1 : ℚ),(-1 / 1 : ℚ),(1 / 1 : ℚ)⟩]]

theorem exported_eq : ∀ i j, exported i j = physicalChartEnclosure signs parameters i j := by
  decide +kernel

theorem exported_sound (t : CarrierParameters)
    (ht : ∀ q, Mem (parameters q) (t q)) (hp : ChartPhysicalFilter signs t) :
    CarrierBox exported (chartCarrier signs t) := by
  intro i j
  rw [exported_eq]
  exact physicalChartEnclosure_sound signs parameters t ht hp i j

#print axioms exported_eq
#print axioms exported_sound
end Mub6.Classification.CarrierExports.RootCarrierExport

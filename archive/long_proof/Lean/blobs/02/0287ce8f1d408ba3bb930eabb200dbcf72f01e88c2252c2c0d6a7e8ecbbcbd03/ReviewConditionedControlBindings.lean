import KarlssonCell9218880916c75f25
import KarlssonCell94b3328b40448a8e
import KarlssonCell01ff82bd13920046
import KarlssonCellbcb593dfdf71c9ac
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
namespace ReviewConditionedControlBindings
open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonConditioning
noncomputable section
def jsonCarrier0 : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(16696541/16777216),1,(-11939/4194304),(11939/4194304)⟩,⟨-1,(-16696541/16777216),(-11939/4194304),(11939/4194304)⟩,⟨(8382815/8388608),1,(-5793/8388608),(5793/8388608)⟩,⟨-1,(-8382815/8388608),(-5793/8388608),(5793/8388608)⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(12867149/16777216),(-1364345/4194304),1⟩,⟨-1,1,-1,1⟩,⟨-1,(6413357/8388608),-1,(5427379/16777216)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12858471/16777216),(-5462385/16777216),1⟩,⟨-1,1,-1,1⟩,⟨-1,(12824609/16777216),-1,(5428593/16777216)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(12867149/16777216),-1,(1364345/4194304)⟩,⟨-1,1,-1,1⟩,⟨-1,(6413357/8388608),(-5427379/16777216),1⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12858471/16777216),-1,(5462385/16777216)⟩,⟨-1,1,-1,1⟩,⟨-1,(12824609/16777216),(-5428593/16777216),1⟩,⟨-1,1,-1,1⟩]]
theorem json_binding0 : jsonCarrier0 = KarlssonCell9218880916c75f25.carrier := by rfl
theorem json_physical_enclosure0 {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCell9218880916c75f25.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCell9218880916c75f25.input.label x) (hH : IsHadamard (reducedMatrix KarlssonCell9218880916c75f25.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCell9218880916c75f25.input.label x) K ∧
      CarrierBox jsonCarrier0 (ClassificationCover.toNumerical K) := by
  simpa only [json_binding0] using KarlssonCell9218880916c75f25.physical_enclosure hx h0 h1 hg hH
#print axioms json_binding0
#print axioms json_physical_enclosure0
def jsonCarrier1 : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(8382815/8388608),1,(-5793/8388608),(5793/8388608)⟩,⟨-1,(-8382815/8388608),(-5793/8388608),(5793/8388608)⟩,⟨(15565469/16777216),1,(-1211747/16777216),(1211747/16777216)⟩,⟨-1,(-15565469/16777216),(-1211747/16777216),(1211747/16777216)⟩],![⟨1,1,0,0⟩,⟨(-8444913/16777216),(-8307927/16777216),(-14570201/16777216),(-7237345/8388608)⟩,⟨(-8505587/16777216),(-8271629/16777216),(7189947/8388608),(14664937/16777216)⟩,⟨(-8499519/16777216),(-8265561/16777216),(14369525/16777216),(14654567/16777216)⟩,⟨(-9035503/16777216),(-3418891/8388608),(-7788635/8388608),(-12947883/16777216)⟩,⟨(15208193/16777216),1,(-391023/4194304),(1065295/16777216)⟩],![⟨1,1,0,0⟩,⟨(8307927/16777216),(8444913/16777216),(7237345/8388608),(14570201/16777216)⟩,⟨(-8515609/16777216),(-515991/1048576),(14364129/16777216),(7335363/8388608)⟩,⟨(8249789/16777216),(8509541/16777216),(-3665089/4194304),(-448555/524288)⟩,⟨(-4666403/8388608),(-7742467/16777216),(-3742849/4194304),(-13554511/16777216)⟩,⟨-1,(-15814821/16777216),(-978345/16777216),(438541/16777216)⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(6413357/8388608),-1,(5427379/16777216)⟩,⟨-1,1,-1,1⟩,⟨-1,(14168409/16777216),(-3211443/8388608),1⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12824609/16777216),-1,(5428593/16777216)⟩,⟨-1,1,-1,1⟩,⟨-1,(6974101/8388608),(-6549881/16777216),1⟩,⟨-1,1,-1,1⟩]]
theorem json_binding1 : jsonCarrier1 = KarlssonCell94b3328b40448a8e.carrier := by rfl
theorem json_physical_enclosure1 {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCell94b3328b40448a8e.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCell94b3328b40448a8e.input.label x) (hH : IsHadamard (reducedMatrix KarlssonCell94b3328b40448a8e.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCell94b3328b40448a8e.input.label x) K ∧
      CarrierBox jsonCarrier1 (ClassificationCover.toNumerical K) := by
  simpa only [json_binding1] using KarlssonCell94b3328b40448a8e.physical_enclosure hx h0 h1 hg hH
#print axioms json_binding1
#print axioms json_physical_enclosure1
def jsonCarrier2 : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(16696541/16777216),1,(-11939/4194304),(11939/4194304)⟩,⟨-1,(-16696541/16777216),(-11939/4194304),(11939/4194304)⟩,⟨(8382815/8388608),1,(-5793/8388608),(5793/8388608)⟩,⟨-1,(-8382815/8388608),(-5793/8388608),(5793/8388608)⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(12867149/16777216),(-1364345/4194304),1⟩,⟨-1,1,-1,1⟩,⟨-1,(6413357/8388608),-1,(5427379/16777216)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12858471/16777216),(-5462385/16777216),1⟩,⟨-1,1,-1,1⟩,⟨-1,(12824609/16777216),-1,(5428593/16777216)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(12867149/16777216),-1,(1364345/4194304)⟩,⟨-1,1,-1,1⟩,⟨-1,(6413357/8388608),(-5427379/16777216),1⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12858471/16777216),-1,(5462385/16777216)⟩,⟨-1,1,-1,1⟩,⟨-1,(12824609/16777216),(-5428593/16777216),1⟩,⟨-1,1,-1,1⟩]]
theorem json_binding2 : jsonCarrier2 = KarlssonCell01ff82bd13920046.carrier := by rfl
theorem json_physical_enclosure2 {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCell01ff82bd13920046.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCell01ff82bd13920046.input.label x) (hH : IsHadamard (reducedMatrix KarlssonCell01ff82bd13920046.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCell01ff82bd13920046.input.label x) K ∧
      CarrierBox jsonCarrier2 (ClassificationCover.toNumerical K) := by
  simpa only [json_binding2] using KarlssonCell01ff82bd13920046.physical_enclosure hx h0 h1 hg hH
#print axioms json_binding2
#print axioms json_physical_enclosure2
def jsonCarrier3 : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(8382815/8388608),1,(-5793/8388608),(5793/8388608)⟩,⟨-1,(-8382815/8388608),(-5793/8388608),(5793/8388608)⟩,⟨(15565469/16777216),1,(-1211747/16777216),(1211747/16777216)⟩,⟨-1,(-15565469/16777216),(-1211747/16777216),(1211747/16777216)⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(6413357/8388608),(-5427379/16777216),1⟩,⟨-1,1,-1,1⟩,⟨-1,(14168409/16777216),-1,(3211443/8388608)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12824609/16777216),(-5428593/16777216),1⟩,⟨-1,1,-1,1⟩,⟨-1,(6974101/8388608),-1,(6549881/16777216)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨(-8444913/16777216),(-8307927/16777216),(7237345/8388608),(14570201/16777216)⟩,⟨(-8505587/16777216),(-8271629/16777216),(-14664937/16777216),(-7189947/8388608)⟩,⟨(-8499519/16777216),(-8265561/16777216),(-14654567/16777216),(-14369525/16777216)⟩,⟨(-9035503/16777216),(-3418891/8388608),(12947883/16777216),(7788635/8388608)⟩,⟨(15208193/16777216),1,(-1065295/16777216),(391023/4194304)⟩],![⟨1,1,0,0⟩,⟨(8307927/16777216),(8444913/16777216),(-14570201/16777216),(-7237345/8388608)⟩,⟨(-8515609/16777216),(-515991/1048576),(-7335363/8388608),(-14364129/16777216)⟩,⟨(8249789/16777216),(8509541/16777216),(448555/524288),(3665089/4194304)⟩,⟨(-4666403/8388608),(-7742467/16777216),(13554511/16777216),(3742849/4194304)⟩,⟨-1,(-15814821/16777216),(-438541/16777216),(978345/16777216)⟩]]
theorem json_binding3 : jsonCarrier3 = KarlssonCellbcb593dfdf71c9ac.carrier := by rfl
theorem json_physical_enclosure3 {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (KarlssonCellbcb593dfdf71c9ac.input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard KarlssonCellbcb593dfdf71c9ac.input.label x) (hH : IsHadamard (reducedMatrix KarlssonCellbcb593dfdf71c9ac.input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix KarlssonCellbcb593dfdf71c9ac.input.label x) K ∧
      CarrierBox jsonCarrier3 (ClassificationCover.toNumerical K) := by
  simpa only [json_binding3] using KarlssonCellbcb593dfdf71c9ac.physical_enclosure hx h0 h1 hg hH
#print axioms json_binding3
#print axioms json_physical_enclosure3
end
end ReviewConditionedControlBindings
#print axioms Mub6.Classification.KarlssonConditioning.degenerate_entries_unit
#print axioms Mub6.Classification.KarlssonConditioning.degenerate_A_entries_unit
#print axioms Mub6.Classification.KarlssonConditioning.degenerate_B_entries_unit
#print axioms Mub6.Classification.KarlssonConditioning.inv_star_of_unit
#print axioms Mub6.Classification.KarlssonConditioning.singular_input_product
#print axioms Mub6.Classification.KarlssonConditioning.singular_output_product
#print axioms Mub6.Classification.KarlssonConditioning.directPhase_spec
#print axioms Mub6.Classification.KarlssonConditioning.directBox_sound
#print axioms Mub6.Classification.KarlssonConditioning.conditioned_compiler_sound
#print axioms Mub6.Classification.KarlssonConditioning.conditionedProvider
#print axioms Mub6.Classification.KarlssonConditioning.conditioned_quartet_cover
#print axioms Mub6.Classification.KarlssonConditioning.conditioned_export_sound
#print axioms KarlssonCell9218880916c75f25.sqrt_valid
#print axioms KarlssonCell9218880916c75f25.bounds_0_0
#print axioms KarlssonCell9218880916c75f25.bounds_0_1
#print axioms KarlssonCell9218880916c75f25.bounds_0_2
#print axioms KarlssonCell9218880916c75f25.bounds_0_3
#print axioms KarlssonCell9218880916c75f25.bounds_0_4
#print axioms KarlssonCell9218880916c75f25.bounds_0_5
#print axioms KarlssonCell9218880916c75f25.bounds_1_0
#print axioms KarlssonCell9218880916c75f25.bounds_1_1
#print axioms KarlssonCell9218880916c75f25.bounds_1_2
#print axioms KarlssonCell9218880916c75f25.bounds_1_3
#print axioms KarlssonCell9218880916c75f25.bounds_1_4
#print axioms KarlssonCell9218880916c75f25.bounds_1_5
#print axioms KarlssonCell9218880916c75f25.bounds_2_0
#print axioms KarlssonCell9218880916c75f25.bounds_2_1
#print axioms KarlssonCell9218880916c75f25.bounds_2_2
#print axioms KarlssonCell9218880916c75f25.bounds_2_3
#print axioms KarlssonCell9218880916c75f25.bounds_2_4
#print axioms KarlssonCell9218880916c75f25.bounds_2_5
#print axioms KarlssonCell9218880916c75f25.bounds_3_0
#print axioms KarlssonCell9218880916c75f25.bounds_3_1
#print axioms KarlssonCell9218880916c75f25.bounds_3_2
#print axioms KarlssonCell9218880916c75f25.bounds_3_3
#print axioms KarlssonCell9218880916c75f25.bounds_3_4
#print axioms KarlssonCell9218880916c75f25.bounds_3_5
#print axioms KarlssonCell9218880916c75f25.bounds_4_0
#print axioms KarlssonCell9218880916c75f25.bounds_4_1
#print axioms KarlssonCell9218880916c75f25.bounds_4_2
#print axioms KarlssonCell9218880916c75f25.bounds_4_3
#print axioms KarlssonCell9218880916c75f25.bounds_4_4
#print axioms KarlssonCell9218880916c75f25.bounds_4_5
#print axioms KarlssonCell9218880916c75f25.bounds_5_0
#print axioms KarlssonCell9218880916c75f25.bounds_5_1
#print axioms KarlssonCell9218880916c75f25.bounds_5_2
#print axioms KarlssonCell9218880916c75f25.bounds_5_3
#print axioms KarlssonCell9218880916c75f25.bounds_5_4
#print axioms KarlssonCell9218880916c75f25.bounds_5_5
#print axioms KarlssonCell9218880916c75f25.output_valid
#print axioms KarlssonCell9218880916c75f25.physical_enclosure
#print axioms KarlssonCell94b3328b40448a8e.sqrt_valid
#print axioms KarlssonCell94b3328b40448a8e.bounds_0_0
#print axioms KarlssonCell94b3328b40448a8e.bounds_0_1
#print axioms KarlssonCell94b3328b40448a8e.bounds_0_2
#print axioms KarlssonCell94b3328b40448a8e.bounds_0_3
#print axioms KarlssonCell94b3328b40448a8e.bounds_0_4
#print axioms KarlssonCell94b3328b40448a8e.bounds_0_5
#print axioms KarlssonCell94b3328b40448a8e.bounds_1_0
#print axioms KarlssonCell94b3328b40448a8e.bounds_1_1
#print axioms KarlssonCell94b3328b40448a8e.bounds_1_2
#print axioms KarlssonCell94b3328b40448a8e.bounds_1_3
#print axioms KarlssonCell94b3328b40448a8e.bounds_1_4
#print axioms KarlssonCell94b3328b40448a8e.bounds_1_5
#print axioms KarlssonCell94b3328b40448a8e.bounds_2_0
#print axioms KarlssonCell94b3328b40448a8e.bounds_2_1
#print axioms KarlssonCell94b3328b40448a8e.bounds_2_2
#print axioms KarlssonCell94b3328b40448a8e.bounds_2_3
#print axioms KarlssonCell94b3328b40448a8e.bounds_2_4
#print axioms KarlssonCell94b3328b40448a8e.bounds_2_5
#print axioms KarlssonCell94b3328b40448a8e.bounds_3_0
#print axioms KarlssonCell94b3328b40448a8e.bounds_3_1
#print axioms KarlssonCell94b3328b40448a8e.bounds_3_2
#print axioms KarlssonCell94b3328b40448a8e.bounds_3_3
#print axioms KarlssonCell94b3328b40448a8e.bounds_3_4
#print axioms KarlssonCell94b3328b40448a8e.bounds_3_5
#print axioms KarlssonCell94b3328b40448a8e.bounds_4_0
#print axioms KarlssonCell94b3328b40448a8e.bounds_4_1
#print axioms KarlssonCell94b3328b40448a8e.bounds_4_2
#print axioms KarlssonCell94b3328b40448a8e.bounds_4_3
#print axioms KarlssonCell94b3328b40448a8e.bounds_4_4
#print axioms KarlssonCell94b3328b40448a8e.bounds_4_5
#print axioms KarlssonCell94b3328b40448a8e.bounds_5_0
#print axioms KarlssonCell94b3328b40448a8e.bounds_5_1
#print axioms KarlssonCell94b3328b40448a8e.bounds_5_2
#print axioms KarlssonCell94b3328b40448a8e.bounds_5_3
#print axioms KarlssonCell94b3328b40448a8e.bounds_5_4
#print axioms KarlssonCell94b3328b40448a8e.bounds_5_5
#print axioms KarlssonCell94b3328b40448a8e.output_valid
#print axioms KarlssonCell94b3328b40448a8e.physical_enclosure
#print axioms KarlssonCell01ff82bd13920046.sqrt_valid
#print axioms KarlssonCell01ff82bd13920046.bounds_0_0
#print axioms KarlssonCell01ff82bd13920046.bounds_0_1
#print axioms KarlssonCell01ff82bd13920046.bounds_0_2
#print axioms KarlssonCell01ff82bd13920046.bounds_0_3
#print axioms KarlssonCell01ff82bd13920046.bounds_0_4
#print axioms KarlssonCell01ff82bd13920046.bounds_0_5
#print axioms KarlssonCell01ff82bd13920046.bounds_1_0
#print axioms KarlssonCell01ff82bd13920046.bounds_1_1
#print axioms KarlssonCell01ff82bd13920046.bounds_1_2
#print axioms KarlssonCell01ff82bd13920046.bounds_1_3
#print axioms KarlssonCell01ff82bd13920046.bounds_1_4
#print axioms KarlssonCell01ff82bd13920046.bounds_1_5
#print axioms KarlssonCell01ff82bd13920046.bounds_2_0
#print axioms KarlssonCell01ff82bd13920046.bounds_2_1
#print axioms KarlssonCell01ff82bd13920046.bounds_2_2
#print axioms KarlssonCell01ff82bd13920046.bounds_2_3
#print axioms KarlssonCell01ff82bd13920046.bounds_2_4
#print axioms KarlssonCell01ff82bd13920046.bounds_2_5
#print axioms KarlssonCell01ff82bd13920046.bounds_3_0
#print axioms KarlssonCell01ff82bd13920046.bounds_3_1
#print axioms KarlssonCell01ff82bd13920046.bounds_3_2
#print axioms KarlssonCell01ff82bd13920046.bounds_3_3
#print axioms KarlssonCell01ff82bd13920046.bounds_3_4
#print axioms KarlssonCell01ff82bd13920046.bounds_3_5
#print axioms KarlssonCell01ff82bd13920046.bounds_4_0
#print axioms KarlssonCell01ff82bd13920046.bounds_4_1
#print axioms KarlssonCell01ff82bd13920046.bounds_4_2
#print axioms KarlssonCell01ff82bd13920046.bounds_4_3
#print axioms KarlssonCell01ff82bd13920046.bounds_4_4
#print axioms KarlssonCell01ff82bd13920046.bounds_4_5
#print axioms KarlssonCell01ff82bd13920046.bounds_5_0
#print axioms KarlssonCell01ff82bd13920046.bounds_5_1
#print axioms KarlssonCell01ff82bd13920046.bounds_5_2
#print axioms KarlssonCell01ff82bd13920046.bounds_5_3
#print axioms KarlssonCell01ff82bd13920046.bounds_5_4
#print axioms KarlssonCell01ff82bd13920046.bounds_5_5
#print axioms KarlssonCell01ff82bd13920046.output_valid
#print axioms KarlssonCell01ff82bd13920046.physical_enclosure
#print axioms KarlssonCellbcb593dfdf71c9ac.sqrt_valid
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_0_0
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_0_1
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_0_2
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_0_3
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_0_4
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_0_5
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_1_0
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_1_1
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_1_2
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_1_3
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_1_4
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_1_5
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_2_0
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_2_1
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_2_2
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_2_3
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_2_4
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_2_5
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_3_0
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_3_1
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_3_2
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_3_3
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_3_4
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_3_5
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_4_0
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_4_1
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_4_2
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_4_3
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_4_4
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_4_5
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_5_0
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_5_1
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_5_2
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_5_3
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_5_4
#print axioms KarlssonCellbcb593dfdf71c9ac.bounds_5_5
#print axioms KarlssonCellbcb593dfdf71c9ac.output_valid
#print axioms KarlssonCellbcb593dfdf71c9ac.physical_enclosure

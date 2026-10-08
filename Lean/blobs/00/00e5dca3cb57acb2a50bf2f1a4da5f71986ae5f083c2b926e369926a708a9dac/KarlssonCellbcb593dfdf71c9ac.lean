import KarlssonConditionedCompiler

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace KarlssonCellbcb593dfdf71c9ac

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonConditioning
open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def input : RawInput := ⟨(.singularBOutput,false),![⟨(2047/4096),(2049/4096)⟩,⟨(-1/4096),(1/4096)⟩,⟨(-1/4096),(1/4096)⟩],⟨(14529495/8388608),(29058991/16777216)⟩,![⟨1,0,(5793/8388608)⟩,⟨1,0,(1211747/16777216)⟩,⟨1,0,(6631777/4194304)⟩,⟨(732650040295/1466373215257),(-1270226092032/1466373215257),(266859/16777216)⟩]⟩

def carrier : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(8382815/8388608),1,(-5793/8388608),(5793/8388608)⟩,⟨-1,(-8382815/8388608),(-5793/8388608),(5793/8388608)⟩,⟨(15565469/16777216),1,(-1211747/16777216),(1211747/16777216)⟩,⟨-1,(-15565469/16777216),(-1211747/16777216),(1211747/16777216)⟩],![⟨1,1,0,0⟩,⟨(-2437473/4194304),1,-1,1⟩,⟨-1,(6413357/8388608),(-5427379/16777216),1⟩,⟨-1,1,-1,1⟩,⟨-1,(14168409/16777216),-1,(3211443/8388608)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨-1,(2437473/4194304),-1,1⟩,⟨-1,(12824609/16777216),(-5428593/16777216),1⟩,⟨-1,1,-1,1⟩,⟨-1,(6974101/8388608),-1,(6549881/16777216)⟩,⟨-1,1,-1,1⟩],![⟨1,1,0,0⟩,⟨(-8444913/16777216),(-8307927/16777216),(7237345/8388608),(14570201/16777216)⟩,⟨(-8505587/16777216),(-8271629/16777216),(-14664937/16777216),(-7189947/8388608)⟩,⟨(-8499519/16777216),(-8265561/16777216),(-14654567/16777216),(-14369525/16777216)⟩,⟨(-9035503/16777216),(-3418891/8388608),(12947883/16777216),(7788635/8388608)⟩,⟨(15208193/16777216),1,(-1065295/16777216),(391023/4194304)⟩],![⟨1,1,0,0⟩,⟨(8307927/16777216),(8444913/16777216),(-14570201/16777216),(-7237345/8388608)⟩,⟨(-8515609/16777216),(-515991/1048576),(-7335363/8388608),(-14364129/16777216)⟩,⟨(8249789/16777216),(8509541/16777216),(448555/524288),(3665089/4194304)⟩,⟨(-4666403/8388608),(-7742467/16777216),(13554511/16777216),(3742849/4194304)⟩,⟨-1,(-15814821/16777216),(-438541/16777216),(978345/16777216)⟩]]

theorem sqrt_valid : sqrt3Valid input.sqrt3 := by decide +kernel

theorem bounds_0_0 : RectangleIncludes (conditionedOutput input 0 0) (carrier 0 0) := by decide +kernel

theorem bounds_0_1 : RectangleIncludes (conditionedOutput input 0 1) (carrier 0 1) := by decide +kernel

theorem bounds_0_2 : RectangleIncludes (conditionedOutput input 0 2) (carrier 0 2) := by decide +kernel

theorem bounds_0_3 : RectangleIncludes (conditionedOutput input 0 3) (carrier 0 3) := by decide +kernel

theorem bounds_0_4 : RectangleIncludes (conditionedOutput input 0 4) (carrier 0 4) := by decide +kernel

theorem bounds_0_5 : RectangleIncludes (conditionedOutput input 0 5) (carrier 0 5) := by decide +kernel

theorem bounds_1_0 : RectangleIncludes (conditionedOutput input 1 0) (carrier 1 0) := by decide +kernel

theorem bounds_1_1 : RectangleIncludes (conditionedOutput input 1 1) (carrier 1 1) := by decide +kernel

theorem bounds_1_2 : RectangleIncludes (conditionedOutput input 1 2) (carrier 1 2) := by decide +kernel

theorem bounds_1_3 : RectangleIncludes (conditionedOutput input 1 3) (carrier 1 3) := by decide +kernel

theorem bounds_1_4 : RectangleIncludes (conditionedOutput input 1 4) (carrier 1 4) := by decide +kernel

theorem bounds_1_5 : RectangleIncludes (conditionedOutput input 1 5) (carrier 1 5) := by decide +kernel

theorem bounds_2_0 : RectangleIncludes (conditionedOutput input 2 0) (carrier 2 0) := by decide +kernel

theorem bounds_2_1 : RectangleIncludes (conditionedOutput input 2 1) (carrier 2 1) := by decide +kernel

theorem bounds_2_2 : RectangleIncludes (conditionedOutput input 2 2) (carrier 2 2) := by decide +kernel

theorem bounds_2_3 : RectangleIncludes (conditionedOutput input 2 3) (carrier 2 3) := by decide +kernel

theorem bounds_2_4 : RectangleIncludes (conditionedOutput input 2 4) (carrier 2 4) := by decide +kernel

theorem bounds_2_5 : RectangleIncludes (conditionedOutput input 2 5) (carrier 2 5) := by decide +kernel

theorem bounds_3_0 : RectangleIncludes (conditionedOutput input 3 0) (carrier 3 0) := by decide +kernel

theorem bounds_3_1 : RectangleIncludes (conditionedOutput input 3 1) (carrier 3 1) := by decide +kernel

theorem bounds_3_2 : RectangleIncludes (conditionedOutput input 3 2) (carrier 3 2) := by decide +kernel

theorem bounds_3_3 : RectangleIncludes (conditionedOutput input 3 3) (carrier 3 3) := by decide +kernel

theorem bounds_3_4 : RectangleIncludes (conditionedOutput input 3 4) (carrier 3 4) := by decide +kernel

theorem bounds_3_5 : RectangleIncludes (conditionedOutput input 3 5) (carrier 3 5) := by decide +kernel

theorem bounds_4_0 : RectangleIncludes (conditionedOutput input 4 0) (carrier 4 0) := by decide +kernel

theorem bounds_4_1 : RectangleIncludes (conditionedOutput input 4 1) (carrier 4 1) := by decide +kernel

theorem bounds_4_2 : RectangleIncludes (conditionedOutput input 4 2) (carrier 4 2) := by decide +kernel

theorem bounds_4_3 : RectangleIncludes (conditionedOutput input 4 3) (carrier 4 3) := by decide +kernel

theorem bounds_4_4 : RectangleIncludes (conditionedOutput input 4 4) (carrier 4 4) := by decide +kernel

theorem bounds_4_5 : RectangleIncludes (conditionedOutput input 4 5) (carrier 4 5) := by decide +kernel

theorem bounds_5_0 : RectangleIncludes (conditionedOutput input 5 0) (carrier 5 0) := by decide +kernel

theorem bounds_5_1 : RectangleIncludes (conditionedOutput input 5 1) (carrier 5 1) := by decide +kernel

theorem bounds_5_2 : RectangleIncludes (conditionedOutput input 5 2) (carrier 5 2) := by decide +kernel

theorem bounds_5_3 : RectangleIncludes (conditionedOutput input 5 3) (carrier 5 3) := by decide +kernel

theorem bounds_5_4 : RectangleIncludes (conditionedOutput input 5 4) (carrier 5 4) := by decide +kernel

theorem bounds_5_5 : RectangleIncludes (conditionedOutput input 5 5) (carrier 5 5) := by decide +kernel

theorem output_valid : ∀ i j, RectangleIncludes (conditionedOutput input i j) (carrier i j) := by

  intro i j

  fin_cases i <;> fin_cases j

  · exact bounds_0_0

  · exact bounds_0_1

  · exact bounds_0_2

  · exact bounds_0_3

  · exact bounds_0_4

  · exact bounds_0_5

  · exact bounds_1_0

  · exact bounds_1_1

  · exact bounds_1_2

  · exact bounds_1_3

  · exact bounds_1_4

  · exact bounds_1_5

  · exact bounds_2_0

  · exact bounds_2_1

  · exact bounds_2_2

  · exact bounds_2_3

  · exact bounds_2_4

  · exact bounds_2_5

  · exact bounds_3_0

  · exact bounds_3_1

  · exact bounds_3_2

  · exact bounds_3_3

  · exact bounds_3_4

  · exact bounds_3_5

  · exact bounds_4_0

  · exact bounds_4_1

  · exact bounds_4_2

  · exact bounds_4_3

  · exact bounds_4_4

  · exact bounds_4_5

  · exact bounds_5_0

  · exact bounds_5_1

  · exact bounds_5_2

  · exact bounds_5_3

  · exact bounds_5_4

  · exact bounds_5_5

theorem physical_enclosure {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (input.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard input.label x) (hH : IsHadamard (reducedMatrix input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix input.label x) K ∧
      CarrierBox carrier (ClassificationCover.toNumerical K) :=
  conditioned_export_sound input sqrt_valid carrier output_valid hx h0 h1 hg hH

#print axioms sqrt_valid

#print axioms output_valid

#print axioms physical_enclosure

end

end KarlssonCellbcb593dfdf71c9ac

import KarlssonEnclosureProvider

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace KarlssonCellcb8a549cfd151f0f

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def input : RawInput := ⟨(.regular,false),![⟨(1/3),(1/3)⟩,⟨(1/4),(1/4)⟩,⟨(1/5),(1/5)⟩],⟨(14529495/8388608),(29058991/16777216)⟩,![⟨(1055531246551/1143492009001),(439804231680/1143492009001),(9/16777216)⟩,⟨(126070986919/423684826969),(-404493434880/423684826969),(5/4194304)⟩,⟨(622231/536248681),(-536248320/536248681),(1/4194304)⟩,⟨(1097603598015/1101419657537),(-91605696512/1101419657537),(25/16777216)⟩]⟩

def carrier : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(7743327/8388608),(15486673/16777216),(806595/2097152),(6452779/16777216)⟩,⟨(-15486673/16777216),(-7743327/8388608),(-6452779/16777216),(-806595/2097152)⟩,⟨(4992181/16777216),(2496111/8388608),(-16017289/16777216),(-500539/524288)⟩,⟨(-2496111/8388608),(-4992181/16777216),(500539/524288),(16017289/16777216)⟩],![⟨1,1,0,0⟩,⟨(19463/16777216),(1217/1048576),(-16777209/16777216),(-1048575/1048576)⟩,⟨(193529/8388608),(193537/8388608),(16772741/16777216),(16772757/16777216)⟩,⟨(-4860251/16777216),(-4860235/16777216),(4014449/4194304),(4014453/4194304)⟩,⟨(-16776803/16777216),(-8388373/8388608),(122015/16777216),(15259/2097152)⟩,⟨(556655/2097152),(4453297/16777216),(-4043855/4194304),(-16175363/16777216)⟩],![⟨1,1,0,0⟩,⟨(-1217/1048576),(-19463/16777216),(1048575/1048576),(16777209/16777216)⟩,⟨(-8344979/8388608),(-16689925/16777216),(-1709077/16777216),(-1709045/16777216)⟩,⟨(7662871/8388608),(7662887/8388608),(6826115/16777216),(6826147/16777216)⟩,⟨(581005/16777216),(145263/4194304),(-16767173/16777216),(-8383563/8388608)⟩,⟨(-15974617/16777216),(-7987285/8388608),(-5127149/16777216),(-2563551/8388608)⟩],![⟨1,1,0,0⟩,⟨(16719063/16777216),(8359557/8388608),(-348849/4194304),(-1395345/16777216)⟩,⟨(66359/8388608),(132807/16777216),(-8388373/8388608),(-16776657/16777216)⟩,⟨(-2096495/2097152),(-16771871/16777216),(-421319/16777216),(-210615/8388608)⟩,⟨(-89339/8388608),(-178577/16777216),(16776215/16777216),(4194079/4194304)⟩,⟨(-16678575/16777216),(-8339237/8388608),(908515/8388608),(1817131/16777216)⟩],![⟨1,1,0,0⟩,⟨(-8359557/8388608),(-16719063/16777216),(1395345/16777216),(348849/4194304)⟩,⟨(-4023453/4194304),(-8046861/8388608),(-2369901/8388608),(-2369855/8388608)⟩,⟨(5015803/16777216),(5015893/16777216),(-1000621/1048576),(-16009845/16777216)⟩,⟨(-2697549/8388608),(-2697495/8388608),(15886055/16777216),(15886163/16777216)⟩,⟨(16414781/16777216),(16414889/16777216),(1734057/8388608),(1734111/8388608)⟩]]

theorem sqrt_valid : sqrt3Valid input.sqrt3 := by decide +kernel

theorem bounds_0_0 : RectangleIncludes (input.output 0 0) (carrier 0 0) := by decide +kernel

theorem bounds_0_1 : RectangleIncludes (input.output 0 1) (carrier 0 1) := by decide +kernel

theorem bounds_0_2 : RectangleIncludes (input.output 0 2) (carrier 0 2) := by decide +kernel

theorem bounds_0_3 : RectangleIncludes (input.output 0 3) (carrier 0 3) := by decide +kernel

theorem bounds_0_4 : RectangleIncludes (input.output 0 4) (carrier 0 4) := by decide +kernel

theorem bounds_0_5 : RectangleIncludes (input.output 0 5) (carrier 0 5) := by decide +kernel

theorem bounds_1_0 : RectangleIncludes (input.output 1 0) (carrier 1 0) := by decide +kernel

theorem bounds_1_1 : RectangleIncludes (input.output 1 1) (carrier 1 1) := by decide +kernel

theorem bounds_1_2 : RectangleIncludes (input.output 1 2) (carrier 1 2) := by decide +kernel

theorem bounds_1_3 : RectangleIncludes (input.output 1 3) (carrier 1 3) := by decide +kernel

theorem bounds_1_4 : RectangleIncludes (input.output 1 4) (carrier 1 4) := by decide +kernel

theorem bounds_1_5 : RectangleIncludes (input.output 1 5) (carrier 1 5) := by decide +kernel

theorem bounds_2_0 : RectangleIncludes (input.output 2 0) (carrier 2 0) := by decide +kernel

theorem bounds_2_1 : RectangleIncludes (input.output 2 1) (carrier 2 1) := by decide +kernel

theorem bounds_2_2 : RectangleIncludes (input.output 2 2) (carrier 2 2) := by decide +kernel

theorem bounds_2_3 : RectangleIncludes (input.output 2 3) (carrier 2 3) := by decide +kernel

theorem bounds_2_4 : RectangleIncludes (input.output 2 4) (carrier 2 4) := by decide +kernel

theorem bounds_2_5 : RectangleIncludes (input.output 2 5) (carrier 2 5) := by decide +kernel

theorem bounds_3_0 : RectangleIncludes (input.output 3 0) (carrier 3 0) := by decide +kernel

theorem bounds_3_1 : RectangleIncludes (input.output 3 1) (carrier 3 1) := by decide +kernel

theorem bounds_3_2 : RectangleIncludes (input.output 3 2) (carrier 3 2) := by decide +kernel

theorem bounds_3_3 : RectangleIncludes (input.output 3 3) (carrier 3 3) := by decide +kernel

theorem bounds_3_4 : RectangleIncludes (input.output 3 4) (carrier 3 4) := by decide +kernel

theorem bounds_3_5 : RectangleIncludes (input.output 3 5) (carrier 3 5) := by decide +kernel

theorem bounds_4_0 : RectangleIncludes (input.output 4 0) (carrier 4 0) := by decide +kernel

theorem bounds_4_1 : RectangleIncludes (input.output 4 1) (carrier 4 1) := by decide +kernel

theorem bounds_4_2 : RectangleIncludes (input.output 4 2) (carrier 4 2) := by decide +kernel

theorem bounds_4_3 : RectangleIncludes (input.output 4 3) (carrier 4 3) := by decide +kernel

theorem bounds_4_4 : RectangleIncludes (input.output 4 4) (carrier 4 4) := by decide +kernel

theorem bounds_4_5 : RectangleIncludes (input.output 4 5) (carrier 4 5) := by decide +kernel

theorem bounds_5_0 : RectangleIncludes (input.output 5 0) (carrier 5 0) := by decide +kernel

theorem bounds_5_1 : RectangleIncludes (input.output 5 1) (carrier 5 1) := by decide +kernel

theorem bounds_5_2 : RectangleIncludes (input.output 5 2) (carrier 5 2) := by decide +kernel

theorem bounds_5_3 : RectangleIncludes (input.output 5 3) (carrier 5 3) := by decide +kernel

theorem bounds_5_4 : RectangleIncludes (input.output 5 4) (carrier 5 4) := by decide +kernel

theorem bounds_5_5 : RectangleIncludes (input.output 5 5) (carrier 5 5) := by decide +kernel

theorem output_valid : ∀ i j, RectangleIncludes (input.output i j) (carrier i j) := by

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
    (hH : IsHadamard (reducedMatrix input.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix input.label x) K ∧
      CarrierBox carrier (ClassificationCover.toNumerical K) :=
  raw_export_sound input sqrt_valid carrier output_valid hx h0 h1 hH

#print axioms sqrt_valid

#print axioms output_valid

#print axioms physical_enclosure

end

end KarlssonCellcb8a549cfd151f0f

import KarlssonEnclosureProvider

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace KarlssonCell4a259800407ad511

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def input : RawInput := ⟨(.regular,false),![⟨(262141/786432),(262147/786432)⟩,⟨(65535/262144),(65537/262144)⟩,⟨(262139/1310720),(262149/1310720)⟩],⟨(14529495/8388608),(29058991/16777216)⟩,![⟨(1055531246551/1143492009001),(439804231680/1143492009001),(249/16777216)⟩,⟨(126070986919/423684826969),(-404493434880/423684826969),(3197/2097152)⟩,⟨(622231/536248681),(-536248320/536248681),(5879/16777216)⟩,⟨(1097603598015/1101419657537),(-91605696512/1101419657537),(3419/8388608)⟩]⟩

def carrier : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(7743207/8388608),(15486913/16777216),(806565/2097152),(6453019/16777216)⟩,⟨(-15486913/16777216),(-7743207/8388608),(-6453019/16777216),(-806565/2097152)⟩,⟨(4966625/16777216),(2508889/8388608),(-16042845/16777216),(-3997923/4194304)⟩,⟨(-2508889/8388608),(-4966625/16777216),(3997923/4194304),(16042845/16777216)⟩],![⟨1,1,0,0⟩,⟨(3397/4194304),(25347/16777216),-1,(-16771325/16777216)⟩,⟨(189245/8388608),(98163/4194304),(8382187/8388608),1⟩,⟨(-4865561/16777216),(-4851399/16777216),(16050235/16777216),(16063755/16777216)⟩,⟨-1,(-16739593/16777216),(85299/16777216),(77915/8388608)⟩,⟨(2207909/8388608),(2243589/8388608),(-2026211/2097152),(-16139157/16777216)⟩],![⟨1,1,0,0⟩,⟨(-25347/16777216),(-3397/4194304),(16771325/16777216),1⟩,⟨(-4173939/4194304),(-16681137/16777216),(-1714435/16777216),(-850229/8388608)⟩,⟨(15316685/16777216),(15331303/16777216),(426247/1048576),(6833929/16777216)⟩,⟨(275321/8388608),(608413/16777216),-1,(-16737199/16777216)⟩,⟨(-16001709/16777216),(-7971969/8388608),(-5156565/16777216),(-637453/2097152)⟩],![⟨1,1,0,0⟩,⟨(8356125/8388608),(16725927/16777216),(-1402209/16777216),(-347133/4194304)⟩,⟨(61027/8388608),(8967/1048576),-1,(-2095673/2097152)⟩,⟨-1,(-8380603/8388608),(-27037/1048576),(-409957/16777216)⟩,⟨(-105463/8388608),(-18291/2097152),(8371923/8388608),1⟩,⟨(-2088853/2097152),(-8323113/8388608),(1784631/16777216),(1849501/16777216)⟩],![⟨1,1,0,0⟩,⟨(-16725927/16777216),(-8356125/8388608),(347133/4194304),(1402209/16777216)⟩,⟨(-16104497/16777216),(-16083037/16777216),(-2375547/8388608),(-2364209/8388608)⟩,⟨(5005119/16777216),(2513289/8388608),(-16021229/16777216),(-15998553/16777216)⟩,⟨(-5431853/16777216),(-2679133/8388608),(15849179/16777216),(15923037/16777216)⟩,⟨(16378057/16777216),(4112911/4194304),(3431239/16777216),(3505097/16777216)⟩]]

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

end KarlssonCell4a259800407ad511

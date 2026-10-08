import KarlssonEnclosureProvider

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace KarlssonCelle68109667215891f

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def input : RawInput := ⟨(.regular,false),![⟨(16381/49152),(16387/49152)⟩,⟨(4095/16384),(4097/16384)⟩,⟨(16379/81920),(16389/81920)⟩],⟨(14529495/8388608),(29058991/16777216)⟩,![⟨(1055531246551/1143492009001),(439804231680/1143492009001),(961/4194304)⟩,⟨(504328694415/1694694561137),(-1617912922112/1694694561137),(415063/16777216)⟩,⟨(40084623/34319653745),(-34319630336/34319653745),(46913/8388608)⟩,⟨(68600208495/68838744977),(-5725749248/68838744977),(109545/16777216)⟩]⟩

def carrier : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(15482819/16777216),(3872627/4194304),(6448925/16777216),(3228307/8388608)⟩,⟨(-3872627/4194304),(-15482819/16777216),(-3228307/8388608),(-6448925/16777216)⟩,⟨(4577713/16777216),(168995/524288),(-16432153/16777216),(-7801013/8388608)⟩,⟨(-168995/524288),(-4577713/16777216),(7801013/8388608),(16432153/16777216)⟩],![⟨1,1,0,0⟩,⟨(-74231/16777216),(56711/8388608),-1,(-8341689/8388608)⟩,⟨(62541/4194304),(476069/16777216),(1039947/1048576),1⟩,⟨(-4945085/16777216),(-1179795/4194304),(15936929/16777216),(16152645/16777216)⟩,⟨-1,(-16180665/16777216),(-58949/2097152),(667193/16777216)⟩,⟨(3852859/16777216),(2502441/8388608),(-16728669/16777216),(-3897471/4194304)⟩],![⟨1,1,0,0⟩,⟨(-56711/8388608),(74231/16777216),(8341689/8388608),1⟩,⟨-1,(-16549511/16777216),(-1794705/16777216),(-785967/8388608)⟩,⟨(15181169/16777216),(7707065/8388608),(6727765/16777216),(868817/2097152)⟩,⟨(95101/16777216),(1026589/16777216),-1,(-16283869/16777216)⟩,⟨(-8207929/8388608),(-7742185/8388608),(-5602283/16777216),(-4684033/16777216)⟩],![⟨1,1,0,0⟩,⟨(16609535/16777216),1,(-376253/4194304),(-1285921/16777216)⟩,⟨(-17059/8388608),(136699/8388608),-1,(-16606175/16777216)⟩,⟨-1,(-16600503/16777216),(-594063/16777216),(-134605/8388608)⟩,⟨(-679611/16777216),(39205/2097152),(16262679/16777216),1⟩,⟨-1,(-8078201/8388608),(1300455/16777216),(2333079/16777216)⟩],![⟨1,1,0,0⟩,⟨-1,(-16609535/16777216),(1285921/16777216),(376253/4194304)⟩,⟨(-8117359/8388608),(-7963285/8388608),(-4910601/16777216),(-4585115/16777216)⟩,⟨(4844117/16777216),(2576133/8388608),(-8081137/8388608),(-3959197/4194304)⟩,⟨(-5964289/16777216),(-2412687/8388608),(15297803/16777216),(16476091/16777216)⟩,⟨(3956007/4194304),1,(1437889/8388608),(2027033/8388608)⟩]]

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

end KarlssonCelle68109667215891f

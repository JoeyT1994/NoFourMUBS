import KarlssonEnclosureProvider

set_option autoImplicit false

set_option maxHeartbeats 0

set_option maxRecDepth 16384

namespace KarlssonCell9c09b64b35f08ad0

open Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def input : RawInput := ⟨(.regular,false),![⟨(2047/4096),(2049/4096)⟩,⟨(4095/4096),1⟩,⟨(-1/4096),(1/4096)⟩],⟨(14529495/8388608),(29058991/16777216)⟩,![⟨1,0,(5793/8388608)⟩,⟨(274877897143/274877916745),(103809024/274877916745),(277331/16777216)⟩,⟨(471808575/2198551446977),(2198551396352/2198551446977),(17837/2097152)⟩,⟨(471808575/2198551446977),(-2198551396352/2198551446977),(142781/16777216)⟩]⟩

def carrier : CarrierRegion := ![![⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩,⟨1,1,0,0⟩],![⟨1,1,0,0⟩,⟨-1,-1,0,0⟩,⟨(8382815/8388608),1,(-5793/8388608),(5793/8388608)⟩,⟨-1,(-8382815/8388608),(-5793/8388608),(5793/8388608)⟩,⟨(16499883/16777216),1,(-67749/4194304),(283667/16777216)⟩,⟨-1,(-16499883/16777216),(-283667/16777216),(67749/4194304)⟩],![⟨1,1,0,0⟩,⟨(-17387/2097152),(146297/16777216),(16634519/16777216),1⟩,⟨(-8556565/16777216),(-8219013/16777216),(-14565971/16777216),(-14346377/16777216)⟩,⟨(7173953/8388608),(7342729/8388608),(-8463777/16777216),(-8244183/16777216)⟩,⟨(-8790985/16777216),(-4018729/8388608),(441173/524288),(14611903/16777216)⟩,⟨(-14872251/16777216),(-3529681/4194304),(-8507617/16777216),(-8013249/16777216)⟩],![⟨1,1,0,0⟩,⟨(-146297/16777216),(17387/2097152),-1,(-16634519/16777216)⟩,⟨(-2137581/4194304),(-2053193/4194304),(14349929/16777216),(910595/1048576)⟩,⟨(3586989/4194304),(3671377/4194304),(4122093/8388608),(264493/524288)⟩,⟨(-8788479/16777216),(-2008751/4194304),(-3653235/4194304),(-3529691/4194304)⟩,⟨(-3718449/4194304),(-110315/131072),(4005463/8388608),(4252551/8388608)⟩],![⟨1,1,0,0⟩,⟨(-139181/16777216),(73191/8388608),-1,(-8317217/8388608)⟩,⟨(-2139557/4194304),(-8214783/16777216),(-14563779/16777216),(-7174927/8388608)⟩,⟨(-14691375/16777216),(-14347929/16777216),(8242039/16777216),(2113991/4194304)⟩,⟨(-8606695/16777216),(-3995253/8388608),(14115497/16777216),(14747335/16777216)⟩,⟨(14115847/16777216),(3683009/4194304),(8066305/16777216),(8698143/16777216)⟩],![⟨1,1,0,0⟩,⟨(-73191/8388608),(139181/16777216),(8317217/8388608),1⟩,⟨(-8564467/16777216),(-4110513/8388608),(7173153/8388608),(14560225/16777216)⟩,⟨(-3672831/4194304),(-14347883/16777216),(-4227981/8388608),(-4121021/8388608)⟩,⟨(-2149523/4194304),(-7981955/16777216),(-7376239/8388608),(-7060327/8388608)⟩,⟨(7060345/8388608),(14736827/16777216),(-8689435/16777216),(-8057611/16777216)⟩]]

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

end KarlssonCell9c09b64b35f08ad0

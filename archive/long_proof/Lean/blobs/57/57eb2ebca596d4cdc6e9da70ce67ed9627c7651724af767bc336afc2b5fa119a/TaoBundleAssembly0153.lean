import TaoBundleAssembly0150
import TaoBundleAssembly0151
import TaoBundleAssembly0152
import TaoBundleChunkBatch0592
import TaoBundleChunkBatch0593
import TaoBundleChunkBatch0594
import TaoBundleChunkBatch0595
import TaoBundleChunkBatch0596
import TaoBundleChunkBatch0597
import TaoBundleChunkBatch0598
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153
def root_6280463 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6280463_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6280463_left_fuel : Nat := 22
def small_6280463_left_count : Nat := 249
def small_6280463_left_encoded : String := "12073D0408A91307120701060000000305000100135D44F7050000F8135D81030000000600000001135D450300000001050000FE135D81090CFD9BFB0F350D0400000006000000020F34D1040000000204548A07000000061386AD06028001000000000713D7ECF700000000028000F800000006000000090000000300000004135D4509000000040CFD9BFB000000060000000600000000135D80F700000000050000F800000006135D450300000001050000FE135D81090CFD9BFB000000060F34D1040000000204548A070000000600000009000000040000000612073D0605000100135D44F7050000F8135D8103050000FE135D81090CFD9BFB0F350D040CFD9C070F34D10600000003000000060000000A000000020F34D104000000020CFD9C070F34D106000000030280010013D7B0F7078000F800000006128A410300000001078000FE128A7D090AD3577B0000000610D10104000000020000000700000004000000060000000013D7ECF700000000078000F800000006128A410300000001078000FE128A7D090000000900000004000000060F350D060C9A8706000000090F878D070280010013D7B0F70000000A0000000013D7ECF70000000000000009000000030000000300000004135D4509000000040CFD9BFB0000000A0F34D104000000020CFD9C070F34D10600000003000000060000000A00000001135D450300000001050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB0000000600000002000000090F350D060000000900000003000000020F34D104000000020CFD9C070F34D106000000030280010013D7B0F7028000F813D7ED03078000FE0000000900000009000000010000000900000000000000090F350D06000000090000000300000004135D4509000000040CFD9BFB000000090F34D104000000020000000900000000135D80F700000000050000F8135D8103050000FE135D81090CFD9BFB0F350D040CFD9C070F34D10600000003000000060F350D060C9A87040000000A0000000900000003000000020F34D104000000020CFD9C070F34D1060000000307800100128A40F7078000F8000000060000000900000000128A7CF700000000000000060F350D06000000090000000300000004135D4509000000040CFD9BFB0F350D040CFD9C07000000060000000A000000020F34D104000000020CFD9C070F34D10600000003000000060000000900000001135D450300000001050000FE135D81090CFD9BFB0F350D040CFD9C07000000090F350D060000000900000003000000020F34D104000000020000000900000004135D4509000000040CFD9BFB00000009000000090000000300000002"
theorem small_6280463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6280463_left_root small_6280463_left_fuel small_6280463_left_count small_6280463_left_encoded = true := by
  decide +kernel
theorem small_6280463_left_covered : CoveredBy scale carrier boxes small_6280463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6280463_left_root small_6280463_left_fuel small_6280463_left_count small_6280463_left_encoded small_6280463_left_checked

theorem cover_6280463 : CoveredBy scale carrier boxes root_6280463 := by
  apply coveredBy_split_literal root_6280463 small_6280463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6280997 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6280463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6280997
#print axioms cover_6280463

def root_6280457 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6280457_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6280457_left_fuel : Nat := 1
def small_6280457_left_count : Nat := 1
def small_6280457_left_encoded : String := "00000004"
theorem small_6280457_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6280457_left_root small_6280457_left_fuel small_6280457_left_count small_6280457_left_encoded = true := by
  decide +kernel
theorem small_6280457_left_covered : CoveredBy scale carrier boxes small_6280457_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6280457_left_root small_6280457_left_fuel small_6280457_left_count small_6280457_left_encoded small_6280457_left_checked

theorem cover_6280457 : CoveredBy scale carrier boxes root_6280457 := by
  apply coveredBy_split_literal root_6280457 small_6280457_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6280463 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6280457_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6280463
#print axioms cover_6280457

def root_6273157 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6273157 : CoveredBy scale carrier boxes root_6273157 := by
  apply coveredBy_split_literal root_6273157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6273158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6280457 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6273158
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6280457
#print axioms cover_6273157

def root_6273152 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273152_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273152_right_fuel : Nat := 1
def small_6273152_right_count : Nat := 1
def small_6273152_right_encoded : String := "00000003"
theorem small_6273152_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6273152_right_root small_6273152_right_fuel small_6273152_right_count small_6273152_right_encoded = true := by
  decide +kernel
theorem small_6273152_right_covered : CoveredBy scale carrier boxes small_6273152_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6273152_right_root small_6273152_right_fuel small_6273152_right_count small_6273152_right_encoded small_6273152_right_checked

theorem cover_6273152 : CoveredBy scale carrier boxes root_6273152 := by
  apply coveredBy_split_literal root_6273152 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6273157 small_6273152_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6273157
  · exact small_6273152_right_covered
#print axioms cover_6273152

def root_6272574 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272574_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272574_left_fuel : Nat := 20
def small_6272574_left_count : Nat := 269
def small_6272574_left_encoded : String := "1151E907000000030A0000FE1152250908A912FB12073D0408A91309120700FE000000050000000412073CFE0000000405000100135D44F7050000F800000005135D4503000000010500010600000005135D81070CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C09000000090F350CFE00000004000000090000000300000000135D80F700000000050000F8135D81030500010600000005135D81070CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C090F34D0FE00000005000000040F350CFE00000004000000090000000300000001135D45030000000105000106135D4507000000030CFD9BFB0F350D0400000005000000020F34D1040000000200000009135D81070CFD9BFB0F350D040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040F8750FB000000050000000200000009000000020F34D104000000020CFD9C09000000090F350CFE00000004000000090000000300000002120701040000000208A91309120700FE0500010000000005135D80F700000000050000F800000005135D450300000001000000060000000412073CFE0000000405000100135D44F7050000F8135D810305000106135D450700000003045489FB0000000500000006135D8107045489FB1386AD040CFD9C09000000050F350CFE000000040C9A86FE0F878D090000000500000004000000090000000213867104000000020CFD9C090F34D0FE0000000500000004000000060000000300000001135D4503000000010500010600000006135D8107045489FB1386AD040CFD9C09000000090000000600000002000000060000000300000000135D80F700000000050000F8135D810305000106135D450700000003045489FB0000000900000006135D8107045489FB1386AD040CFD9C09000000090F350CFE00000004000000090000000213867104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE00000006000000090000000300000001135D4503000000010500010600000006135D8107045489FB1386AD040CFD9C090000000900000006000000020000000600000003000000041151E9090000000408A912FB12073D0405000100135D44F70000000A00000000135D80F700000000050000F80000000A135D4503000000010500010600000009135D8107000000090000000300000002120701040000000205000100135D44F7050000F8135D8103050001060000000A135D8107050000FE135D8109045489FB0000000913867104000000020280010013D7B0F7078000F80000000A000000060000000013D7ECF700000000078000F80000000A00000006000000040000000A0000000300000001135D4503000000010000000900000000135D80F700000000050000F8135D81030500010600000009135D8107050000FE135D8109000000090000000400000009000000030000000100000009"
theorem small_6272574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6272574_left_root small_6272574_left_fuel small_6272574_left_count small_6272574_left_encoded = true := by
  decide +kernel
theorem small_6272574_left_covered : CoveredBy scale carrier boxes small_6272574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6272574_left_root small_6272574_left_fuel small_6272574_left_count small_6272574_left_encoded small_6272574_left_checked

theorem cover_6272574 : CoveredBy scale carrier boxes root_6272574 := by
  apply coveredBy_split_literal root_6272574 small_6272574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6273152 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6272574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6273152
#print axioms cover_6272574

def root_6272568 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272568_left_fuel : Nat := 1
def small_6272568_left_count : Nat := 1
def small_6272568_left_encoded : String := "00000002"
theorem small_6272568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6272568_left_root small_6272568_left_fuel small_6272568_left_count small_6272568_left_encoded = true := by
  decide +kernel
theorem small_6272568_left_covered : CoveredBy scale carrier boxes small_6272568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6272568_left_root small_6272568_left_fuel small_6272568_left_count small_6272568_left_encoded small_6272568_left_checked

theorem cover_6272568 : CoveredBy scale carrier boxes root_6272568 := by
  apply coveredBy_split_literal root_6272568 small_6272568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6272574 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6272568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6272574
#print axioms cover_6272568

def root_6272386 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272386_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272386_left_fuel : Nat := 18
def small_6272386_left_count : Nat := 85
def small_6272386_left_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE000000050000000A115225070A0000FE1152250908A91307120701060000000308A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000000000812073D0608A91309120700FE000000050000000412073CFE000000040500010000000005135D80F700000000050000F800000005135D4503000000010500010400000005135D80FB000000020CFD9C070F34D10600000003000000080000000800000003000000041151E9090000000408A9130712070106000000030000000612073D0605000100135D44F7050000F80000000A135D4503000000010000000A00000000135D80F700000000050000F800000006135D4503000000010500010400000006135D80FB00000002050000FE135D81090CFD9C0700000006000000080000000400000006000000030000000300000002"
theorem small_6272386_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6272386_left_root small_6272386_left_fuel small_6272386_left_count small_6272386_left_encoded = true := by
  decide +kernel
theorem small_6272386_left_covered : CoveredBy scale carrier boxes small_6272386_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6272386_left_root small_6272386_left_fuel small_6272386_left_count small_6272386_left_encoded small_6272386_left_checked

theorem cover_6272386 : CoveredBy scale carrier boxes root_6272386 := by
  apply coveredBy_split_literal root_6272386 small_6272386_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6272568 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6272386_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6272568
#print axioms cover_6272386

def root_6272380 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272380_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272380_left_fuel : Nat := 1
def small_6272380_left_count : Nat := 1
def small_6272380_left_encoded : String := "00000001"
theorem small_6272380_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6272380_left_root small_6272380_left_fuel small_6272380_left_count small_6272380_left_encoded = true := by
  decide +kernel
theorem small_6272380_left_covered : CoveredBy scale carrier boxes small_6272380_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6272380_left_root small_6272380_left_fuel small_6272380_left_count small_6272380_left_encoded small_6272380_left_checked

theorem cover_6272380 : CoveredBy scale carrier boxes root_6272380 := by
  apply coveredBy_split_literal root_6272380 small_6272380_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6272386 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6272380_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6272386
#print axioms cover_6272380

def root_6264346 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6264346 : CoveredBy scale carrier boxes root_6264346 := by
  apply coveredBy_split_literal root_6264346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6264347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6272380 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6264347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6272380
#print axioms cover_6264346

def root_6264341 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264341_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264341_right_fuel : Nat := 1
def small_6264341_right_count : Nat := 1
def small_6264341_right_encoded : String := "00000000"
theorem small_6264341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6264341_right_root small_6264341_right_fuel small_6264341_right_count small_6264341_right_encoded = true := by
  decide +kernel
theorem small_6264341_right_covered : CoveredBy scale carrier boxes small_6264341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6264341_right_root small_6264341_right_fuel small_6264341_right_count small_6264341_right_encoded small_6264341_right_checked

theorem cover_6264341 : CoveredBy scale carrier boxes root_6264341 := by
  apply coveredBy_split_literal root_6264341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6264346 small_6264341_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6264346
  · exact small_6264341_right_covered
#print axioms cover_6264341

def root_6292404 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6292404 : CoveredBy scale carrier boxes root_6292404 := by
  apply coveredBy_split_literal root_6292404 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2366.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2367.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2366.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2367.covered
#print axioms cover_6292404

def root_6292398 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6292398_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6292398_left_fuel : Nat := 1
def small_6292398_left_count : Nat := 1
def small_6292398_left_encoded : String := "00000000"
theorem small_6292398_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6292398_left_root small_6292398_left_fuel small_6292398_left_count small_6292398_left_encoded = true := by
  decide +kernel
theorem small_6292398_left_covered : CoveredBy scale carrier boxes small_6292398_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6292398_left_root small_6292398_left_fuel small_6292398_left_count small_6292398_left_encoded small_6292398_left_checked

theorem cover_6292398 : CoveredBy scale carrier boxes root_6292398 := by
  apply coveredBy_split_literal root_6292398 small_6292398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6292404 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6292398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6292404
#print axioms cover_6292398

def root_6264340 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6264340 : CoveredBy scale carrier boxes root_6264340 := by
  apply coveredBy_split_literal root_6264340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6264341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6292398 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6264341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6292398
#print axioms cover_6264340

def root_6249632 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6249632 : CoveredBy scale carrier boxes root_6249632 := by
  apply coveredBy_split_literal root_6249632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6249633 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6264340 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6249633
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6264340
#print axioms cover_6249632

def root_6297312 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6297312_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6297312_left_fuel : Nat := 21
def small_6297312_left_count : Nat := 229
def small_6297312_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E8FB0A0001061151E907000000030000000A115225070A0001081151E8FF08A91303120700F808A913070000000912073D06050001000000000A135D80F700000000050001040000000A00000009000000030000000112073CF80000000108A91307000000090000000A00000004115224FF0000000408A91303120700F80000000A000000010000000A0000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF08A91303120700F808A912FB0000000600000009000000010000000900000004115224FF0000000408A91303120700F800000006000000010000000A115225070A0001081151E8FF08A91303120700F808A912FB12073D0408A913070000000912073D06000000090000000300000002120701040000000208A913071207010600000003050001000000000600000007000000060000000112073CF80000000108A912FB0000000912070104000000020000000900000004115224FF0000000408A91303120700F808A912FB12073D0408A91307120701060000000308A912FF12073D0805000100135D44F704548A03000000060000000600000000135D80F70000000004548A030000000900000009000000040000000612073D0608A912FF12073D080000000600000004000000060000000300000002120701040000000208A91307120701060000000308A912FF12073D080500010000000006000000050000000400000006000000060000000112073CF80000000108A912FB12073D0408A91307120701060000000308A912FF12073D0805000100135D44F70CFD9C0300000006000000060000000000000009000000040000000612073D060000000A0000000300000002120701040000000208A91307120701060000000308A912FF12073D08050001000000000600000005000000040000000612073D0608A912FF00000006000000060000000300000003000000011151E903000000010A0001041151E8FB0A0001060000000A115225070A0001081151E8FF08A91307000000090000000600000004000000090000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF08A912FB0000000A00000009000000040000000A115225070A0001081151E8FF0000000900000004115224FF0000000408A912FB12073D040000000900000002120701040000000208A913070000000812073D0600000009000000030000000300000000"
theorem small_6297312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6297312_left_root small_6297312_left_fuel small_6297312_left_count small_6297312_left_encoded = true := by
  decide +kernel
theorem small_6297312_left_covered : CoveredBy scale carrier boxes small_6297312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6297312_left_root small_6297312_left_fuel small_6297312_left_count small_6297312_left_encoded small_6297312_left_checked

theorem cover_6297312 : CoveredBy scale carrier boxes root_6297312 := by
  apply coveredBy_split_literal root_6297312 small_6297312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2368.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6297312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2368.covered
#print axioms cover_6297312

def root_6297311 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6297311 : CoveredBy scale carrier boxes root_6297311 := by
  apply coveredBy_split_literal root_6297311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6297312 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2369.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6297312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2369.covered
#print axioms cover_6297311

def root_6249631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6249631 : CoveredBy scale carrier boxes root_6249631 := by
  apply coveredBy_split_literal root_6249631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6249632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6297311 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6249632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6297311
#print axioms cover_6249631

def root_6183453 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6183453 : CoveredBy scale carrier boxes root_6183453 := by
  apply coveredBy_split_literal root_6183453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6183454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6249631 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6183454
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6249631
#print axioms cover_6183453

def root_6161047 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161047 : CoveredBy scale carrier boxes root_6161047 := by
  apply coveredBy_split_literal root_6161047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6161048 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6183453 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6161048
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6183453
#print axioms cover_6161047

def root_6304289 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304289_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304289_right_fuel : Nat := 25
def small_6304289_right_count : Nat := 423
def small_6304289_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A00010800000005115224FF0000000408A912FD12073CFC0000000308A912FF0000000600000007120700FC00000005000000031151E8FD0000000600000003115225050A0000FC115224FD000000030A0001081151E8FF08A91305120701040000000208A912FD00000006120700FC000000060000000312073D04000000060000000200000004115224FF0000000408A91305120701040000000208A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000600000004000000080F34D0FC0CFD9BFF0F350D08000000060000000400000007000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF000000060F34D10800000004000000070F34D0FC00000006000000030000000200000001135D45030000000104548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D10800000004000000070F34D0FC0CFD9BFF0000000600000007000000031386AD040CFD9BFD000000060F34D0FC00000006000000030000000200000000135D80F700000000050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC00000003000000080F34D0FC00000006000000031386AD040CFD9BFD00000006000000060000000200000001135D45030000000104548A0513867104000000020CFD9BFD0F350CFC00000003000000080F34D0FC000000060000000300000006000000041207010800000004050001000000000700000007120700FC08A912FF12073D0805000100135D44F7050000F8135D810304548A050000000A0000000500000001135D45030000000104548A050000000A1386AD04045489FD00000006000000050000000200000000135D80F700000000050000F8135D810304548A050000000A0000000600000001135D45030000000104548A050000000700000006000000041207010800000004000000070000000312073D0408A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000F8135D81030CFD9C050F34D104000000020CFD9BFD00000006000000060000000600000001135D4503000000010CFD9C050F34D104000000020000000600000006000000000000000600000004120701080000000405000100135D44F7050000F8135D81030000000700000001000000070000000000000007120700FC08A912FF12073D080500010000000005000000060000000412070108000000040000000700000003000000021151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91305120701040000000208A912FF12073D0805000100135D44F7050000F8135D8103050000FC135D80FD0000000304548A05000000081386AD040CFD9BFF0000000600000008000000020000000800000001135D450300000001050000FC135D80FD0000000304548A0513867104000000020CFD9BFF00000008000000081386AD040CFD9BFF000000060000000600000002135D44FD04548A05000000081386AD040CFD9BFF0000000600000008000000020000000300000000135D80F700000000050000F800000008135D450300000001050000FC135D80FD0000000304548A0500000008000000060000000800000004120701080000000405000100135D44F7050000F8135D8103050000FC135D80FD0000000304548A0500000007000000070000000800000001135D450300000001050000FC00000007135D44FD04548A05000000081386AD04045489FF1386AD08000000070000000400000007000000020000000300000000135D80F700000000050000F800000008135D450300000001050000FC000000070000000512073D0408A912FF12073D0805000100135D44F7050000F800000006135D450300000001050000FC00000006135D44FD0000000600000003000000000000000600000004120701080000000405000100135D44F7050000F8135D8103050000FC00000007135D44FD0CFD9C050F34D10400000002045489FF1386AD080280010013D7B0F7078000F80000000800000007000000000000000600000004000000070F350D0400000007000000020000000300000001135D450300000001050000FC00000007135D44FD0CFD9C0500000007000000070000000300000000135D80F700000000050000F8135D8103050000FC00000007135D44FD0CFD9C050000000700000006000000030000000100000007000000020000000300000002"
theorem small_6304289_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6304289_right_root small_6304289_right_fuel small_6304289_right_count small_6304289_right_encoded = true := by
  decide +kernel
theorem small_6304289_right_covered : CoveredBy scale carrier boxes small_6304289_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6304289_right_root small_6304289_right_fuel small_6304289_right_count small_6304289_right_encoded small_6304289_right_checked

theorem cover_6304289 : CoveredBy scale carrier boxes root_6304289 := by
  apply coveredBy_split_literal root_6304289 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2371.root small_6304289_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2371.covered
  · exact small_6304289_right_covered
#print axioms cover_6304289

def root_6304284 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304284_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304284_right_fuel : Nat := 1
def small_6304284_right_count : Nat := 1
def small_6304284_right_encoded : String := "00000000"
theorem small_6304284_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6304284_right_root small_6304284_right_fuel small_6304284_right_count small_6304284_right_encoded = true := by
  decide +kernel
theorem small_6304284_right_covered : CoveredBy scale carrier boxes small_6304284_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6304284_right_root small_6304284_right_fuel small_6304284_right_count small_6304284_right_encoded small_6304284_right_checked

theorem cover_6304284 : CoveredBy scale carrier boxes root_6304284 := by
  apply coveredBy_split_literal root_6304284 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6304289 small_6304284_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6304289
  · exact small_6304284_right_covered
#print axioms cover_6304284

def root_6304283 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6304283 : CoveredBy scale carrier boxes root_6304283 := by
  apply coveredBy_split_literal root_6304283 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6304284 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2372.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6304284
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2372.covered
#print axioms cover_6304283

def root_6304282 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6304282 : CoveredBy scale carrier boxes root_6304282 := by
  apply coveredBy_split_literal root_6304282 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6304283 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2373.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6304283
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2373.covered
#print axioms cover_6304282

def root_6302584 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6302584 : CoveredBy scale carrier boxes root_6302584 := by
  apply coveredBy_split_literal root_6302584 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2370.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6304282 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2370.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6304282
#print axioms cover_6302584

def root_6314675 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6314675 : CoveredBy scale carrier boxes root_6314675 := by
  apply coveredBy_split_literal root_6314675 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2376.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2377.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2376.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2377.covered
#print axioms cover_6314675

def root_6314669 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314669_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314669_left_fuel : Nat := 1
def small_6314669_left_count : Nat := 1
def small_6314669_left_encoded : String := "00000002"
theorem small_6314669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314669_left_root small_6314669_left_fuel small_6314669_left_count small_6314669_left_encoded = true := by
  decide +kernel
theorem small_6314669_left_covered : CoveredBy scale carrier boxes small_6314669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314669_left_root small_6314669_left_fuel small_6314669_left_count small_6314669_left_encoded small_6314669_left_checked

theorem cover_6314669 : CoveredBy scale carrier boxes root_6314669 := by
  apply coveredBy_split_literal root_6314669 small_6314669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6314675 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6314669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6314675
#print axioms cover_6314669

def root_6318651 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318651_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318651_left_fuel : Nat := 25
def small_6318651_left_count : Nat := 443
def small_6318651_left_encoded : String := "115225070A0000FE1152250908A912F712073D0008A91303120700F808A913050000000512073D0408A913070000000512073CFC0000000308A913090000000512073CFE000000040CFD9BF70F350D0004548A03000000051386ACF8000000010CFD9C05000000050F350D040CFD9C07000000050000000600000002000000000F34D1000000000004548A03138670F80CFD9C05000000050F350D040CFD9C07000000050F350CFC000000030CFD9C09000000050F350CFE000000040C9A8704000000050000000700000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000060F350CFC000000030CFD9C09000000060000000600000002000000020000000112073CF80000000108A91305120701040000000208A91307120700FC000000050000000312073CFC0000000308A913090000000912073CFE000000040CFD9BF70F350D0000000007000000000000000712073D0408A91307120700FC08A9130900000005000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE000000040CFD9BF70F350D000CFD9C03000000070000000600000000000000070000000200000000120701000000000008A91303120700F808A91305120701040000000208A91307000000050000000912073D0408A91307120700FC08A9130900000005000000070000000312073CFC0000000308A91309120700FE045489F71386AD0004548A030000000500000006000000001386710000000000000000090000000412073CFE00000004045489F71386AD0004548A03138670F80CFD9C050F34D10400000002000000070F350D040CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000070000000700000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000060F350CFC000000030CFD9C0900000006000000060000000200000000138671000000000004548A03138670F80CFD9C05000000090F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C09000000090F350CFE0000000400000009000000020000000100000009000000020000000112073CF80000000108A9130512070104000000020000000912073D0408A913070000000712073CFC0000000308A913090000000912073CFE00000004045489F7000000070000000700000002000000041151E9090000000408A912F712073D0008A91303120700F808A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC00000003050000FE135D81090CFD9BF70F350D0004548A03138670F80CFD9C05000000050F350D040000000500000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000050F350CFC000000030000000700000002000000000F34D1000000000004548A03138670F80000000A000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000070F350CFC00000003000000070000000200000004135D4509000000040CFD9BF70F350D0004548A030000000A0000000A000000000F34D100000000000000000A000000020000000112073CF80000000108A913050000000712073D0408A913070000000712073CFC00000003050000FE135D81090CFD9BF7000000070000000700000004135D4509000000040CFD9BF70F350D000CFD9C030000000800000007000000000F34D100000000000CFD9C030F34D0F80CFD9C05000000070000000800000001000000070000000200000000120701000000000008A91303120700F808A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC00000003050000FE135D8109045489F71386AD0004548A03138670F80000000A000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000070F350CFC000000030C9A870400000007000000070000000200000000138671000000000004548A03138670F80CFD9C05000000090F350D040CFD9C070000000A0000000900000002000000011386ACF8000000010000000900000004135D450900000004045489F71386AD0004548A030000000A0000000A00000000138671000000000004548A030000000A1386ACF8000000010CFD9C05000000090F350D040000000900000002000000020000000112073CF80000000108A9130512070104000000020000000712073D0408A913070000000712073CFC00000003050000FE135D8109045489F7000000070000000700000004135D450900000004045489F71386AD000CFD9C030F34D0F80CFD9C05000000070F350D0400000009000000020000000100000007000000001386710000000000000000090000000200000003"
theorem small_6318651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6318651_left_root small_6318651_left_fuel small_6318651_left_count small_6318651_left_encoded = true := by
  decide +kernel
theorem small_6318651_left_covered : CoveredBy scale carrier boxes small_6318651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6318651_left_root small_6318651_left_fuel small_6318651_left_count small_6318651_left_encoded small_6318651_left_checked

theorem cover_6318651 : CoveredBy scale carrier boxes root_6318651 := by
  apply coveredBy_split_literal root_6318651 small_6318651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2378.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6318651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2378.covered
#print axioms cover_6318651

def root_6318646 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318646_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318646_right_fuel : Nat := 1
def small_6318646_right_count : Nat := 1
def small_6318646_right_encoded : String := "00000002"
theorem small_6318646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6318646_right_root small_6318646_right_fuel small_6318646_right_count small_6318646_right_encoded = true := by
  decide +kernel
theorem small_6318646_right_covered : CoveredBy scale carrier boxes small_6318646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6318646_right_root small_6318646_right_fuel small_6318646_right_count small_6318646_right_encoded small_6318646_right_checked

theorem cover_6318646 : CoveredBy scale carrier boxes root_6318646 := by
  apply coveredBy_split_literal root_6318646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6318651 small_6318646_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6318651
  · exact small_6318646_right_covered
#print axioms cover_6318646

def root_6314668 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6314668 : CoveredBy scale carrier boxes root_6314668 := by
  apply coveredBy_split_literal root_6314668 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6314669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6318646 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6314669
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6318646
#print axioms cover_6314668

def root_6314663 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314663_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314663_right_fuel : Nat := 1
def small_6314663_right_count : Nat := 1
def small_6314663_right_encoded : String := "00000001"
theorem small_6314663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314663_right_root small_6314663_right_fuel small_6314663_right_count small_6314663_right_encoded = true := by
  decide +kernel
theorem small_6314663_right_covered : CoveredBy scale carrier boxes small_6314663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314663_right_root small_6314663_right_fuel small_6314663_right_count small_6314663_right_encoded small_6314663_right_checked

theorem cover_6314663 : CoveredBy scale carrier boxes root_6314663 := by
  apply coveredBy_split_literal root_6314663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6314668 small_6314663_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6314668
  · exact small_6314663_right_covered
#print axioms cover_6314663

def root_6314662 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314662_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314662_right_fuel : Nat := 20
def small_6314662_right_count : Nat := 147
def small_6314662_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0000FE1152250908A912F700000006120701000000000000000006000000041151E9090000000408A912F70000000800000008000000031151E907000000030A0000FE1152250908A912F712073D0008A91309000000060000000700000000120701000000000008A913090000000600000005000000041151E9090000000400000005115225050A0000FC115225070A0000FE1152250908A912F712073D0008A9130512070104000000020000000912073D0408A9130700000006000000060000000200000000120701000000000008A9130512070104000000020000000900000007000000041151E9090000000408A912F700000007120701000000000008A913050000000900000007000000031151E907000000030A0000FE1152250908A912F712073D0008A91305120701040000000208A91309120700FE000000060000000412073CFE00000004050000F8135D8103050000FC00000006135D4507000000030CFD9BF70000000600000007000000010000000612073D0408A91309120700FE000000060000000412073CFE00000004050000F8135D8103050000FC00000006135D4507000000030CFD9BF7000000060F34D100000000000000000600000001000000060000000200000000120701000000000008A9130512070104000000020000000912073D0408A91309120700FE00000006000000040000000700000002000000041151E9090000000408A912F712073D0008A913050000000700000007000000000000000700000002"
theorem small_6314662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314662_right_root small_6314662_right_fuel small_6314662_right_count small_6314662_right_encoded = true := by
  decide +kernel
theorem small_6314662_right_covered : CoveredBy scale carrier boxes small_6314662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314662_right_root small_6314662_right_fuel small_6314662_right_count small_6314662_right_encoded small_6314662_right_checked

theorem cover_6314662 : CoveredBy scale carrier boxes root_6314662 := by
  apply coveredBy_split_literal root_6314662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6314663 small_6314662_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6314663
  · exact small_6314662_right_covered
#print axioms cover_6314662

def root_6314656 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314656_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314656_left_fuel : Nat := 1
def small_6314656_left_count : Nat := 1
def small_6314656_left_encoded : String := "00000000"
theorem small_6314656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314656_left_root small_6314656_left_fuel small_6314656_left_count small_6314656_left_encoded = true := by
  decide +kernel
theorem small_6314656_left_covered : CoveredBy scale carrier boxes small_6314656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314656_left_root small_6314656_left_fuel small_6314656_left_count small_6314656_left_encoded small_6314656_left_checked

theorem cover_6314656 : CoveredBy scale carrier boxes root_6314656 := by
  apply coveredBy_split_literal root_6314656 small_6314656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6314662 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6314656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6314662
#print axioms cover_6314656

def root_6313292 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6313292 : CoveredBy scale carrier boxes root_6313292 := by
  apply coveredBy_split_literal root_6313292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2375.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6314656 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2375.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6314656
#print axioms cover_6313292

def root_6311980 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6311980 : CoveredBy scale carrier boxes root_6311980 := by
  apply coveredBy_split_literal root_6311980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2374.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6313292 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2374.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6313292
#print axioms cover_6311980

def root_6323548 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6323548 : CoveredBy scale carrier boxes root_6323548 := by
  apply coveredBy_split_literal root_6323548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2379.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2380.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2379.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2380.covered
#print axioms cover_6323548

def root_6323542 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6323542_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6323542_left_fuel : Nat := 1
def small_6323542_left_count : Nat := 1
def small_6323542_left_encoded : String := "00000000"
theorem small_6323542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6323542_left_root small_6323542_left_fuel small_6323542_left_count small_6323542_left_encoded = true := by
  decide +kernel
theorem small_6323542_left_covered : CoveredBy scale carrier boxes small_6323542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6323542_left_root small_6323542_left_fuel small_6323542_left_count small_6323542_left_encoded small_6323542_left_checked

theorem cover_6323542 : CoveredBy scale carrier boxes root_6323542 := by
  apply coveredBy_split_literal root_6323542 small_6323542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6323548 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6323542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6323548
#print axioms cover_6323542

def root_6322804 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6322804_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6322804_left_fuel : Nat := 22
def small_6322804_left_count : Nat := 341
def small_6322804_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E905000000020A0000FC115225070A00010800000005115224FF0000000408A91303120700F8000000050000000112073CF80000000108A91307120700FC000000050000000312073CFC0000000308A912FF12073D08000000050000000412070108000000040000000A000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91303120700F808A912FF0000000512070108000000040000000A0000000112073CF80000000108A912FF12073D0805000100135D44F70000000A00000000000000090000000412070108000000040000000A115225050A0000FC115225070A0001081151E8FF08A91303120700F808A9130500000009000000050000000112073CF80000000108A91305120701040000000208A91307120700FC0000000500000003000000050000000500000004115224FF0000000408A91303120700F808A91305120701040000000208A91307120700FC08A912FF12073D0805000100000000050000000900000004000000050000000312073CFC0000000308A912FF000000090000000512073D0408A91307120700FC000000050000000300000005000000020000000112073CF80000000108A91305120701040000000208A91307120700FC08A912FF12073D080500010000000005135D80F7000000000000000500000004000000050000000312073CFC0000000308A912FF12073D080500010000000005000000090000000412070108000000040000000A12073D0408A91307120700FC000000050000000312073CFC0000000308A912FF12073D080500010000000005000000090000000412070108000000040000000A00000002000000031151E907000000030A0001081151E8FF08A91303120700F800000005000000010000000900000004115224FF0000000408A91303120700F808A91305120701040000000208A912FF0000000912070108000000040000000612073D0408A912FF12073D08050001000000000500000007000000041207010800000004050001000000000A135D80F700000000050000FC0000000A00000007000000020000000112073CF80000000108A913050000000A12073D0408A912FF12073D0805000100135D44F70000000900000000000000090000000412070108000000040000000A0000000200000002000000011151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A91307120700FC08A912FF0000000512070108000000040000000A0000000300000009000000031151E907000000030A0001081151E8FF000000090000000400000009115225050A0000FC115225070A0001081151E8FF08A91305120701040000000208A91307120700FC0000000500000003000000090000000900000004115224FF0000000408A91305120701040000000208A91307120700FC08A912FF12073D08050001000000000A135D80F700000000050000F80000000A135D45030000000104548A050000000A1386AD040000000A000000020000000412070108000000040000000A000000030000000A12073D0408A91307120700FC08A912FF12073D080500010000000005135D80F700000000050000F800000005135D4503000000010CFD9C050000000900000006000000041207010800000004050001000000000A135D80F700000000050000F80000000A135D4503000000010000000A0000000312073CFC0000000308A912FF12073D08000000090000000412070108000000040000000A00000002000000031151E907000000030A00010800000009115224FF00000004000000090000000200000000"
theorem small_6322804_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6322804_left_root small_6322804_left_fuel small_6322804_left_count small_6322804_left_encoded = true := by
  decide +kernel
theorem small_6322804_left_covered : CoveredBy scale carrier boxes small_6322804_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6322804_left_root small_6322804_left_fuel small_6322804_left_count small_6322804_left_encoded small_6322804_left_checked

theorem cover_6322804 : CoveredBy scale carrier boxes root_6322804 := by
  apply coveredBy_split_literal root_6322804 small_6322804_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6323542 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6322804_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6323542
#print axioms cover_6322804

def root_6327541 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6327541_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6327541_left_fuel : Nat := 21
def small_6327541_left_count : Nat := 357
def small_6327541_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A91303120700F80000000800000001000000081152250908A91303120700F808A91307120700FC000000050000000312073CFC0000000308A91309120701080000000405000100000000050000000A12073D0805000100135D44F705000104000000050000000A0000000000000008000000040000000112073CF80000000108A91307120700FC08A91309120701080000000405000100000000050000000A12073D0805000100135D44F705000104000000050000000A00000000135D80F70000000000000008000000040000000312073CFC0000000308A9130912070108000000040000000A12073D08000000080000000400000004000000031151E907000000030A0001081151E90900000004000000081152250908A91303120700F808A9130912070108000000040000000A00000008000000010000000800000004115225050A0000FC115225070A0001081151E9090000000408A91303120700F808A913050000000A12073D0408A913070000000512073CFC0000000300000008000000020000000112073CF80000000108A91305120701040000000200000007000000081152250908A91303120700F808A91305120701040000000208A913070000000A0000000A12073D0408A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040000000A12073D08050001000000000A0000000A00000004000000020000000112073CF80000000108A91305120701040000000208A91307120700FC0000000A000000030000000A12073D0408A91307120700FC08A9130912070108000000040000000A12073D08050001000000000A00000008000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0805000100135D44F70CFD9C030000000A000000080000000000000008000000040000000200000004000000031151E907000000030A0001081151E9090000000408A91303120700F808A9130512070104000000020000000A12073D0405000100135D44F70000000800000000135D80F700000000050000FC0000000800000008000000020000000112073CF80000000108A913051207010400000002050001000000000A0000000A12073D0400000008000000021152250908A91303120700F808A9130512070104000000020000000A12073D0408A9130912070108000000040000000A12073D080000000800000004000000020000000112073CF80000000108A913050000000A12073D0408A9130912070108000000040000000A00000008000000020000000400000002000000011151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A9130700000007000000081152250908A91307120700FC08A9130912070108000000040000000A12073D080500010000000007135D80F700000000050000F8135D8103050001040000000A000000070000000100000007000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0805000100135D44F70000000A00000000135D80F700000000050000F800000008135D450300000001000000080000000400000004000000031151E907000000030A00010800000008115225090000000800000004115225050A0000FC115225070A0001081151E90900000004000000071152250908A91305120701040000000208A91307120700FC00000007000000030000000A12073D0408A91307120700FC08A9130912070108000000040000000A000000070000000312073CFC0000000308A9130912070108000000040000000A12073D0800000008000000040000000200000004000000031151E907000000030A0001081151E9090000000400000008000000080000000200000000"
theorem small_6327541_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6327541_left_root small_6327541_left_fuel small_6327541_left_count small_6327541_left_encoded = true := by
  decide +kernel
theorem small_6327541_left_covered : CoveredBy scale carrier boxes small_6327541_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6327541_left_root small_6327541_left_fuel small_6327541_left_count small_6327541_left_encoded small_6327541_left_checked

theorem cover_6327541 : CoveredBy scale carrier boxes root_6327541 := by
  apply coveredBy_split_literal root_6327541 small_6327541_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2381.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6327541_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2381.covered
#print axioms cover_6327541

def root_6322803 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6322803 : CoveredBy scale carrier boxes root_6322803 := by
  apply coveredBy_split_literal root_6322803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6322804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6327541 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6322804
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6327541
#print axioms cover_6322803

def root_6311979 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6311979 : CoveredBy scale carrier boxes root_6311979 := by
  apply coveredBy_split_literal root_6311979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6311980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6322803 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6311980
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6322803
#print axioms cover_6311979

def root_6302583 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6302583 : CoveredBy scale carrier boxes root_6302583 := by
  apply coveredBy_split_literal root_6302583 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6302584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6311979 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6302584
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6311979
#print axioms cover_6302583

def root_6334000 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6334000 : CoveredBy scale carrier boxes root_6334000 := by
  apply coveredBy_split_literal root_6334000 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2383.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2384.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2383.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2384.covered
#print axioms cover_6334000

def root_6333995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6333995_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6333995_right_fuel : Nat := 1
def small_6333995_right_count : Nat := 1
def small_6333995_right_encoded : String := "00000000"
theorem small_6333995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6333995_right_root small_6333995_right_fuel small_6333995_right_count small_6333995_right_encoded = true := by
  decide +kernel
theorem small_6333995_right_covered : CoveredBy scale carrier boxes small_6333995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6333995_right_root small_6333995_right_fuel small_6333995_right_count small_6333995_right_encoded small_6333995_right_checked

theorem cover_6333995 : CoveredBy scale carrier boxes root_6333995 := by
  apply coveredBy_split_literal root_6333995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6334000 small_6333995_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6334000
  · exact small_6333995_right_covered
#print axioms cover_6333995

def root_6339818 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339818_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339818_left_fuel : Nat := 22
def small_6339818_left_count : Nat := 109
def small_6339818_left_encoded : String := "0E5FD8F70B4D43F80000000510801103000000010DE7CA06000000050E6014FD000000030B4D43FE0000000510801109000000040115234513F85904000000020DAED87D0E9661060D412880000000050EFA4CF7000000000AA6A2780000000510ED7103000000010AA6A27E00000005000000BC000000030E962506000000030D4128800EFA10F70AA6A2780000000510ED7103000000010AA6A27E00000005000000BC000000000EFA4CF7000000000AA6A27810EDAD030AA6A27E0000000510ED710900000004008A922513FDF904000000020D563A3D000000050EE751060000000300000009000000090000000110ED7103000000010AA6A27E10EDAD09008A9225000000070000000A00000004000000BC13F895040DAED87D0E9661060D412880000000050EFA4CF7000000000AA6A2780000000510ED7103000000010AA6A27E0000000510ED71090000000400000009000000030E962506000000030D4128800EFA10F700000009000000000EFA4CF7000000000AA6A27810EDAD03000000090000000110ED7103000000010AA6A27E10EDAD090000000A0000000410ED710900000004000000090000000200000000"
theorem small_6339818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339818_left_root small_6339818_left_fuel small_6339818_left_count small_6339818_left_encoded = true := by
  decide +kernel
theorem small_6339818_left_covered : CoveredBy scale carrier boxes small_6339818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339818_left_root small_6339818_left_fuel small_6339818_left_count small_6339818_left_encoded small_6339818_left_checked

theorem cover_6339818 : CoveredBy scale carrier boxes root_6339818 := by
  apply coveredBy_split_literal root_6339818 small_6339818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2385.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact small_6339818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2385.covered
#print axioms cover_6339818

def root_6339812 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339812_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339812_left_fuel : Nat := 1
def small_6339812_left_count : Nat := 1
def small_6339812_left_encoded : String := "00000002"
theorem small_6339812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339812_left_root small_6339812_left_fuel small_6339812_left_count small_6339812_left_encoded = true := by
  decide +kernel
theorem small_6339812_left_covered : CoveredBy scale carrier boxes small_6339812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339812_left_root small_6339812_left_fuel small_6339812_left_count small_6339812_left_encoded small_6339812_left_checked

theorem cover_6339812 : CoveredBy scale carrier boxes root_6339812 := by
  apply coveredBy_split_literal root_6339812 small_6339812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339818 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6339812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339818
#print axioms cover_6339812

def root_6339811 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339811_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339811_right_fuel : Nat := 20
def small_6339811_right_count : Nat := 173
def small_6339811_right_encoded : String := "13E201040DE7CA000E5FD8F70B4D43F810804D03000000050000000110801103000000010DE7CA060E5FD8FD00000005000000030E6014FD000000030B4D43FE10804D0900000005000000041080110900000004033F67C513BBF504000000020DAED87D000000090E962506000000030000000900000009000000000E6014F7000000000B4D43F810804D030DE7CA060E5FD8FD00000005000000030E6014FD000000030B4D43FE10804D09033F67C50000000513BC31040000000500000002000000041080110900000004033F67C513BBF504000000020DAED8770E96610000000009000000000E9625000000000000000007000000090000000110801103000000010DE7CA060E5FD8FD0B4D43FE000000061080110900000004033F67C513BBF504000000020DAED877000000060E962500000000000000000600000006000000030E6014FD000000030B4D43FE10804D09033F67C513BBF504000000020DAED8770E9661000DAED87D000000060E962506000000030000000A000000000E962500000000000DAED87D000000060000000600000006000000041080110900000004033F67C513BBF504000000020DAED8770E9661000DAED87D0E9661060AA6A27810EDAD03000000090000000110ED7103000000010AA6A27E0000000610ED71090000000400000006000000030E962506000000030AA6A27810EDAD0300000009000000010000000A000000000E962500000000000DAED87D0E9661060AA6A27810EDAD03000000070000000110ED71030000000100000006000000030E962506000000030AA6A27810EDAD030AA6A27E10EDAD09000000070000000400000007000000010000000A13BC31040DAED8770E9661000DAED87D000000090E9625060000000300000009000000000E962500000000000DAED87D0E9661060000000600000003000000070000000200000002"
theorem small_6339811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339811_right_root small_6339811_right_fuel small_6339811_right_count small_6339811_right_encoded = true := by
  decide +kernel
theorem small_6339811_right_covered : CoveredBy scale carrier boxes small_6339811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339811_right_root small_6339811_right_fuel small_6339811_right_count small_6339811_right_encoded small_6339811_right_checked

theorem cover_6339811 : CoveredBy scale carrier boxes root_6339811 := by
  apply coveredBy_split_literal root_6339811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339812 small_6339811_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339812
  · exact small_6339811_right_covered
#print axioms cover_6339811

def root_6339805 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339805_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339805_left_fuel : Nat := 1
def small_6339805_left_count : Nat := 1
def small_6339805_left_encoded : String := "00000004"
theorem small_6339805_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339805_left_root small_6339805_left_fuel small_6339805_left_count small_6339805_left_encoded = true := by
  decide +kernel
theorem small_6339805_left_covered : CoveredBy scale carrier boxes small_6339805_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339805_left_root small_6339805_left_fuel small_6339805_left_count small_6339805_left_encoded small_6339805_left_checked

theorem cover_6339805 : CoveredBy scale carrier boxes root_6339805 := by
  apply coveredBy_split_literal root_6339805 small_6339805_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339811 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6339805_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339811
#print axioms cover_6339805

def root_6339773 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339773_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339773_left_fuel : Nat := 8
def small_6339773_left_count : Nat := 15
def small_6339773_left_encoded : String := "0F878D09022A45850000000513E201040DE7CA00000000050E6014F7000000000B4D43F8000000051080110300000001000000060000000200000004"
theorem small_6339773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339773_left_root small_6339773_left_fuel small_6339773_left_count small_6339773_left_encoded = true := by
  decide +kernel
theorem small_6339773_left_covered : CoveredBy scale carrier boxes small_6339773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339773_left_root small_6339773_left_fuel small_6339773_left_count small_6339773_left_encoded small_6339773_left_checked

theorem cover_6339773 : CoveredBy scale carrier boxes root_6339773 := by
  apply coveredBy_split_literal root_6339773 small_6339773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339805 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339805
#print axioms cover_6339773

def root_6339767 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339767_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339767_left_fuel : Nat := 1
def small_6339767_left_count : Nat := 1
def small_6339767_left_encoded : String := "00000003"
theorem small_6339767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339767_left_root small_6339767_left_fuel small_6339767_left_count small_6339767_left_encoded = true := by
  decide +kernel
theorem small_6339767_left_covered : CoveredBy scale carrier boxes small_6339767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339767_left_root small_6339767_left_fuel small_6339767_left_count small_6339767_left_encoded small_6339767_left_checked

theorem cover_6339767 : CoveredBy scale carrier boxes root_6339767 := by
  apply coveredBy_split_literal root_6339767 small_6339767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339773 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6339767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339773
#print axioms cover_6339767

def root_6339759 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339759_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339759_left_fuel : Nat := 2
def small_6339759_left_count : Nat := 3
def small_6339759_left_encoded : String := "0F8750FD0000000500000003"
theorem small_6339759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339759_left_root small_6339759_left_fuel small_6339759_left_count small_6339759_left_encoded = true := by
  decide +kernel
theorem small_6339759_left_covered : CoveredBy scale carrier boxes small_6339759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339759_left_root small_6339759_left_fuel small_6339759_left_count small_6339759_left_encoded small_6339759_left_checked

theorem cover_6339759 : CoveredBy scale carrier boxes root_6339759 := by
  apply coveredBy_split_literal root_6339759 small_6339759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339767 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339767
#print axioms cover_6339759

def root_6339753 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339753_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339753_left_fuel : Nat := 1
def small_6339753_left_count : Nat := 1
def small_6339753_left_encoded : String := "00000001"
theorem small_6339753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339753_left_root small_6339753_left_fuel small_6339753_left_count small_6339753_left_encoded = true := by
  decide +kernel
theorem small_6339753_left_covered : CoveredBy scale carrier boxes small_6339753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339753_left_root small_6339753_left_fuel small_6339753_left_count small_6339753_left_encoded small_6339753_left_checked

theorem cover_6339753 : CoveredBy scale carrier boxes root_6339753 := by
  apply coveredBy_split_literal root_6339753 small_6339753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339759 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6339753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339759
#print axioms cover_6339753

def root_6339689 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339689_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339689_left_fuel : Nat := 16
def small_6339689_left_count : Nat := 31
def small_6339689_left_encoded : String := "0F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F87510900000004022A45850000000513E201040DE7CA00000000050E6014F7000000000DE7C9F8000000050E5FD903000000010DE7CA06000000050E6014FD000000030B4D43FE000000051080110900000004000000070000000200000001"
theorem small_6339689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339689_left_root small_6339689_left_fuel small_6339689_left_count small_6339689_left_encoded = true := by
  decide +kernel
theorem small_6339689_left_covered : CoveredBy scale carrier boxes small_6339689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339689_left_root small_6339689_left_fuel small_6339689_left_count small_6339689_left_encoded small_6339689_left_checked

theorem cover_6339689 : CoveredBy scale carrier boxes root_6339689 := by
  apply coveredBy_split_literal root_6339689 small_6339689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339753 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339753
#print axioms cover_6339689

def root_6339683 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339683_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339683_left_fuel : Nat := 1
def small_6339683_left_count : Nat := 1
def small_6339683_left_encoded : String := "00000000"
theorem small_6339683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339683_left_root small_6339683_left_fuel small_6339683_left_count small_6339683_left_encoded = true := by
  decide +kernel
theorem small_6339683_left_covered : CoveredBy scale carrier boxes small_6339683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339683_left_root small_6339683_left_fuel small_6339683_left_count small_6339683_left_encoded small_6339683_left_checked

theorem cover_6339683 : CoveredBy scale carrier boxes root_6339683 := by
  apply coveredBy_split_literal root_6339683 small_6339683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339689 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6339683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339689
#print axioms cover_6339683

def root_6339675 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339675_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339675_left_fuel : Nat := 2
def small_6339675_left_count : Nat := 3
def small_6339675_left_encoded : String := "0F8750F70000000500000000"
theorem small_6339675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339675_left_root small_6339675_left_fuel small_6339675_left_count small_6339675_left_encoded = true := by
  decide +kernel
theorem small_6339675_left_covered : CoveredBy scale carrier boxes small_6339675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339675_left_root small_6339675_left_fuel small_6339675_left_count small_6339675_left_encoded small_6339675_left_checked

theorem cover_6339675 : CoveredBy scale carrier boxes root_6339675 := by
  apply coveredBy_split_literal root_6339675 small_6339675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339683 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339683
#print axioms cover_6339675

def root_6339669 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339669_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339669_left_fuel : Nat := 1
def small_6339669_left_count : Nat := 1
def small_6339669_left_encoded : String := "00000004"
theorem small_6339669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339669_left_root small_6339669_left_fuel small_6339669_left_count small_6339669_left_encoded = true := by
  decide +kernel
theorem small_6339669_left_covered : CoveredBy scale carrier boxes small_6339669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339669_left_root small_6339669_left_fuel small_6339669_left_count small_6339669_left_encoded small_6339669_left_checked

theorem cover_6339669 : CoveredBy scale carrier boxes root_6339669 := by
  apply coveredBy_split_literal root_6339669 small_6339669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339675 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6339669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339675
#print axioms cover_6339669

def root_6339661 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339661_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339661_left_fuel : Nat := 2
def small_6339661_left_count : Nat := 3
def small_6339661_left_encoded : String := "0F34D0FE0000000500000004"
theorem small_6339661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339661_left_root small_6339661_left_fuel small_6339661_left_count small_6339661_left_encoded = true := by
  decide +kernel
theorem small_6339661_left_covered : CoveredBy scale carrier boxes small_6339661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339661_left_root small_6339661_left_fuel small_6339661_left_count small_6339661_left_encoded small_6339661_left_checked

theorem cover_6339661 : CoveredBy scale carrier boxes root_6339661 := by
  apply coveredBy_split_literal root_6339661 small_6339661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339669 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6339661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339669
#print axioms cover_6339661

def root_6339656 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339656_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339656_right_fuel : Nat := 1
def small_6339656_right_count : Nat := 1
def small_6339656_right_encoded : String := "00000003"
theorem small_6339656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339656_right_root small_6339656_right_fuel small_6339656_right_count small_6339656_right_encoded = true := by
  decide +kernel
theorem small_6339656_right_covered : CoveredBy scale carrier boxes small_6339656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339656_right_root small_6339656_right_fuel small_6339656_right_count small_6339656_right_encoded small_6339656_right_checked

theorem cover_6339656 : CoveredBy scale carrier boxes root_6339656 := by
  apply coveredBy_split_literal root_6339656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339661 small_6339656_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339661
  · exact small_6339656_right_covered
#print axioms cover_6339656

def root_6339655 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6339655 : CoveredBy scale carrier boxes root_6339655 := by
  apply coveredBy_split_literal root_6339655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339656 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2386.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339656
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2386.covered
#print axioms cover_6339655

def root_6339649 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339649_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339649_left_fuel : Nat := 1
def small_6339649_left_count : Nat := 1
def small_6339649_left_encoded : String := "00000002"
theorem small_6339649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339649_left_root small_6339649_left_fuel small_6339649_left_count small_6339649_left_encoded = true := by
  decide +kernel
theorem small_6339649_left_covered : CoveredBy scale carrier boxes small_6339649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339649_left_root small_6339649_left_fuel small_6339649_left_count small_6339649_left_encoded small_6339649_left_checked

theorem cover_6339649 : CoveredBy scale carrier boxes root_6339649 := by
  apply coveredBy_split_literal root_6339649 small_6339649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339655 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6339649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339655
#print axioms cover_6339649

def root_6339648 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339648_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339648_right_fuel : Nat := 27
def small_6339648_right_count : Nat := 249
def small_6339648_right_encoded : String := "1386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8706000000050F878CFD000000030C9A86FE000000050F87510900000004067ECE850000000500000008000000000F878CF7000000000C9A86F80F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F87510900000004067ECE8512EA5904000000020DE7CA00000000050E6014F7000000000DE7C9F8000000050E5FD903000000010000000900000009000000010F875103000000010C9A87060F8750FD0C9A86FE000000050F87510900000004067ECE850000000500000006000000030F878CFD000000030C9A86FE0F878D09067ECE8512EA5904000000020DE7CA00000000050000000600000006000000040F87510900000004067ECE8512EA5904000000020DE7CA000E5FD8F70B4D43F810804D03000000090000000110801103000000010DE7CA060E5FD8FD00000005000000030E6014FD000000030000000A000000000E6014F7000000000B4D43F810804D030DE7CA060E5FD8FD00000006000000030E6014FD000000030B4D43FE00000009000000090000000110801103000000010DE7CA06000000060E6014FD000000030B4D43FE0000000610801109000000040569AC451340D504000000020DAED87700000006000000070000000612EA95040DE7CA000E5FD8F700000009000000000E6014F7000000000B4D43F8000000060000000600000002000000030F34D106000000030CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F8000000050000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE0000000500000009000000010F875103000000010C9A86FE0F878D090000000A000000040F8751090000000400000009000000000F878CF7000000000C9A86F80F878D030C9A86FE0F878D09067ECE8512EA5904000000020AD3577D10D13D06000000050000000310D10106000000030DE7CA00000000050E6014F7000000000000000A12EA95040AD3577D0000000910D10106000000030000000900000002000000040F87510900000004067ECE8512EA5904000000020AD3577D0000000910D10106000000030000000900000009000000010F875103000000010C9A86FE0F878D090000000A000000040F87510900000004067ECE8512EA5904000000020AD3577D10D13D060DE7CA000E5FD8F70B4D43F8000000090000000A000000000E6014F7000000000B4D43F810804D030B4D43FE0000000900000009000000010000000A0000000310D10106000000030000000A12EA95040000000A0000000200000002"
theorem small_6339648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339648_right_root small_6339648_right_fuel small_6339648_right_count small_6339648_right_encoded = true := by
  decide +kernel
theorem small_6339648_right_covered : CoveredBy scale carrier boxes small_6339648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339648_right_root small_6339648_right_fuel small_6339648_right_count small_6339648_right_encoded small_6339648_right_checked

theorem cover_6339648 : CoveredBy scale carrier boxes root_6339648 := by
  apply coveredBy_split_literal root_6339648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339649 small_6339648_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339649
  · exact small_6339648_right_covered
#print axioms cover_6339648

def root_6339642 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339642_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339642_left_fuel : Nat := 1
def small_6339642_left_count : Nat := 1
def small_6339642_left_encoded : String := "00000001"
theorem small_6339642_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339642_left_root small_6339642_left_fuel small_6339642_left_count small_6339642_left_encoded = true := by
  decide +kernel
theorem small_6339642_left_covered : CoveredBy scale carrier boxes small_6339642_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339642_left_root small_6339642_left_fuel small_6339642_left_count small_6339642_left_encoded small_6339642_left_checked

theorem cover_6339642 : CoveredBy scale carrier boxes root_6339642 := by
  apply coveredBy_split_literal root_6339642 small_6339642_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339648 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6339642_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339648
#print axioms cover_6339642

def root_6339514 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339514_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339514_left_fuel : Nat := 18
def small_6339514_left_count : Nat := 59
def small_6339514_left_encoded : String := "0F34D0F804548A0513867104000000020CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE000000050F875109000000040AD357830000000910D13CF800000001022A458513E1C504000000020AD3577D0000000510D101060000000300000009000000091386AD040CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE00000005000000090000000200000001"
theorem small_6339514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339514_left_root small_6339514_left_fuel small_6339514_left_count small_6339514_left_encoded = true := by
  decide +kernel
theorem small_6339514_left_covered : CoveredBy scale carrier boxes small_6339514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339514_left_root small_6339514_left_fuel small_6339514_left_count small_6339514_left_encoded small_6339514_left_checked

theorem cover_6339514 : CoveredBy scale carrier boxes root_6339514 := by
  apply coveredBy_split_literal root_6339514 small_6339514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339642 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6339514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339642
#print axioms cover_6339514

def root_6339509 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339509_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339509_right_fuel : Nat := 1
def small_6339509_right_count : Nat := 1
def small_6339509_right_encoded : String := "00000000"
theorem small_6339509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339509_right_root small_6339509_right_fuel small_6339509_right_count small_6339509_right_encoded = true := by
  decide +kernel
theorem small_6339509_right_covered : CoveredBy scale carrier boxes small_6339509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339509_right_root small_6339509_right_fuel small_6339509_right_count small_6339509_right_encoded small_6339509_right_checked

theorem cover_6339509 : CoveredBy scale carrier boxes root_6339509 := by
  apply coveredBy_split_literal root_6339509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339514 small_6339509_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339514
  · exact small_6339509_right_covered
#print axioms cover_6339509

def root_6347357 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6347357 : CoveredBy scale carrier boxes root_6347357 := by
  apply coveredBy_split_literal root_6347357 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2387.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2388.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2387.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2388.covered
#print axioms cover_6347357

def root_6347351 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347351_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347351_left_fuel : Nat := 1
def small_6347351_left_count : Nat := 1
def small_6347351_left_encoded : String := "00000002"
theorem small_6347351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6347351_left_root small_6347351_left_fuel small_6347351_left_count small_6347351_left_encoded = true := by
  decide +kernel
theorem small_6347351_left_covered : CoveredBy scale carrier boxes small_6347351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6347351_left_root small_6347351_left_fuel small_6347351_left_count small_6347351_left_encoded small_6347351_left_checked

theorem cover_6347351 : CoveredBy scale carrier boxes root_6347351 := by
  apply coveredBy_split_literal root_6347351 small_6347351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6347357 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6347351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6347357
#print axioms cover_6347351

def root_6347350 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347350_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347350_right_fuel : Nat := 25
def small_6347350_right_count : Nat := 397
def small_6347350_right_encoded : String := "1386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A86F8000000050F8751030000000100000006000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE0000000500000007000000030F878CFD000000030C9A86FE0F878D090AD3577710D13D00067ECE8500000005000000060000000010D1010000000000067ECE8512EA5904000000020DE7C9F8000000050E5FD903000000010000000600000006000000040F8751090000000400000007000000010F875103000000010C9A87060F8750FD0C9A86FE000000060F8751090000000400000006000000030F878CFD000000030C9A86FE0F878D090AD357770000000610D101000000000000000006000000040F875109000000040AD3577710D13D00067ECE8512EA5904000000020B4D43F810804D030DE7CA06000000070E6014FD00000003000000070000000110801103000000010DE7CA06000000060E6014FD000000030B4D43FE0000000600000007000000070000000010D101000000000000000007000000030F34D106000000030CFD9C090F34D0FE0C9A86F80F878D030AD3577710D13D00067ECE8512EA5904000000020AD3577D0000000510D10106000000030000000A12EA95040AD3577D000000050000000A000000020000000010D1010000000000067ECE8512EA5904000000020AD3577D10D13D060AD3578900000005000000060000000310D10106000000030000000A12EA95040AD3577D0000000610D10106000000030000000A00000002000000010F875103000000010AD3577710D13D000000000A000000000000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090AD3577710D13D00067ECE8512EA5904000000020AD3577D10D13D060DE7C9F80E60150300000005000000010E5FD903000000010DE7C9FE0E60150900000005000000040E5FD909000000040BE879B71011AD000569AC451340D504000000020BE879BD000000050000000A00000009000000001011710000000000000000070000000310D10106000000030DE7C9F80E6015030DE7C9FE0E6015090000000A000000040E5FD9090000000400000009000000010000000A12EA95040AD3577D10D13D060DE7C9F80E6015030DE7C9FE0000000500000009000000010E5FD903000000010DE7C9FE000000060E5FD90900000004000000060000000310D10106000000030000000A000000020000000010D1010000000000067ECE8512EA5904000000020AD3577D10D13D060DE7C9F80E60150300000007000000010E5FD903000000010DE7C9FE0E6015090000000600000004000000070000000310D10106000000030DE7C9F80E6015030DE7C9FE0E60150909BE353711777D000000000A00000000000000070000000400000007000000010E5FD903000000010000000A12EA95040AD3577D10D13D06000000070000000310D10106000000030DE7C9F80E60150300000007000000010000000A00000002000000040F875109000000040AD3577710D13D00067ECE8512EA5904000000020AD3577D10D13D060DE7C9F80E6015030000000700000001000000070000000310D10106000000030DE7C9F80E60150300000007000000010E5FD903000000010B4D43FE10804D090000000A000000040000000712EA95040AD3577D0000000900000007000000020000000010D101000000000000000007000000010F875103000000010C9A86FE0F878D090AD3577710D13D00067ECE8512EA5904000000020AD3577D10D13D060B4D43F80000000A0000000A000000030000000A0000000A0000000010D1010000000000067ECE8512EA5904000000020AD3577D10D13D060B4D43F810804D030DE7C9FE000000060E5FD9090000000400000007000000010000000A000000030000000A12EA95040000000A00000002000000040F875109000000040AD3577710D13D00067ECE8512EA5904000000020AD3577D10D13D060B4D43F810804D030B4D43FE10804D090BE879B71011AD000000000A000000000000000700000004000000070000000110801103000000010000000A0000000310D10106000000030000000A12EA95040AD3577D10D13D0600000007000000030000000A000000020000000010D1010000000000067ECE8512EA5904000000020AD3577D00000007000000070000000700000002"
theorem small_6347350_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6347350_right_root small_6347350_right_fuel small_6347350_right_count small_6347350_right_encoded = true := by
  decide +kernel
theorem small_6347350_right_covered : CoveredBy scale carrier boxes small_6347350_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6347350_right_root small_6347350_right_fuel small_6347350_right_count small_6347350_right_encoded small_6347350_right_checked

theorem cover_6347350 : CoveredBy scale carrier boxes root_6347350 := by
  apply coveredBy_split_literal root_6347350 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6347351 small_6347350_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6347351
  · exact small_6347350_right_covered
#print axioms cover_6347350

def root_6347344 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347344_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347344_left_fuel : Nat := 1
def small_6347344_left_count : Nat := 1
def small_6347344_left_encoded : String := "00000001"
theorem small_6347344_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6347344_left_root small_6347344_left_fuel small_6347344_left_count small_6347344_left_encoded = true := by
  decide +kernel
theorem small_6347344_left_covered : CoveredBy scale carrier boxes small_6347344_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6347344_left_root small_6347344_left_fuel small_6347344_left_count small_6347344_left_encoded small_6347344_left_checked

theorem cover_6347344 : CoveredBy scale carrier boxes root_6347344 := by
  apply coveredBy_split_literal root_6347344 small_6347344_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6347350 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6347344_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6347350
#print axioms cover_6347344

def root_6346992 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6346992_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6346992_left_fuel : Nat := 19
def small_6346992_left_count : Nat := 159
def small_6346992_left_encoded : String := "0F34D0F804548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000007000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090AD3577710D13D00000000050000000010D10100000000000AD3578310D100F8000000050000000110D13CF800000001022A45850000000813E201040AD3577D10D13D06000000050000000310D10106000000030000000800000002000000040F875109000000040AD3577710D13D000AD357830000000710D13CF800000001022A458513E1C504000000020AD3577D10D13D06000000070000000310D10106000000030B4D43FE000000080000000613E201040AD3577D10D13D06000000070000000300000007000000020000000010D1010000000000000000071386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8706000000050F878CFD000000030C9A86FE0000000500000007000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090AD3577710D13D000AD3578310D100F8000000050000000110D13CF800000001067ECE8512EA5904000000020AD3577D0000000510D101060000000300000009000000090000000010D10100000000000AD357830000000710D13CF800000001067ECE8512EA5904000000020AD3577D10D13D0600000007000000030000000712EA95040000000700000002000000040F875109000000040AD3577710D13D000000000900000000000000070000000200000001"
theorem small_6346992_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6346992_left_root small_6346992_left_fuel small_6346992_left_count small_6346992_left_encoded = true := by
  decide +kernel
theorem small_6346992_left_covered : CoveredBy scale carrier boxes small_6346992_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6346992_left_root small_6346992_left_fuel small_6346992_left_count small_6346992_left_encoded small_6346992_left_checked

theorem cover_6346992 : CoveredBy scale carrier boxes root_6346992 := by
  apply coveredBy_split_literal root_6346992 small_6346992_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6347344 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6346992_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6347344
#print axioms cover_6346992

def root_6346986 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6346986_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6346986_left_fuel : Nat := 1
def small_6346986_left_count : Nat := 1
def small_6346986_left_encoded : String := "00000000"
theorem small_6346986_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6346986_left_root small_6346986_left_fuel small_6346986_left_count small_6346986_left_encoded = true := by
  decide +kernel
theorem small_6346986_left_covered : CoveredBy scale carrier boxes small_6346986_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6346986_left_root small_6346986_left_fuel small_6346986_left_count small_6346986_left_encoded small_6346986_left_checked

theorem cover_6346986 : CoveredBy scale carrier boxes root_6346986 := by
  apply coveredBy_split_literal root_6346986 small_6346986_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6346992 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6346986_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6346992
#print axioms cover_6346986

def root_6339508 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6339508 : CoveredBy scale carrier boxes root_6339508 := by
  apply coveredBy_split_literal root_6339508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6346986 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339509
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6346986
#print axioms cover_6339508

def root_6339502 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339502_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339502_left_fuel : Nat := 1
def small_6339502_left_count : Nat := 1
def small_6339502_left_encoded : String := "00000004"
theorem small_6339502_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339502_left_root small_6339502_left_fuel small_6339502_left_count small_6339502_left_encoded = true := by
  decide +kernel
theorem small_6339502_left_covered : CoveredBy scale carrier boxes small_6339502_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339502_left_root small_6339502_left_fuel small_6339502_left_count small_6339502_left_encoded small_6339502_left_checked

theorem cover_6339502 : CoveredBy scale carrier boxes root_6339502 := by
  apply coveredBy_split_literal root_6339502 small_6339502_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339508 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6339502_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339508
#print axioms cover_6339502

def root_6339374 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339374_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339374_left_fuel : Nat := 14
def small_6339374_left_count : Nat := 59
def small_6339374_left_encoded : String := "120700FE0CFD9BF70F350D000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D0600000005000000030000000500000005000000000F34D100000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D0600000005000000030F34D1060000000304548A090000000A1386ACFE000000040C9A86F8000000050F875103000000010000000A1386AD040CFD9BFD000000060F34D1060000000304548A09000000061386ACFE000000040C9A86F8000000050000000A0000000200000004"
theorem small_6339374_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339374_left_root small_6339374_left_fuel small_6339374_left_count small_6339374_left_encoded = true := by
  decide +kernel
theorem small_6339374_left_covered : CoveredBy scale carrier boxes small_6339374_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339374_left_root small_6339374_left_fuel small_6339374_left_count small_6339374_left_encoded small_6339374_left_checked

theorem cover_6339374 : CoveredBy scale carrier boxes root_6339374 := by
  apply coveredBy_split_literal root_6339374 small_6339374_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339502 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6339374_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339502
#print axioms cover_6339374

def root_6339369 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339369_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339369_right_fuel : Nat := 1
def small_6339369_right_count : Nat := 1
def small_6339369_right_encoded : String := "00000003"
theorem small_6339369_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339369_right_root small_6339369_right_fuel small_6339369_right_count small_6339369_right_encoded = true := by
  decide +kernel
theorem small_6339369_right_covered : CoveredBy scale carrier boxes small_6339369_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339369_right_root small_6339369_right_fuel small_6339369_right_count small_6339369_right_encoded small_6339369_right_checked

theorem cover_6339369 : CoveredBy scale carrier boxes root_6339369 := by
  apply coveredBy_split_literal root_6339369 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339374 small_6339369_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339374
  · exact small_6339369_right_covered
#print axioms cover_6339369

def root_6339368 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6339368 : CoveredBy scale carrier boxes root_6339368 := by
  apply coveredBy_split_literal root_6339368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339369 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2389.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2389.covered
#print axioms cover_6339368

def root_6339362 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339362_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339362_left_fuel : Nat := 1
def small_6339362_left_count : Nat := 1
def small_6339362_left_encoded : String := "00000002"
theorem small_6339362_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339362_left_root small_6339362_left_fuel small_6339362_left_count small_6339362_left_encoded = true := by
  decide +kernel
theorem small_6339362_left_covered : CoveredBy scale carrier boxes small_6339362_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339362_left_root small_6339362_left_fuel small_6339362_left_count small_6339362_left_encoded small_6339362_left_checked

theorem cover_6339362 : CoveredBy scale carrier boxes root_6339362 := by
  apply coveredBy_split_literal root_6339362 small_6339362_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6339368 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6339362_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6339368
#print axioms cover_6339362

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153

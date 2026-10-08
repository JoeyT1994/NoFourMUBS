import TaoBundleAssembly0195
import TaoBundleAssembly0197
import TaoBundleChunkBatch0765
import TaoBundleChunkBatch0766
import TaoBundleChunkBatch0767
import TaoBundleChunkBatch0768
import TaoBundleChunkBatch0769
import TaoBundleChunkBatch0770
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198
def root_8160141 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160141_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160141_right_fuel : Nat := 20
def small_8160141_right_count : Nat := 199
def small_8160141_right_encoded : String := "12073D0805000100135D450100000000050000F8135D80F900000001050000FC135D80FD000000030CFD9BFB0F350D040CFD9C090F34D108000000040C9A8704000000070F878CFB000000020280010013D7B101000000000000000713D7ED01000000080000000000000007000000020F34D104000000020CFD9C090F34D108000000040280010013D7B10100000000078000F8128A7CF900000001078000FC00000005128A40FD0AD3577B10D13D0400000008000000020000000600000003128A40F9078000FC00000006128A40FD00000006000000030000000113D7ED01078000F8128A7CF900000001078000FC00000006128A40FD000000080000000300000006000000000F350D080000000600000004135D44FD0CFD9BFB0F350D040CFD9C090F34D108000000040000000800000008000000020F34D104000000020CFD9C090F34D108000000040280010013D7B10100000000078000F80000000800000008000000080F350D080C9A87080F8751090000000400000006000000080000000400000003135D44F9050000FC135D80FD000000030CFD9BFB000000070F34D104000000020CFD9C090000000600000006135D44FD0CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C090F34D1080000000400000008000000080000000300000001135D8101050000F8135D80F900000001050000FC135D80FD000000030CFD9BFB0F350D040CFD9C090F34D10800000004000000080F350D080C9A8704000000070000000A00000004000000020F34D104000000020CFD9C090F34D1080000000407800100128A410100000000078000F80000000600000006128A7D01000000060000000000000006135D44FD0CFD9BFB0F350D040CFD9C090F34D108000000040000000800000008000000020F34D104000000020CFD9C090F34D10800000004000000080000000800000003135D44F9050000FC135D80FD000000030CFD9BFB0F350D040CFD9C090F34D108000000040000000700000007000000020F34D1040000000200000006135D44FD0CFD9BFB0F350D0400000008000000020000000800000003000000010000000000000004"
theorem small_8160141_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160141_right_root small_8160141_right_fuel small_8160141_right_count small_8160141_right_encoded = true := by
  decide +kernel
theorem small_8160141_right_covered : CoveredBy scale carrier boxes small_8160141_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160141_right_root small_8160141_right_fuel small_8160141_right_count small_8160141_right_encoded small_8160141_right_checked

theorem cover_8160141 : CoveredBy scale carrier boxes root_8160141 := by
  apply coveredBy_split_literal root_8160141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.root_8160142 small_8160141_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.cover_8160142
  · exact small_8160141_right_covered
#print axioms cover_8160141

def root_8160136 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160136_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160136_right_fuel : Nat := 1
def small_8160136_right_count : Nat := 1
def small_8160136_right_encoded : String := "00000002"
theorem small_8160136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160136_right_root small_8160136_right_fuel small_8160136_right_count small_8160136_right_encoded = true := by
  decide +kernel
theorem small_8160136_right_covered : CoveredBy scale carrier boxes small_8160136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160136_right_root small_8160136_right_fuel small_8160136_right_count small_8160136_right_encoded small_8160136_right_checked

theorem cover_8160136 : CoveredBy scale carrier boxes root_8160136 := by
  apply coveredBy_split_literal root_8160136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8160141 small_8160136_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8160141
  · exact small_8160136_right_covered
#print axioms cover_8160136

def root_8160135 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160135_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160135_right_fuel : Nat := 24
def small_8160135_right_count : Nat := 309
def small_8160135_right_encoded : String := "120701040000000208A91309120701080000000405000100135D450100000000050000F8135D80F900000001050000FC135D80FD00000003045489FB1386AD0404548A0913867108000000040280010013D7B10100000000078000F8000000090000000613D7ED01078000F8128A7CF900000001078000FC128A7CFD0000000300000006128A40FD0000000900000003128A40F90000000600000001000000000000000600000002138671040000000204548A091386710800000004028001000000000613D7ED01078000F800000009000000060000000000000006135D44FD045489FB1386AD0404548A091386710800000004028001000000000913D7ED01078000F80000000900000005000000001386AD08028001000000000913D7ED01078000F800000009128A40F9028000FC00000006000000050000000100000000000000040000000213867104000000020000000900000003135D44F9050000FC00000006135D44FD045489FB1386AD0404548A09000000051386AD080280010013D7B10100000000028000F813D7ECF900000001028000FC0000000600000005000000050000000500000004000000021386710400000002000000060000000300000001135D8101050000F8135D80F900000001050000FC135D80FD00000003045489FB1386AD0404548A09138671080000000407800100128A410100000000078000F8128A7CF900000001078000FC128A7CFD0000000300000006128A40FD067ECE7B12EA9504022A45890000000513E2010800000006000000040000000212EA590400000002022A4589000000050000000600000003128A40F9078000FC000000060000000500000001128A7D01078000F8128A7CF900000001078000FC128A7CFD00000003000000060000000500000005000000001386AD080780010000000006128A7D0100000006000000000000000400000002138671040000000204548A09138671080000000407800100128A410100000000078000F8128A7CF900000001078000FC000000060000000600000006128A7D01078000F8128A7CF900000001078000FC0000000600000005000000050000000000000006135D44FD045489FB1386AD0404548A09000000051386AD0807800100128A410100000000078000F8128A7CF900000001028000FC13D7ECFD00000003067ECE7B12EA95040000000800000002000000060000000500000005000000050000000400000002138671040000000204548A09000000051386AD0807800100128A41010000000000000009000000050000000400000003135D44F9050000FC135D80FD00000003045489FB000000060000000600000005000000010000000012073D0805000100135D450100000000050000F8135D80F900000001050000FC00000006135D44FD045489FB1386AD040CFD9C090F34D10800000004028001000000000913D7ED01078000F80000000900000006000000000F350D080000000600000004000000020000000600000003135D44F9050000FC00000006135D44FD045489FB1386AD040CFD9C09000000060000000600000002000000060000000300000001135D8101050000F8135D80F900000001050000FC00000006135D44FD045489FB1386AD040CFD9C090F34D1080000000400000008000000060000000213867104000000020000000600000003000000060000000000000004"
theorem small_8160135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160135_right_root small_8160135_right_fuel small_8160135_right_count small_8160135_right_encoded = true := by
  decide +kernel
theorem small_8160135_right_covered : CoveredBy scale carrier boxes small_8160135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160135_right_root small_8160135_right_fuel small_8160135_right_count small_8160135_right_encoded small_8160135_right_checked

theorem cover_8160135 : CoveredBy scale carrier boxes root_8160135 := by
  apply coveredBy_split_literal root_8160135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8160136 small_8160135_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8160136
  · exact small_8160135_right_covered
#print axioms cover_8160135

def root_8160130 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160130_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160130_right_fuel : Nat := 1
def small_8160130_right_count : Nat := 1
def small_8160130_right_encoded : String := "00000004"
theorem small_8160130_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160130_right_root small_8160130_right_fuel small_8160130_right_count small_8160130_right_encoded = true := by
  decide +kernel
theorem small_8160130_right_covered : CoveredBy scale carrier boxes small_8160130_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160130_right_root small_8160130_right_fuel small_8160130_right_count small_8160130_right_encoded small_8160130_right_checked

theorem cover_8160130 : CoveredBy scale carrier boxes root_8160130 := by
  apply coveredBy_split_literal root_8160130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8160135 small_8160130_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8160135
  · exact small_8160130_right_covered
#print axioms cover_8160130

def root_8160038 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160038_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160038_left_fuel : Nat := 13
def small_8160038_left_count : Nat := 43
def small_8160038_left_encoded : String := "1151E9090000000408A912FB12073D0405000100135D450100000000050000F8135D80F900000001050000FC00000005135D44FD000000070000000300000007135D8101050000F8135D80F900000001050000FC00000006135D44FD0500010800000006135D81090CFD9BFB00000007000000060000000400000003135D44F9050000FC00000006135D44FD0000000600000003000000010000000000000002120701040000000200000006"
theorem small_8160038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160038_left_root small_8160038_left_fuel small_8160038_left_count small_8160038_left_encoded = true := by
  decide +kernel
theorem small_8160038_left_covered : CoveredBy scale carrier boxes small_8160038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160038_left_root small_8160038_left_fuel small_8160038_left_count small_8160038_left_encoded small_8160038_left_checked

theorem cover_8160038 : CoveredBy scale carrier boxes root_8160038 := by
  apply coveredBy_split_literal root_8160038 small_8160038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8160130 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8160038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8160130
#print axioms cover_8160038

def root_8160033 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160033_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160033_right_fuel : Nat := 1
def small_8160033_right_count : Nat := 1
def small_8160033_right_encoded : String := "00000003"
theorem small_8160033_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160033_right_root small_8160033_right_fuel small_8160033_right_count small_8160033_right_encoded = true := by
  decide +kernel
theorem small_8160033_right_covered : CoveredBy scale carrier boxes small_8160033_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160033_right_root small_8160033_right_fuel small_8160033_right_count small_8160033_right_encoded small_8160033_right_checked

theorem cover_8160033 : CoveredBy scale carrier boxes root_8160033 := by
  apply coveredBy_split_literal root_8160033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8160038 small_8160033_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8160038
  · exact small_8160033_right_covered
#print axioms cover_8160033

def root_8156767 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8156767 : CoveredBy scale carrier boxes root_8156767 := by
  apply coveredBy_split_literal root_8156767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.root_8156768 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8160033 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.cover_8156768
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8160033
#print axioms cover_8156767

def root_8156761 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156761_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156761_left_fuel : Nat := 1
def small_8156761_left_count : Nat := 1
def small_8156761_left_encoded : String := "00000002"
theorem small_8156761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156761_left_root small_8156761_left_fuel small_8156761_left_count small_8156761_left_encoded = true := by
  decide +kernel
theorem small_8156761_left_covered : CoveredBy scale carrier boxes small_8156761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156761_left_root small_8156761_left_fuel small_8156761_left_count small_8156761_left_encoded small_8156761_left_checked

theorem cover_8156761 : CoveredBy scale carrier boxes root_8156761 := by
  apply coveredBy_split_literal root_8156761 small_8156761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8156767 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8156761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8156767
#print axioms cover_8156761

def root_8156327 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156327_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156327_left_fuel : Nat := 23
def small_8156327_left_count : Nat := 205
def small_8156327_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A91309120701080000000405000100135D450100000000050000F8135D80F90000000105000104135D44FB0000000700000002135D80FB000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000070F8750FD0000000700000003000000070F34D0FC0000000500000003135D44F90000000700000001135D8101050000F8135D80F90000000105000104135D44FB0CFD9BFD000000070000000700000002135D80FB000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003000000070F8750FD07800100000000070000000700000003000000070F34D0FC0000000700000003135D44F90500010400000007135D80FB000000020CFD9BFD0000000700000007000000010000000012073D0805000100135D45010000000000000007135D8101050000F8135D80F9000000010500010400000005135D80FB000000020CFD9BFD0000000700000007000000070000000000000004120700FC08A9130912070108000000040500010000000005135D8101050000F80000000500000007000000000000000500000003000000041151E8FD0A0001081151E90900000004000000071152250908A91309120701080000000405000100135D450100000000050000F8135D80F9000000010500010400000008135D80FB00000002050000FC135D80FD0000000304548A0913867108000000040280010013D7B10100000000078000F8000000060000000713D7ED01078000F800000006000000070000000000000007135D44FD0000000800000003135D44F90500010400000007135D80FB00000002050000FC000000070000000800000001135D8101050000F8135D80F9000000010500010400000008135D80FB00000002050000FC0000000800000008000000080000000012073D0805000100135D45010000000000000007135D8101050000F8135D80F9000000010500010400000007135D80FB00000002050000FC00000007135D44FD0000000800000003000000070000000000000004000000040000000300000002"
theorem small_8156327_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156327_left_root small_8156327_left_fuel small_8156327_left_count small_8156327_left_encoded = true := by
  decide +kernel
theorem small_8156327_left_covered : CoveredBy scale carrier boxes small_8156327_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156327_left_root small_8156327_left_fuel small_8156327_left_count small_8156327_left_encoded small_8156327_left_checked

theorem cover_8156327 : CoveredBy scale carrier boxes root_8156327 := by
  apply coveredBy_split_literal root_8156327 small_8156327_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8156761 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8156327_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8156761
#print axioms cover_8156327

def root_8156322 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156322_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156322_right_fuel : Nat := 1
def small_8156322_right_count : Nat := 1
def small_8156322_right_encoded : String := "00000001"
theorem small_8156322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156322_right_root small_8156322_right_fuel small_8156322_right_count small_8156322_right_encoded = true := by
  decide +kernel
theorem small_8156322_right_covered : CoveredBy scale carrier boxes small_8156322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156322_right_root small_8156322_right_fuel small_8156322_right_count small_8156322_right_encoded small_8156322_right_checked

theorem cover_8156322 : CoveredBy scale carrier boxes root_8156322 := by
  apply coveredBy_split_literal root_8156322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8156327 small_8156322_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8156327
  · exact small_8156322_right_covered
#print axioms cover_8156322

def root_8146106 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8146106 : CoveredBy scale carrier boxes root_8146106 := by
  apply coveredBy_split_literal root_8146106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.root_8146107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8156322 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.cover_8146107
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8156322
#print axioms cover_8146106

def root_8146100 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146100_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146100_left_fuel : Nat := 1
def small_8146100_left_count : Nat := 1
def small_8146100_left_encoded : String := "00000000"
theorem small_8146100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8146100_left_root small_8146100_left_fuel small_8146100_left_count small_8146100_left_encoded = true := by
  decide +kernel
theorem small_8146100_left_covered : CoveredBy scale carrier boxes small_8146100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8146100_left_root small_8146100_left_fuel small_8146100_left_count small_8146100_left_encoded small_8146100_left_checked

theorem cover_8146100 : CoveredBy scale carrier boxes root_8146100 := by
  apply coveredBy_split_literal root_8146100 small_8146100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8146106 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8146100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8146106
#print axioms cover_8146100

def root_8171176 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8171176 : CoveredBy scale carrier boxes root_8171176 := by
  apply coveredBy_split_literal root_8171176 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3060.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3061.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3060.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3061.covered
#print axioms cover_8171176

def root_8171171 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8171171_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8171171_right_fuel : Nat := 1
def small_8171171_right_count : Nat := 1
def small_8171171_right_encoded : String := "00000000"
theorem small_8171171_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8171171_right_root small_8171171_right_fuel small_8171171_right_count small_8171171_right_encoded = true := by
  decide +kernel
theorem small_8171171_right_covered : CoveredBy scale carrier boxes small_8171171_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8171171_right_root small_8171171_right_fuel small_8171171_right_count small_8171171_right_encoded small_8171171_right_checked

theorem cover_8171171 : CoveredBy scale carrier boxes root_8171171 := by
  apply coveredBy_split_literal root_8171171 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8171176 small_8171171_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8171176
  · exact small_8171171_right_covered
#print axioms cover_8171171

def root_8146099 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8146099 : CoveredBy scale carrier boxes root_8146099 := by
  apply coveredBy_split_literal root_8146099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8146100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8171171 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8146100
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8171171
#print axioms cover_8146099

def root_8093061 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093061 : CoveredBy scale carrier boxes root_8093061 := by
  apply coveredBy_split_literal root_8093061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.root_8093062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8146099 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0197.cover_8093062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8146099
#print axioms cover_8093061

def root_8087879 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087879 : CoveredBy scale carrier boxes root_8087879 := by
  apply coveredBy_split_literal root_8087879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8087880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8093061 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8087880
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8093061
#print axioms cover_8087879

def root_8177709 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8177709 : CoveredBy scale carrier boxes root_8177709 := by
  apply coveredBy_split_literal root_8177709 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3063.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3064.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3063.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3064.covered
#print axioms cover_8177709

def root_8177703 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8177703_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8177703_left_fuel : Nat := 1
def small_8177703_left_count : Nat := 1
def small_8177703_left_encoded : String := "00000001"
theorem small_8177703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8177703_left_root small_8177703_left_fuel small_8177703_left_count small_8177703_left_encoded = true := by
  decide +kernel
theorem small_8177703_left_covered : CoveredBy scale carrier boxes small_8177703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8177703_left_root small_8177703_left_fuel small_8177703_left_count small_8177703_left_encoded small_8177703_left_checked

theorem cover_8177703 : CoveredBy scale carrier boxes root_8177703 := by
  apply coveredBy_split_literal root_8177703 small_8177703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8177709 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8177703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8177709
#print axioms cover_8177703

def root_8177702 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8177702 : CoveredBy scale carrier boxes root_8177702 := by
  apply coveredBy_split_literal root_8177702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8177703 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3065.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8177703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3065.covered
#print axioms cover_8177702

def root_8177697 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8177697_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8177697_right_fuel : Nat := 1
def small_8177697_right_count : Nat := 1
def small_8177697_right_encoded : String := "00000000"
theorem small_8177697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8177697_right_root small_8177697_right_fuel small_8177697_right_count small_8177697_right_encoded = true := by
  decide +kernel
theorem small_8177697_right_covered : CoveredBy scale carrier boxes small_8177697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8177697_right_root small_8177697_right_fuel small_8177697_right_count small_8177697_right_encoded small_8177697_right_checked

theorem cover_8177697 : CoveredBy scale carrier boxes root_8177697 := by
  apply coveredBy_split_literal root_8177697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8177702 small_8177697_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8177702
  · exact small_8177697_right_covered
#print axioms cover_8177697

def root_8177385 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8177385_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8177385_left_fuel : Nat := 18
def small_8177385_left_count : Nat := 143
def small_8177385_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A912F912073CF80000000108A91307120700FC08A912FF00000008000000050000000312073CFC0000000308A912FF0000000800000005120700F80000000500000001000000031151E907000000030A00010800000005115224FF0000000408A912F912073CF80000000108A912FF0000000800000009120700F8000000050000000100000002115224FB000000020A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A912F912073CF80000000108A912FB12073D0408A91307120700FC00000008000000030000000800000002120701040000000200000008120700F808A912FB12073D0408A9130700000005000000080000000212070104000000020000000800000001000000031151E90700000003000000081151E8F90A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120700FC08A912FF0000000812070108000000040500010000000005135D8101050000F800000005135D44F90000000900000001000000000000000312073CFC0000000308A912FF0000000812070108000000040500010000000008135D8101050000F800000008135D44F9000000080000000100000000000000031151E907000000030000000800000002115224FB000000020A0000FC000000081151E907000000030000000800000001"
theorem small_8177385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8177385_left_root small_8177385_left_fuel small_8177385_left_count small_8177385_left_encoded = true := by
  decide +kernel
theorem small_8177385_left_covered : CoveredBy scale carrier boxes small_8177385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8177385_left_root small_8177385_left_fuel small_8177385_left_count small_8177385_left_encoded small_8177385_left_checked

theorem cover_8177385 : CoveredBy scale carrier boxes root_8177385 := by
  apply coveredBy_split_literal root_8177385 small_8177385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8177697 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8177385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8177697
#print axioms cover_8177385

def root_8177384 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8177384 : CoveredBy scale carrier boxes root_8177384 := by
  apply coveredBy_split_literal root_8177384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8177385 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3066.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8177385
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3066.covered
#print axioms cover_8177384

def root_8175774 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8175774 : CoveredBy scale carrier boxes root_8175774 := by
  apply coveredBy_split_literal root_8175774 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3062.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8177384 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3062.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8177384
#print axioms cover_8175774

def root_8087878 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087878 : CoveredBy scale carrier boxes root_8087878 := by
  apply coveredBy_split_literal root_8087878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8087879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8175774 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8087879
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8175774
#print axioms cover_8087878

def root_8185214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8185214_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8185214_left_fuel : Nat := 21
def small_8185214_left_count : Nat := 365
def small_8185214_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F912073CF80000000100000009000000091151E8FF08A912F9000000090000000A0000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FD12073D0608A912FF00000009120700FE000000090000000400000003120701060000000308A912FF0000000800000008120700F808A912FD12073D0608A912FF00000009000000050000000300000008000000011151E8FF000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FF12073CFE0000000400000009120700FE05000100135D450100000000050001060000000500000008000000090000000400000002120701040000000208A912FF00000008120700FE05000100000000050000000800000004120700F808A912FB12073D0408A912FF12073CFE0000000405000100135D450100000000050001060000000500000008135D810100000009000000000000000500000002120701040000000208A912FF12073CFE0000000405000100000000050000000800000005000000011151E8FF08A912F912073CF80000000108A912FB12073D0405000100135D45010000000000000008135D810105000106135D44FD050000FE00000008135D44FF000000070000000400000003000000090000000000000002120701040000000200000008120700F808A912FB12073D04050001000000000A135D810105000106135D44FD050000FE000000080000000A000000030000000A0000000000000002120701040000000200000008000000010000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FD12073D0608A912FF12073CFE0000000405000100135D4501000000000CFD9BF9000000080000000800000009120700FE050001000000000800000008000000040000000312070106000000030000000800000002120701040000000208A912FD12073D0608A912FF00000008120700FE00000008000000040000000300000008120700F808A912FB12073D0408A912FD12073D0608A912FF12073CFE00000004050001000000000800000008120700FE0000000500000004000000030000000800000002120701040000000208A912FD12073D0608A912FF00000008000000050000000300000008000000011151E8FF08A912F912073CF80000000108A912FB12073D0408A912FD12073D0600000009000000030000000800000002120701040000000200000008120700F808A912FB0000000A120701040000000208A912FD12073D0600000008000000030000000800000001000000041151E8F90A0001041151E8FB0A0001061151E8FD0000000900000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF12073CFE0000000400000009120700FE05000100135D45010000000000000009135D8101050000F80000000900000009000000000000000400000003120701060000000308A912FF12073CFE00000004050001000000000800000008120700FE00000008000000041151E8FF000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912FB00000009120701040000000208A912FF00000008120700FE00000008000000041151E8FF000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD12073D0608A912FF00000009120700FE000000090000000400000003120701060000000308A912FF00000008120700FE000000080000000400000002120701040000000208A912FD12073D0608A912FF00000008120700FE000000080000000400000003000000081151E8FF000000090000000400000001"
theorem small_8185214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8185214_left_root small_8185214_left_fuel small_8185214_left_count small_8185214_left_encoded = true := by
  decide +kernel
theorem small_8185214_left_covered : CoveredBy scale carrier boxes small_8185214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8185214_left_root small_8185214_left_fuel small_8185214_left_count small_8185214_left_encoded small_8185214_left_checked

theorem cover_8185214 : CoveredBy scale carrier boxes root_8185214 := by
  apply coveredBy_split_literal root_8185214 small_8185214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3067.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8185214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3067.covered
#print axioms cover_8185214

def root_8191801 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191801_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191801_right_fuel : Nat := 23
def small_8191801_right_count : Nat := 167
def small_8191801_right_encoded : String := "120701040000000208A912FD12073D0605000100135D450100000000050000F8135D80F900000001050000FE00000006135D450900000004045489FB1386AD040CFD9BFD0F350D0600000006000000030F34D106000000030280010013D7B10100000000078000F8128A7CF9000000010000000600000006000000060000000200000006135D44F9050000FE00000006135D450900000004045489FB1386AD040CFD9BFD0000000600000006000000020000000600000001135D8101050000F8135D80F900000001050000FE00000006135D45090000000400000006000000060000000000000003120701060000000305000100135D450100000000050000F8135D80F900000001050000FE135D8109045489FB000000080000000600000004135D450900000004045489FB1386AD04045489FD1386AD060280010013D7B10100000000078000F800000007128A40F9028000FE0000000600000007000000010000000700000003000000070000000200000007135D44F9050000FE135D8109045489FB1386AD04045489FD0000000600000006000000020000000600000004135D450900000004045489FB1386AD04045489FD1386AD060280010013D7B10100000000028000F813D7ECF900000001028000FE0000000613D7B10900000004067ECE7B12EA9504067ECE7D0000000600000007000000020000000613D7B0F9028000FE00000006000000050000000113D7ED01028000F80000000600000005000000000000000313867106000000030280010013D7B10100000000028000F8000000070000000500000005000000021386710400000002045489FD000000060000000600000001135D8101050000F8135D80F900000001050000FE0000000600000007135D44F9050000FE00000006000000050000000100000000"
theorem small_8191801_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191801_right_root small_8191801_right_fuel small_8191801_right_count small_8191801_right_encoded = true := by
  decide +kernel
theorem small_8191801_right_covered : CoveredBy scale carrier boxes small_8191801_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191801_right_root small_8191801_right_fuel small_8191801_right_count small_8191801_right_encoded small_8191801_right_checked

theorem cover_8191801 : CoveredBy scale carrier boxes root_8191801 := by
  apply coveredBy_split_literal root_8191801 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3069.root small_8191801_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3069.covered
  · exact small_8191801_right_covered
#print axioms cover_8191801

def root_8191795 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191795_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191795_left_fuel : Nat := 1
def small_8191795_left_count : Nat := 1
def small_8191795_left_encoded : String := "00000004"
theorem small_8191795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191795_left_root small_8191795_left_fuel small_8191795_left_count small_8191795_left_encoded = true := by
  decide +kernel
theorem small_8191795_left_covered : CoveredBy scale carrier boxes small_8191795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191795_left_root small_8191795_left_fuel small_8191795_left_count small_8191795_left_encoded small_8191795_left_checked

theorem cover_8191795 : CoveredBy scale carrier boxes root_8191795 := by
  apply coveredBy_split_literal root_8191795 small_8191795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8191801 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8191795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8191801
#print axioms cover_8191795

def root_8191415 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191415_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191415_left_fuel : Nat := 20
def small_8191415_left_count : Nat := 175
def small_8191415_left_encoded : String := "1152250908A912FB12073D0408A912FD12073D0608A91309120700FE05000100135D450100000000050000F8135D80F9000000010CFD9BFB000000080000000500000006135D8101050000F8135D80F9000000010CFD9BFB000000080F34D1040000000200000006135D44F90000000600000001000000000000000412073CFE0000000405000100135D450100000000050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350D06000000050000000300000005000000020F34D104000000020CFD9BFD0000000600000006135D44F90CFD9BFB0F350D040CFD9BFD0F350D0600000007000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040F8750FB00000007000000020F878CFB0000000200000006000000020F34D104000000020000000600000001135D8101050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090000000600000006000000030F34D106000000030CFD9C090000000800000008000000020F34D1040000000200000006135D44F90CFD9BFB0F350D040CFD9BFD0F350D0600000006000000030F34D106000000030CFD9C090000000600000006000000020F34D1040000000200000006000000010000000000000003120701060000000308A91309120700FE000000080000000412073CFE0000000405000100135D450100000000050000F800000008135D44F90CFD9BFB000000080F34D104000000020000000800000001135D8101050000F800000008135D44F90CFD9BFB000000080F34D1040000000200000006000000010000000000000002120701040000000208A912FD12073D0608A91309120700FE00000006000000040000000600000003120701060000000308A913090000000612073CFE0000000405000100135D450100000000050000F800000006000000060000000600000004"
theorem small_8191415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191415_left_root small_8191415_left_fuel small_8191415_left_count small_8191415_left_encoded = true := by
  decide +kernel
theorem small_8191415_left_covered : CoveredBy scale carrier boxes small_8191415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191415_left_root small_8191415_left_fuel small_8191415_left_count small_8191415_left_encoded small_8191415_left_checked

theorem cover_8191415 : CoveredBy scale carrier boxes root_8191415 := by
  apply coveredBy_split_literal root_8191415 small_8191415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8191795 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8191415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8191795
#print axioms cover_8191415

def root_8191409 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191409_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191409_left_fuel : Nat := 1
def small_8191409_left_count : Nat := 1
def small_8191409_left_encoded : String := "00000003"
theorem small_8191409_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191409_left_root small_8191409_left_fuel small_8191409_left_count small_8191409_left_encoded = true := by
  decide +kernel
theorem small_8191409_left_covered : CoveredBy scale carrier boxes small_8191409_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191409_left_root small_8191409_left_fuel small_8191409_left_count small_8191409_left_encoded small_8191409_left_checked

theorem cover_8191409 : CoveredBy scale carrier boxes root_8191409 := by
  apply coveredBy_split_literal root_8191409 small_8191409_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8191415 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8191409_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8191415
#print axioms cover_8191409

def root_8191209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191209_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191209_left_fuel : Nat := 15
def small_8191209_left_count : Nat := 95
def small_8191209_left_encoded : String := "1151E8FD0A0000FE1152250908A912FB12073D0408A91309120700FE05000100135D450100000000050000F80000000500000006000000090000000412073CFE0000000405000100135D450100000000050000F80000000500000006135D8101050000F8135D80F9000000010500010600000005135D80FD0000000300000006000000060000000000000002120701040000000208A91309120700FE000000060000000400000006000000041151E9090000000408A912FB12073D0405000100135D450100000000050000F8135D80F9000000010500010600000005135D80FD00000003050000FE00000005135D4509000000040000000700000007135D8101050000F8135D80F9000000010500010600000006135D80FD00000003050000FE00000006135D4509000000040CFD9BFB0000000700000006135D44F90500010600000006135D80FD00000003050000FE00000006135D4509000000040000000600000001000000000000000212070104000000020000000600000003"
theorem small_8191209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191209_left_root small_8191209_left_fuel small_8191209_left_count small_8191209_left_encoded = true := by
  decide +kernel
theorem small_8191209_left_covered : CoveredBy scale carrier boxes small_8191209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191209_left_root small_8191209_left_fuel small_8191209_left_count small_8191209_left_encoded small_8191209_left_checked

theorem cover_8191209 : CoveredBy scale carrier boxes root_8191209 := by
  apply coveredBy_split_literal root_8191209 small_8191209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8191409 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8191209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8191409
#print axioms cover_8191209

def root_8191203 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191203_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8191203_left_fuel : Nat := 1
def small_8191203_left_count : Nat := 1
def small_8191203_left_encoded : String := "00000002"
theorem small_8191203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8191203_left_root small_8191203_left_fuel small_8191203_left_count small_8191203_left_encoded = true := by
  decide +kernel
theorem small_8191203_left_covered : CoveredBy scale carrier boxes small_8191203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8191203_left_root small_8191203_left_fuel small_8191203_left_count small_8191203_left_encoded small_8191203_left_checked

theorem cover_8191203 : CoveredBy scale carrier boxes root_8191203 := by
  apply coveredBy_split_literal root_8191203 small_8191203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8191209 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8191203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8191209
#print axioms cover_8191203

def root_8190633 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190633_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190633_left_fuel : Nat := 23
def small_8190633_left_count : Nat := 273
def small_8190633_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A913090000000900000007000000041151E909000000040000000700000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE05000100135D450100000000050000F800000005135D44F905000104000000050000000900000001135D8101050000F8135D80F90000000105000104135D44FB000000080000000200000008135D44F905000104135D44FB0CFD9BFD000000070F34D1060000000300000008000000020000000900000001000000000000000412073CFE0000000405000100135D450100000000050000F80000000500000007135D8101050000F8135D80F9000000010500010400000005135D80FB000000020CFD9BFD0F350D060CFD9C090000000900000005000000030F34D1060000000300000008135D44F905000104135D44FB0000000700000002135D80FB000000020CFD9BFD000000070F34D106000000030CFD9C090000000900000007000000010000000000000003120701060000000308A91309120700FE000000080000000412073CFE0000000405000100135D450100000000050000F800000005135D44F905000104000000050000000800000001135D8101050000F800000008135D44F905000104135D44FB0000000800000002000000080000000100000000000000041151E9090000000408A912FD12073D0605000100135D450100000000050000F8135D80F9000000010500010400000005135D80FB00000002050000FE00000005135D4509000000040000000700000007135D8101050000F8135D80F90000000105000104135D44FB050000FE00000005135D4509000000040000000700000002135D80FB00000002050000FE135D81090CFD9BFD000000070F34D1060000000307800100000000050000000800000004135D4509000000040CFD9BFD000000070F34D1060000000307800100128A410100000000078000F8128A7CF90000000107800104000000050000000800000007128A7D01078000F8128A7CF9000000010780010400000009000000080000000900000000135D44F90500010400000007135D80FB00000002050000FE00000007135D45090000000400000007000000010000000000000003120701060000000305000100135D450100000000050000F8135D80F9000000010500010400000005135D80FB00000002050000FE000000050000000A135D44F9050001040000000A135D80FB00000002050000FE135D8109045489FD0000000700000008000000040000000A00000001135D8101050000F8135D80F90000000105000104135D44FB050000FE000000050000000A00000002135D80FB00000002050000FE00000008135D45090000000400000008135D44F905000104135D44FB050000FE135D81090000000A000000040000000900000002135D80FB00000002050000FE135D8109045489FD00000009000000080000000400000009000000010000000000000002"
theorem small_8190633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8190633_left_root small_8190633_left_fuel small_8190633_left_count small_8190633_left_encoded = true := by
  decide +kernel
theorem small_8190633_left_covered : CoveredBy scale carrier boxes small_8190633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8190633_left_root small_8190633_left_fuel small_8190633_left_count small_8190633_left_encoded small_8190633_left_checked

theorem cover_8190633 : CoveredBy scale carrier boxes root_8190633 := by
  apply coveredBy_split_literal root_8190633 small_8190633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8191203 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8190633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8191203
#print axioms cover_8190633

def root_8190628 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190628_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8190628_right_fuel : Nat := 1
def small_8190628_right_count : Nat := 1
def small_8190628_right_encoded : String := "00000001"
theorem small_8190628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8190628_right_root small_8190628_right_fuel small_8190628_right_count small_8190628_right_encoded = true := by
  decide +kernel
theorem small_8190628_right_covered : CoveredBy scale carrier boxes small_8190628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8190628_right_root small_8190628_right_fuel small_8190628_right_count small_8190628_right_encoded small_8190628_right_checked

theorem cover_8190628 : CoveredBy scale carrier boxes root_8190628 := by
  apply coveredBy_split_literal root_8190628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8190633 small_8190628_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8190633
  · exact small_8190628_right_covered
#print axioms cover_8190628

def root_8188976 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8188976 : CoveredBy scale carrier boxes root_8188976 := by
  apply coveredBy_split_literal root_8188976 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3068.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8190628 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3068.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8190628
#print axioms cover_8188976

def root_8188970 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8188970_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8188970_left_fuel : Nat := 1
def small_8188970_left_count : Nat := 1
def small_8188970_left_encoded : String := "00000000"
theorem small_8188970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8188970_left_root small_8188970_left_fuel small_8188970_left_count small_8188970_left_encoded = true := by
  decide +kernel
theorem small_8188970_left_covered : CoveredBy scale carrier boxes small_8188970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8188970_left_root small_8188970_left_fuel small_8188970_left_count small_8188970_left_encoded small_8188970_left_checked

theorem cover_8188970 : CoveredBy scale carrier boxes root_8188970 := by
  apply coveredBy_split_literal root_8188970 small_8188970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8188976 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8188970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8188976
#print axioms cover_8188970

def root_8195163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8195163 : CoveredBy scale carrier boxes root_8195163 := by
  apply coveredBy_split_literal root_8195163 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3070.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3071.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3070.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3071.covered
#print axioms cover_8195163

def root_8195157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195157_left_fuel : Nat := 1
def small_8195157_left_count : Nat := 1
def small_8195157_left_encoded : String := "00000001"
theorem small_8195157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8195157_left_root small_8195157_left_fuel small_8195157_left_count small_8195157_left_encoded = true := by
  decide +kernel
theorem small_8195157_left_covered : CoveredBy scale carrier boxes small_8195157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8195157_left_root small_8195157_left_fuel small_8195157_left_count small_8195157_left_encoded small_8195157_left_checked

theorem cover_8195157 : CoveredBy scale carrier boxes root_8195157 := by
  apply coveredBy_split_literal root_8195157 small_8195157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8195163 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8195157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8195163
#print axioms cover_8195157

def root_8200015 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8200015 : CoveredBy scale carrier boxes root_8200015 := by
  apply coveredBy_split_literal root_8200015 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3072.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3073.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3072.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3073.covered
#print axioms cover_8200015

def root_8200010 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8200010_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8200010_right_fuel : Nat := 1
def small_8200010_right_count : Nat := 1
def small_8200010_right_encoded : String := "00000001"
theorem small_8200010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8200010_right_root small_8200010_right_fuel small_8200010_right_count small_8200010_right_encoded = true := by
  decide +kernel
theorem small_8200010_right_covered : CoveredBy scale carrier boxes small_8200010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8200010_right_root small_8200010_right_fuel small_8200010_right_count small_8200010_right_encoded small_8200010_right_checked

theorem cover_8200010 : CoveredBy scale carrier boxes root_8200010 := by
  apply coveredBy_split_literal root_8200010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8200015 small_8200010_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8200015
  · exact small_8200010_right_covered
#print axioms cover_8200010

def root_8195156 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8195156 : CoveredBy scale carrier boxes root_8195156 := by
  apply coveredBy_split_literal root_8195156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8195157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8200010 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8195157
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8200010
#print axioms cover_8195156

def root_8195151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195151_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8195151_right_fuel : Nat := 1
def small_8195151_right_count : Nat := 1
def small_8195151_right_encoded : String := "00000000"
theorem small_8195151_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8195151_right_root small_8195151_right_fuel small_8195151_right_count small_8195151_right_encoded = true := by
  decide +kernel
theorem small_8195151_right_covered : CoveredBy scale carrier boxes small_8195151_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8195151_right_root small_8195151_right_fuel small_8195151_right_count small_8195151_right_encoded small_8195151_right_checked

theorem cover_8195151 : CoveredBy scale carrier boxes root_8195151 := by
  apply coveredBy_split_literal root_8195151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8195156 small_8195151_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8195156
  · exact small_8195151_right_covered
#print axioms cover_8195151

def root_8188969 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8188969 : CoveredBy scale carrier boxes root_8188969 := by
  apply coveredBy_split_literal root_8188969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8188970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8195151 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8188970
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8195151
#print axioms cover_8188969

def root_8185213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8185213 : CoveredBy scale carrier boxes root_8185213 := by
  apply coveredBy_split_literal root_8185213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8185214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8188969 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8185214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8188969
#print axioms cover_8185213

def root_8208276 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8208276 : CoveredBy scale carrier boxes root_8208276 := by
  apply coveredBy_split_literal root_8208276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3076.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3077.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3076.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3077.covered
#print axioms cover_8208276

def root_8208271 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8208271_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8208271_right_fuel : Nat := 1
def small_8208271_right_count : Nat := 1
def small_8208271_right_encoded : String := "00000003"
theorem small_8208271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8208271_right_root small_8208271_right_fuel small_8208271_right_count small_8208271_right_encoded = true := by
  decide +kernel
theorem small_8208271_right_covered : CoveredBy scale carrier boxes small_8208271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8208271_right_root small_8208271_right_fuel small_8208271_right_count small_8208271_right_encoded small_8208271_right_checked

theorem cover_8208271 : CoveredBy scale carrier boxes root_8208271 := by
  apply coveredBy_split_literal root_8208271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8208276 small_8208271_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8208276
  · exact small_8208271_right_covered
#print axioms cover_8208271

def root_8215906 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215906_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215906_left_fuel : Nat := 25
def small_8215906_left_count : Nat := 341
def small_8215906_left_encoded : String := "0F8750FD0280010013D7B1010000000007800108128A4109000000040B4D43F800000005108010F90DE7CA04000000050E6014FB000000020000000500000001128A7D090B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D44060000000500000006000000020E6014FB0000000200000009108010F90DE7CA040E5FD8FB0B4D44060000000800000008000000020E6014FB000000020B4D44060000000810804CFD00000003014001000000000800000008000000010000000413D7ED0107800108128A4109000000040B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D44060000000510804CFD0000000300000005000000020E6014FB000000020B4D44060000000510804CFD0000000303C001000000000513A54D01064001080000000512FFAD090DAED87B0E9661040BF3E578000000051008ECF90BF3E58600000005100928FD0000000304600100000000051384190106E0010800000005000000080000000000000001000000020E96250400000002000000090000000400000000108010F90DE7CA040E5FD8FB0B4D4406108010FD000000070000000310804CFD0000000303C0010013A5110100000000064001080000000512FFAD090AA6A27800000005000000070000000413A54D010640010812FF7109000000040000000712FFAD090AA6A27810EDACF9000000010D412884000000050EFA4CFB000000020BF3E586000000050000000810ED70F900000008000000010000000400000000000000020E6014FB000000020B4D4406108010FD03C0010013A51101000000000000000513A54D010640010812FF7109000000040000000500000008000000000000000310804CFD0000000303C0010013A5110100000000064001080000000512FFAD090DAED87B0E9661040AA6A278000000050000000800000002000000080000000413A54D010640010812FF7109000000040DAED87B0E9661040AA6A2780000000510ED70F90BF3E58600000005100928FD00000003046001000000000513841901000000080000000000000001000000020E962504000000020AA6A27810EDACF9000000010BF3E58600000005100928FD0000000304600100000000050000000A10ED70F90BF3E58600000008100928FD000000030460010000000008000000080000000112FFAD090DAED87B0E9661040AA6A27810EDACF9000000010BF3E586000000080000000800000008000000020E962504000000020AA6A27810EDACF9000000010000000800000008000000040000000000000001128A7D090B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D4406108010FD03C0010000000008000000080000000310804CFD0000000303C0010013A511010000000008C0010811FBE90900000004000000050000000613A54D0108C0010811FBE909000000040BF3E578100928F9000000010D412884000000050EFA4CFB000000020BF3E58600000005000000061008ECF900000008000000010000000600000000000000020E6014FB000000020B4D4406108010FD03C0010000000008000000080000000310804CFD0000000303C0010013A511010000000008C0010811FBE90900000004000000090000000813A54D0108C0010811FBE909000000040DAED87B0E9661040BF3E578100928F9000000010000000900000008000000020E96250400000002000000090000000800000000108010F90DE7CA040E5FD8FB0B4D4406108010FD000000080000000310804CFD0000000303C001000000000813A54D010000000800000000000000020E6014FB000000020B4D4406108010FD000000080000000310804CFD0000000303C001000000000813A54D01000000080000000000000001000000040000000000000003"
theorem small_8215906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215906_left_root small_8215906_left_fuel small_8215906_left_count small_8215906_left_encoded = true := by
  decide +kernel
theorem small_8215906_left_covered : CoveredBy scale carrier boxes small_8215906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215906_left_root small_8215906_left_fuel small_8215906_left_count small_8215906_left_encoded small_8215906_left_checked

theorem cover_8215906 : CoveredBy scale carrier boxes root_8215906 := by
  apply coveredBy_split_literal root_8215906 small_8215906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3079.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8215906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3079.covered
#print axioms cover_8215906

def root_8215900 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215900_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215900_left_fuel : Nat := 1
def small_8215900_left_count : Nat := 1
def small_8215900_left_encoded : String := "00000002"
theorem small_8215900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215900_left_root small_8215900_left_fuel small_8215900_left_count small_8215900_left_encoded = true := by
  decide +kernel
theorem small_8215900_left_covered : CoveredBy scale carrier boxes small_8215900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215900_left_root small_8215900_left_fuel small_8215900_left_count small_8215900_left_encoded small_8215900_left_checked

theorem cover_8215900 : CoveredBy scale carrier boxes root_8215900 := by
  apply coveredBy_split_literal root_8215900 small_8215900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215906 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8215900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215906
#print axioms cover_8215900

def root_8215616 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215616_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215616_left_fuel : Nat := 18
def small_8215616_left_count : Nat := 135
def small_8215616_left_encoded : String := "0F8750FB0C9A87060F8750FD0280010013D7B101000000000780010800000005128A7D090B4D43F800000005108010F900000006000000010000000413D7ED0107800108128A4109000000040B4D43F80000000500000007128A7D090B4D43F810804CF9000000010B4D44040000000610804CFB000000020B4D4406108010FD03C0010000000005000000080000000300000006108010F90B4D44040000000610804CFB000000020B4D44060000000800000006000000010000000400000000000000030F878CFD000000030280010013D7B1010000000007800108128A4109000000040B4D43F800000005108010F90B4D44040000000510804CFB000000020DE7CA060000000500000006000000010000000613D7ED0107800108128A4109000000040B4D43F810804CF9000000010B4D4404108010FB000000060000000210804CFB000000020DE7CA06000000050E6014FD0000000300000006108010F90B4D4404108010FB0DE7CA060E5FD8FD0000000600000003000000060000000210804CFB000000020DE7CA060E5FD8FD03C0010013A511010000000006400108000000050000000613A54D010640010812FF710900000004000000070000000600000000000000030E6014FD0000000303C001000000000613A54D010640010812FF71090000000400000006000000060000000000000001128A7D090B4D43F800000006108010F90000000600000001000000040000000000000002"
theorem small_8215616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215616_left_root small_8215616_left_fuel small_8215616_left_count small_8215616_left_encoded = true := by
  decide +kernel
theorem small_8215616_left_covered : CoveredBy scale carrier boxes small_8215616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215616_left_root small_8215616_left_fuel small_8215616_left_count small_8215616_left_encoded small_8215616_left_checked

theorem cover_8215616 : CoveredBy scale carrier boxes root_8215616 := by
  apply coveredBy_split_literal root_8215616 small_8215616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215900 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8215616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215900
#print axioms cover_8215616

def root_8215611 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215611_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215611_right_fuel : Nat := 1
def small_8215611_right_count : Nat := 1
def small_8215611_right_encoded : String := "00000001"
theorem small_8215611_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215611_right_root small_8215611_right_fuel small_8215611_right_count small_8215611_right_encoded = true := by
  decide +kernel
theorem small_8215611_right_covered : CoveredBy scale carrier boxes small_8215611_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215611_right_root small_8215611_right_fuel small_8215611_right_count small_8215611_right_encoded small_8215611_right_checked

theorem cover_8215611 : CoveredBy scale carrier boxes root_8215611 := by
  apply coveredBy_split_literal root_8215611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215616 small_8215611_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215616
  · exact small_8215611_right_covered
#print axioms cover_8215611

def root_8215095 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215095_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215095_left_fuel : Nat := 22
def small_8215095_left_count : Nat := 247
def small_8215095_left_encoded : String := "0F878CF9000000010C9A87040F8750FB0C9A87060F8750FD028001000000000513D7ED010780010800000005128A7D090DE7C9F8000000050E5FD8F90B4D44040000000510804CFB000000020B4D44060000000500000006000000010000000400000000000000030F878CFD000000030280010013D7B1010000000007800108000000050000000613D7ED0107800108128A41090000000400000005128A7D09000000060000000400000000000000020F878CFB000000020C9A87060F8750FD0280010013D7B101000000000780010800000005128A7D090DE7C9F8000000050E5FD8F90DE7CA040000000500000009000000010000000413D7ED0107800108128A41090000000400000005128A7D090DE7C9F80E6014F9000000010DE7CA04000000050E6014FB00000002000000090E5FD8F90DE7CA040E5FD8FB0B4D4406108010FD03C001000000000513A54D0108C001080000000500000008000000000000000310804CFD0000000303C001000000000513A54D0108C00108000000050000000600000000000000020E6014FB000000020B4D4406108010FD03C001000000000513A54D0108C001080000000500000008000000000000000310804CFD0000000303C001000000000913A54D0108C0010811FBE90900000004000000090000000900000000000000010000000400000000000000030F878CFD000000030280010013D7B101000000000780010800000005128A7D090DE7C9F80E6014F9000000010DE7CA0400000005000000090E5FD8F90DE7CA040E5FD8FB00000006000000020E6014FB0000000200000009000000010000000413D7ED0107800108128A4109000000040DE7C9F80E6014F9000000010DE7CA04000000050E6014FB000000020DE7CA0600000005000000070E5FD8F90DE7CA040E5FD8FB0DE7CA06000000050E6014FD0000000303C001000000000513A54D01064001080000000512FFAD090DAED87D00000006000000070000000400000000000000020E6014FB000000020DE7CA060E5FD8FD03C001000000000513A54D01064001080000000512FFAD090DAED87B0E9661040000000500000002000000070000000400000000000000030E6014FD0000000303C0010013A51101000000000640010800000005000000070000000700000001128A7D090DE7C9F80E6014F9000000010DE7CA040E5FD8FB0DE7CA060E5FD8FD000000060000000300000006000000020E6014FB00000002000000070E5FD8F90DE7CA040E5FD8FB0DE7CA060E5FD8FD000000060000000300000006000000020E6014FB000000020DE7CA060E5FD8FD03C0010000000009000000070000000300000007000000010000000400000000"
theorem small_8215095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215095_left_root small_8215095_left_fuel small_8215095_left_count small_8215095_left_encoded = true := by
  decide +kernel
theorem small_8215095_left_covered : CoveredBy scale carrier boxes small_8215095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215095_left_root small_8215095_left_fuel small_8215095_left_count small_8215095_left_encoded small_8215095_left_checked

theorem cover_8215095 : CoveredBy scale carrier boxes root_8215095 := by
  apply coveredBy_split_literal root_8215095 small_8215095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215611 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8215095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215611
#print axioms cover_8215095

def root_8215090 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215090_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215090_right_fuel : Nat := 1
def small_8215090_right_count : Nat := 1
def small_8215090_right_encoded : String := "00000003"
theorem small_8215090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215090_right_root small_8215090_right_fuel small_8215090_right_count small_8215090_right_encoded = true := by
  decide +kernel
theorem small_8215090_right_covered : CoveredBy scale carrier boxes small_8215090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215090_right_root small_8215090_right_fuel small_8215090_right_count small_8215090_right_encoded small_8215090_right_checked

theorem cover_8215090 : CoveredBy scale carrier boxes root_8215090 := by
  apply coveredBy_split_literal root_8215090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215095 small_8215090_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215095
  · exact small_8215090_right_covered
#print axioms cover_8215090

def root_8215089 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215089_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215089_right_fuel : Nat := 25
def small_8215089_right_count : Nat := 213
def small_8215089_right_encoded : String := "0F34D106000000030C9A86F80F878CF9000000010C9A87040F8750FB028001000000000A13D7ED0107800108128A4109000000040AD3577D10D13D060DE7C9F8000000050000000A000000030000000A0000000600000000000000020F878CFB000000020280010013D7B1010000000007800108128A4109000000040AD3577D10D13D060DE7C9F8000000050000000A0000000300000007128A7D090000000A0000000413D7ED0107800108128A4109000000040AD3577D10D13D060DE7C9F8000000070E5FD8F90DE7CA040E5FD8FB03C001000000000A00000007000000020000000700000001000000030000000700000007000000000F8750F90C9A87040F8750FB028001000000000A13D7ED0107800108128A4109000000040AD3577D10D13D060B4D43F8000000060000000A000000030000000A0000000600000000000000020F878CFB000000020280010013D7B1010000000007800108128A4109000000040AD3577D10D13D060B4D43F810804CF9000000010000000A0000000A000000030000000A0000000A13D7ED0107800108128A4109000000040AD3577D10D13D060B4D43F810804CF9000000010DE7CA040E5FD8FB03C001000000000A13A54D010640010812FF7109000000040BE879BD1011AD060BF3E578000000060000000A00000003000000070000000600000000000000020E6014FB0000000203C001000000000700000007108010F90DE7CA040E5FD8FB03C001000000000A13A54D010640010812FF7109000000040BE879BD1011AD060AA6A278000000060000000A000000030000000A0000000600000000000000020E6014FB0000000203C0010013A51101000000000640010812FF7109000000040BE879BD1011AD060DAED87B0000000A0000000A000000030000000A0000000A13A54D010640010812FF7109000000040BE879BD1011AD060DAED87B0E9661040AA6A278000000070000000A0000000200000007000000030000000712FFAD09000000070000000400000000000000010000000310D10106000000030B4D43F8000000070000000A128A7D090AD3577D10D13D060B4D43F810804CF9000000010DE7CA040000000600000007108010F90DE7CA04000000060E6014FB000000020000000700000001000000030000000A000000040000000000000001"
theorem small_8215089_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215089_right_root small_8215089_right_fuel small_8215089_right_count small_8215089_right_encoded = true := by
  decide +kernel
theorem small_8215089_right_covered : CoveredBy scale carrier boxes small_8215089_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215089_right_root small_8215089_right_fuel small_8215089_right_count small_8215089_right_encoded small_8215089_right_checked

theorem cover_8215089 : CoveredBy scale carrier boxes root_8215089 := by
  apply coveredBy_split_literal root_8215089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215090 small_8215089_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215090
  · exact small_8215089_right_covered
#print axioms cover_8215089

def root_8215084 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215084_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215084_right_fuel : Nat := 1
def small_8215084_right_count : Nat := 1
def small_8215084_right_encoded : String := "00000002"
theorem small_8215084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215084_right_root small_8215084_right_fuel small_8215084_right_count small_8215084_right_encoded = true := by
  decide +kernel
theorem small_8215084_right_covered : CoveredBy scale carrier boxes small_8215084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215084_right_root small_8215084_right_fuel small_8215084_right_count small_8215084_right_encoded small_8215084_right_checked

theorem cover_8215084 : CoveredBy scale carrier boxes root_8215084 := by
  apply coveredBy_split_literal root_8215084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215089 small_8215084_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215089
  · exact small_8215084_right_covered
#print axioms cover_8215084

def root_8215083 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215083_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215083_right_fuel : Nat := 32
def small_8215083_right_count : Nat := 479
def small_8215083_right_encoded : String := "0F34D104000000020CFD9BFD0F350D060C9A86F80F878CF9000000010C9A87060F8750FD028001000000000913D7ED0107800108128A4109000000040AD3577B10D13D040DE7C9F8000000050E5FD8F9000000090000000100000002000000090000000900000000000000030F878CFD000000030280010013D7B1010000000007800108000000090000000913D7ED0107800108128A4109000000040AD3577B10D13D040DE7C9F8000000070E5FD8F90DE7CA060E5FD8FD00000009000000030000000700000001000000020000000700000007000000000F8750F90C9A87060F8750FD0280010013D7B1010000000007800108128A4109000000040AD3577B10D13D040000000900000002000000090000000913D7ED0107800108128A4109000000040AD3577B10D13D040B4D43F810804CF9000000010B4D4406108010FD03C001000000000513A54D0100000009000000000000000310804CFD0000000303C001000000000913A54D0106400108000000090000000900000000108010F90B4D4406108010FD03C0010013A51101000000000000000913A54D010640010812FF7109000000040000000600000008000000000000000310804CFD0000000303C0010013A511010000000006400108000000090000000913A54D010640010812FF7109000000040BE879BB1011AD040AA6A2780000000910ED70F90BF3E58600000006100928FD0000000304600100000000080000000A00000001000000020000000912FFAD090BE879BB1011AD040AA6A278000000090000000800000002000000080000000400000000000000010000000210D101040000000200000009128A7D090AD3577B10D13D040B4D43F810804CF9000000010B4D4406108010FD000000090000000300000009108010F90B4D4406108010FD000000080000000310804CFD0000000303C001000000000813A54D0108C0010811FBE90900000004000000080000000800000000000000010000000210D1010400000002000000090000000400000000000000030F878CFD000000030280010013D7B1010000000007800108128A4109000000040AD3577B10D13D040B4D43F800000009108010F90DE7CA060E5FD8FD000000090000000300000009000000010000000200000009128A7D090AD3577B10D13D040B4D43F800000009108010F90DE7CA060E5FD8FD0000000900000003000000090000000100000002000000090000000413D7ED0107800108128A4109000000040AD3577B10D13D040B4D43F810804CF9000000010DE7CA060E5FD8FD03C001000000000913A54D010640010812FF710900000004000000090000000900000000000000030E6014FD0000000303C001000000000700000007108010F90DE7CA060E5FD8FD03C0010013A51101000000000640010812FF710900000004000000090000000913A54D010640010812FF7109000000040BE879BB1011AD040AA6A27810EDACF9000000010D4128860EFA10FD00000009000000030000000910ED70F90D4128860EFA10FD04600100000000091384190105A00108000000060000000900000000000000030EFA4CFD0000000304600100000000091384190105A001081331350900000004000000090000000900000000000000010000000210117104000000020000000912FFAD090BE879BB1011AD040AA6A27810EDACF9000000010000000910ED70F90D4128860EFA10FD00000008000000030EFA4CFD0000000304600100000000091384190100000007000000000000000100000002000000090000000400000000000000030E6014FD0000000303C0010013A51101000000000640010812FF7109000000040BE879BB1011AD040DAED87D000000090E9625060000000300000007000000020000000912FFAD090BE879BB1011AD040000000900000002000000070000000413A54D010640010812FF7109000000040BE879BB1011AD040DAED87D0E9661060AA6A2780000000710ED70F90460010000000009138419010000000700000000000000010000000300000007000000020000000712FFAD09000000070000000400000000000000010000000210D10104000000020B4D43F800000007108010F90DE7CA060E5FD8FD00000009000000030000000700000001128A7D090AD3577B10D13D040B4D43F810804CF9000000010DE7CA060E5FD8FD03C0010000000007000000070000000300000007108010F90DE7CA060E5FD8FD03C0010013A511010000000008C0010811FBE90900000004000000090000000913A54D0108C0010811FBE909000000040BE879BB1011AD040AA6A278000000070000000800000002000000070000000500000000000000030E6014FD0000000300000007000000010000000210D101040000000200000007000000040000000000000001000000030F34D106000000030C9A86F8000000070F8750F90280010013D7B1010000000007800108128A4109000000040AD3577B10D13D040AD3577D10D13D060B4D43F800000007108010F9014001000000000913F6150100000007000000000000000100000003000000070000000200000007128A7D09000000070000000413D7ED0107800108128A4109000000040AD3577B0000000700000007000000070000000000000001"
theorem small_8215083_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215083_right_root small_8215083_right_fuel small_8215083_right_count small_8215083_right_encoded = true := by
  decide +kernel
theorem small_8215083_right_covered : CoveredBy scale carrier boxes small_8215083_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215083_right_root small_8215083_right_fuel small_8215083_right_count small_8215083_right_encoded small_8215083_right_checked

theorem cover_8215083 : CoveredBy scale carrier boxes root_8215083 := by
  apply coveredBy_split_literal root_8215083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215084 small_8215083_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215084
  · exact small_8215083_right_covered
#print axioms cover_8215083

def root_8215077 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215077_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215077_left_fuel : Nat := 1
def small_8215077_left_count : Nat := 1
def small_8215077_left_encoded : String := "00000001"
theorem small_8215077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215077_left_root small_8215077_left_fuel small_8215077_left_count small_8215077_left_encoded = true := by
  decide +kernel
theorem small_8215077_left_covered : CoveredBy scale carrier boxes small_8215077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215077_left_root small_8215077_left_fuel small_8215077_left_count small_8215077_left_encoded small_8215077_left_checked

theorem cover_8215077 : CoveredBy scale carrier boxes root_8215077 := by
  apply coveredBy_split_literal root_8215077 small_8215077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215083 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8215077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215083
#print axioms cover_8215077

def root_8215076 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215076_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215076_right_fuel : Nat := 14
def small_8215076_right_count : Nat := 53
def small_8215076_right_encoded : String := "0F34D0F80CFD9BFB0F350D040CFD9BFD0F350D060C9A8704000000050F878CFB000000020C9A8706000000050F878CFD00000003028001000000000513D7ED010780010800000005128A7D09000000070000000400000000000000030F34D106000000030C9A87040F8750FB028001000000000513D7ED0107800108000000050000000700000000000000020F878CFB0000000200000007000000020F34D104000000020CFD9BFD0F350D060C9A87060F8750FD00000009000000030F878CFD0000000300000007000000030000000700000001"
theorem small_8215076_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215076_right_root small_8215076_right_fuel small_8215076_right_count small_8215076_right_encoded = true := by
  decide +kernel
theorem small_8215076_right_covered : CoveredBy scale carrier boxes small_8215076_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215076_right_root small_8215076_right_fuel small_8215076_right_count small_8215076_right_encoded small_8215076_right_checked

theorem cover_8215076 : CoveredBy scale carrier boxes root_8215076 := by
  apply coveredBy_split_literal root_8215076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215077 small_8215076_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215077
  · exact small_8215076_right_covered
#print axioms cover_8215076

def root_8215071 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215071_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8215071_right_fuel : Nat := 1
def small_8215071_right_count : Nat := 1
def small_8215071_right_encoded : String := "00000004"
theorem small_8215071_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8215071_right_root small_8215071_right_fuel small_8215071_right_count small_8215071_right_encoded = true := by
  decide +kernel
theorem small_8215071_right_covered : CoveredBy scale carrier boxes small_8215071_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8215071_right_root small_8215071_right_fuel small_8215071_right_count small_8215071_right_encoded small_8215071_right_checked

theorem cover_8215071 : CoveredBy scale carrier boxes root_8215071 := by
  apply coveredBy_split_literal root_8215071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215076 small_8215071_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215076
  · exact small_8215071_right_covered
#print axioms cover_8215071

def root_8212857 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8212857 : CoveredBy scale carrier boxes root_8212857 := by
  apply coveredBy_split_literal root_8212857 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3078.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8215071 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3078.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8215071
#print axioms cover_8212857

def root_8212851 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8212851_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8212851_left_fuel : Nat := 1
def small_8212851_left_count : Nat := 1
def small_8212851_left_encoded : String := "00000000"
theorem small_8212851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8212851_left_root small_8212851_left_fuel small_8212851_left_count small_8212851_left_encoded = true := by
  decide +kernel
theorem small_8212851_left_covered : CoveredBy scale carrier boxes small_8212851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8212851_left_root small_8212851_left_fuel small_8212851_left_count small_8212851_left_encoded small_8212851_left_checked

theorem cover_8212851 : CoveredBy scale carrier boxes root_8212851 := by
  apply coveredBy_split_literal root_8212851 small_8212851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8212857 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8212851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8212857
#print axioms cover_8212851

def root_8221204 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8221204_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8221204_left_fuel : Nat := 27
def small_8221204_left_count : Nat := 387
def small_8221204_left_encoded : String := "0F8750FB0C9A87060F8750FD07800100128A410100000000028001080000000513D7ED090B4D43F8000000050000000700000004128A7D010280010813D7B109000000040B4D43F800000005108010F90000000A0000000113D7ED090B4D43F810804CF9000000010B4D4404108010FB0B4D44060000000510804CFD0000000308C001000000000500000009000000020000000A108010F90B4D4404108010FB00000007000000020000000A000000010000000400000000000000030F878CFD0000000307800100128A4101000000000280010813D7B109000000040B4D43F800000005108010F90B4D44040000000510804CFB000000020DE7CA06000000050E6014FD00000003000000050000000113D7ED090B4D43F810804CF9000000010B4D4404108010FB0DE7CA06000000050E6014FD00000003000000050000000210804CFB000000020DE7CA06000000050E6014FD00000003064001000000000512FFAD0103C001080000000513A54D090DAED87D0E9661060BF3E578000000051008ECF90BF3E58400000005100928FB0000000206E00100000000050000000800000001000000030E96250600000003000000080000000400000000108010F90B4D4404108010FB0DE7CA060E5FD8FD00000007000000030E6014FD000000030640010012FF7101000000000000000512FFAD0100000009000000000000000210804CFB000000020DE7CA060E5FD8FD0640010012FF7101000000000000000712FFAD0103C0010813A51109000000040AA6A278000000050000000713A54D090AA6A27810EDACF9000000010BF3E58400000005100928FB000000020D412886000000050EFA4CFD000000030000000910ED70F900000009000000010000000400000000000000030E6014FD000000030640010012FF71010000000003C001080000000513A54D090DAED87D0E9661060AA6A2780000000510ED70F90BF3E58400000005100928FB0000000205A00100000000050000000900000001000000030E962506000000030AA6A27810EDACF9000000010BF3E58400000005100928FB0000000205A00100000000050000000810ED70F90BF3E58400000009100928FB0000000205A00100133135010000000004600108000000050000000600000009000000010000000412FFAD0103C0010813A51109000000040DAED87D0E9661060AA6A2780000000500000009000000030000000913A54D090DAED87D0E9661060AA6A27810EDACF9000000010BF3E584000000090000000900000009000000030E962506000000030AA6A27810EDACF900000001000000090000000900000004000000000000000100000004128A7D010280010813D7B109000000040B4D43F810804CF9000000010B4D4404108010FB0DE7CA0600000005000000080000000210804CFB000000020DE7CA060E5FD8FD0000000A000000030E6014FD0000000300000008108010F90B4D4404108010FB000000090000000210804CFB000000020DE7CA06000000090E6014FD0000000308C0010011FBE9010000000000000008000000080000000113D7ED090B4D43F810804CF9000000010B4D4404108010FB0DE7CA060E5FD8FD08C0010011FBE901000000000000000900000009000000030E6014FD0000000308C0010011FBE9010000000000000009000000090000000210804CFB000000020DE7CA060E5FD8FD08C0010011FBE9010000000003C0010813A51109000000040000000513A54D090BF3E578100928F9000000010BF3E584000000050000000A1008ECF90000000900000001000000040000000A000000030E6014FD0000000308C0010011FBE9010000000003C001080000000813A54D090DAED87D0E9661060BF3E578100928F9000000010000000800000009000000030E96250600000003000000080000000411FC250103C00108000000080000000900000000108010F90B4D4404108010FB0DE7CA06000000090E6014FD00000003000000090000000210804CFB000000020DE7CA060E5FD8FD08C0010011FBE9010000000003C00108000000090000000900000009000000030E6014FD0000000308C0010011FBE9010000000003C0010800000009000000090000000900000001000000040000000000000002"
theorem small_8221204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8221204_left_root small_8221204_left_fuel small_8221204_left_count small_8221204_left_encoded = true := by
  decide +kernel
theorem small_8221204_left_covered : CoveredBy scale carrier boxes small_8221204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8221204_left_root small_8221204_left_fuel small_8221204_left_count small_8221204_left_encoded small_8221204_left_checked

theorem cover_8221204 : CoveredBy scale carrier boxes root_8221204 := by
  apply coveredBy_split_literal root_8221204 small_8221204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3080.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8221204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3080.covered
#print axioms cover_8221204

def root_8221199 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8221199_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8221199_right_fuel : Nat := 1
def small_8221199_right_count : Nat := 1
def small_8221199_right_encoded : String := "00000001"
theorem small_8221199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8221199_right_root small_8221199_right_fuel small_8221199_right_count small_8221199_right_encoded = true := by
  decide +kernel
theorem small_8221199_right_covered : CoveredBy scale carrier boxes small_8221199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8221199_right_root small_8221199_right_fuel small_8221199_right_count small_8221199_right_encoded small_8221199_right_checked

theorem cover_8221199 : CoveredBy scale carrier boxes root_8221199 := by
  apply coveredBy_split_literal root_8221199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.root_8221204 small_8221199_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198.cover_8221204
  · exact small_8221199_right_covered
#print axioms cover_8221199

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0198

import TaoBundleAssembly0556
import TaoBundleAssembly0562
import TaoBundleAssembly0563
import TaoBundleChunkBatch0765
import TaoBundleChunkBatch0766
import TaoBundleChunkBatch0767
import TaoBundleChunkBatch0768
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564
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
  apply coveredBy_split_literal root_8160135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160136 small_8160135_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160136
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
  apply coveredBy_split_literal root_8160130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8160135 small_8160130_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8160135
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
  apply coveredBy_split_literal root_8160038 small_8160038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8160130 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8160038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8160130
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
  apply coveredBy_split_literal root_8160033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8160038 small_8160033_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8160038
  · exact small_8160033_right_covered
#print axioms cover_8160033

def root_8156767 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8156767 : CoveredBy scale carrier boxes root_8156767 := by
  apply coveredBy_split_literal root_8156767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8156768 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8160033 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8156768
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8160033
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
  apply coveredBy_split_literal root_8156761 small_8156761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8156767 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8156761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8156767
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
  apply coveredBy_split_literal root_8156327 small_8156327_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8156761 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8156327_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8156761
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
  apply coveredBy_split_literal root_8156322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8156327 small_8156322_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8156327
  · exact small_8156322_right_covered
#print axioms cover_8156322

def root_8146106 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8146106 : CoveredBy scale carrier boxes root_8146106 := by
  apply coveredBy_split_literal root_8146106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8146107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8156322 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8146107
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8156322
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
  apply coveredBy_split_literal root_8146100 small_8146100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8146106 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8146100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8146106
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
  apply coveredBy_split_literal root_8171171 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8171176 small_8171171_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8171176
  · exact small_8171171_right_covered
#print axioms cover_8171171

def root_8146099 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8146099 : CoveredBy scale carrier boxes root_8146099 := by
  apply coveredBy_split_literal root_8146099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8146100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8171171 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8146100
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8171171
#print axioms cover_8146099

def root_8093061 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093061 : CoveredBy scale carrier boxes root_8093061 := by
  apply coveredBy_split_literal root_8093061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8093062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8146099 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8093062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8146099
#print axioms cover_8093061

def root_8087879 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087879 : CoveredBy scale carrier boxes root_8087879 := by
  apply coveredBy_split_literal root_8087879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0556.root_8087880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8093061 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0556.cover_8087880
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8093061
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
  apply coveredBy_split_literal root_8177703 small_8177703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8177709 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8177703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8177709
#print axioms cover_8177703

def root_8177702 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8177702 : CoveredBy scale carrier boxes root_8177702 := by
  apply coveredBy_split_literal root_8177702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8177703 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3065.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8177703
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
  apply coveredBy_split_literal root_8177697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8177702 small_8177697_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8177702
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
  apply coveredBy_split_literal root_8177385 small_8177385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8177697 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8177385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8177697
#print axioms cover_8177385

def root_8177384 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8177384 : CoveredBy scale carrier boxes root_8177384 := by
  apply coveredBy_split_literal root_8177384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8177385 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3066.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8177385
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3066.covered
#print axioms cover_8177384

def root_8175774 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8175774 : CoveredBy scale carrier boxes root_8175774 := by
  apply coveredBy_split_literal root_8175774 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3062.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8177384 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3062.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8177384
#print axioms cover_8175774

def root_8087878 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087878 : CoveredBy scale carrier boxes root_8087878 := by
  apply coveredBy_split_literal root_8087878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8087879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8175774 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8087879
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8175774
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
  apply coveredBy_split_literal root_8191795 small_8191795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8191801 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8191795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8191801
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
  apply coveredBy_split_literal root_8191415 small_8191415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8191795 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8191415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8191795
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
  apply coveredBy_split_literal root_8191409 small_8191409_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8191415 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8191409_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8191415
#print axioms cover_8191409

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564

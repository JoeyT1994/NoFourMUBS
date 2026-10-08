import TaoBundleAssembly0149
import TaoBundleChunkBatch0582
import TaoBundleChunkBatch0583
import TaoBundleChunkBatch0584
import TaoBundleChunkBatch0585
import TaoBundleChunkBatch0586
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150
def root_6176934 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6176934_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6176934_right_fuel : Nat := 21
def small_6176934_right_count : Nat := 347
def small_6176934_right_encoded : String := "0A0001001151E8F70A0000F8115225030A0001041151E8FB0A0000FC0000000A1151E907000000030000000A00000002115224FB000000020A0000FC115225070A0001081151E90900000004000000071152250908A91303120700F80000000A000000010000000A00000004000000031151E907000000030A0001081151E9090000000408A91303000000070000000A0000000A000000011151E903000000010A0001041151E8FB0000000A00000002115224FB000000020A0000FC115225070A0001081151E9090000000408A912FB00000009000000070000000A000000031151E907000000030000000A00000000115224F7000000000A0000F8115225030A0001041151E8FB0A0000FC115225070A0001081151E90900000004000000091152250908A912F70000000A120701000000000008A913030000000A0000000A00000004000000031151E907000000030A0001081151E9090000000408A912F700000007000000060000000A00000002115224FB000000020A0000FC115225070A0001081151E9090000000408A912F712073D0008A91303120700F80000000A0000000112073CF80000000108A912FB0000000712070104000000020000000700000000120701000000000008A91303120700F80000000A0000000112073CF80000000108A912FB0000000A1207010400000002000000071152250908A912F712073D0008A91303120700F808A912FB0000000A12070104000000020000000A0000000112073CF80000000108A912FB0000000A120701040000000208A91307120700FC0000000A000000030000000A00000000120701000000000008A91303120700F808A912FB0000000A120701040000000208A913070000000A0000000A0000000112073CF80000000108A912FB12073D0408A91307120700FC0000000A000000030000000A00000002120701040000000208A91307120700FC0000000A0000000312073CFC0000000308A9130912070108000000040000000A0000000A00000004000000031151E907000000030A0001081151E9090000000408A912F712073D0008A91303120700F80000000A0000000112073CF80000000108A912FB0000000712070104000000020000000700000000120701000000000008A9130300000009000000091152250908A912F712073D0008A91303120700F808A912FB0000000612070104000000020000000A0000000112073CF80000000108A912FB0000000A12070104000000020000000A00000000120701000000000008A91303120700F8000000090000000112073CF80000000108A912FB12073D040000000A00000002120701040000000208A91309000000090000000900000004000000011151E903000000010A0001041151E8FB0A0000FC115225070A0001081151E9090000000408A912F70000000912070100000000000000000A0000000A000000031151E907000000030000000A00000002115224FB000000020A0000FC115225070A0001081151E9090000000408A912F712073D0008A912FB0000000A0000000700000000120701000000000008A912FB12073D0408A913070000000A00000009000000021207010400000002000000071152250908A912F712073D0008A912FB12073D040000000A00000002120701040000000208A91307000000070000000A00000000120701000000000008A912FB12073D0408A91307120700FC0000000A000000030000000A00000002120701040000000208A913070000000712073CFC0000000308A91309000000070000000700000004000000031151E907000000030A0001081151E90900000004000000071152250908A912F712073D0008A912FB0000000A0000000900000000120701000000000008A912FB0000000712070104000000020000000500000004"
theorem small_6176934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6176934_right_root small_6176934_right_fuel small_6176934_right_count small_6176934_right_encoded = true := by
  decide +kernel
theorem small_6176934_right_covered : CoveredBy scale carrier boxes small_6176934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6176934_right_root small_6176934_right_fuel small_6176934_right_count small_6176934_right_encoded small_6176934_right_checked

theorem cover_6176934 : CoveredBy scale carrier boxes root_6176934 := by
  apply coveredBy_split_literal root_6176934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6176935 small_6176934_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6176935
  · exact small_6176934_right_covered
#print axioms cover_6176934

def root_6170692 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6170692 : CoveredBy scale carrier boxes root_6170692 := by
  apply coveredBy_split_literal root_6170692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6170693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6176934 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6170693
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6176934
#print axioms cover_6170692

def root_6161048 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161048 : CoveredBy scale carrier boxes root_6161048 := by
  apply coveredBy_split_literal root_6161048 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6161049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6170692 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6161049
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6170692
#print axioms cover_6161048

def root_6183463 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6183463_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6183463_right_fuel : Nat := 1
def small_6183463_right_count : Nat := 1
def small_6183463_right_encoded : String := "00000001"
theorem small_6183463_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6183463_right_root small_6183463_right_fuel small_6183463_right_count small_6183463_right_encoded = true := by
  decide +kernel
theorem small_6183463_right_covered : CoveredBy scale carrier boxes small_6183463_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6183463_right_root small_6183463_right_fuel small_6183463_right_count small_6183463_right_encoded small_6183463_right_checked

theorem cover_6183463 : CoveredBy scale carrier boxes root_6183463 := by
  apply coveredBy_split_literal root_6183463 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2327.root small_6183463_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2327.covered
  · exact small_6183463_right_covered
#print axioms cover_6183463

def root_6183462 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6183462_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6183462_right_fuel : Nat := 12
def small_6183462_right_count : Nat := 63
def small_6183462_right_encoded : String := "1151E903000000010A0001041151E8FB0A0001061151E8FD0000000900000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF00000007120700FE0000000700000004000000031207010600000003000000071151E8FF000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912FB000000091207010400000002000000071151E8FF000000080000000400000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD00000007120701060000000300000007000000021207010400000002000000071151E8FF0000000900000004"
theorem small_6183462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6183462_right_root small_6183462_right_fuel small_6183462_right_count small_6183462_right_encoded = true := by
  decide +kernel
theorem small_6183462_right_covered : CoveredBy scale carrier boxes small_6183462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6183462_right_root small_6183462_right_fuel small_6183462_right_count small_6183462_right_encoded small_6183462_right_checked

theorem cover_6183462 : CoveredBy scale carrier boxes root_6183462 := by
  apply coveredBy_split_literal root_6183462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6183463 small_6183462_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6183463
  · exact small_6183462_right_covered
#print axioms cover_6183462

def root_6183457 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6183457_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6183457_right_fuel : Nat := 1
def small_6183457_right_count : Nat := 1
def small_6183457_right_encoded : String := "00000000"
theorem small_6183457_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6183457_right_root small_6183457_right_fuel small_6183457_right_count small_6183457_right_encoded = true := by
  decide +kernel
theorem small_6183457_right_covered : CoveredBy scale carrier boxes small_6183457_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6183457_right_root small_6183457_right_fuel small_6183457_right_count small_6183457_right_encoded small_6183457_right_checked

theorem cover_6183457 : CoveredBy scale carrier boxes root_6183457 := by
  apply coveredBy_split_literal root_6183457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6183462 small_6183457_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6183462
  · exact small_6183457_right_covered
#print axioms cover_6183457

def root_6187648 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6187648_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6187648_left_fuel : Nat := 34
def small_6187648_left_count : Nat := 313
def small_6187648_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A91303120700F808A912FB12073D0408A912FF00000009120700FE0500010600000009135D80FD000000030CFD9BF70F350D0004548A03138670F80CFD9BFB000000090F34D10400000002000000090000000100000009000000000F34D10000000000000000090000000400000002120701040000000208A912FF12073CFE0000000405000106135D44FD0CFD9BF7000000090000000900000003135D80FD000000030CFD9BF70F350D0004548A03138670F8045489FB0000000913867104000000020CFD9BFF000000060F34D0FE0000000600000004000000011386ACF80000000100000009000000000F34D1000000000000000006120700FE05000106135D44FD0CFD9BF70F350D0004548A03138670F8045489FB0000000900000006000000011386ACF800000001045489FB0000000900000006000000000F34D100000000000000000600000003135D80FD000000030CFD9BF70F350D0004548A03138670F8045489FB1386AD04045489FF00000009138670FE0C9A87000F8750F707800106128A40FD022A4583000000090000000900000003128A7CFD00000003022A458313E1C4F8067ECE7B0000000912EA590400000002022A457F0000000913E1C4FE0B4D4400108010F700000007000000000000000A000000040000000113E200F800000001067ECE7B0000000712EA59040000000200000007000000000F878CF7000000000000000900000004000000021386710400000002045489FF1386ACFE000000040C9A87000F8750F7000000060000000000000006138670FE0C9A87000F8750F707800106128A40FD0000000600000003128A7CFD00000003022A458313E1C4F8022A457B13E20104022A457F13E200FE000000040B4D440000000007000000060000000500000002000000050000000100000005000000000F878CF7000000000780010600000006128A7CFD00000003022A458313E1C4F800000006000000010000000500000004000000011386ACF800000001045489FB1386AD04045489FF00000009138670FE0C9A87000F8750F700000009000000000000000900000004000000021386710400000002045489FF00000006138670FE0000000600000004000000000F34D1000000000004548A03138670F8045489FB00000009000000060000000100000006000000040000000112073CF80000000108A912FB12073D0408A912FF00000009120700FE000000090000000400000002120701040000000208A912FF12073CFE000000040500010600000006135D80FD0000000300000009120700FE05000106135D44FD0CFD9BF7000000060000000900000003135D80FD000000030CFD9BF70F350D000CFD9C030F34D0F8045489FB00000009000000060000000100000007000000000F34D10000000000000000060000000400000000120701000000000008A91303120700F808A912FB00000009120701040000000208A912FF00000006120700FE00000009000000040000000112073CF80000000108A912FB000000091207010400000002000000091151E8FF08A912F712073D0008A91303120700F808A912FB000000091207010400000002000000090000000112073CF80000000108A912FB12073D0400000009000000020000000600000000120701000000000008A91303120700F80000000900000001000000060000000400000003"
theorem small_6187648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6187648_left_root small_6187648_left_fuel small_6187648_left_count small_6187648_left_encoded = true := by
  decide +kernel
theorem small_6187648_left_covered : CoveredBy scale carrier boxes small_6187648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6187648_left_root small_6187648_left_fuel small_6187648_left_count small_6187648_left_encoded small_6187648_left_checked

theorem cover_6187648 : CoveredBy scale carrier boxes root_6187648 := by
  apply coveredBy_split_literal root_6187648 small_6187648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2328.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6187648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2328.covered
#print axioms cover_6187648

def root_6187642 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6187642_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6187642_left_fuel : Nat := 1
def small_6187642_left_count : Nat := 1
def small_6187642_left_encoded : String := "00000002"
theorem small_6187642_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6187642_left_root small_6187642_left_fuel small_6187642_left_count small_6187642_left_encoded = true := by
  decide +kernel
theorem small_6187642_left_covered : CoveredBy scale carrier boxes small_6187642_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6187642_left_root small_6187642_left_fuel small_6187642_left_count small_6187642_left_encoded small_6187642_left_checked

theorem cover_6187642 : CoveredBy scale carrier boxes root_6187642 := by
  apply coveredBy_split_literal root_6187642 small_6187642_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6187648 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6187642_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6187648
#print axioms cover_6187642

def root_6186800 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186800_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186800_left_fuel : Nat := 27
def small_6186800_left_count : Nat := 389
def small_6186800_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A91303120700F808A912FF00000009120700FE05000104135D44FB000000090000000200000009000000040000000100000009000000001207010000000000000000091151E8FF000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A91303120700F808A912FD12073D0608A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D0004548A03138670F80CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE0000000800000004000000011386ACF80000000100000009000000000F34D100000000000000000900000002135D80FB000000020CFD9BF70F350D0004548A03138670F80CFD9BFD000000090F34D106000000030CFD9BFF000000050000000900000001000000090000000000000009120700FE05000104135D44FB0CFD9BF70F350D0004548A03138670F80CFD9BFD0F350D06045489FF1386ACFE000000040C9A87000F8750F70C9A870600000009000000080000000000000008000000080000000300000008000000011386ACF8000000010CFD9BFD0F350D06045489FF00000009000000080000000300000008000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D0004548A03138670F80CFD9BFD0F350D06045489FF00000009138670FE0C9A87000F8750F70C9A87060000000900000008000000000000000800000004000000030F34D1060000000300000008000000011386ACF8000000010CFD9BFD0F350D0600000009000000030F34D1060000000300000008000000000F34D10000000000000000080000000400000003120701060000000308A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D0004548A03138670F8045489FD1386AD060CFD9BFF0000000A000000080000000300000008000000011386ACF800000001045489FD1386AD060CFD9BFF0F350CFE0000000400000009000000080000000300000008000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D0004548A03138670F8045489FD1386AD060CFD9BFF0000000A0F34D0FE000000080000000400000003138671060000000300000008000000011386ACF800000001045489FD1386AD060CFD9BFF000000090000000900000003138671060000000300000008000000000F34D1000000000000000008120700FE00000008000000040000000112073CF80000000108A912FD12073D0608A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D000000000900000000000000090000000200000009120700FE05000104135D44FB0CFD9BF70F350D000CFD9C030F34D0F80CFD9BFD0000000900000008000000010F350CF80000000100000009000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D000CFD9C030F34D0F800000009000000010000000900000000000000090000000400000003120701060000000308A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D000CFD9C030F34D0F8045489FD1386AD060CFD9BFF00000009000000080000000300000008000000010F350CF800000001045489FD00000009138671060000000300000008000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D000CFD9C030F34D0F8045489FD000000091386710600000003000000080000000100000009000000000F34D1000000000000000009120700FE000000080000000400000000120701000000000008A91303120700F808A912FD12073D0608A912FF00000009120700FE0000000800000004000000031207010600000003000000080000000112073CF80000000108A912FD12073D0600000009000000031207010600000003000000081151E8FF08A912F712073D0008A91303120700F808A912FD00000009120701060000000305000104135D44FB050000FE135D80FF000000040CFD9BF70F350D00000000090000000000000009000000090000000200000009000000010000000900000000120701000000000008A9130300000009000000090000000400000002"
theorem small_6186800_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186800_left_root small_6186800_left_fuel small_6186800_left_count small_6186800_left_encoded = true := by
  decide +kernel
theorem small_6186800_left_covered : CoveredBy scale carrier boxes small_6186800_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186800_left_root small_6186800_left_fuel small_6186800_left_count small_6186800_left_encoded small_6186800_left_checked

theorem cover_6186800 : CoveredBy scale carrier boxes root_6186800 := by
  apply coveredBy_split_literal root_6186800 small_6186800_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6187642 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6186800_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6187642
#print axioms cover_6186800

def root_6186795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186795_right_fuel : Nat := 1
def small_6186795_right_count : Nat := 1
def small_6186795_right_encoded : String := "00000001"
theorem small_6186795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186795_right_root small_6186795_right_fuel small_6186795_right_count small_6186795_right_encoded = true := by
  decide +kernel
theorem small_6186795_right_covered : CoveredBy scale carrier boxes small_6186795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186795_right_root small_6186795_right_fuel small_6186795_right_count small_6186795_right_encoded small_6186795_right_checked

theorem cover_6186795 : CoveredBy scale carrier boxes root_6186795 := by
  apply coveredBy_split_literal root_6186795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6186800 small_6186795_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6186800
  · exact small_6186795_right_covered
#print axioms cover_6186795

def root_6186794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186794_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186794_right_fuel : Nat := 22
def small_6186794_right_count : Nat := 227
def small_6186794_right_encoded : String := "1151E903000000010A0001041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F700000009120701000000000008A912FF00000006000000091151E8FF08A912F7000000091207010000000000000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FD12073D0608A912FF12073CFE0000000400000009120700FE050000F800000009135D450300000001000000090000000400000003120701060000000308A912FF12073CFE00000004050000F8135D810305000104135D44FB0CFD9BF70F350D00045489FD000000071386710600000003000000070000000000000009000000020000000900000001135D45030000000105000104135D44FB0CFD9BF70F350D0000000007000000000F34D10000000000000000090000000200000007120700FE050000F8000000080000000A0000000400000000120701000000000008A912FD12073D0608A912FF0000000A000000090000000312070106000000030000000A1151E8FF08A912F712073D0008A912FD0000000912070106000000030000000900000000120701000000000008A912FD12073D06050000F8000000090000000A000000031207010600000003050000F800000009135D4503000000010500010400000009000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB0000000912070104000000020000000900000000120701000000000008A912FB12073D040000000900000002000000061151E8FF08A912F712073D0008A912FB12073D04050000F800000009000000080000000200000006000000001207010000000000000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FB12073D0408A912FD12073D060000000900000003120701060000000308A912FF12073CFE00000004050000F80000000900000009120700FE000000070000000400000002120701040000000208A912FD12073D0608A912FF00000009120700FE00000007000000040000000312070106000000030000000A00000000120701000000000008A912FB12073D0408A912FD0000000912070106000000030000000900000002000000091151E8FF08A912F700000009120701000000000008A912FB12073D0408A912FD00000009120701060000000300000009000000020000000900000004"
theorem small_6186794_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186794_right_root small_6186794_right_fuel small_6186794_right_count small_6186794_right_encoded = true := by
  decide +kernel
theorem small_6186794_right_covered : CoveredBy scale carrier boxes small_6186794_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186794_right_root small_6186794_right_fuel small_6186794_right_count small_6186794_right_encoded small_6186794_right_checked

theorem cover_6186794 : CoveredBy scale carrier boxes root_6186794 := by
  apply coveredBy_split_literal root_6186794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6186795 small_6186794_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6186795
  · exact small_6186794_right_covered
#print axioms cover_6186794

def root_6186788 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186788_left_fuel : Nat := 1
def small_6186788_left_count : Nat := 1
def small_6186788_left_encoded : String := "00000000"
theorem small_6186788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186788_left_root small_6186788_left_fuel small_6186788_left_count small_6186788_left_encoded = true := by
  decide +kernel
theorem small_6186788_left_covered : CoveredBy scale carrier boxes small_6186788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186788_left_root small_6186788_left_fuel small_6186788_left_count small_6186788_left_encoded small_6186788_left_checked

theorem cover_6186788 : CoveredBy scale carrier boxes root_6186788 := by
  apply coveredBy_split_literal root_6186788 small_6186788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6186794 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6186788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6186794
#print axioms cover_6186788

def root_6183456 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6183456 : CoveredBy scale carrier boxes root_6183456 := by
  apply coveredBy_split_literal root_6183456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6183457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6186788 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6183457
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6186788
#print axioms cover_6183456

def root_6192577 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6192577 : CoveredBy scale carrier boxes root_6192577 := by
  apply coveredBy_split_literal root_6192577 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2330.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2331.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2330.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2331.covered
#print axioms cover_6192577

def root_6192571 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6192571_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6192571_left_fuel : Nat := 1
def small_6192571_left_count : Nat := 1
def small_6192571_left_encoded : String := "00000002"
theorem small_6192571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6192571_left_root small_6192571_left_fuel small_6192571_left_count small_6192571_left_encoded = true := by
  decide +kernel
theorem small_6192571_left_covered : CoveredBy scale carrier boxes small_6192571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6192571_left_root small_6192571_left_fuel small_6192571_left_count small_6192571_left_encoded small_6192571_left_checked

theorem cover_6192571 : CoveredBy scale carrier boxes root_6192571 := by
  apply coveredBy_split_literal root_6192571 small_6192571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6192577 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6192571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6192577
#print axioms cover_6192571

def root_6191435 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6191435 : CoveredBy scale carrier boxes root_6191435 := by
  apply coveredBy_split_literal root_6191435 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2329.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6192571 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2329.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6192571
#print axioms cover_6191435

def root_6191430 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191430_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191430_right_fuel : Nat := 1
def small_6191430_right_count : Nat := 1
def small_6191430_right_encoded : String := "00000001"
theorem small_6191430_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6191430_right_root small_6191430_right_fuel small_6191430_right_count small_6191430_right_encoded = true := by
  decide +kernel
theorem small_6191430_right_covered : CoveredBy scale carrier boxes small_6191430_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6191430_right_root small_6191430_right_fuel small_6191430_right_count small_6191430_right_encoded small_6191430_right_checked

theorem cover_6191430 : CoveredBy scale carrier boxes root_6191430 := by
  apply coveredBy_split_literal root_6191430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6191435 small_6191430_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6191435
  · exact small_6191430_right_covered
#print axioms cover_6191430

def root_6196601 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6196601 : CoveredBy scale carrier boxes root_6196601 := by
  apply coveredBy_split_literal root_6196601 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2332.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2333.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2332.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2333.covered
#print axioms cover_6196601

def root_6196595 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196595_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196595_left_fuel : Nat := 1
def small_6196595_left_count : Nat := 1
def small_6196595_left_encoded : String := "00000002"
theorem small_6196595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6196595_left_root small_6196595_left_fuel small_6196595_left_count small_6196595_left_encoded = true := by
  decide +kernel
theorem small_6196595_left_covered : CoveredBy scale carrier boxes small_6196595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6196595_left_root small_6196595_left_fuel small_6196595_left_count small_6196595_left_encoded small_6196595_left_checked

theorem cover_6196595 : CoveredBy scale carrier boxes root_6196595 := by
  apply coveredBy_split_literal root_6196595 small_6196595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6196601 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6196595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6196601
#print axioms cover_6196595

def root_6196269 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196269_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196269_left_fuel : Nat := 19
def small_6196269_left_count : Nat := 157
def small_6196269_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A913090000000912073CFE000000040500010000000005135D80F700000000050000F80000000500000009000000041151E9090000000405000100135D44F7050000F800000005135D4503000000010500010400000005135D80FB0000000205000106000000050000000600000000135D80F700000000050000F8135D81030500010400000005135D80FB000000020500010600000005135D80FD00000003050000FE000000050000000600000001135D4503000000010000000900000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE000000070000000412073CFE0000000405000100135D44F7050000F8135D810305000104000000050000000700000001135D4503000000010000000700000000135D80F700000000050000F8135D81030500010400000005135D80FB000000020CFD9BFD0F350D060CFD9C090000000700000005000000030F34D106000000030CFD9C09000000070000000500000001135D45030000000105000104135D44FB0CFD9BFD000000070F34D1060000000300000007000000020000000900000003120701060000000308A91309120700FE000000070000000412073CFE0000000405000100135D44F7050000F8000000050000000600000000135D80F700000000050000F800000008135D4503000000010500010400000006135D80FB00000002045489FD0000000600000006000000041151E9090000000408A912FD12073D060500010000000006135D80F700000000050000F800000006135D4503000000010500010400000006000000060000000312070106000000030000000600000002"
theorem small_6196269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6196269_left_root small_6196269_left_fuel small_6196269_left_count small_6196269_left_encoded = true := by
  decide +kernel
theorem small_6196269_left_covered : CoveredBy scale carrier boxes small_6196269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6196269_left_root small_6196269_left_fuel small_6196269_left_count small_6196269_left_encoded small_6196269_left_checked

theorem cover_6196269 : CoveredBy scale carrier boxes root_6196269 := by
  apply coveredBy_split_literal root_6196269 small_6196269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6196595 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6196269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6196595
#print axioms cover_6196269

def root_6196263 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196263_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196263_left_fuel : Nat := 1
def small_6196263_left_count : Nat := 1
def small_6196263_left_encoded : String := "00000001"
theorem small_6196263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6196263_left_root small_6196263_left_fuel small_6196263_left_count small_6196263_left_encoded = true := by
  decide +kernel
theorem small_6196263_left_covered : CoveredBy scale carrier boxes small_6196263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6196263_left_root small_6196263_left_fuel small_6196263_left_count small_6196263_left_encoded small_6196263_left_checked

theorem cover_6196263 : CoveredBy scale carrier boxes root_6196263 := by
  apply coveredBy_split_literal root_6196263 small_6196263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6196269 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6196263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6196269
#print axioms cover_6196263

def root_6191429 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6191429 : CoveredBy scale carrier boxes root_6191429 := by
  apply coveredBy_split_literal root_6191429 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6191430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6196263 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6191430
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6196263
#print axioms cover_6191429

def root_6191424 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191424_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191424_right_fuel : Nat := 1
def small_6191424_right_count : Nat := 1
def small_6191424_right_encoded : String := "00000000"
theorem small_6191424_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6191424_right_root small_6191424_right_fuel small_6191424_right_count small_6191424_right_encoded = true := by
  decide +kernel
theorem small_6191424_right_covered : CoveredBy scale carrier boxes small_6191424_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6191424_right_root small_6191424_right_fuel small_6191424_right_count small_6191424_right_encoded small_6191424_right_checked

theorem cover_6191424 : CoveredBy scale carrier boxes root_6191424 := by
  apply coveredBy_split_literal root_6191424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6191429 small_6191424_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6191429
  · exact small_6191424_right_covered
#print axioms cover_6191424

def root_6207271 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6207271 : CoveredBy scale carrier boxes root_6207271 := by
  apply coveredBy_split_literal root_6207271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2337.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2338.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2337.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2338.covered
#print axioms cover_6207271

def root_6207265 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6207265_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6207265_left_fuel : Nat := 1
def small_6207265_left_count : Nat := 1
def small_6207265_left_encoded : String := "00000002"
theorem small_6207265_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6207265_left_root small_6207265_left_fuel small_6207265_left_count small_6207265_left_encoded = true := by
  decide +kernel
theorem small_6207265_left_covered : CoveredBy scale carrier boxes small_6207265_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6207265_left_root small_6207265_left_fuel small_6207265_left_count small_6207265_left_encoded small_6207265_left_checked

theorem cover_6207265 : CoveredBy scale carrier boxes root_6207265 := by
  apply coveredBy_split_literal root_6207265 small_6207265_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6207271 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6207265_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6207271
#print axioms cover_6207265

def root_6206875 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206875_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206875_left_fuel : Nat := 22
def small_6206875_left_count : Nat := 185
def small_6206875_left_encoded : String := "1386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A8700000000050F878CF70000000000000005000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000000F878CF7000000000C9A86F80F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000010F875103000000010C9A87060F8750FD0C9A86FE000000050F8751090000000400000005000000030F878CFD000000030C9A86FE000000050F87510900000004067ECE7B12EA95040DE7CA00000000050E6014F7000000000B4D43F800000005000000090000000212EA5904000000020DE7CA000E5FD8F70B4D43F800000005108011030000000100000005000000000E6014F7000000000B4D43F80000000510801103000000010DE7CA06000000050E6014FD0000000300000008000000030F34D106000000030CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F8000000050F8751030000000100000007000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE000000050F8751090000000400000005000000010F875103000000010C9A86FE000000050F87510900000004067ECE7B0000000612EA5904000000020AD3577D0000000710D101060000000300000006000000000F878CF7000000000C9A86F80F878D030C9A86FE000000050F87510900000004067ECE7B0000000612EA5904000000020AD3577D0000000600000006000000010F875103000000010C9A86FE0F878D09067ECE7B0000000812EA5904000000020AD3577D0000000700000008000000040F87510900000004067ECE7B0000000812EA5904000000020AD3577D10D13D060DE7CA000E5FD8F70B4D43F80000000610801103000000010B4D43FE000000070000000600000000000000080000000310D10106000000030000000600000002"
theorem small_6206875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206875_left_root small_6206875_left_fuel small_6206875_left_count small_6206875_left_encoded = true := by
  decide +kernel
theorem small_6206875_left_covered : CoveredBy scale carrier boxes small_6206875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206875_left_root small_6206875_left_fuel small_6206875_left_count small_6206875_left_encoded small_6206875_left_checked

theorem cover_6206875 : CoveredBy scale carrier boxes root_6206875 := by
  apply coveredBy_split_literal root_6206875 small_6206875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6207265 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6206875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6207265
#print axioms cover_6206875

def root_6206869 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206869_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206869_left_fuel : Nat := 1
def small_6206869_left_count : Nat := 1
def small_6206869_left_encoded : String := "00000001"
theorem small_6206869_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206869_left_root small_6206869_left_fuel small_6206869_left_count small_6206869_left_encoded = true := by
  decide +kernel
theorem small_6206869_left_covered : CoveredBy scale carrier boxes small_6206869_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206869_left_root small_6206869_left_fuel small_6206869_left_count small_6206869_left_encoded small_6206869_left_checked

theorem cover_6206869 : CoveredBy scale carrier boxes root_6206869 := by
  apply coveredBy_split_literal root_6206869 small_6206869_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206875 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6206869_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206875
#print axioms cover_6206869

def root_6206735 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206735_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206735_left_fuel : Nat := 12
def small_6206735_left_count : Nat := 61
def small_6206735_left_encoded : String := "0F34D0F8045489FB1386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF70000000000000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE00000005000000060000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE000000050000000400000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE000000050F875109000000040000000500000001"
theorem small_6206735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206735_left_root small_6206735_left_fuel small_6206735_left_count small_6206735_left_encoded = true := by
  decide +kernel
theorem small_6206735_left_covered : CoveredBy scale carrier boxes small_6206735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206735_left_root small_6206735_left_fuel small_6206735_left_count small_6206735_left_encoded small_6206735_left_checked

theorem cover_6206735 : CoveredBy scale carrier boxes root_6206735 := by
  apply coveredBy_split_literal root_6206735 small_6206735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206869 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6206735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206869
#print axioms cover_6206735

def root_6206730 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206730_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206730_right_fuel : Nat := 1
def small_6206730_right_count : Nat := 1
def small_6206730_right_encoded : String := "00000000"
theorem small_6206730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206730_right_root small_6206730_right_fuel small_6206730_right_count small_6206730_right_encoded = true := by
  decide +kernel
theorem small_6206730_right_covered : CoveredBy scale carrier boxes small_6206730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206730_right_root small_6206730_right_fuel small_6206730_right_count small_6206730_right_encoded small_6206730_right_checked

theorem cover_6206730 : CoveredBy scale carrier boxes root_6206730 := by
  apply coveredBy_split_literal root_6206730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206735 small_6206730_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206735
  · exact small_6206730_right_covered
#print axioms cover_6206730

def root_6206729 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6206729 : CoveredBy scale carrier boxes root_6206729 := by
  apply coveredBy_split_literal root_6206729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206730 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2339.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206730
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2339.covered
#print axioms cover_6206729

def root_6206723 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206723_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206723_left_fuel : Nat := 1
def small_6206723_left_count : Nat := 1
def small_6206723_left_encoded : String := "00000004"
theorem small_6206723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206723_left_root small_6206723_left_fuel small_6206723_left_count small_6206723_left_encoded = true := by
  decide +kernel
theorem small_6206723_left_covered : CoveredBy scale carrier boxes small_6206723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206723_left_root small_6206723_left_fuel small_6206723_left_count small_6206723_left_encoded small_6206723_left_checked

theorem cover_6206723 : CoveredBy scale carrier boxes root_6206723 := by
  apply coveredBy_split_literal root_6206723 small_6206723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206729 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6206723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206729
#print axioms cover_6206723

def root_6206505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206505_left_fuel : Nat := 14
def small_6206505_left_count : Nat := 101
def small_6206505_left_encoded : String := "120700FE0CFD9BF70F350D000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350D0604548A09138670FE000000070000000400000005000000030F34D1060000000304548A0900000007000000050000000213867104000000020CFD9BFD0F350D06000000050000000300000005000000010F350CF800000001045489FB1386AD040CFD9BFD000000070F34D10600000003000000070000000213867104000000020CFD9BFD000000070F34D1060000000300000007000000000F34D100000000000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350D0604548A090000000900000005000000030F34D10600000003000000080000000213867104000000020CFD9BFD0F350D06000000050000000300000005000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060000000900000003000000090000000213867104000000020CFD9BFD0F350D0604548A090000000900000005000000030F34D1060000000304548A09000000071386ACFE000000040C9A86F8000000050F875103000000010000000700000004"
theorem small_6206505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206505_left_root small_6206505_left_fuel small_6206505_left_count small_6206505_left_encoded = true := by
  decide +kernel
theorem small_6206505_left_covered : CoveredBy scale carrier boxes small_6206505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206505_left_root small_6206505_left_fuel small_6206505_left_count small_6206505_left_encoded small_6206505_left_checked

theorem cover_6206505 : CoveredBy scale carrier boxes root_6206505 := by
  apply coveredBy_split_literal root_6206505 small_6206505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206723 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6206505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206723
#print axioms cover_6206505

def root_6206500 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206500_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206500_right_fuel : Nat := 1
def small_6206500_right_count : Nat := 1
def small_6206500_right_encoded : String := "00000003"
theorem small_6206500_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206500_right_root small_6206500_right_fuel small_6206500_right_count small_6206500_right_encoded = true := by
  decide +kernel
theorem small_6206500_right_covered : CoveredBy scale carrier boxes small_6206500_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206500_right_root small_6206500_right_fuel small_6206500_right_count small_6206500_right_encoded small_6206500_right_checked

theorem cover_6206500 : CoveredBy scale carrier boxes root_6206500 := by
  apply coveredBy_split_literal root_6206500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206505 small_6206500_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206505
  · exact small_6206500_right_covered
#print axioms cover_6206500

def root_6206499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206499_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206499_right_fuel : Nat := 27
def small_6206499_right_count : Nat := 299
def small_6206499_right_encoded : String := "120701060000000308A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F8045489FB1386AD04000000050000000200000005000000010F350CF800000001045489FB00000007138671040000000200000007000000000F34D100000000000CFD9C030F34D0F800000008000000010F350CF800000001045489FB000000080000000A0000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F8045489FB1386AD04045489FD1386AD060CFD9C090F34D0FE00000005000000040F350CFE000000040000000600000003138671060000000300000008000000021386710400000002045489FD1386AD060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE00000005000000060000000313867106000000030CFD9C090F34D0FE00000005000000040F350CFE0000000400000006000000010F350CF800000001045489FB1386AD04045489FD1386AD060CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D0300000006000000010F875103000000010C9A86FE0000000700000006000000000F878CF700000000000000080000000313867106000000030CFD9C090F34D0FE000000080000000400000008000000021386710400000002045489FD1386AD060CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F8000000050000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE000000050F8751090000000400000006000000010F875103000000010C9A86FE000000070F87510900000004022A457B0000000613E1C50400000002067ECE7D12EA95060B4D44000000000710804CF7000000000B4D43F800000006000000060000000312EA59060000000300000006000000000F878CF7000000000C9A86F80F878D030C9A86FE000000080F87510900000004022A457B0000000613E1C50400000002067ECE7D0000000600000006000000010F875103000000010C9A86FE0F878D09022A457B0000000813E1C50400000002067ECE7D0000000A00000008000000040F87510900000004022A457B0000000813E1C50400000002067ECE7D12EA95060DE7CA000E5FD8F70B4D43F8000000060000000A000000000E6014F700000000000000080000000312EA590600000003000000080000000313867106000000030CFD9C090F34D0FE0C9A87000000000700000008000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE0000000800000006000000010F875103000000010C9A86FE0F878D0900000007000000040F8751090000000400000006000000000F878CF7000000000C9A86F8000000080F8751030000000100000008000000000F34D100000000000CFD9C030F34D0F8045489FB000000081386710400000002045489FD1386AD060CFD9C090F34D0FE0000000500000004000000080000000300000008000000010F350CF800000001045489FB000000081386710400000002045489FD1386AD060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F8000000080F875103000000010000000800000003138671060000000300000008"
theorem small_6206499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206499_right_root small_6206499_right_fuel small_6206499_right_count small_6206499_right_encoded = true := by
  decide +kernel
theorem small_6206499_right_covered : CoveredBy scale carrier boxes small_6206499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206499_right_root small_6206499_right_fuel small_6206499_right_count small_6206499_right_encoded small_6206499_right_checked

theorem cover_6206499 : CoveredBy scale carrier boxes root_6206499 := by
  apply coveredBy_split_literal root_6206499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206500 small_6206499_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206500
  · exact small_6206499_right_covered
#print axioms cover_6206499

def root_6206493 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206493_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206493_left_fuel : Nat := 1
def small_6206493_left_count : Nat := 1
def small_6206493_left_encoded : String := "00000002"
theorem small_6206493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206493_left_root small_6206493_left_fuel small_6206493_left_count small_6206493_left_encoded = true := by
  decide +kernel
theorem small_6206493_left_covered : CoveredBy scale carrier boxes small_6206493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206493_left_root small_6206493_left_fuel small_6206493_left_count small_6206493_left_encoded small_6206493_left_checked

theorem cover_6206493 : CoveredBy scale carrier boxes root_6206493 := by
  apply coveredBy_split_literal root_6206493 small_6206493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206499 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6206493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206499
#print axioms cover_6206493

def root_6205633 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205633_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205633_left_fuel : Nat := 24
def small_6205633_left_count : Nat := 399
def small_6205633_left_encoded : String := "12073D0408A912FD12073D0608A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F80CFD9BFB0F350D040CFD9BFD0F350D0604548A09000000091386ACFE000000040C9A87000F8750F70C9A870400000005000000070000000000000008000000030F34D1060000000300000008000000020F34D104000000020CFD9BFD0F350D0604548A09138670FE00000007000000041386ACFE000000040C9A8700000000050F878CF70000000000000005000000030F34D1060000000304548A090000000700000005000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D06000000090000000300000009000000020F34D104000000020CFD9BFD000000070F34D1060000000300000007000000000F34D100000000000CFD9C030F34D0F80CFD9BFB000000080F34D104000000020CFD9BFD0F350D06000000090000000300000008000000010F350CF800000001000000090000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F80CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A8704000000050F878CFB0000000200000005000000030F34D1060000000300000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A8706000000050F878CFD0000000300000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE0000000400000006000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D0FE0C9A8700000000050F878CF70000000000000009000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8704000000050F878CFB0000000200000005000000000F878CF7000000000C9A86F8000000080F875103000000010C9A87040000000500000009000000030F34D106000000030CFD9C090F34D0FE000000080000000400000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F80000000500000009000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000000F878CF7000000000C9A86F80F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000010F875103000000010C9A87060F8750FD0C9A86FE000000050F8751090000000400000005000000030F878CFD000000030C9A86FE000000050F8751090000000400000008000000030F34D106000000030CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D0300000006000000010F875103000000010C9A86FE0000000500000006000000000F878CF7000000000C9A86F8000000080F8751030000000100000008000000000F34D100000000000CFD9C030F34D0F80CFD9BFB000000080F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060000000500000008000000030F34D1060000000300000008000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C0900000009000000080000000300000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE000000050F87510900000004000000050000000300000008000000010F875103000000010C9A87060000000900000008000000030F34D106000000030000000800000003120701060000000308A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F800000008000000010000000800000000000000080000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D10400000002045489FD1386AD060CFD9C090F34D0FE0000000800000004000000080000000300000008000000000F34D100000000000000000800000002"
theorem small_6205633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6205633_left_root small_6205633_left_fuel small_6205633_left_count small_6205633_left_encoded = true := by
  decide +kernel
theorem small_6205633_left_covered : CoveredBy scale carrier boxes small_6205633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6205633_left_root small_6205633_left_fuel small_6205633_left_count small_6205633_left_encoded small_6205633_left_checked

theorem cover_6205633 : CoveredBy scale carrier boxes root_6205633 := by
  apply coveredBy_split_literal root_6205633 small_6205633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6206493 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6205633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6206493
#print axioms cover_6205633

def root_6205627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205627_left_fuel : Nat := 1
def small_6205627_left_count : Nat := 1
def small_6205627_left_encoded : String := "00000001"
theorem small_6205627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6205627_left_root small_6205627_left_fuel small_6205627_left_count small_6205627_left_encoded = true := by
  decide +kernel
theorem small_6205627_left_covered : CoveredBy scale carrier boxes small_6205627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6205627_left_root small_6205627_left_fuel small_6205627_left_count small_6205627_left_encoded small_6205627_left_checked

theorem cover_6205627 : CoveredBy scale carrier boxes root_6205627 := by
  apply coveredBy_split_literal root_6205627 small_6205627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6205633 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6205627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6205633
#print axioms cover_6205627

def root_6203705 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6203705 : CoveredBy scale carrier boxes root_6203705 := by
  apply coveredBy_split_literal root_6203705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2336.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6205627 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2336.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6205627
#print axioms cover_6203705

def root_6203700 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203700_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203700_right_fuel : Nat := 1
def small_6203700_right_count : Nat := 1
def small_6203700_right_encoded : String := "00000000"
theorem small_6203700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6203700_right_root small_6203700_right_fuel small_6203700_right_count small_6203700_right_encoded = true := by
  decide +kernel
theorem small_6203700_right_covered : CoveredBy scale carrier boxes small_6203700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6203700_right_root small_6203700_right_fuel small_6203700_right_count small_6203700_right_encoded small_6203700_right_checked

theorem cover_6203700 : CoveredBy scale carrier boxes root_6203700 := by
  apply coveredBy_split_literal root_6203700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6203705 small_6203700_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6203705
  · exact small_6203700_right_covered
#print axioms cover_6203700

def root_6203699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6203699 : CoveredBy scale carrier boxes root_6203699 := by
  apply coveredBy_split_literal root_6203699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6203700 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2340.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6203700
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2340.covered
#print axioms cover_6203699

def root_6203694 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203694_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203694_right_fuel : Nat := 1
def small_6203694_right_count : Nat := 1
def small_6203694_right_encoded : String := "00000004"
theorem small_6203694_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6203694_right_root small_6203694_right_fuel small_6203694_right_count small_6203694_right_encoded = true := by
  decide +kernel
theorem small_6203694_right_covered : CoveredBy scale carrier boxes small_6203694_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6203694_right_root small_6203694_right_fuel small_6203694_right_count small_6203694_right_encoded small_6203694_right_checked

theorem cover_6203694 : CoveredBy scale carrier boxes root_6203694 := by
  apply coveredBy_split_literal root_6203694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6203699 small_6203694_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6203699
  · exact small_6203694_right_covered
#print axioms cover_6203694

def root_6216067 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216067_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216067_right_fuel : Nat := 40
def small_6216067_right_count : Nat := 405
def small_6216067_right_encoded : String := "0F34D100000000000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0000000A0F34D10600000003000000060000000213867104000000020CFD9BFD0000000A0F34D1060000000300000006000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80F878D030000000A000000010F875103000000010C9A87060F8750FD0000000A000000030F878CFD00000003078000FE128A7D090AD3577710D13D00067ECE7B0000000612EA5904000000020B4D43F80000000A10801103000000010DE7CA060000000A000000060000000010D10100000000000000000800000004128A4109000000040AD3577710D13D00000000060000000000000006000000030F34D106000000030C9A86F80F878D0300000006000000010F87510300000001078000FE00000008000000060000000213867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A87060000000A0F878CFD00000003078000FE128A7D090AD357770000000A10D10100000000000000000700000004128A41090000000400000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090AD357770000000A10D10100000000000000000A00000004128A4109000000040000000A000000030F878CFD00000003078000FE128A7D090AD3577710D13D00022A457B13E201040B4D43F810804D030DE7CA060000000A0E6014FD0000000308C000FE00000008000000060000000110801103000000010DE7CA060E5FD8FD0000000A000000030E6014FD0000000308C000FE11FC25090BE879B700000008000000080000000411FBE90900000004000000060000000213E1C504000000020B4D43F810804D030DE7CA060000000A0E6014FD0000000308C000FE11FC25090BE879B71011AD000115233B0000000A000000070000000010117100000000000000000700000004000000070000000110801103000000010DE7CA060E5FD8FD08C000FE11FC25090BE879B71011AD000115233B0000000A13F85904000000020AA6A2780000000A10ED7103000000010D412886000000070EFA4CFD00000003096000FE11AABD090C730AD7000000070000000700000004000000070000000010117100000000000000000A0000000411FBE909000000040BE879B70000000700000007000000030E6014FD0000000308C000FE11FC25090BE879B71011AD000115233B13F895040DAED87D0E9661060AA6A2780000000A10ED710300000001096000FE0000000800000005000000030E96250600000003000000080000000213F85904000000020DAED87D0E9661060AA6A27810EDAD03000000070000000110ED710300000001096000FE11AABD090C730AD70FA74500008A921B13FE35040E0776BD0E413906000000070000000300000007000000020000000700000000000000070000000400000005000000030E962506000000030AA6A27810EDAD030000000700000001000000050000000010117100000000000115233B000000080000000700000004000000050000000010D1010000000000022A457B13E201040B4D43F810804D030000000A0000000110801103000000010DE7CA060E5FD8FD0000000A00000003000000050000000213E1C504000000020B4D43F810804D03000000070000000110801103000000010DE7CA06000000070000000500000004128A4109000000040AD3577710D13D00022A457B13E201040B4D43F80000000A10801103000000010DE7CA060000000A0000000500000002000000070000000010D101000000000000000007000000030F34D106000000030C9A86F80F878D03078000FE128A7D090AD3577710D13D00022A457B0000000613E1C504000000020AD3577D10D13D060000000700000003000000060000000010D1010000000000022A457B000000060000000700000004128A41090000000400000006000000010F87510300000001078000FE128A7D090AD3577710D13D00022A457B13E201040AD3577D10D13D060B4D43F8000000060000000600000003000000060000000213E1C504000000020AD3577D10D13D060B4D43F810804D0308C000FE11FC25090BE879B71011AD000115233B0000000613F85904000000020BE879BD000000060000000600000000101171000000000000000007000000040000000500000001000000050000000310D1010600000003000000050000000010D1010000000000000000050000000400000005"
theorem small_6216067_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216067_right_root small_6216067_right_fuel small_6216067_right_count small_6216067_right_encoded = true := by
  decide +kernel
theorem small_6216067_right_covered : CoveredBy scale carrier boxes small_6216067_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216067_right_root small_6216067_right_fuel small_6216067_right_count small_6216067_right_encoded small_6216067_right_checked

theorem cover_6216067 : CoveredBy scale carrier boxes root_6216067 := by
  apply coveredBy_split_literal root_6216067 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2341.root small_6216067_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2341.covered
  · exact small_6216067_right_covered
#print axioms cover_6216067

def root_6216062 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216062_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216062_right_fuel : Nat := 1
def small_6216062_right_count : Nat := 1
def small_6216062_right_encoded : String := "00000004"
theorem small_6216062_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216062_right_root small_6216062_right_fuel small_6216062_right_count small_6216062_right_encoded = true := by
  decide +kernel
theorem small_6216062_right_covered : CoveredBy scale carrier boxes small_6216062_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216062_right_root small_6216062_right_fuel small_6216062_right_count small_6216062_right_encoded small_6216062_right_checked

theorem cover_6216062 : CoveredBy scale carrier boxes root_6216062 := by
  apply coveredBy_split_literal root_6216062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6216067 small_6216062_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6216067
  · exact small_6216062_right_covered
#print axioms cover_6216062

def root_6216061 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216061_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216061_right_fuel : Nat := 21
def small_6216061_right_count : Nat := 127
def small_6216061_right_encoded : String := "135D4509000000040CFD9BF70F350D000CFD9C030F34D0F8045489FB0000000613867104000000020CFD9BFD0F350D060000000A0000000300000006000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A87000F8750F70C9A86F80000000600000006000000000F878CF7000000000C9A86F80000000A0F875103000000010C9A87060000000A00000006000000030F34D10600000003000000060000000213867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A86F80F878D030000000A000000010F875103000000010C9A87060000000A0F878CFD0000000300000006000000000F878CF7000000000C9A86F80000000A0F875103000000010C9A87060000000A0F878CFD00000003028000FE13D7ED09022A457B0000000613E1C504000000020DE7CA0000000006000000070000000400000005000000030F34D1060000000300000006000000000F34D100000000000CFD9C030F34D0F8045489FB0000000600000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80000000A0F875103000000010C9A87060000000A00000006000000030F34D10600000003000000060000000213867104000000020CFD9BFD0F350D060C9A86F80000000A0F875103000000010C9A87060000000700000005000000030F34D1060000000300000005"
theorem small_6216061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216061_right_root small_6216061_right_fuel small_6216061_right_count small_6216061_right_encoded = true := by
  decide +kernel
theorem small_6216061_right_covered : CoveredBy scale carrier boxes small_6216061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216061_right_root small_6216061_right_fuel small_6216061_right_count small_6216061_right_encoded small_6216061_right_checked

theorem cover_6216061 : CoveredBy scale carrier boxes root_6216061 := by
  apply coveredBy_split_literal root_6216061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6216062 small_6216061_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6216062
  · exact small_6216061_right_covered
#print axioms cover_6216061

def root_6216056 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216056_right_fuel : Nat := 1
def small_6216056_right_count : Nat := 1
def small_6216056_right_encoded : String := "00000003"
theorem small_6216056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216056_right_root small_6216056_right_fuel small_6216056_right_count small_6216056_right_encoded = true := by
  decide +kernel
theorem small_6216056_right_covered : CoveredBy scale carrier boxes small_6216056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216056_right_root small_6216056_right_fuel small_6216056_right_count small_6216056_right_encoded small_6216056_right_checked

theorem cover_6216056 : CoveredBy scale carrier boxes root_6216056 := by
  apply coveredBy_split_literal root_6216056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6216061 small_6216056_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6216061
  · exact small_6216056_right_covered
#print axioms cover_6216056

def root_6216055 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216055_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216055_right_fuel : Nat := 15
def small_6216055_right_count : Nat := 55
def small_6216055_right_encoded : String := "1207010600000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F800000006000000010F350CF800000001045489FB000000061386710400000002045489FD1386AD060C9A8700000000060F878CF7000000000C9A86F8000000060000000600000003138671060000000300000006000000000F34D100000000000CFD9C03000000060F350CF800000001045489FB000000061386710400000002045489FD1386AD060C9A86F80000000600000005000000030000000600000004135D4509000000040CFD9BF70F350D00000000060000000000000006"
theorem small_6216055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216055_right_root small_6216055_right_fuel small_6216055_right_count small_6216055_right_encoded = true := by
  decide +kernel
theorem small_6216055_right_covered : CoveredBy scale carrier boxes small_6216055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216055_right_root small_6216055_right_fuel small_6216055_right_count small_6216055_right_encoded small_6216055_right_checked

theorem cover_6216055 : CoveredBy scale carrier boxes root_6216055 := by
  apply coveredBy_split_literal root_6216055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6216056 small_6216055_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6216056
  · exact small_6216055_right_covered
#print axioms cover_6216055

def root_6216049 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216049_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216049_left_fuel : Nat := 1
def small_6216049_left_count : Nat := 1
def small_6216049_left_encoded : String := "00000002"
theorem small_6216049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216049_left_root small_6216049_left_fuel small_6216049_left_count small_6216049_left_encoded = true := by
  decide +kernel
theorem small_6216049_left_covered : CoveredBy scale carrier boxes small_6216049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216049_left_root small_6216049_left_fuel small_6216049_left_count small_6216049_left_encoded small_6216049_left_checked

theorem cover_6216049 : CoveredBy scale carrier boxes root_6216049 := by
  apply coveredBy_split_literal root_6216049 small_6216049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6216055 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6216049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6216055
#print axioms cover_6216049

def root_6215723 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215723_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215723_left_fuel : Nat := 20
def small_6215723_left_count : Nat := 149
def small_6215723_left_encoded : String := "12073D0408A912FD12073D06050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F80CFD9BFB000000060F34D1040000000200000006000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060C9A8700000000060F878CF700000000000000060000000300000006000000020F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A86F80F878D0300000006000000010F875103000000010C9A87060F8750FD0000000A0000000300000006000000000F878CF7000000000C9A86F80F878D030000000A000000010F875103000000010C9A87060F8750FD0000000A0000000300000006000000030F34D1060000000300000006000000000F34D100000000000CFD9C030F34D0F80CFD9BFB000000060F34D1040000000200000006000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060C9A86F800000006000000060000000300000006000000020F34D104000000020CFD9BFD0F350D060C9A86F80F878D030C9A87060000000A00000006000000010F875103000000010C9A87060F8750FD0000000A000000030F878CFD0000000300000006000000030F34D106000000030000000600000004135D4509000000040CFD9BF70F350D000CFD9C03000000060F350CF8000000010CFD9BFB000000060F34D1040000000200000006000000000F34D100000000000CFD9C03000000060F350CF8000000010CFD9BFB000000060F34D1040000000200000006000000031207010600000003050000FE135D81090CFD9BF70F350D00000000060000000000000006000000040000000600000002"
theorem small_6215723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215723_left_root small_6215723_left_fuel small_6215723_left_count small_6215723_left_encoded = true := by
  decide +kernel
theorem small_6215723_left_covered : CoveredBy scale carrier boxes small_6215723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215723_left_root small_6215723_left_fuel small_6215723_left_count small_6215723_left_encoded small_6215723_left_checked

theorem cover_6215723 : CoveredBy scale carrier boxes root_6215723 := by
  apply coveredBy_split_literal root_6215723 small_6215723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6216049 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6215723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6216049
#print axioms cover_6215723

def root_6215717 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215717_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215717_left_fuel : Nat := 1
def small_6215717_left_count : Nat := 1
def small_6215717_left_encoded : String := "00000001"
theorem small_6215717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215717_left_root small_6215717_left_fuel small_6215717_left_count small_6215717_left_encoded = true := by
  decide +kernel
theorem small_6215717_left_covered : CoveredBy scale carrier boxes small_6215717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215717_left_root small_6215717_left_fuel small_6215717_left_count small_6215717_left_encoded small_6215717_left_checked

theorem cover_6215717 : CoveredBy scale carrier boxes root_6215717 := by
  apply coveredBy_split_literal root_6215717 small_6215717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6215723 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6215717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6215723
#print axioms cover_6215717

def root_6215627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215627_left_fuel : Nat := 14
def small_6215627_left_count : Nat := 41
def small_6215627_left_encoded : String := "120700F808A912FB12073D0408A912FD12073D06050000FE0000000600000006000000030000000600000002120701040000000208A912FD12073D06050000FE135D81090CFD9BF70F350D0004548A03000000061386ACF800000001045489FB0000000613867104000000020000000A000000000F34D100000000000000000A00000004135D450900000004000000060000000312070106000000030000000600000001"
theorem small_6215627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215627_left_root small_6215627_left_fuel small_6215627_left_count small_6215627_left_encoded = true := by
  decide +kernel
theorem small_6215627_left_covered : CoveredBy scale carrier boxes small_6215627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215627_left_root small_6215627_left_fuel small_6215627_left_count small_6215627_left_encoded small_6215627_left_checked

theorem cover_6215627 : CoveredBy scale carrier boxes root_6215627 := by
  apply coveredBy_split_literal root_6215627 small_6215627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6215717 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6215627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6215717
#print axioms cover_6215627

def root_6215622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215622_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215622_right_fuel : Nat := 1
def small_6215622_right_count : Nat := 1
def small_6215622_right_encoded : String := "00000000"
theorem small_6215622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215622_right_root small_6215622_right_fuel small_6215622_right_count small_6215622_right_encoded = true := by
  decide +kernel
theorem small_6215622_right_covered : CoveredBy scale carrier boxes small_6215622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215622_right_root small_6215622_right_fuel small_6215622_right_count small_6215622_right_encoded small_6215622_right_checked

theorem cover_6215622 : CoveredBy scale carrier boxes root_6215622 := by
  apply coveredBy_split_literal root_6215622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6215627 small_6215622_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6215627
  · exact small_6215622_right_covered
#print axioms cover_6215622

def root_6215621 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215621_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215621_right_fuel : Nat := 27
def small_6215621_right_count : Nat := 319
def small_6215621_right_encoded : String := "120701000000000008A91303120700F808A912FB12073D0408A912FD12073D06050000FE135D8109045489F71386AD0004548A030000000600000008000000000000000800000004135D450900000004045489F70000000A13867100000000000000000A000000030000000600000002120701040000000208A912FD12073D06050000FE135D8109045489F70000000700000007000000040000000700000003000000060000000112073CF80000000108A912FB12073D0408A912FD12073D06050000FE135D8109045489F71386AD000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D104000000020CFD9BFD0F350D060C9A86F8000000080F875103000000010000000800000003000000080000000013867100000000000000000800000004135D450900000004045489F71386AD000CFD9C03000000060F350CF8000000010CFD9BFB000000060F34D10400000002000000060000000013867100000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000060F34D10400000002000000060000000312070106000000030000000600000002120701040000000208A912FD12073D06050000FE135D8109045489F71386AD000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0000000A0000000600000002138671040000000200000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80F878D030000000A000000010F875103000000010C9A87060F8750FD0000000A000000030F878CFD00000003078000FE0000000800000008000000030F34D10600000003000000080000000213867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A8706000000070F878CFD0000000300000007000000010F875103000000010C9A87060F8750FD078000FE128A7D09067ECE770000000A12EA590000000000000000070000000400000007000000030F878CFD00000003078000FE128A7D09067ECE7712EA9500022A457B00000008000000070000000012EA590000000000000000070000000400000005000000030F34D106000000030C9A86F80F878D030000000700000001000000050000000013867100000000000CFD9C030F34D0F8045489FB0000000800000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F8000000080F875103000000010C9A87060F8750FD078000FE0000000800000008000000030000000800000003000000080000000213867104000000020CFD9BFD0F350D060C9A86F80F878D0300000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090000000700000004000000050000000300000005000000030F34D106000000030000000500000004135D450900000004045489F71386AD000CFD9C030F34D0F800000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80000000A0F875103000000010C9A8706000000070000000500000003000000060000000213867104000000020CFD9BFD0F350D060000000700000003000000070000000013867100000000000CFD9C03000000070F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F8000000060000000500000003000000060000000200000007000000031207010600000003050000FE135D8109045489F71386AD000CFD9C03000000060000000800000000000000080000000400000005"
theorem small_6215621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215621_right_root small_6215621_right_fuel small_6215621_right_count small_6215621_right_encoded = true := by
  decide +kernel
theorem small_6215621_right_covered : CoveredBy scale carrier boxes small_6215621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215621_right_root small_6215621_right_fuel small_6215621_right_count small_6215621_right_encoded small_6215621_right_checked

theorem cover_6215621 : CoveredBy scale carrier boxes root_6215621 := by
  apply coveredBy_split_literal root_6215621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6215622 small_6215621_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6215622
  · exact small_6215621_right_covered
#print axioms cover_6215621

def root_6215615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215615_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215615_left_fuel : Nat := 1
def small_6215615_left_count : Nat := 1
def small_6215615_left_encoded : String := "00000004"
theorem small_6215615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215615_left_root small_6215615_left_fuel small_6215615_left_count small_6215615_left_encoded = true := by
  decide +kernel
theorem small_6215615_left_covered : CoveredBy scale carrier boxes small_6215615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215615_left_root small_6215615_left_fuel small_6215615_left_count small_6215615_left_encoded small_6215615_left_checked

theorem cover_6215615 : CoveredBy scale carrier boxes root_6215615 := by
  apply coveredBy_split_literal root_6215615 small_6215615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6215621 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6215615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6215621
#print axioms cover_6215615

def root_6203693 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6203693 : CoveredBy scale carrier boxes root_6203693 := by
  apply coveredBy_split_literal root_6203693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6203694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6215615 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6203694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6215615
#print axioms cover_6203693

def root_6203687 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203687_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203687_left_fuel : Nat := 1
def small_6203687_left_count : Nat := 1
def small_6203687_left_encoded : String := "00000003"
theorem small_6203687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6203687_left_root small_6203687_left_fuel small_6203687_left_count small_6203687_left_encoded = true := by
  decide +kernel
theorem small_6203687_left_covered : CoveredBy scale carrier boxes small_6203687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6203687_left_root small_6203687_left_fuel small_6203687_left_count small_6203687_left_encoded small_6203687_left_checked

theorem cover_6203687 : CoveredBy scale carrier boxes root_6203687 := by
  apply coveredBy_split_literal root_6203687 small_6203687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6203693 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6203687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6203693
#print axioms cover_6203687

def root_6201707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6201707 : CoveredBy scale carrier boxes root_6201707 := by
  apply coveredBy_split_literal root_6201707 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2335.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6203687 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2335.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6203687
#print axioms cover_6201707

def root_6201701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6201701_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6201701_left_fuel : Nat := 1
def small_6201701_left_count : Nat := 1
def small_6201701_left_encoded : String := "00000002"
theorem small_6201701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6201701_left_root small_6201701_left_fuel small_6201701_left_count small_6201701_left_encoded = true := by
  decide +kernel
theorem small_6201701_left_covered : CoveredBy scale carrier boxes small_6201701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6201701_left_root small_6201701_left_fuel small_6201701_left_count small_6201701_left_encoded small_6201701_left_checked

theorem cover_6201701 : CoveredBy scale carrier boxes root_6201701 := by
  apply coveredBy_split_literal root_6201701 small_6201701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6201707 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6201701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6201707
#print axioms cover_6201701

def root_6200511 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6200511 : CoveredBy scale carrier boxes root_6200511 := by
  apply coveredBy_split_literal root_6200511 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2334.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6201701 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2334.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6201701
#print axioms cover_6200511

def root_6200506 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6200506_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6200506_right_fuel : Nat := 1
def small_6200506_right_count : Nat := 1
def small_6200506_right_encoded : String := "00000001"
theorem small_6200506_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6200506_right_root small_6200506_right_fuel small_6200506_right_count small_6200506_right_encoded = true := by
  decide +kernel
theorem small_6200506_right_covered : CoveredBy scale carrier boxes small_6200506_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6200506_right_root small_6200506_right_fuel small_6200506_right_count small_6200506_right_encoded small_6200506_right_checked

theorem cover_6200506 : CoveredBy scale carrier boxes root_6200506 := by
  apply coveredBy_split_literal root_6200506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.root_6200511 small_6200506_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150.cover_6200511
  · exact small_6200506_right_covered
#print axioms cover_6200506

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0150

import TaoBundleAssembly0542
import TaoBundleAssembly0545
import TaoBundleChunkBatch0745
import TaoBundleChunkBatch0746
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546
def root_7904465 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7904465_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7904465_left_fuel : Nat := 21
def small_7904465_left_count : Nat := 377
def small_7904465_left_encoded : String := "0A0001001151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF00000006000000040000000600000003115224FD000000030A0001081151E8FF0000000600000004000000061151E8FB0A0001061151E8FD0A0001081151E8FF00000006000000040000000600000003115224FD000000030A0001081151E8FF000000060000000400000006000000021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF00000006000000040000000600000003115224FD000000030A0001081151E8FF0000000600000004000000061151E8FB0A0001061151E8FD0000000A00000003115224FD000000030A0001080000000A000000060000000200000001115225010A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF08A913011207010000000000000000060000000600000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FB12073CFA000000020000000900000008120700F8000000060000000112073D0008A912F912073CF80000000108A912FB0000000600000006120700F800000006000000010000000000000003115224FD000000030A0001081151E8FF08A91301120701000000000008A912F912073CF80000000108A912FB12073CFA000000020000000A0000000A120700F8000000060000000112073D0008A912F912073CF80000000108A912FB0000000600000006120700F800000006000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A912FF0000000612070108000000040000000600000003120701060000000300000006120700FA08A912FD0000000612070106000000030000000600000002120700F808A912FB12073CFA0000000208A912FD00000006120701060000000300000006120700FA00000006000000020000000112073D0008A912F912073CF80000000108A912FB00000006120700FA0000000600000002120700F80000000600000001000000001151E8FB0A0001061151E8FD0A0001081151E8FF0000000900000004115224FF0000000408A91301120701000000000008A912F900000009120700F8000000090000000112073D0008A912F912073CF80000000108A912FF0000000600000009120700F800000006000000010000000000000003115224FD000000030A0001081151E8FF08A913010000000712073D0008A912F900000009000000090000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FD00000009120701060000000308A912FF00000006000000070000000912073D0008A912F912073CF80000000108A912FD0000000600000009120700F8000000060000000100000000000000021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000A00000004115224FF0000000408A913010000000812073D0008A912FB000000090000000A0000000000000003115224FD000000030A0001081151E8FF08A91301120701000000000008A912FB0000000A120700FA0000000A0000000212073D0008A912FB12073CFA0000000208A912FD000000060000000A120700FA00000006000000020000000000000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FD0000000A12070106000000030000000A0000000A12073D0008A912FB12073CFA0000000208A912FD00000006120701060000000300000006120700FA0000000600000002000000001151E8FB0A0001061151E8FD0A0001081151E8FF00000005000000040000000900000003115224FD000000030A0001081151E8FF0000000A00000004115224FF0000000408A91301120701000000000008A912FD0000000512070106000000030000000512073D0008A912FD0000000912070106000000030000000600000000000000020000000100000000"
theorem small_7904465_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7904465_left_root small_7904465_left_fuel small_7904465_left_count small_7904465_left_encoded = true := by
  decide +kernel
theorem small_7904465_left_covered : CoveredBy scale carrier boxes small_7904465_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7904465_left_root small_7904465_left_fuel small_7904465_left_count small_7904465_left_encoded small_7904465_left_checked

theorem cover_7904465 : CoveredBy scale carrier boxes root_7904465 := by
  apply coveredBy_split_literal root_7904465 small_7904465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7905287 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_7904465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7905287
#print axioms cover_7904465

def root_7862137 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7862137 : CoveredBy scale carrier boxes root_7862137 := by
  apply coveredBy_split_literal root_7862137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.root_7862138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7904465 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0542.cover_7862138
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7904465
#print axioms cover_7862137

def root_7938421 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938421_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938421_left_fuel : Nat := 29
def small_7938421_left_count : Nat := 169
def small_7938421_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000205000106135D4507000000030500010800000005135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F8000000050F8750F90C9A86FA000000050F8750FB028001060000000513D7ED070780010800000005128A7CFF0000000400000005000000030000000200000001000000050000000500000005135D810705000108135D44FF04548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF900000001000000050F8750F9000000090000000100000005000000050000000500000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000050F8750FB07800106128A41070000000300000005128A7D070780010800000007128A7CFF00000004022A458113E1C500000000000DE7C9F800000008000000070000000600000003000000020F8750F90C9A86FA0F878CFB0000000207800106128A410700000003000000050000000A0F8750FB07800106128A4107000000030780010800000008128A7CFF00000004022A458113E1C500000000000000000A000000080000000A00000002000000010F34D0FA00000005000000020F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF900000001000000050F8750F90C9A86FA0F878CFB00000002000000050000000A0000000100000005000000050000000000000003120700FA0000000500000002120700F8000000050000000112073D00000000050000000000000004"
theorem small_7938421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938421_left_root small_7938421_left_fuel small_7938421_left_count small_7938421_left_encoded = true := by
  decide +kernel
theorem small_7938421_left_covered : CoveredBy scale carrier boxes small_7938421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938421_left_root small_7938421_left_fuel small_7938421_left_count small_7938421_left_encoded small_7938421_left_checked

theorem cover_7938421 : CoveredBy scale carrier boxes root_7938421 := by
  apply coveredBy_split_literal root_7938421 small_7938421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2979.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7938421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2979.covered
#print axioms cover_7938421

def root_7938415 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938415_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938415_left_fuel : Nat := 1
def small_7938415_left_count : Nat := 1
def small_7938415_left_encoded : String := "00000003"
theorem small_7938415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938415_left_root small_7938415_left_fuel small_7938415_left_count small_7938415_left_encoded = true := by
  decide +kernel
theorem small_7938415_left_covered : CoveredBy scale carrier boxes small_7938415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938415_left_root small_7938415_left_fuel small_7938415_left_count small_7938415_left_encoded small_7938415_left_checked

theorem cover_7938415 : CoveredBy scale carrier boxes root_7938415 := by
  apply coveredBy_split_literal root_7938415 small_7938415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7938421 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7938415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7938421
#print axioms cover_7938415

def root_7938414 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7938414 : CoveredBy scale carrier boxes root_7938414 := by
  apply coveredBy_split_literal root_7938414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7938415 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2980.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7938415
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2980.covered
#print axioms cover_7938414

def root_7938408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938408_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938408_left_fuel : Nat := 1
def small_7938408_left_count : Nat := 1
def small_7938408_left_encoded : String := "00000002"
theorem small_7938408_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938408_left_root small_7938408_left_fuel small_7938408_left_count small_7938408_left_encoded = true := by
  decide +kernel
theorem small_7938408_left_covered : CoveredBy scale carrier boxes small_7938408_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938408_left_root small_7938408_left_fuel small_7938408_left_count small_7938408_left_encoded small_7938408_left_checked

theorem cover_7938408 : CoveredBy scale carrier boxes root_7938408 := by
  apply coveredBy_split_literal root_7938408 small_7938408_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7938414 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7938408_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7938414
#print axioms cover_7938408

def root_7943987 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943987_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943987_right_fuel : Nat := 19
def small_7943987_right_count : Nat := 121
def small_7943987_right_encoded : String := "12073D0008A912F912073CF80000000108A912FF12073D08050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F8000000050F8750F90000000800000001000000040F34D10800000004000000090F34D0F800000005000000010F350D000000000500000000135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F8000000090F8750F90C9A8708000000080000000600000001000000040F34D10800000004000000090F34D0F800000009000000010F350D000CFD9BF900000009000000090000000000000003135D44FB05000106135D4507000000030CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFF00000008000000080F34D0F800000008000000010F350D000CFD9BF9000000080000000800000000135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFF00000008000000090F34D0F800000008000000010F350D000000000900000000000000030000000200000004120701080000000400000009120700F808A912FF12073D08050000FA00000005135D44FB0500010600000005000000090000000200000004000000090000000100000000"
theorem small_7943987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943987_right_root small_7943987_right_fuel small_7943987_right_count small_7943987_right_encoded = true := by
  decide +kernel
theorem small_7943987_right_covered : CoveredBy scale carrier boxes small_7943987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943987_right_root small_7943987_right_fuel small_7943987_right_count small_7943987_right_encoded small_7943987_right_checked

theorem cover_7943987 : CoveredBy scale carrier boxes root_7943987 := by
  apply coveredBy_split_literal root_7943987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2981.root small_7943987_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2981.covered
  · exact small_7943987_right_covered
#print axioms cover_7943987

def root_7943981 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943981_left_fuel : Nat := 1
def small_7943981_left_count : Nat := 1
def small_7943981_left_encoded : String := "00000004"
theorem small_7943981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943981_left_root small_7943981_left_fuel small_7943981_left_count small_7943981_left_encoded = true := by
  decide +kernel
theorem small_7943981_left_covered : CoveredBy scale carrier boxes small_7943981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943981_left_root small_7943981_left_fuel small_7943981_left_count small_7943981_left_encoded small_7943981_left_checked

theorem cover_7943981 : CoveredBy scale carrier boxes root_7943981 := by
  apply coveredBy_split_literal root_7943981 small_7943981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7943987 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7943981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7943987
#print axioms cover_7943981

def root_7943703 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943703_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943703_left_fuel : Nat := 21
def small_7943703_left_count : Nat := 129
def small_7943703_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF800000001050000FA135D80FB0000000205000106135D45070000000305000108135D44FF0000000800000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010C9A86F8000000080F8750F900000008000000010F34D0F800000005000000011386AD000CFD9BF9000000080000000500000000135D810705000108135D44FF04548A01000000070000000700000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010C9A86F80F878CF900000001000000080F8750F9078000FA128A7CFB0000000207800106000000080000000700000008000000010F34D0F800000008000000011386AD000CFD9BF9000000080F34D0F800000008000000010000000000000003135D44FB05000106135D45070000000300000008135D81070500010800000007135D80FF0000000404548A0113867100000000000CFD9BF90000000800000007000000080000000300000002120700F8050000FA00000005135D44FB00000008000000020000000112073D0008A912F912073CF800000001050000FA135D80FB000000020500010600000005135D81070500010800000005135D80FF000000040CFD9C010F34D1000000000000000008000000080000000300000008120700F800000005000000010000000000000004"
theorem small_7943703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943703_left_root small_7943703_left_fuel small_7943703_left_count small_7943703_left_encoded = true := by
  decide +kernel
theorem small_7943703_left_covered : CoveredBy scale carrier boxes small_7943703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943703_left_root small_7943703_left_fuel small_7943703_left_count small_7943703_left_encoded small_7943703_left_checked

theorem cover_7943703 : CoveredBy scale carrier boxes root_7943703 := by
  apply coveredBy_split_literal root_7943703 small_7943703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7943981 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7943703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7943981
#print axioms cover_7943703

def root_7943697 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943697_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943697_left_fuel : Nat := 1
def small_7943697_left_count : Nat := 1
def small_7943697_left_encoded : String := "00000003"
theorem small_7943697_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943697_left_root small_7943697_left_fuel small_7943697_left_count small_7943697_left_encoded = true := by
  decide +kernel
theorem small_7943697_left_covered : CoveredBy scale carrier boxes small_7943697_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943697_left_root small_7943697_left_fuel small_7943697_left_count small_7943697_left_encoded small_7943697_left_checked

theorem cover_7943697 : CoveredBy scale carrier boxes root_7943697 := by
  apply coveredBy_split_literal root_7943697 small_7943697_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7943703 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7943697_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7943703
#print axioms cover_7943697

def root_7943696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943696_right_fuel : Nat := 30
def small_7943696_right_count : Nat := 367
def small_7943696_right_encoded : String := "115225070A0001081151E8FF08A91301120701000000000008A912F912073CF80000000108A913070000000712073D06050000FA135D80FB000000020500010800000007135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C07000000070F350D060000000700000003000000071386AD000CFD9BF90F350CF800000001000000070000000700000000135D44FB0500010800000007135D80FF0000000404548A0100000007000000070000000200000003120700F808A913070000000712073D06050000FA135D80FB000000020500010800000007135D80FF000000040000000700000007000000030000000112073D0008A912F912073CF80000000108A913070000000712073D06050000FA135D80FB000000020500010800000007135D80FF000000040CFD9C0100000007000000060000000700000003000000070000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A91307120701060000000308A912FF12073D08050000FA0000000600000007000000041207010800000004050000FA000000060000000512073D0608A912FF12073D08050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9BFF000000060F34D10800000004000000050F350D060CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87060F875107000000030C9A87080F8750FF00000007000000040F878CFF00000004078000FA00000006000000090F878D070C9A87080000000700000006000000030F8750F90C9A87060F875107000000030C9A87080F8750FF00000007000000040F878CFF00000004078000FA00000006128A40FB00000005000000020F878D070000000A0000000300000001000000040F34D108000000040C9A86F80F878CF900000001000000090F8750F90C9A87060F87510700000003078000FA00000006000000090000000600000001000000030F34D0F80CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A87060F875107000000030C9A87080F8750FF0000000700000004000000090F878D070000000900000003000000040F34D108000000040000000900000003000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86F8000000060F8750F90000000A00000001000000040F34D1080000000400000006000000030F34D0F80CFD9C07000000060F350D0600000009000000030000000100000000135D44FB04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90000000500000001000000040F34D1080000000400000009000000030F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9C07000000090F350D060CFD9BFF000000090000000900000003000000090000000000000002000000041207010800000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D06045489FF00000009138671080000000400000009000000030F34D0F800000009000000011386AD000CFD9BF90F350CF800000001000000090000000900000000135D44FB000000090000000200000003120700F808A913070000000912073D0608A912FF00000009120701080000000400000009000000030000000112073D0008A912F912073CF80000000108A9130712070106000000030000000612073D0608A912FF12073D08050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF9000000060F34D0F8000000060000000100000006135D44FB00000009000000020000000412070108000000040000000900000003120700F800000009000000010000000000000003"
theorem small_7943696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943696_right_root small_7943696_right_fuel small_7943696_right_count small_7943696_right_encoded = true := by
  decide +kernel
theorem small_7943696_right_covered : CoveredBy scale carrier boxes small_7943696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943696_right_root small_7943696_right_fuel small_7943696_right_count small_7943696_right_encoded small_7943696_right_checked

theorem cover_7943696 : CoveredBy scale carrier boxes root_7943696 := by
  apply coveredBy_split_literal root_7943696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7943697 small_7943696_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7943697
  · exact small_7943696_right_covered
#print axioms cover_7943696

def root_7943691 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943691_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943691_right_fuel : Nat := 1
def small_7943691_right_count : Nat := 1
def small_7943691_right_encoded : String := "00000002"
theorem small_7943691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943691_right_root small_7943691_right_fuel small_7943691_right_count small_7943691_right_encoded = true := by
  decide +kernel
theorem small_7943691_right_covered : CoveredBy scale carrier boxes small_7943691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943691_right_root small_7943691_right_fuel small_7943691_right_count small_7943691_right_encoded small_7943691_right_checked

theorem cover_7943691 : CoveredBy scale carrier boxes root_7943691 := by
  apply coveredBy_split_literal root_7943691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7943696 small_7943691_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7943696
  · exact small_7943691_right_covered
#print axioms cover_7943691

def root_7938407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7938407 : CoveredBy scale carrier boxes root_7938407 := by
  apply coveredBy_split_literal root_7938407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7938408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7943691 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7938408
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7943691
#print axioms cover_7938407

def root_7938401 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938401_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938401_left_fuel : Nat := 1
def small_7938401_left_count : Nat := 1
def small_7938401_left_encoded : String := "00000001"
theorem small_7938401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938401_left_root small_7938401_left_fuel small_7938401_left_count small_7938401_left_encoded = true := by
  decide +kernel
theorem small_7938401_left_covered : CoveredBy scale carrier boxes small_7938401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938401_left_root small_7938401_left_fuel small_7938401_left_count small_7938401_left_encoded small_7938401_left_checked

theorem cover_7938401 : CoveredBy scale carrier boxes root_7938401 := by
  apply coveredBy_split_literal root_7938401 small_7938401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7938407 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7938401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7938407
#print axioms cover_7938401

def root_7948462 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7948462 : CoveredBy scale carrier boxes root_7948462 := by
  apply coveredBy_split_literal root_7948462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2982.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2983.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2982.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2983.covered
#print axioms cover_7948462

def root_7948456 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948456_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948456_left_fuel : Nat := 1
def small_7948456_left_count : Nat := 1
def small_7948456_left_encoded : String := "00000001"
theorem small_7948456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948456_left_root small_7948456_left_fuel small_7948456_left_count small_7948456_left_encoded = true := by
  decide +kernel
theorem small_7948456_left_covered : CoveredBy scale carrier boxes small_7948456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948456_left_root small_7948456_left_fuel small_7948456_left_count small_7948456_left_encoded small_7948456_left_checked

theorem cover_7948456 : CoveredBy scale carrier boxes root_7948456 := by
  apply coveredBy_split_literal root_7948456 small_7948456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7948462 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7948456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7948462
#print axioms cover_7948456

def root_7948455 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948455_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948455_right_fuel : Nat := 19
def small_7948455_right_count : Nat := 187
def small_7948455_right_encoded : String := "135D44F905000106135D45070000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F8750FB0000000900000002000000040F34D108000000040C9A86FA000000070F8750FB028000F813D7ECF900000001028001060000000713D7ED07022A458113E1C500000000000AD3577F0000000800000007000000070000000313D7B0F9028001060000000713D7ED07022A458100000008000000070000000300000001000000020F34D0FA0CFD9BFF0F350D08000000090000000400000007000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87080000000A0F878CFF00000004028000F80000000A0000000A0F8750FB0000000A00000002000000040F34D10800000004000000070F34D0FA000000070000000200000000135D810704548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A8708000000090F878CFF00000004028000F80000000A000000090F8750FB0000000A00000002000000040F34D108000000040C9A86FA0F878CFB00000002028000F813D7ECF900000001078001060000000800000008000000080F8750FB028000F813D7ECF90000000107800106128A410700000003022A458113E1C500000000000AD3577F00000008000000080000000A0000000A13D7B0F90000000500000001000000020F34D0FA0CFD9BFF0F350D080C9A8708000000090F878CFF0000000400000008000000040F34D1080000000400000007000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020000000A0000000A000000040F34D108000000040C9A86FA0F878CFB00000002028000F80000000A0000000A0000000A0F34D0FA0CFD9BFF0F350D080C9A87080000000A0F878CFF00000004028000F80000000A0000000A000000040F34D108000000040000000700000002000000000000000300000001"
theorem small_7948455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948455_right_root small_7948455_right_fuel small_7948455_right_count small_7948455_right_encoded = true := by
  decide +kernel
theorem small_7948455_right_covered : CoveredBy scale carrier boxes small_7948455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948455_right_root small_7948455_right_fuel small_7948455_right_count small_7948455_right_encoded small_7948455_right_checked

theorem cover_7948455 : CoveredBy scale carrier boxes root_7948455 := by
  apply coveredBy_split_literal root_7948455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7948456 small_7948455_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7948456
  · exact small_7948455_right_covered
#print axioms cover_7948455

def root_7948450 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948450_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948450_right_fuel : Nat := 1
def small_7948450_right_count : Nat := 1
def small_7948450_right_encoded : String := "00000004"
theorem small_7948450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948450_right_root small_7948450_right_fuel small_7948450_right_count small_7948450_right_encoded = true := by
  decide +kernel
theorem small_7948450_right_covered : CoveredBy scale carrier boxes small_7948450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948450_right_root small_7948450_right_fuel small_7948450_right_count small_7948450_right_encoded small_7948450_right_checked

theorem cover_7948450 : CoveredBy scale carrier boxes root_7948450 := by
  apply coveredBy_split_literal root_7948450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7948455 small_7948450_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7948455
  · exact small_7948450_right_covered
#print axioms cover_7948450

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546

import TaoBundleAssembly0273
import TaoBundleChunkBatch0359
import TaoBundleChunkBatch0360
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274
def root_3808791 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808791_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808791_left_fuel : Nat := 15
def small_3808791_left_count : Nat := 79
def small_3808791_left_encoded : String := "120700F808A91307120701060000000308A912FF12073CFE00000004050000F6135D810105000104135D45050000000204548A03000000051386ACF80000000104548A07000000051386AD060CFD9BFF000000050000000700000003135D810504548A03000000051386ACF80000000104548A0700000005000000080000000200000000135D45010000000005000104135D45050000000204548A03000000051386ACF80000000104548A070000000500000007135D810504548A03000000050000000800000002120700FE050000F6135D81010500010400000007135D810504548A0300000007000000080000000200000000135D450100000000000000070000000412073D0608A912FF12073CFE00000004050000F60000000800000008120700FE050000F60000000800000007000000040000000300000001"
theorem small_3808791_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808791_left_root small_3808791_left_fuel small_3808791_left_count small_3808791_left_encoded = true := by
  decide +kernel
theorem small_3808791_left_covered : CoveredBy scale carrier boxes small_3808791_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808791_left_root small_3808791_left_fuel small_3808791_left_count small_3808791_left_encoded small_3808791_left_checked

theorem cover_3808791 : CoveredBy scale carrier boxes root_3808791 := by
  apply coveredBy_split_literal root_3808791 small_3808791_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0273.root_3808951 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3808791_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0273.cover_3808951
#print axioms cover_3808791

def root_3808785 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808785_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808785_left_fuel : Nat := 1
def small_3808785_left_count : Nat := 1
def small_3808785_left_encoded : String := "00000004"
theorem small_3808785_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808785_left_root small_3808785_left_fuel small_3808785_left_count small_3808785_left_encoded = true := by
  decide +kernel
theorem small_3808785_left_covered : CoveredBy scale carrier boxes small_3808785_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808785_left_root small_3808785_left_fuel small_3808785_left_count small_3808785_left_encoded small_3808785_left_checked

theorem cover_3808785 : CoveredBy scale carrier boxes root_3808785 := by
  apply coveredBy_split_literal root_3808785 small_3808785_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808791 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3808785_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808791
#print axioms cover_3808785

def root_3808784 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808784_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808784_right_fuel : Nat := 25
def small_3808784_right_count : Nat := 293
def small_3808784_right_encoded : String := "1151E8FF08A91303120700F808A913071207010600000003050000F600000005135D4501000000000500010400000005135D8105050000FE00000005135D44FF000000080000000400000002000000080000000112073CF80000000108A913071207010600000003050000F6135D810105000104135D450500000002050000FE135D80FF000000040CFD9C030F34D0F800000005000000010F350CF80000000104548A0713867106000000030C9A86F8000000060F87510300000001000000061386AD060C9A86F80F878D03078000F6128A7D01000000090000000000000009000000010000000900000003135D44FF0CFD9C030F34D0F800000005000000010F350CF80000000104548A071386710600000003000000061386AD060C9A86F80F878D03078000F60000000A0000000600000001000000090000000300000004135D8105050000FE135D80FF000000040CFD9C030F34D0F804548A070000000500000008000000010F350CF80000000104548A0713867106000000030C9A86F80F878D03078000F600000005128A4101000000000780010400000005128A7D050000000500000002000000010F87510300000001078000F6128A7D010780010400000009128A7D05078000FE00000005000000090000000200000000000000091386AD060C9A86F80F878D03078000F60000000800000009000000010000000900000003135D44FF0CFD9C030F34D0F804548A070000000500000008000000010F350CF80000000104548A0713867106000000030C9A86F80F878D03078000F6128A7D010000000500000000128A41010000000000000006000000010F87510300000001078000F6128A7D01078001040000000A128A7D05028000FE0000000913D7B0FF022A45870000000600000009000000040000000200000000128A410100000000000000091386AD060C9A86F80F878D03078000F6128A7D010780010400000009000000080000000000000009000000010000000900000003000000040000000200000000135D45010000000005000104135D450500000002050000FE135D80FF000000040CFD9C030F34D0F800000006000000010F350CF80000000100000009135D44FF0CFD9C030F34D0F800000006000000010000000600000004135D8105050000FE135D80FF000000040CFD9C030F34D0F804548A0713867106000000030000000600000008000000010F350CF80000000104548A0713867106000000030C9A86F8000000060000000900000009135D44FF0CFD9C030F34D0F804548A070000000600000008000000010F350CF80000000104548A0713867106000000030000000600000009000000040000000212073D06050000F6135D810105000104135D450500000002050000FE135D80FF000000040CFD9C030F34D0F8000000080000000100000009135D44FF0CFD9C03000000090000000900000004135D8105050000FE135D80FF000000040CFD9C03000000080F350CF80000000100000009135D44FF0CFD9C03000000080F350CF80000000100000009000000040000000200000000135D4501000000000500010400000009135D8105050000FE0000000900000009000000020000000300000004"
theorem small_3808784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808784_right_root small_3808784_right_fuel small_3808784_right_count small_3808784_right_encoded = true := by
  decide +kernel
theorem small_3808784_right_covered : CoveredBy scale carrier boxes small_3808784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808784_right_root small_3808784_right_fuel small_3808784_right_count small_3808784_right_encoded small_3808784_right_checked

theorem cover_3808784 : CoveredBy scale carrier boxes root_3808784 := by
  apply coveredBy_split_literal root_3808784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808785 small_3808784_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808785
  · exact small_3808784_right_covered
#print axioms cover_3808784

def root_3808779 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808779_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808779_right_fuel : Nat := 1
def small_3808779_right_count : Nat := 1
def small_3808779_right_encoded : String := "00000003"
theorem small_3808779_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808779_right_root small_3808779_right_fuel small_3808779_right_count small_3808779_right_encoded = true := by
  decide +kernel
theorem small_3808779_right_covered : CoveredBy scale carrier boxes small_3808779_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808779_right_root small_3808779_right_fuel small_3808779_right_count small_3808779_right_encoded small_3808779_right_checked

theorem cover_3808779 : CoveredBy scale carrier boxes root_3808779 := by
  apply coveredBy_split_literal root_3808779 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808784 small_3808779_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808784
  · exact small_3808779_right_covered
#print axioms cover_3808779

def root_3808733 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808733_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808733_left_fuel : Nat := 9
def small_3808733_left_count : Nat := 21
def small_3808733_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91303120700F8000000080000000112073CF80000000108A912FF12073CFE00000004050000F60000000800000009000000051151E8FF0000000800000004"
theorem small_3808733_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808733_left_root small_3808733_left_fuel small_3808733_left_count small_3808733_left_encoded = true := by
  decide +kernel
theorem small_3808733_left_covered : CoveredBy scale carrier boxes small_3808733_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808733_left_root small_3808733_left_fuel small_3808733_left_count small_3808733_left_encoded small_3808733_left_checked

theorem cover_3808733 : CoveredBy scale carrier boxes root_3808733 := by
  apply coveredBy_split_literal root_3808733 small_3808733_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808779 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3808733_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808779
#print axioms cover_3808733

def root_3808727 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808727_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808727_left_fuel : Nat := 1
def small_3808727_left_count : Nat := 1
def small_3808727_left_encoded : String := "00000002"
theorem small_3808727_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808727_left_root small_3808727_left_fuel small_3808727_left_count small_3808727_left_encoded = true := by
  decide +kernel
theorem small_3808727_left_covered : CoveredBy scale carrier boxes small_3808727_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808727_left_root small_3808727_left_fuel small_3808727_left_count small_3808727_left_encoded small_3808727_left_checked

theorem cover_3808727 : CoveredBy scale carrier boxes root_3808727 := by
  apply coveredBy_split_literal root_3808727 small_3808727_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808733 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3808727_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808733
#print axioms cover_3808727

def root_3808726 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808726_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808726_right_fuel : Nat := 34
def small_3808726_right_count : Nat := 439
def small_3808726_right_encoded : String := "115225050A0001061151E907000000030A0000FE000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A91303120700F808A9130512070104000000020000000812073D0408A91307120701060000000308A912FF00000008120700FE000000080000000400000008000000020000000112073CF80000000108A91305120701040000000208A91307120701060000000308A912FF00000008120700FE000000080000000412073D06000000080000000312073D0408A91307120701060000000308A912FF12073CFE00000004050000F6135D81010CFD9C030F34D0F80CFD9C05000000080F350D0404548A071386710600000003000000080000000800000002000000010F350CF8000000010CFD9C050F34D1040000000204548A07138671060000000300000008000000080F350D0404548A0713867106000000030CFD9BFF0F350CFE000000040C9A86F80F878D0300000008000000010F875103000000010C9A87040F875105000000020C9A86FE0F878CFF00000004078000F600000008000000080F8750FF0000000900000004000000080F34D0FE0C9A86F8000000080F875103000000010C9A87040F87510500000002078000F6000000080000000800000008000000041386AD060CFD9BFF000000080F34D0FE0000000800000004000000030000000200000000135D4501000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030CFD9BFF0F350CFE000000040C9A86F800000008000000090F34D0FE00000008000000041386AD060CFD9BFF00000008000000080000000300000002120700FE050000F6135D81010CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D0404548A071386710600000003045489FF1386ACFE000000040C9A86F8000000080F875103000000010C9A87040F87510500000002078000F6000000080000000800000008138670FE0C9A86F8000000080F875103000000010C9A87040F87510500000002078000F6000000060000000800000008000000041386AD06045489FF0000000800000008000000030000000200000000135D4501000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C05000000080F350D0404548A071386710600000003045489FF000000080000000800000008000000020000000412073D0608A912FF12073CFE00000004050000F600000008135D45010000000000000008120700FE050000F600000008135D450100000000000000080000000400000003000000021151E8FF08A91303120700F8000000080000000112073CF80000000108A91305120701040000000208A913071207010600000003000000080000000812073D0408A913071207010600000003050000F6135D8101050000FE135D80FF000000040CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A86F80F878D0300000008000000010F875103000000010C9A87040F87510500000002078000F6128A7D01078000FE00000005128A40FF000000090000000400000000000000090F878D0500000008000000020000000800000002135D44FF0CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A86F80F878D030C9A87040F87510500000002078000F6128A7D010000000500000000128A4101000000000000000800000008000000010F875103000000010C9A87040F87510500000002078000F6128A7D01028000FE0000000913D7B0FF022A458713E1C506000000030B4D43F810804D03000000050000000100000009000000090000000400000000000000090F878D05078000F6128A7D01028000FE0000000813D7B0FF000000080000000400000000128A41010000000000000008000000021386AD060C9A86F8000000080F875103000000010C9A8704000000090000000800000003000000020000000400000000135D450100000000050000FE135D80FF000000040CFD9C03000000080F350CF8000000010CFD9C05000000090F350D0404548A0713867106000000030C9A86F80F878D030000000800000001000000090000000800000002135D44FF0CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A86F80F878D030C9A87040000000900000008000000010000000900000009000000020000000412073D06050000F600000008135D450100000000000000080000000300000002000000040000000300000002"
theorem small_3808726_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808726_right_root small_3808726_right_fuel small_3808726_right_count small_3808726_right_encoded = true := by
  decide +kernel
theorem small_3808726_right_covered : CoveredBy scale carrier boxes small_3808726_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808726_right_root small_3808726_right_fuel small_3808726_right_count small_3808726_right_encoded small_3808726_right_checked

theorem cover_3808726 : CoveredBy scale carrier boxes root_3808726 := by
  apply coveredBy_split_literal root_3808726 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808727 small_3808726_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808727
  · exact small_3808726_right_covered
#print axioms cover_3808726

def root_3808721 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808721_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808721_right_fuel : Nat := 1
def small_3808721_right_count : Nat := 1
def small_3808721_right_encoded : String := "00000001"
theorem small_3808721_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808721_right_root small_3808721_right_fuel small_3808721_right_count small_3808721_right_encoded = true := by
  decide +kernel
theorem small_3808721_right_covered : CoveredBy scale carrier boxes small_3808721_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808721_right_root small_3808721_right_fuel small_3808721_right_count small_3808721_right_encoded small_3808721_right_checked

theorem cover_3808721 : CoveredBy scale carrier boxes root_3808721 := by
  apply coveredBy_split_literal root_3808721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808726 small_3808721_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808726
  · exact small_3808721_right_covered
#print axioms cover_3808721

def root_3814468 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3814468 : CoveredBy scale carrier boxes root_3814468 := by
  apply coveredBy_split_literal root_3814468 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1433.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1434.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1433.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1434.covered
#print axioms cover_3814468

def root_3814462 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3814462_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3814462_left_fuel : Nat := 1
def small_3814462_left_count : Nat := 1
def small_3814462_left_encoded : String := "00000001"
theorem small_3814462_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3814462_left_root small_3814462_left_fuel small_3814462_left_count small_3814462_left_encoded = true := by
  decide +kernel
theorem small_3814462_left_covered : CoveredBy scale carrier boxes small_3814462_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3814462_left_root small_3814462_left_fuel small_3814462_left_count small_3814462_left_encoded small_3814462_left_checked

theorem cover_3814462 : CoveredBy scale carrier boxes root_3814462 := by
  apply coveredBy_split_literal root_3814462 small_3814462_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3814468 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3814462_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3814468
#print axioms cover_3814462

def root_3808720 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3808720 : CoveredBy scale carrier boxes root_3808720 := by
  apply coveredBy_split_literal root_3808720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3814462 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808721
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3814462
#print axioms cover_3808720

def root_3808714 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808714_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3808714_left_fuel : Nat := 1
def small_3808714_left_count : Nat := 1
def small_3808714_left_encoded : String := "00000000"
theorem small_3808714_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3808714_left_root small_3808714_left_fuel small_3808714_left_count small_3808714_left_encoded = true := by
  decide +kernel
theorem small_3808714_left_covered : CoveredBy scale carrier boxes small_3808714_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3808714_left_root small_3808714_left_fuel small_3808714_left_count small_3808714_left_encoded small_3808714_left_checked

theorem cover_3808714 : CoveredBy scale carrier boxes root_3808714 := by
  apply coveredBy_split_literal root_3808714 small_3808714_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808720 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3808714_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808720
#print axioms cover_3808714

def root_3779328 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3779328 : CoveredBy scale carrier boxes root_3779328 := by
  apply coveredBy_split_literal root_3779328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0273.root_3779329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3808714 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0273.cover_3779329
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3808714
#print axioms cover_3779328

def root_3817807 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3817807 : CoveredBy scale carrier boxes root_3817807 := by
  apply coveredBy_split_literal root_3817807 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1435.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1436.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1435.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1436.covered
#print axioms cover_3817807

def root_3817802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3817802_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3817802_right_fuel : Nat := 1
def small_3817802_right_count : Nat := 1
def small_3817802_right_encoded : String := "00000000"
theorem small_3817802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3817802_right_root small_3817802_right_fuel small_3817802_right_count small_3817802_right_encoded = true := by
  decide +kernel
theorem small_3817802_right_covered : CoveredBy scale carrier boxes small_3817802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3817802_right_root small_3817802_right_fuel small_3817802_right_count small_3817802_right_encoded small_3817802_right_checked

theorem cover_3817802 : CoveredBy scale carrier boxes root_3817802 := by
  apply coveredBy_split_literal root_3817802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3817807 small_3817802_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3817807
  · exact small_3817802_right_covered
#print axioms cover_3817802

def root_3817801 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3817801_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3817801_right_fuel : Nat := 29
def small_3817801_right_count : Nat := 297
def small_3817801_right_encoded : String := "1151E901000000000A0000F8115225030A0001041151E905000000020A0001061151E9070000000300000005115225070A0000FE1152250908A91303120700F808A91307120701060000000308A913090000000700000007000000070000000112073CF80000000108A91307120701060000000308A91309120700FE050000F6135D810105000104135D4505000000020CFD9C030000000700000005135D81050CFD9C030F34D0F804548A070000000A00000007000000010F350CF80000000104548A07138671060000000304548A09138670FE0C9A86F80F878D03078000F60000000A0000000A000000010F87510300000001000000050000000400000005000000050000000200000000135D4501000000000500010400000007135D81050CFD9C03000000070000000500000002000000040000000500000005000000041151E909000000040000000500000003115225050A0001061151E907000000030A0000FE1152250908A913030000000A12073CF80000000108A9130512070104000000020000000A00000005000000041151E9090000000400000005115225070A0000FE1152250908A91303120700F808A91305120701040000000208A913071207010600000003000000060000000612073D0408A91307120701060000000308A91309120700FE050000F60000000800000008000000040000000A0000000A000000020000000112073CF80000000108A9130512070104000000020000000A12073D0408A91307120701060000000308A91309120700FE050000F6135D81010CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9C05000000060F350D0404548A070000000A000000060000000200000000135D4501000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050000000A0F350D0404548A070000000A00000005000000020000000412073CFE000000040000000A12073D0608A91309120700FE050000F6135D81010CFD9C030000000A0000000A00000000135D4501000000000CFD9C03000000080000000500000004000000050000000300000002000000041151E9090000000408A91303120700F808A91305120701040000000200000006000000060000000112073CF80000000108A9130500000006000000050000000300000002000000011151E903000000010A0001041151E9050000000200000005115225050A0001061151E9070000000300000005115225070A0000FE1152250908A91305120701040000000208A91307120701060000000308A91309000000060000000612073D060000000A0000000312073D0408A91307120701060000000308A91309120700FE050000F6135D8101050000F8135D81030CFD9C05000000060F350D0404548A07138671060000000304548A09138670FE0C9A870400000006000000050000000400000005000000050000000200000001135D4503000000010CFD9C050F34D10400000002000000060000000500000000135D450100000000050000F8135D81030CFD9C050F34D104000000020000000A0000000500000001135D4503000000010000000500000004000000050000000500000002000000041151E90900000004000000050000000300000002"
theorem small_3817801_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3817801_right_root small_3817801_right_fuel small_3817801_right_count small_3817801_right_encoded = true := by
  decide +kernel
theorem small_3817801_right_covered : CoveredBy scale carrier boxes small_3817801_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3817801_right_root small_3817801_right_fuel small_3817801_right_count small_3817801_right_encoded small_3817801_right_checked

theorem cover_3817801 : CoveredBy scale carrier boxes root_3817801 := by
  apply coveredBy_split_literal root_3817801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3817802 small_3817801_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3817802
  · exact small_3817801_right_covered
#print axioms cover_3817801

def root_3779327 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3779327 : CoveredBy scale carrier boxes root_3779327 := by
  apply coveredBy_split_literal root_3779327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3779328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3817801 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3779328
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3817801
#print axioms cover_3779327

def root_3826469 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3826469 : CoveredBy scale carrier boxes root_3826469 := by
  apply coveredBy_split_literal root_3826469 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1438.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1439.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1438.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1439.covered
#print axioms cover_3826469

def root_3826463 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3826463_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3826463_left_fuel : Nat := 1
def small_3826463_left_count : Nat := 1
def small_3826463_left_encoded : String := "00000000"
theorem small_3826463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3826463_left_root small_3826463_left_fuel small_3826463_left_count small_3826463_left_encoded = true := by
  decide +kernel
theorem small_3826463_left_covered : CoveredBy scale carrier boxes small_3826463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3826463_left_root small_3826463_left_fuel small_3826463_left_count small_3826463_left_encoded small_3826463_left_checked

theorem cover_3826463 : CoveredBy scale carrier boxes root_3826463 := by
  apply coveredBy_split_literal root_3826463 small_3826463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3826469 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3826463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3826469
#print axioms cover_3826463

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274

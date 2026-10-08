import TaoBundleAssembly0502
import TaoBundleChunkBatch0692
import TaoBundleChunkBatch0693
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503
def root_7346785 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346785_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346785_right_fuel : Nat := 19
def small_7346785_right_count : Nat := 193
def small_7346785_right_encoded : String := "12073D0208A91305120700FA08A912FF12073D08050000FC135D81070CFD9BF70000000A0F34D100000000000000000800000003135D4507000000030CFD9BF70000000A000000080000000412070108000000040000000A0000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9BF70F350D000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70000000A000000000F878CF7000000000C9A86FA0000000A00000008000000040F34D108000000040C9A87000000000A0F878CF7000000000000000A0F350D020CFD9C050000000A0F350CFA000000020CFD9BFF0000000A0F34D108000000040000000A00000001000000000F34D100000000000CFD9C030F34D102000000010CFD9C05000000080F350CFA000000020CFD9BFF00000008000000080F350D02000000080000000100000003135D4507000000030CFD9BF70F350D000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF0F350D0800000008000000040F34D108000000040000000A0F350D020CFD9C05000000080000000A00000001000000000F34D100000000000CFD9C030000000800000008000000041207010800000004050000FC135D81070CFD9BF70F350D000CFD9C030F34D102000000010CFD9C050000000A0F350CFA00000002045489FF0000000A13867108000000040000000A0000000A000000000F34D100000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020F350CFA00000002045489FF1386AD080C9A86FA0F878D05000000080000000200000005000000041386710800000004000000050F350D020CFD9C05000000080F350CFA00000002000000090000000100000003135D4507000000030CFD9BF70F350D000CFD9C030F34D102000000010CFD9C050000000A0000000A0000000A000000000F34D100000000000CFD9C030F34D102000000010CFD9C0500000008000000050F350D02000000080000000100000001"
theorem small_7346785_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7346785_right_root small_7346785_right_fuel small_7346785_right_count small_7346785_right_encoded = true := by
  decide +kernel
theorem small_7346785_right_covered : CoveredBy scale carrier boxes small_7346785_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7346785_right_root small_7346785_right_fuel small_7346785_right_count small_7346785_right_encoded small_7346785_right_checked

theorem cover_7346785 : CoveredBy scale carrier boxes root_7346785 := by
  apply coveredBy_split_literal root_7346785 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0502.root_7346786 small_7346785_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0502.cover_7346786
  · exact small_7346785_right_covered
#print axioms cover_7346785

def root_7346780 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346780_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346780_right_fuel : Nat := 1
def small_7346780_right_count : Nat := 1
def small_7346780_right_encoded : String := "00000000"
theorem small_7346780_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7346780_right_root small_7346780_right_fuel small_7346780_right_count small_7346780_right_encoded = true := by
  decide +kernel
theorem small_7346780_right_covered : CoveredBy scale carrier boxes small_7346780_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7346780_right_root small_7346780_right_fuel small_7346780_right_count small_7346780_right_encoded small_7346780_right_checked

theorem cover_7346780 : CoveredBy scale carrier boxes root_7346780 := by
  apply coveredBy_split_literal root_7346780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7346785 small_7346780_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7346785
  · exact small_7346780_right_covered
#print axioms cover_7346780

def root_7346779 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346779_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346779_right_fuel : Nat := 21
def small_7346779_right_count : Nat := 107
def small_7346779_right_encoded : String := "120701000000000008A91303120701020000000108A91305120700FA08A912FF00000008000000080000000212073CFA0000000208A912FF12073D08050000FC135D8107045489F71386AD0004548A0313867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D080C9A86FA000000080F875105000000020C9A8708000000080000000800000004000000080000000800000000138671000000000004548A0313867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D08000000080000000400000008000000080000000300000008000000041207010800000004050000FC135D8107045489F71386AD0004548A0313867102000000010CFD9C0500000008000000051386AD020CFD9C050000000800000005000000010000000000000008000000030000000512073D0208A91305120700FA08A912FF00000008000000080000000212073CFA0000000208A912FF12073D08050000FC0000000800000008000000041207010800000004050000FC135D8107045489F71386AD000CFD9C0300000008000000080000000000000008000000030000000800000001"
theorem small_7346779_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7346779_right_root small_7346779_right_fuel small_7346779_right_count small_7346779_right_encoded = true := by
  decide +kernel
theorem small_7346779_right_covered : CoveredBy scale carrier boxes small_7346779_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7346779_right_root small_7346779_right_fuel small_7346779_right_count small_7346779_right_encoded small_7346779_right_checked

theorem cover_7346779 : CoveredBy scale carrier boxes root_7346779 := by
  apply coveredBy_split_literal root_7346779 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7346780 small_7346779_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7346780
  · exact small_7346779_right_covered
#print axioms cover_7346779

def root_7346773 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346773_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346773_left_fuel : Nat := 1
def small_7346773_left_count : Nat := 1
def small_7346773_left_encoded : String := "00000004"
theorem small_7346773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7346773_left_root small_7346773_left_fuel small_7346773_left_count small_7346773_left_encoded = true := by
  decide +kernel
theorem small_7346773_left_covered : CoveredBy scale carrier boxes small_7346773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7346773_left_root small_7346773_left_fuel small_7346773_left_count small_7346773_left_encoded small_7346773_left_checked

theorem cover_7346773 : CoveredBy scale carrier boxes root_7346773 := by
  apply coveredBy_split_literal root_7346773 small_7346773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7346779 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7346773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7346779
#print axioms cover_7346773

def root_7346461 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346461_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346461_left_fuel : Nat := 23
def small_7346461_left_count : Nat := 147
def small_7346461_left_encoded : String := "1151E8FF08A912F712073D0008A91303120701020000000108A91305120700FA000000080000000212073CFA00000002050000FC135D810705000108135D44FF0CFD9BF7000000090F34D100000000000000000900000004135D80FF000000040CFD9BF70F350D0004548A0313867102000000010CFD9C05000000090F350CFA000000020C9A870000000005000000091386AD020CFD9C050F34D0FA00000005000000020F350CFA000000020C9A87000F8750F700000005000000000F878CF7000000000C9A86FA0F878D0500000005000000020F87510500000002078000FC000000070000000700000001000000000F34D1000000000004548A031386710200000001000000090000000800000003135D45070000000305000108135D44FF0CFD9BF7000000080000000800000004135D80FF000000040CFD9BF70F350D0004548A0313867102000000010000000900000008000000000F34D100000000000000000812073D0208A913050000000812073CFA00000002050000FC135D810705000108135D44FF0CFD9BF7000000080000000800000004135D80FF000000040CFD9BF70F350D000CFD9C030F34D102000000010CFD9C05000000070F350CFA000000020C9A8700000000070000000800000008000000000F34D100000000000000000800000003000000080000000100000000120701000000000008A91303120701020000000108A913050000000812073CFA00000002050000FC135D81070500010800000008135D80FF00000004045489F7000000080000000800000003000000080000000800000004"
theorem small_7346461_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7346461_left_root small_7346461_left_fuel small_7346461_left_count small_7346461_left_encoded = true := by
  decide +kernel
theorem small_7346461_left_covered : CoveredBy scale carrier boxes small_7346461_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7346461_left_root small_7346461_left_fuel small_7346461_left_count small_7346461_left_encoded small_7346461_left_checked

theorem cover_7346461 : CoveredBy scale carrier boxes root_7346461 := by
  apply coveredBy_split_literal root_7346461 small_7346461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7346773 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7346461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7346773
#print axioms cover_7346461

def root_7346455 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346455_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7346455_left_fuel : Nat := 1
def small_7346455_left_count : Nat := 1
def small_7346455_left_encoded : String := "00000003"
theorem small_7346455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7346455_left_root small_7346455_left_fuel small_7346455_left_count small_7346455_left_encoded = true := by
  decide +kernel
theorem small_7346455_left_covered : CoveredBy scale carrier boxes small_7346455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7346455_left_root small_7346455_left_fuel small_7346455_left_count small_7346455_left_encoded small_7346455_left_checked

theorem cover_7346455 : CoveredBy scale carrier boxes root_7346455 := by
  apply coveredBy_split_literal root_7346455 small_7346455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7346461 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7346455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7346461
#print axioms cover_7346455

def root_7325473 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7325473 : CoveredBy scale carrier boxes root_7325473 := by
  apply coveredBy_split_literal root_7325473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0502.root_7325474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7346455 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0502.cover_7325474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7346455
#print axioms cover_7325473

def root_7325468 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7325468_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7325468_right_fuel : Nat := 1
def small_7325468_right_count : Nat := 1
def small_7325468_right_encoded : String := "00000002"
theorem small_7325468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7325468_right_root small_7325468_right_fuel small_7325468_right_count small_7325468_right_encoded = true := by
  decide +kernel
theorem small_7325468_right_covered : CoveredBy scale carrier boxes small_7325468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7325468_right_root small_7325468_right_fuel small_7325468_right_count small_7325468_right_encoded small_7325468_right_checked

theorem cover_7325468 : CoveredBy scale carrier boxes root_7325468 := by
  apply coveredBy_split_literal root_7325468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7325473 small_7325468_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7325473
  · exact small_7325468_right_covered
#print axioms cover_7325468

def root_7352486 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7352486 : CoveredBy scale carrier boxes root_7352486 := by
  apply coveredBy_split_literal root_7352486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2768.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2769.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2768.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2769.covered
#print axioms cover_7352486

def root_7352481 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352481_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352481_right_fuel : Nat := 1
def small_7352481_right_count : Nat := 1
def small_7352481_right_encoded : String := "00000002"
theorem small_7352481_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352481_right_root small_7352481_right_fuel small_7352481_right_count small_7352481_right_encoded = true := by
  decide +kernel
theorem small_7352481_right_covered : CoveredBy scale carrier boxes small_7352481_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352481_right_root small_7352481_right_fuel small_7352481_right_count small_7352481_right_encoded small_7352481_right_checked

theorem cover_7352481 : CoveredBy scale carrier boxes root_7352481 := by
  apply coveredBy_split_literal root_7352481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352486 small_7352481_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352486
  · exact small_7352481_right_covered
#print axioms cover_7352481

def root_7352480 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352480_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352480_right_fuel : Nat := 17
def small_7352480_right_count : Nat := 137
def small_7352480_right_encoded : String := "135D4505000000020CFD9BF70F350D0004548A0313867102000000010CFD9C070F34D0FC0CFD9BFF0000000800000009000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC0F878D0700000008000000030F875107000000030C9A87080F8750FF028000FA00000006000000060000000400000009000000000F878CF7000000000C9A86FC0F878D070C9A87080000000600000009000000030F875107000000030C9A87080F8750FF028000FA00000006000000060000000400000009000000040F34D10800000004000000091386AD020CFD9C07000000090F350CFC000000030CFD9BFF0F350D080C9A8700000000090F878CF7000000000C9A86FC000000060F875107000000030C9A87080000000600000009000000040000000900000001000000000F34D1000000000004548A0313867102000000010CFD9C070F34D0FC0CFD9BFF0F350D08000000060000000400000009000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070C9A8708000000060F878CFF0000000400000009000000030F875107000000030C9A87080F8750FF028000FA00000006000000050000000400000005000000040F34D10800000004000000051386AD020CFD9C070F34D0FC0CFD9BFF0000000600000006000000030F350CFC000000030CFD9BFF0F350D080C9A86FC000000060F875107000000030C9A87080000000600000005000000040F34D108000000040000000500000001"
theorem small_7352480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352480_right_root small_7352480_right_fuel small_7352480_right_count small_7352480_right_encoded = true := by
  decide +kernel
theorem small_7352480_right_covered : CoveredBy scale carrier boxes small_7352480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352480_right_root small_7352480_right_fuel small_7352480_right_count small_7352480_right_encoded small_7352480_right_checked

theorem cover_7352480 : CoveredBy scale carrier boxes root_7352480 := by
  apply coveredBy_split_literal root_7352480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352481 small_7352480_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352481
  · exact small_7352480_right_covered
#print axioms cover_7352480

def root_7352475 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352475_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352475_right_fuel : Nat := 1
def small_7352475_right_count : Nat := 1
def small_7352475_right_encoded : String := "00000004"
theorem small_7352475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352475_right_root small_7352475_right_fuel small_7352475_right_count small_7352475_right_encoded = true := by
  decide +kernel
theorem small_7352475_right_covered : CoveredBy scale carrier boxes small_7352475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352475_right_root small_7352475_right_fuel small_7352475_right_count small_7352475_right_encoded small_7352475_right_checked

theorem cover_7352475 : CoveredBy scale carrier boxes root_7352475 := by
  apply coveredBy_split_literal root_7352475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352480 small_7352475_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352480
  · exact small_7352475_right_covered
#print axioms cover_7352475

def root_7352474 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352474_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352474_right_fuel : Nat := 13
def small_7352474_right_count : Nat := 27
def small_7352474_right_encoded : String := "1207010800000004050000FA135D81050CFD9BF70F350D0004548A0313867102000000010CFD9C07000000090F350CFC00000003045489FF1386AD080C9A87000000000900000009000000040000000900000009000000000F34D10000000000000000090000000200000009"
theorem small_7352474_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352474_right_root small_7352474_right_fuel small_7352474_right_count small_7352474_right_encoded = true := by
  decide +kernel
theorem small_7352474_right_covered : CoveredBy scale carrier boxes small_7352474_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352474_right_root small_7352474_right_fuel small_7352474_right_count small_7352474_right_encoded small_7352474_right_checked

theorem cover_7352474 : CoveredBy scale carrier boxes root_7352474 := by
  apply coveredBy_split_literal root_7352474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352475 small_7352474_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352475
  · exact small_7352474_right_covered
#print axioms cover_7352474

def root_7352468 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352468_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352468_left_fuel : Nat := 1
def small_7352468_left_count : Nat := 1
def small_7352468_left_encoded : String := "00000003"
theorem small_7352468_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352468_left_root small_7352468_left_fuel small_7352468_left_count small_7352468_left_encoded = true := by
  decide +kernel
theorem small_7352468_left_covered : CoveredBy scale carrier boxes small_7352468_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352468_left_root small_7352468_left_fuel small_7352468_left_count small_7352468_left_encoded small_7352468_left_checked

theorem cover_7352468 : CoveredBy scale carrier boxes root_7352468 := by
  apply coveredBy_split_literal root_7352468 small_7352468_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352474 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7352468_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352474
#print axioms cover_7352468

def root_7352360 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352360_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352360_left_fuel : Nat := 13
def small_7352360_left_count : Nat := 51
def small_7352360_left_encoded : String := "120700FC08A912FF12073D08050000FA135D81050CFD9BF70F350D0004548A031386710200000001000000081386AD0204548A07000000061386ACFC000000030CFD9BFF000000060000000600000001000000000F34D1000000000004548A03138671020000000104548A07000000061386ACFC000000030CFD9BFF000000060000000A0000000600000002135D4505000000020CFD9BF70F350D0000000009000000000F34D1000000000004548A0300000009000000060000000412070108000000040000000900000003"
theorem small_7352360_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352360_left_root small_7352360_left_fuel small_7352360_left_count small_7352360_left_encoded = true := by
  decide +kernel
theorem small_7352360_left_covered : CoveredBy scale carrier boxes small_7352360_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352360_left_root small_7352360_left_fuel small_7352360_left_count small_7352360_left_encoded small_7352360_left_checked

theorem cover_7352360 : CoveredBy scale carrier boxes root_7352360 := by
  apply coveredBy_split_literal root_7352360 small_7352360_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352468 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7352360_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352468
#print axioms cover_7352360

def root_7352354 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352354_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352354_left_fuel : Nat := 1
def small_7352354_left_count : Nat := 1
def small_7352354_left_encoded : String := "00000001"
theorem small_7352354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352354_left_root small_7352354_left_fuel small_7352354_left_count small_7352354_left_encoded = true := by
  decide +kernel
theorem small_7352354_left_covered : CoveredBy scale carrier boxes small_7352354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352354_left_root small_7352354_left_fuel small_7352354_left_count small_7352354_left_encoded small_7352354_left_checked

theorem cover_7352354 : CoveredBy scale carrier boxes root_7352354 := by
  apply coveredBy_split_literal root_7352354 small_7352354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352360 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7352354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352360
#print axioms cover_7352354

def root_7352353 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352353_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352353_right_fuel : Nat := 21
def small_7352353_right_count : Nat := 157
def small_7352353_right_encoded : String := "12073D0208A91307120700FC08A912FF12073D08050000FA135D81050CFD9BF7000000060F34D100000000000000000600000002135D4505000000020CFD9BF7000000060F34D100000000000000000600000004000000090000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9BF70F350D000CFD9C030F34D102000000010CFD9C070F34D0FC0CFD9BFF0000000600000009000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC000000060F875107000000030C9A87080000000600000009000000000F878CF7000000000C9A86FC000000060F8751070000000300000006000000040F34D10800000004000000090F350D020CFD9C07000000090F350CFC000000030CFD9BFF0F350D0800000006000000040000000900000001000000000F34D100000000000CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D080C9A86FC000000060F8751070000000300000006000000040F34D10800000004000000090F350D020CFD9C07000000060F350CFC000000030CFD9BFF000000060F34D10800000004000000090000000100000002135D4505000000020CFD9BF70F350D000CFD9C030F34D102000000010CFD9C07000000090F350CFC00000003000000090F350D020000000900000001000000000F34D100000000000CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D080000000600000004000000090F350D020CFD9C07000000060F350CFC000000030000000900000001000000041207010800000004050000FA000000090000000900000001"
theorem small_7352353_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352353_right_root small_7352353_right_fuel small_7352353_right_count small_7352353_right_encoded = true := by
  decide +kernel
theorem small_7352353_right_covered : CoveredBy scale carrier boxes small_7352353_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352353_right_root small_7352353_right_fuel small_7352353_right_count small_7352353_right_encoded small_7352353_right_checked

theorem cover_7352353 : CoveredBy scale carrier boxes root_7352353 := by
  apply coveredBy_split_literal root_7352353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352354 small_7352353_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352354
  · exact small_7352353_right_covered
#print axioms cover_7352353

def root_7352348 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352348_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352348_right_fuel : Nat := 1
def small_7352348_right_count : Nat := 1
def small_7352348_right_encoded : String := "00000000"
theorem small_7352348_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352348_right_root small_7352348_right_fuel small_7352348_right_count small_7352348_right_encoded = true := by
  decide +kernel
theorem small_7352348_right_covered : CoveredBy scale carrier boxes small_7352348_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352348_right_root small_7352348_right_fuel small_7352348_right_count small_7352348_right_encoded small_7352348_right_checked

theorem cover_7352348 : CoveredBy scale carrier boxes root_7352348 := by
  apply coveredBy_split_literal root_7352348 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352353 small_7352348_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352353
  · exact small_7352348_right_covered
#print axioms cover_7352348

def root_7352347 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352347_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352347_right_fuel : Nat := 31
def small_7352347_right_count : Nat := 453
def small_7352347_right_encoded : String := "120701000000000008A91303120701020000000108A91307120700FC08A912FF12073D08050000FA135D8105045489F71386AD0004548A030000000A000000060000000013867100000000000000000A000000020000000A000000041207010800000004000000090000000312073CFC0000000308A912FF12073D08050000FA135D8105045489F71386AD0004548A0313867102000000010CFD9C070F34D0FC0CFD9BFF0F350D080000000A000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070C9A87080F8750FF00000006000000040F878CFF00000004078000FA128A7D05067ECE7712EA9500022A45830000000A00000006000000000000000A000000020000000A000000030F875107000000030C9A87080F8750FF078000FA128A7D05067ECE7712EA9500022A458313E1C502000000010000000A000000060000000012EA590000000000022A45830000000A0000000600000002128A410500000002067ECE77000000060000000A000000040F878CFF00000004078000FA128A7D05067ECE7712EA9500022A458313E1C502000000010B4D43FC0000000A0000000513E201020B4D43FC10804D070DE7CA0800000006000000050000000300000005000000010000000012EA590000000000000000050000000200000005000000040F34D108000000040C9A86FC0F878D07078000FA128A7D05067ECE7712EA9500022A458300000009000000090000000012EA59000000000000000005000000020000000500000003000000051386AD020CFD9C070F34D0FC0CFD9BFF000000060F34D1080000000400000009000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D0700000006000000030F875107000000030C9A87080F8750FF00000006000000040F878CFF00000004078000FA128A7D05000000080000000200000005000000040F34D108000000040C9A86FC0F878D07078000FA128A7D05067ECE770000000900000009000000020000000500000003000000050000000100000000138671000000000004548A0313867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070C9A87080000000A0F878CFF000000040000000A000000030F875107000000030C9A87080F8750FF078000FA128A7D05022A45770000000A0000000A00000002000000050000000400000005000000040F34D10800000004000000051386AD020CFD9C070F34D0FC0CFD9BFF000000060F34D10800000004078000FA0000000900000009000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D0700000006000000030F875107000000030C9A87080000000800000005000000040F34D10800000004000000050000000100000002135D450500000002045489F71386AD0004548A0313867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000A00000005000000040000000A1386AD020CFD9C070F34D0FC0CFD9BFF0000000600000006000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0000000600000005000000040F34D10800000004000000050000000100000000138671000000000004548A0313867102000000010CFD9C070000000A0F350CFC00000003000000051386AD020CFD9C070F34D0FC0000000A000000030F350CFC000000030000000500000001000000041207010800000004050000FA135D8105045489F71386AD0004548A03000000090000000900000000138671000000000000000005000000020000000512073D0208A91307120700FC08A912FF000000061207010800000004000000090000000312073CFC0000000308A912FF12073D08050000FA135D8105045489F71386AD000CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A86FC0F878D070000000900000003000000050F350D020CFD9C07000000060F350CFC000000030CFD9BFF0000000600000006000000010000000013867100000000000CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D080000000600000004000000080F350D02000000060000000100000002135D450500000002045489F71386AD000CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D0800000006000000040F34D10800000004000000050F350D020CFD9C070000000600000006000000010000000013867100000000000CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D080000000600000004000000050F350D020000000600000001000000041207010800000004050000FA135D8105045489F70000000900000009000000020000000900000001"
theorem small_7352347_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352347_right_root small_7352347_right_fuel small_7352347_right_count small_7352347_right_encoded = true := by
  decide +kernel
theorem small_7352347_right_covered : CoveredBy scale carrier boxes small_7352347_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352347_right_root small_7352347_right_fuel small_7352347_right_count small_7352347_right_encoded small_7352347_right_checked

theorem cover_7352347 : CoveredBy scale carrier boxes root_7352347 := by
  apply coveredBy_split_literal root_7352347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352348 small_7352347_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352348
  · exact small_7352347_right_covered
#print axioms cover_7352347

def root_7352341 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352341_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7352341_left_fuel : Nat := 1
def small_7352341_left_count : Nat := 1
def small_7352341_left_encoded : String := "00000004"
theorem small_7352341_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7352341_left_root small_7352341_left_fuel small_7352341_left_count small_7352341_left_encoded = true := by
  decide +kernel
theorem small_7352341_left_covered : CoveredBy scale carrier boxes small_7352341_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7352341_left_root small_7352341_left_fuel small_7352341_left_count small_7352341_left_encoded small_7352341_left_checked

theorem cover_7352341 : CoveredBy scale carrier boxes root_7352341 := by
  apply coveredBy_split_literal root_7352341 small_7352341_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352347 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7352341_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352347
#print axioms cover_7352341

def root_7351951 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7351951_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7351951_left_fuel : Nat := 23
def small_7351951_left_count : Nat := 185
def small_7351951_left_encoded : String := "1151E8FF08A912F712073D0008A91303120701020000000108A91307120700FC000000060000000312073CFC00000003050000FA135D810505000108135D44FF0CFD9BF7000000060F34D100000000000000000600000004135D80FF000000040CFD9BF70F350D0004548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030C9A8700000000050F878CF7000000000C9A86FC000000050F87510700000003078000FA00000005000000061386AD020CFD9C07000000060000000600000001000000000F34D1000000000004548A0313867102000000010CFD9C07000000060F350CFC000000030C9A86FC000000060F87510700000003078000FA00000006000000060000000600000002135D45050000000205000108135D44FF0000000600000004135D80FF000000040CFD9BF70F350D0004548A0313867102000000010CFD9C07000000060F350CFC000000030C9A87000F8750F700000006000000000000000600000006000000000F34D1000000000004548A031386710200000001000000060000000612073D0208A913070000000612073CFC00000003050000FA135D81050500010800000006135D80FF000000040CFD9BF7000000060F34D100000000000000000600000002135D450500000002000000060000000100000000120701000000000008A91303120701020000000108A913070000000612073CFC00000003050000FA135D81050500010800000006135D80FF00000004045489F71386AD0004548A0313867102000000010CFD9C07000000060F350CFC000000030C9A86FC000000060F87510700000003000000060000000600000000138671000000000004548A0313867102000000010CFD9C07000000060F350CFC000000030C9A86FC000000060F87510700000003000000060000000600000002135D4505000000020500010800000006135D80FF00000004045489F700000006138671000000000004548A030000000A000000060000000600000004"
theorem small_7351951_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7351951_left_root small_7351951_left_fuel small_7351951_left_count small_7351951_left_encoded = true := by
  decide +kernel
theorem small_7351951_left_covered : CoveredBy scale carrier boxes small_7351951_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7351951_left_root small_7351951_left_fuel small_7351951_left_count small_7351951_left_encoded small_7351951_left_checked

theorem cover_7351951 : CoveredBy scale carrier boxes root_7351951 := by
  apply coveredBy_split_literal root_7351951 small_7351951_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7352341 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7351951_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7352341
#print axioms cover_7351951

def root_7351946 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7351946_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7351946_right_fuel : Nat := 1
def small_7351946_right_count : Nat := 1
def small_7351946_right_encoded : String := "00000003"
theorem small_7351946_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7351946_right_root small_7351946_right_fuel small_7351946_right_count small_7351946_right_encoded = true := by
  decide +kernel
theorem small_7351946_right_covered : CoveredBy scale carrier boxes small_7351946_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7351946_right_root small_7351946_right_fuel small_7351946_right_count small_7351946_right_encoded small_7351946_right_checked

theorem cover_7351946 : CoveredBy scale carrier boxes root_7351946 := by
  apply coveredBy_split_literal root_7351946 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7351951 small_7351946_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7351951
  · exact small_7351946_right_covered
#print axioms cover_7351946

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503

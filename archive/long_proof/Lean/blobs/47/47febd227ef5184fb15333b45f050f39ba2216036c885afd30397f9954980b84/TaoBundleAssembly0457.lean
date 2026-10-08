import TaoBundleAssembly0453
import TaoBundleAssembly0454
import TaoBundleAssembly0455
import TaoBundleAssembly0456
import TaoBundleChunkBatch0621
import TaoBundleChunkBatch0623
import TaoBundleChunkBatch0624
import TaoBundleChunkBatch0625
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457
def root_6612923 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612923_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612923_left_fuel : Nat := 25
def small_6612923_left_count : Nat := 273
def small_6612923_left_encoded : String := "12073D0208A912FF12073D08050000FA135D8105050000FC135D81070CFD9BF70F350D000CFD9BF90F350D020CFD9BFF0F350D080C9A87000F8750F70C9A8702000000060F878CF9000000010C9A87080000000A00000006000000000F878CF7000000000000000A000000040F34D1080000000400000006000000010F34D102000000010CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF078000FA128A7D05078000FC128A7D070AD357790000000610D10102000000010B4D44000000000500000009000000030000000600000002128A410500000002078000FC0000000A128A4107000000030AD357790000000610D101020000000100000006000000040F878CFF00000004078000FA00000006128A410500000002078000FC128A7D07000000080000000300000006000000000F878CF7000000000C9A87080F8750FF078000FA128A7D05078000FC0000000A128A41070000000300000006000000020000000A000000040F878CFF00000004078000FA128A7D0500000006000000020000000A000000040F34D108000000040C9A8700000000060F878CF70000000000000006000000000F34D100000000000CFD9BF90F350D020000000A000000010F34D102000000010CFD9BFF0F350D080C9A87080000000A0F878CFF000000040000000A000000040000000A00000003135D4507000000030CFD9BF70F350D000CFD9BF90F350D0200000006000000010F34D102000000010CFD9BFF0F350D080C9A8700000000060F878CF700000000000000060000000400000006000000000F34D100000000000CFD9BF9000000060F34D102000000010CFD9BFF0F350D080C9A87080F8750FF000000060000000400000006000000040000000600000002135D450500000002050000FC135D81070CFD9BF70F350D000CFD9BF90F350D020000000A000000010F34D102000000010CFD9BFF0F350D080C9A87000F8750F70C9A87080000000A0F878CFF000000040000000A000000000000000A000000040F34D108000000040C9A87000F8750F70000000A000000000000000A000000000F34D100000000000000000A00000003135D4507000000030CFD9BF70F350D000CFD9BF90F350D020CFD9BFF0000000600000006000000010F34D102000000010CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF028000FA00000006000000060000000400000006000000000F878CF7000000000000000A000000040F34D1080000000400000005000000000F34D100000000000CFD9BF90000000A0F34D1020000000100000005000000041207010800000004050000FA135D8105050000FC135D81070CFD9BF70F350D000CFD9BF9000000060F34D10200000001000000060000000000000006000000030000000600000002135D450500000002050000FC135D81070CFD9BF70F350D000CFD9BF9000000060F34D102000000010000000A000000000F34D1000000000000000007000000030000000600000001"
theorem small_6612923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6612923_left_root small_6612923_left_fuel small_6612923_left_count small_6612923_left_encoded = true := by
  decide +kernel
theorem small_6612923_left_covered : CoveredBy scale carrier boxes small_6612923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6612923_left_root small_6612923_left_fuel small_6612923_left_count small_6612923_left_encoded small_6612923_left_checked

theorem cover_6612923 : CoveredBy scale carrier boxes root_6612923 := by
  apply coveredBy_split_literal root_6612923 small_6612923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0456.root_6613513 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6612923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0456.cover_6613513
#print axioms cover_6612923

def root_6612918 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612918_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612918_right_fuel : Nat := 1
def small_6612918_right_count : Nat := 1
def small_6612918_right_encoded : String := "00000000"
theorem small_6612918_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6612918_right_root small_6612918_right_fuel small_6612918_right_count small_6612918_right_encoded = true := by
  decide +kernel
theorem small_6612918_right_covered : CoveredBy scale carrier boxes small_6612918_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6612918_right_root small_6612918_right_fuel small_6612918_right_count small_6612918_right_encoded small_6612918_right_checked

theorem cover_6612918 : CoveredBy scale carrier boxes root_6612918 := by
  apply coveredBy_split_literal root_6612918 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6612923 small_6612918_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6612923
  · exact small_6612918_right_covered
#print axioms cover_6612918

def root_6612917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612917_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612917_right_fuel : Nat := 23
def small_6612917_right_count : Nat := 119
def small_6612917_right_encoded : String := "120701000000000008A912F912073D0208A912FF12073D08050000FA135D8105050000FC135D8107045489F71386AD000CFD9BF9000000070F34D102000000010000000A000000000000000A00000003135D450700000003045489F71386AD000CFD9BF9000000060F34D102000000010CFD9BFF00000006000000060000000013867100000000000CFD9BF9000000060F34D102000000010000000500000002135D450500000002050000FC0000000A0000000A000000041207010800000004050000FA000000060000000500000001120701020000000108A912FF12073D08050000FA135D8105050000FC135D8107045489F71386AD00045489F91386AD020CFD9BFF0F350D080C9A87080000000A0F878CFF000000040000000A000000040000000A0000000113867102000000010CFD9BFF0F350D080C9A87080F8750FF078000FA128A7D05078000FC128A7D07067ECE770000000A0000000A000000030000000500000002000000050000000400000005000000040F34D1080000000400000005000000001386710000000000045489F91386AD020CFD9BFF0F350D080000000A000000040000000A000000011386710200000001000000050000000300000005000000020000000500000004120701080000000400000005"
theorem small_6612917_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6612917_right_root small_6612917_right_fuel small_6612917_right_count small_6612917_right_encoded = true := by
  decide +kernel
theorem small_6612917_right_covered : CoveredBy scale carrier boxes small_6612917_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6612917_right_root small_6612917_right_fuel small_6612917_right_count small_6612917_right_encoded small_6612917_right_checked

theorem cover_6612917 : CoveredBy scale carrier boxes root_6612917 := by
  apply coveredBy_split_literal root_6612917 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6612918 small_6612917_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6612918
  · exact small_6612917_right_covered
#print axioms cover_6612917

def root_6612911 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612911_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6612911_left_fuel : Nat := 1
def small_6612911_left_count : Nat := 1
def small_6612911_left_encoded : String := "00000004"
theorem small_6612911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6612911_left_root small_6612911_left_fuel small_6612911_left_count small_6612911_left_encoded = true := by
  decide +kernel
theorem small_6612911_left_covered : CoveredBy scale carrier boxes small_6612911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6612911_left_root small_6612911_left_fuel small_6612911_left_count small_6612911_left_encoded small_6612911_left_checked

theorem cover_6612911 : CoveredBy scale carrier boxes root_6612911 := by
  apply coveredBy_split_literal root_6612911 small_6612911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6612917 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6612911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6612917
#print axioms cover_6612911

def root_6610801 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6610801 : CoveredBy scale carrier boxes root_6610801 := by
  apply coveredBy_split_literal root_6610801 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2491.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6612911 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2491.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6612911
#print axioms cover_6610801

def root_6610795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6610795_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6610795_left_fuel : Nat := 1
def small_6610795_left_count : Nat := 1
def small_6610795_left_encoded : String := "00000003"
theorem small_6610795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6610795_left_root small_6610795_left_fuel small_6610795_left_count small_6610795_left_encoded = true := by
  decide +kernel
theorem small_6610795_left_covered : CoveredBy scale carrier boxes small_6610795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6610795_left_root small_6610795_left_fuel small_6610795_left_count small_6610795_left_encoded small_6610795_left_checked

theorem cover_6610795 : CoveredBy scale carrier boxes root_6610795 := by
  apply coveredBy_split_literal root_6610795 small_6610795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6610801 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6610795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6610801
#print axioms cover_6610795

def root_6605563 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6605563 : CoveredBy scale carrier boxes root_6605563 := by
  apply coveredBy_split_literal root_6605563 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0455.root_6605564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6610795 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0455.cover_6605564
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6610795
#print axioms cover_6605563

def root_6605557 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6605557_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6605557_left_fuel : Nat := 1
def small_6605557_left_count : Nat := 1
def small_6605557_left_encoded : String := "00000002"
theorem small_6605557_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6605557_left_root small_6605557_left_fuel small_6605557_left_count small_6605557_left_encoded = true := by
  decide +kernel
theorem small_6605557_left_covered : CoveredBy scale carrier boxes small_6605557_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6605557_left_root small_6605557_left_fuel small_6605557_left_count small_6605557_left_encoded small_6605557_left_checked

theorem cover_6605557 : CoveredBy scale carrier boxes root_6605557 := by
  apply coveredBy_split_literal root_6605557 small_6605557_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6605563 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6605557_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6605563
#print axioms cover_6605557

def root_6586689 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6586689 : CoveredBy scale carrier boxes root_6586689 := by
  apply coveredBy_split_literal root_6586689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6586690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6605557 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6586690
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6605557
#print axioms cover_6586689

def root_6586683 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586683_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586683_left_fuel : Nat := 1
def small_6586683_left_count : Nat := 1
def small_6586683_left_encoded : String := "00000001"
theorem small_6586683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6586683_left_root small_6586683_left_fuel small_6586683_left_count small_6586683_left_encoded = true := by
  decide +kernel
theorem small_6586683_left_covered : CoveredBy scale carrier boxes small_6586683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6586683_left_root small_6586683_left_fuel small_6586683_left_count small_6586683_left_encoded small_6586683_left_checked

theorem cover_6586683 : CoveredBy scale carrier boxes root_6586683 := by
  apply coveredBy_split_literal root_6586683 small_6586683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6586689 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6586683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6586689
#print axioms cover_6586683

def root_6585183 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6585183 : CoveredBy scale carrier boxes root_6585183 := by
  apply coveredBy_split_literal root_6585183 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2481.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6586683 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2481.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6586683
#print axioms cover_6585183

def root_6585177 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6585177_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6585177_left_fuel : Nat := 1
def small_6585177_left_count : Nat := 1
def small_6585177_left_encoded : String := "00000000"
theorem small_6585177_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6585177_left_root small_6585177_left_fuel small_6585177_left_count small_6585177_left_encoded = true := by
  decide +kernel
theorem small_6585177_left_covered : CoveredBy scale carrier boxes small_6585177_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6585177_left_root small_6585177_left_fuel small_6585177_left_count small_6585177_left_encoded small_6585177_left_checked

theorem cover_6585177 : CoveredBy scale carrier boxes root_6585177 := by
  apply coveredBy_split_literal root_6585177 small_6585177_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6585183 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6585177_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6585183
#print axioms cover_6585177

def root_6575981 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6575981 : CoveredBy scale carrier boxes root_6575981 := by
  apply coveredBy_split_literal root_6575981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6575982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6585177 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6575982
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6585177
#print axioms cover_6575981

def root_6626481 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626481_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626481_left_fuel : Nat := 21
def small_6626481_left_count : Nat := 147
def small_6626481_left_encoded : String := "120701080000000405000100135D44F7045489F91386AD02000000050000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A091386710800000004000000081386AD080C9A86FA000000050F87510500000002000000080000000400000000135D80F700000000045489F91386AD020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A091386710800000004000000061386AD080C9A86FA000000060F875105000000020C9A86FC0000000700000006000000040000000113867102000000010CFD9C050F34D0FA0CFD9C07000000050F350CFC0000000304548A090000000500000006000000020F350CFA000000020CFD9C070F34D0FC04548A09000000051386AD080C9A86FA000000050F875105000000020000000800000004000000030F350CFC0000000304548A0913867108000000040C9A86FA0F878D050C9A86FC0F878D07000000050000000300000006000000020F875105000000020C9A86FC000000080F87510700000003000000061386AD080C9A86FA0F878D050C9A86FC0F878D070780010000000005000000070000000300000006000000020F875105000000020C9A86FC0F878D070780010000000008128A7CF700000000022A45790000000700000009000000030F875107000000030780010000000006128A7CF700000000022A45790000000613E1C50200000001067ECE89000000060000000600000004"
theorem small_6626481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626481_left_root small_6626481_left_fuel small_6626481_left_count small_6626481_left_encoded = true := by
  decide +kernel
theorem small_6626481_left_covered : CoveredBy scale carrier boxes small_6626481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626481_left_root small_6626481_left_fuel small_6626481_left_count small_6626481_left_encoded small_6626481_left_checked

theorem cover_6626481 : CoveredBy scale carrier boxes root_6626481 := by
  apply coveredBy_split_literal root_6626481 small_6626481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2495.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6626481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2495.covered
#print axioms cover_6626481

def root_6626475 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626475_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626475_left_fuel : Nat := 1
def small_6626475_left_count : Nat := 1
def small_6626475_left_encoded : String := "00000003"
theorem small_6626475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626475_left_root small_6626475_left_fuel small_6626475_left_count small_6626475_left_encoded = true := by
  decide +kernel
theorem small_6626475_left_covered : CoveredBy scale carrier boxes small_6626475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626475_left_root small_6626475_left_fuel small_6626475_left_count small_6626475_left_encoded small_6626475_left_checked

theorem cover_6626475 : CoveredBy scale carrier boxes root_6626475 := by
  apply coveredBy_split_literal root_6626475 small_6626475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626481 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6626475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626481
#print axioms cover_6626475

def root_6626459 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626459_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626459_left_fuel : Nat := 4
def small_6626459_left_count : Nat := 7
def small_6626459_left_encoded : String := "120700FC08A913090000000512073D08000000050000000400000003"
theorem small_6626459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626459_left_root small_6626459_left_fuel small_6626459_left_count small_6626459_left_encoded = true := by
  decide +kernel
theorem small_6626459_left_covered : CoveredBy scale carrier boxes small_6626459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626459_left_root small_6626459_left_fuel small_6626459_left_count small_6626459_left_encoded small_6626459_left_checked

theorem cover_6626459 : CoveredBy scale carrier boxes root_6626459 := by
  apply coveredBy_split_literal root_6626459 small_6626459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626475 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6626459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626475
#print axioms cover_6626459

def root_6626453 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626453_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626453_left_fuel : Nat := 1
def small_6626453_left_count : Nat := 1
def small_6626453_left_encoded : String := "00000002"
theorem small_6626453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626453_left_root small_6626453_left_fuel small_6626453_left_count small_6626453_left_encoded = true := by
  decide +kernel
theorem small_6626453_left_covered : CoveredBy scale carrier boxes small_6626453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626453_left_root small_6626453_left_fuel small_6626453_left_count small_6626453_left_encoded small_6626453_left_checked

theorem cover_6626453 : CoveredBy scale carrier boxes root_6626453 := by
  apply coveredBy_split_literal root_6626453 small_6626453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626459 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6626453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626459
#print axioms cover_6626453

def root_6626423 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626423_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626423_left_fuel : Nat := 6
def small_6626423_left_count : Nat := 13
def small_6626423_left_encoded : String := "120700FA08A91307120700FC000000050000000312073CFC0000000308A913090000000512073D08000000050000000400000002"
theorem small_6626423_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626423_left_root small_6626423_left_fuel small_6626423_left_count small_6626423_left_encoded = true := by
  decide +kernel
theorem small_6626423_left_covered : CoveredBy scale carrier boxes small_6626423_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626423_left_root small_6626423_left_fuel small_6626423_left_count small_6626423_left_encoded small_6626423_left_checked

theorem cover_6626423 : CoveredBy scale carrier boxes root_6626423 := by
  apply coveredBy_split_literal root_6626423 small_6626423_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626453 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6626423_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626453
#print axioms cover_6626423

def root_6626417 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626417_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626417_left_fuel : Nat := 1
def small_6626417_left_count : Nat := 1
def small_6626417_left_encoded : String := "00000001"
theorem small_6626417_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626417_left_root small_6626417_left_fuel small_6626417_left_count small_6626417_left_encoded = true := by
  decide +kernel
theorem small_6626417_left_covered : CoveredBy scale carrier boxes small_6626417_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626417_left_root small_6626417_left_fuel small_6626417_left_count small_6626417_left_encoded small_6626417_left_checked

theorem cover_6626417 : CoveredBy scale carrier boxes root_6626417 := by
  apply coveredBy_split_literal root_6626417 small_6626417_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626423 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6626417_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626423
#print axioms cover_6626417

def root_6626211 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626211_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626211_left_fuel : Nat := 20
def small_6626211_left_count : Nat := 93
def small_6626211_left_encoded : String := "12073D0208A91305120700FA08A91307120700FC08A91309120701080000000400000006000000050000000312073CFC0000000308A91309120701080000000400000006000000050000000212073CFA0000000208A91307120700FC08A9130912070108000000040500010000000005135D80F70000000000000005000000050000000312073CFC0000000308A9130912070108000000040500010000000005135D80F7000000000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030000000712073D080500010000000005135D80F7000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D10800000004000000070F350D080C9A86FA000000050F8751050000000200000007000000040000000400000001"
theorem small_6626211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626211_left_root small_6626211_left_fuel small_6626211_left_count small_6626211_left_encoded = true := by
  decide +kernel
theorem small_6626211_left_covered : CoveredBy scale carrier boxes small_6626211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626211_left_root small_6626211_left_fuel small_6626211_left_count small_6626211_left_encoded small_6626211_left_checked

theorem cover_6626211 : CoveredBy scale carrier boxes root_6626211 := by
  apply coveredBy_split_literal root_6626211 small_6626211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626417 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6626211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626417
#print axioms cover_6626211

def root_6626206 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626206_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6626206_right_fuel : Nat := 1
def small_6626206_right_count : Nat := 1
def small_6626206_right_encoded : String := "00000004"
theorem small_6626206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6626206_right_root small_6626206_right_fuel small_6626206_right_count small_6626206_right_encoded = true := by
  decide +kernel
theorem small_6626206_right_covered : CoveredBy scale carrier boxes small_6626206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6626206_right_root small_6626206_right_fuel small_6626206_right_count small_6626206_right_encoded small_6626206_right_checked

theorem cover_6626206 : CoveredBy scale carrier boxes root_6626206 := by
  apply coveredBy_split_literal root_6626206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626211 small_6626206_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626211
  · exact small_6626206_right_covered
#print axioms cover_6626206

def root_6625840 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625840_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625840_left_fuel : Nat := 29
def small_6625840_left_count : Nat := 169
def small_6625840_left_encoded : String := "1151E9090000000408A912F912073D020000000500000001120701020000000108A91305120700FA000000050000000212073CFA0000000208A91307120700FC000000050000000312073CFC0000000305000100135D44F70500010800000005135D8109045489F90000000513867102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA000000050F875105000000020C9A86FC000000050F87510700000003028001000000000513D7ECF7000000000780010800000005128A7D0900000005000000040000000400000000135D80F70000000005000108135D450900000004045489F90000000513867102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0F878D0500000005000000020F8751050000000200000006135D8109045489F91386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0F878D0500000005000000020F875105000000020C9A86FC0F878D0700000005000000030000000A0000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D0700000005000000030F8751070000000307800100128A40F70000000500000000128A7CF7000000000780010800000008128A7D09022A45790000000713E1C502000000010DE7C9FA000000090000000800000004000000020F875105000000020C9A86FC0F878D0707800100128A40F700000005000000000000000A000000030F8751070000000307800100128A40F70780010800000009128A7D09022A45790000000913E1C502000000010000000A00000004000000000000000A00000004"
theorem small_6625840_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6625840_left_root small_6625840_left_fuel small_6625840_left_count small_6625840_left_encoded = true := by
  decide +kernel
theorem small_6625840_left_covered : CoveredBy scale carrier boxes small_6625840_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6625840_left_root small_6625840_left_fuel small_6625840_left_count small_6625840_left_encoded small_6625840_left_checked

theorem cover_6625840 : CoveredBy scale carrier boxes root_6625840 := by
  apply coveredBy_split_literal root_6625840 small_6625840_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6626206 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6625840_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6626206
#print axioms cover_6625840

def root_6625835 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625835_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625835_right_fuel : Nat := 1
def small_6625835_right_count : Nat := 1
def small_6625835_right_encoded : String := "00000003"
theorem small_6625835_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6625835_right_root small_6625835_right_fuel small_6625835_right_count small_6625835_right_encoded = true := by
  decide +kernel
theorem small_6625835_right_covered : CoveredBy scale carrier boxes small_6625835_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6625835_right_root small_6625835_right_fuel small_6625835_right_count small_6625835_right_encoded small_6625835_right_checked

theorem cover_6625835 : CoveredBy scale carrier boxes root_6625835 := by
  apply coveredBy_split_literal root_6625835 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6625840 small_6625835_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6625840
  · exact small_6625835_right_covered
#print axioms cover_6625835

def root_6630518 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6630518 : CoveredBy scale carrier boxes root_6630518 := by
  apply coveredBy_split_literal root_6630518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2496.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2497.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2496.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2497.covered
#print axioms cover_6630518

def root_6630513 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630513_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630513_right_fuel : Nat := 1
def small_6630513_right_count : Nat := 1
def small_6630513_right_encoded : String := "00000004"
theorem small_6630513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630513_right_root small_6630513_right_fuel small_6630513_right_count small_6630513_right_encoded = true := by
  decide +kernel
theorem small_6630513_right_covered : CoveredBy scale carrier boxes small_6630513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630513_right_root small_6630513_right_fuel small_6630513_right_count small_6630513_right_encoded small_6630513_right_checked

theorem cover_6630513 : CoveredBy scale carrier boxes root_6630513 := by
  apply coveredBy_split_literal root_6630513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630518 small_6630513_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630518
  · exact small_6630513_right_covered
#print axioms cover_6630513

def root_6630449 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630449_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630449_left_fuel : Nat := 11
def small_6630449_left_count : Nat := 31
def small_6630449_left_encoded : String := "120701080000000405000100135D44F7050000FC135D8107045489F900000006138671020000000100000006000000030000000600000000135D80F700000000050000FC135D8107045489F90000000613867102000000010CFD9C05000000060F350CFA0000000204548A0900000006000000060000000300000006"
theorem small_6630449_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630449_left_root small_6630449_left_fuel small_6630449_left_count small_6630449_left_encoded = true := by
  decide +kernel
theorem small_6630449_left_covered : CoveredBy scale carrier boxes small_6630449_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630449_left_root small_6630449_left_fuel small_6630449_left_count small_6630449_left_encoded small_6630449_left_checked

theorem cover_6630449 : CoveredBy scale carrier boxes root_6630449 := by
  apply coveredBy_split_literal root_6630449 small_6630449_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630513 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6630449_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630513
#print axioms cover_6630449

def root_6630443 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630443_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630443_left_fuel : Nat := 1
def small_6630443_left_count : Nat := 1
def small_6630443_left_encoded : String := "00000002"
theorem small_6630443_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630443_left_root small_6630443_left_fuel small_6630443_left_count small_6630443_left_encoded = true := by
  decide +kernel
theorem small_6630443_left_covered : CoveredBy scale carrier boxes small_6630443_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630443_left_root small_6630443_left_fuel small_6630443_left_count small_6630443_left_encoded small_6630443_left_checked

theorem cover_6630443 : CoveredBy scale carrier boxes root_6630443 := by
  apply coveredBy_split_literal root_6630443 small_6630443_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630449 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6630443_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630449
#print axioms cover_6630443

def root_6630395 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630395_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630395_left_fuel : Nat := 9
def small_6630395_left_count : Nat := 23
def small_6630395_left_encoded : String := "120700FA08A913090000000612073D0805000100135D44F7050000FC00000005135D450700000003045489F9000000060000000600000000135D80F700000000050000FC135D81070000000600000003000000060000000400000002"
theorem small_6630395_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630395_left_root small_6630395_left_fuel small_6630395_left_count small_6630395_left_encoded = true := by
  decide +kernel
theorem small_6630395_left_covered : CoveredBy scale carrier boxes small_6630395_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630395_left_root small_6630395_left_fuel small_6630395_left_count small_6630395_left_encoded small_6630395_left_checked

theorem cover_6630395 : CoveredBy scale carrier boxes root_6630395 := by
  apply coveredBy_split_literal root_6630395 small_6630395_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630443 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6630395_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630443
#print axioms cover_6630395

def root_6630389 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630389_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630389_left_fuel : Nat := 1
def small_6630389_left_count : Nat := 1
def small_6630389_left_encoded : String := "00000001"
theorem small_6630389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630389_left_root small_6630389_left_fuel small_6630389_left_count small_6630389_left_encoded = true := by
  decide +kernel
theorem small_6630389_left_covered : CoveredBy scale carrier boxes small_6630389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630389_left_root small_6630389_left_fuel small_6630389_left_count small_6630389_left_encoded small_6630389_left_checked

theorem cover_6630389 : CoveredBy scale carrier boxes root_6630389 := by
  apply coveredBy_split_literal root_6630389 small_6630389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630395 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6630389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630395
#print axioms cover_6630389

def root_6630127 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630127_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630127_left_fuel : Nat := 19
def small_6630127_left_count : Nat := 121
def small_6630127_left_encoded : String := "12073D0208A91305120700FA08A913090000000612073D080500010000000005135D80F700000000050000FC0000000500000006000000040000000212073CFA0000000208A9130912070108000000040000000612073D0805000100135D44F7050000FC135D81070CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C090F34D10800000004000000060F350D080C9A86FA000000050F87510500000002000000090000000400000003135D4507000000030CFD9BF90F350D020CFD9C050000000900000009000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C09000000060000000900000000135D80F700000000050000FC135D81070CFD9BF90F350D020CFD9C050000000600000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C090F34D10800000004000000060F350D080C9A86FA000000060F875105000000020C9A870800000009000000060000000400000003135D4507000000030CFD9BF90F350D0200000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C0900000006000000090000000400000001"
theorem small_6630127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630127_left_root small_6630127_left_fuel small_6630127_left_count small_6630127_left_encoded = true := by
  decide +kernel
theorem small_6630127_left_covered : CoveredBy scale carrier boxes small_6630127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630127_left_root small_6630127_left_fuel small_6630127_left_count small_6630127_left_encoded small_6630127_left_checked

theorem cover_6630127 : CoveredBy scale carrier boxes root_6630127 := by
  apply coveredBy_split_literal root_6630127 small_6630127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630389 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6630127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630389
#print axioms cover_6630127

def root_6630122 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630122_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6630122_right_fuel : Nat := 1
def small_6630122_right_count : Nat := 1
def small_6630122_right_encoded : String := "00000004"
theorem small_6630122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6630122_right_root small_6630122_right_fuel small_6630122_right_count small_6630122_right_encoded = true := by
  decide +kernel
theorem small_6630122_right_covered : CoveredBy scale carrier boxes small_6630122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6630122_right_root small_6630122_right_fuel small_6630122_right_count small_6630122_right_encoded small_6630122_right_checked

theorem cover_6630122 : CoveredBy scale carrier boxes root_6630122 := by
  apply coveredBy_split_literal root_6630122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630127 small_6630122_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630127
  · exact small_6630122_right_covered
#print axioms cover_6630122

def root_6629844 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6629844_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6629844_left_fuel : Nat := 19
def small_6629844_left_count : Nat := 129
def small_6629844_left_encoded : String := "1151E9090000000408A912F912073D0208A91305120700FA000000050000000212073CFA0000000205000100135D44F70000000900000000135D80F700000000050000FC135D81070500010800000005135D81090CFD9BF9000000090F34D102000000010000000900000004000000030000000900000001120701020000000108A91305120700FA0500010000000005135D80F700000000050000FC00000005000000090000000212073CFA0000000205000100135D44F7050000FC135D810705000108135D45090000000400000009135D8109045489F91386AD020CFD9C0500000005000000090000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020C9A86FA000000090F87510500000002000000090000000400000003135D4507000000030000000900000000135D80F700000000050000FC135D810705000108135D450900000004045489F90000000800000008135D8109045489F91386AD020CFD9C050F34D0FA0000000900000002000000090000000113867102000000010CFD9C050F34D0FA00000009000000020F350CFA000000020C9A86FA0F878D0500000009000000020F875105000000020780010000000009000000090000000400000003135D4507000000030500010800000008135D8109045489F90000000913867102000000010CFD9C05000000080000000900000004"
theorem small_6629844_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6629844_left_root small_6629844_left_fuel small_6629844_left_count small_6629844_left_encoded = true := by
  decide +kernel
theorem small_6629844_left_covered : CoveredBy scale carrier boxes small_6629844_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6629844_left_root small_6629844_left_fuel small_6629844_left_count small_6629844_left_encoded small_6629844_left_checked

theorem cover_6629844 : CoveredBy scale carrier boxes root_6629844 := by
  apply coveredBy_split_literal root_6629844 small_6629844_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6630122 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6629844_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6630122
#print axioms cover_6629844

def root_6629838 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6629838_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6629838_left_fuel : Nat := 1
def small_6629838_left_count : Nat := 1
def small_6629838_left_encoded : String := "00000003"
theorem small_6629838_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6629838_left_root small_6629838_left_fuel small_6629838_left_count small_6629838_left_encoded = true := by
  decide +kernel
theorem small_6629838_left_covered : CoveredBy scale carrier boxes small_6629838_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6629838_left_root small_6629838_left_fuel small_6629838_left_count small_6629838_left_encoded small_6629838_left_checked

theorem cover_6629838 : CoveredBy scale carrier boxes root_6629838 := by
  apply coveredBy_split_literal root_6629838 small_6629838_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6629844 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6629838_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6629844
#print axioms cover_6629838

def root_6625834 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6625834 : CoveredBy scale carrier boxes root_6625834 := by
  apply coveredBy_split_literal root_6625834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6625835 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6629838 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6625835
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6629838
#print axioms cover_6625834

def root_6625829 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625829_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625829_right_fuel : Nat := 1
def small_6625829_right_count : Nat := 1
def small_6625829_right_encoded : String := "00000002"
theorem small_6625829_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6625829_right_root small_6625829_right_fuel small_6625829_right_count small_6625829_right_encoded = true := by
  decide +kernel
theorem small_6625829_right_covered : CoveredBy scale carrier boxes small_6625829_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6625829_right_root small_6625829_right_fuel small_6625829_right_count small_6625829_right_encoded small_6625829_right_checked

theorem cover_6625829 : CoveredBy scale carrier boxes root_6625829 := by
  apply coveredBy_split_literal root_6625829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6625834 small_6625829_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6625834
  · exact small_6625829_right_covered
#print axioms cover_6625829

def root_6635520 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6635520 : CoveredBy scale carrier boxes root_6635520 := by
  apply coveredBy_split_literal root_6635520 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2498.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2499.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2498.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2499.covered
#print axioms cover_6635520

def root_6635515 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635515_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635515_right_fuel : Nat := 1
def small_6635515_right_count : Nat := 1
def small_6635515_right_encoded : String := "00000004"
theorem small_6635515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6635515_right_root small_6635515_right_fuel small_6635515_right_count small_6635515_right_encoded = true := by
  decide +kernel
theorem small_6635515_right_covered : CoveredBy scale carrier boxes small_6635515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6635515_right_root small_6635515_right_fuel small_6635515_right_count small_6635515_right_encoded small_6635515_right_checked

theorem cover_6635515 : CoveredBy scale carrier boxes root_6635515 := by
  apply coveredBy_split_literal root_6635515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6635520 small_6635515_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6635520
  · exact small_6635515_right_covered
#print axioms cover_6635515

def root_6635195 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635195_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635195_left_fuel : Nat := 21
def small_6635195_left_count : Nat := 151
def small_6635195_left_encoded : String := "120701080000000405000100135D44F70000000800000000135D80F700000000050000FA135D8105045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC0000000304548A091386710800000004000000081386AD080C9A86FC0F878D0700000008000000030F8751070000000307800100128A40F70000000800000000128A7CF700000000078000FA00000006128A41050000000200000007000000040000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC0000000304548A0913867108000000040C9A86FC000000080F875107000000030780010000000008128A7CF700000000078000FA128A7D05022A4579000000060000000800000002000000091386AD080C9A86FC0F878D070780010000000008128A7CF70000000000000009000000030F8751070000000307800100128A40F7078000FA128A7D05022A45790000000813E1C50200000001067ECE89000000080000000800000002128A4105000000020000000800000000128A7CF700000000078000FA128A7D05022A457913E20102067ECE8900000006000000070000000113E1C50200000001067ECE89000000090000000900000002128A410500000002022A457913E20102067ECE89000000090000000900000001000000090000000400000002135D450500000002045489F91386AD020CFD9C07000000080F350CFC0000000304548A09000000081386AD080C9A86FC000000080F8751070000000307800100000000080000000A000000040000000113867102000000010CFD9C07000000080F350CFC0000000304548A090000000800000009"
theorem small_6635195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6635195_left_root small_6635195_left_fuel small_6635195_left_count small_6635195_left_encoded = true := by
  decide +kernel
theorem small_6635195_left_covered : CoveredBy scale carrier boxes small_6635195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6635195_left_root small_6635195_left_fuel small_6635195_left_count small_6635195_left_encoded small_6635195_left_checked

theorem cover_6635195 : CoveredBy scale carrier boxes root_6635195 := by
  apply coveredBy_split_literal root_6635195 small_6635195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6635515 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6635195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6635515
#print axioms cover_6635195

def root_6635189 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635189_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635189_left_fuel : Nat := 1
def small_6635189_left_count : Nat := 1
def small_6635189_left_encoded : String := "00000003"
theorem small_6635189_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6635189_left_root small_6635189_left_fuel small_6635189_left_count small_6635189_left_encoded = true := by
  decide +kernel
theorem small_6635189_left_covered : CoveredBy scale carrier boxes small_6635189_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6635189_left_root small_6635189_left_fuel small_6635189_left_count small_6635189_left_encoded small_6635189_left_checked

theorem cover_6635189 : CoveredBy scale carrier boxes root_6635189 := by
  apply coveredBy_split_literal root_6635189 small_6635189_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6635195 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6635189_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6635195
#print axioms cover_6635189

def root_6635041 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635041_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635041_left_fuel : Nat := 16
def small_6635041_left_count : Nat := 67
def small_6635041_left_encoded : String := "120700FC08A9130912070108000000040000000812073D0805000100135D44F70000000800000000135D80F700000000050000FA135D8105045489F91386AD0204548A07000000051386ACFC000000030CFD9C09000000050F350D08000000050000000400000001138671020000000104548A07138670FC00000008000000031386ACFC000000030CFD9C090F34D10800000004000000080F350D080C9A8708000000050F878D0900000008000000040000000400000002135D450500000002045489F91386AD0204548A07000000081386ACFC000000030CFD9C09000000080F350D080C9A87080000000A0000000800000004000000011386710200000001000000090000000400000003"
theorem small_6635041_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6635041_left_root small_6635041_left_fuel small_6635041_left_count small_6635041_left_encoded = true := by
  decide +kernel
theorem small_6635041_left_covered : CoveredBy scale carrier boxes small_6635041_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6635041_left_root small_6635041_left_fuel small_6635041_left_count small_6635041_left_encoded small_6635041_left_checked

theorem cover_6635041 : CoveredBy scale carrier boxes root_6635041 := by
  apply coveredBy_split_literal root_6635041 small_6635041_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6635189 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6635041_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6635189
#print axioms cover_6635041

def root_6635035 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635035_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6635035_left_fuel : Nat := 1
def small_6635035_left_count : Nat := 1
def small_6635035_left_encoded : String := "00000001"
theorem small_6635035_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6635035_left_root small_6635035_left_fuel small_6635035_left_count small_6635035_left_encoded = true := by
  decide +kernel
theorem small_6635035_left_covered : CoveredBy scale carrier boxes small_6635035_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6635035_left_root small_6635035_left_fuel small_6635035_left_count small_6635035_left_encoded small_6635035_left_checked

theorem cover_6635035 : CoveredBy scale carrier boxes root_6635035 := by
  apply coveredBy_split_literal root_6635035 small_6635035_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6635041 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6635035_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6635041
#print axioms cover_6635035

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457

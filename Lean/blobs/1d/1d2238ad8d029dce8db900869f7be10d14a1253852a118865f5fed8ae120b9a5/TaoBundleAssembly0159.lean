import TaoBundleAssembly0158
import TaoBundleChunkBatch0618
import TaoBundleChunkBatch0619
import TaoBundleChunkBatch0620
import TaoBundleChunkBatch0621
import TaoBundleChunkBatch0622
import TaoBundleChunkBatch0623
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159
def root_6568704 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568704_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568704_right_fuel : Nat := 27
def small_6568704_right_count : Nat := 337
def small_6568704_right_encoded : String := "1152250908A912F712073D0008A912F912073D0208A9130912070108000000040000000A12073D08050000FA135D8105050000FC135D80FD000000030CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350D020CFD9C090000000A0F350D080C9A87020F8750F90C9A87080F875109000000040000000700000007000000010000000A00000004000000010000000A135D44FD0CFD9BF70000000A0000000A0000000300000002135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090000000A0F350D080C9A87000F8750F70000000A000000000F878CF7000000000C9A87020F8750F90C9A87080F87510900000004028000FA000000060000000600000006000000010F878CF9000000010000000A00000004000000010F34D102000000010000000A000000000F34D100000000000CFD9BF90F350D020CFD9C090F34D108000000040000000A0F350D080C9A87020F8750F90C9A87080F87510900000004028000FA13D7ED05000000060000000213D7B10500000002078000FC128A7CFD0000000300000006000000060F878D09028000FA000000060000000600000004000000010F878CF9000000010C9A87080F87510900000004028000FA0000000A13D7B10500000002078000FC128A7CFD000000030AD357770000000A000000070000000A0F878D090000000A0000000400000004000000010F34D102000000010000000A135D44FD0CFD9BF70F350D000CFD9BF90F350D020CFD9C090000000A0F350D080C9A87000000000A0F878CF7000000000000000A00000004000000010000000A000000000F34D100000000000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87020F8750F900000006000000010F878CF9000000010C9A87080F87510900000004000000060000000500000004000000010F34D102000000010000000500000003000000040000000112070102000000010000000A00000000120701000000000008A912F912073D0208A913091207010800000004050000FA0000000A0000000512073D08050000FA135D8105050000FC135D80FD00000003045489F71386AD000CFD9BF90F350D020CFD9C090000000A00000007000000010000000A0000000013867100000000000CFD9BF9000000070F34D1020000000100000007135D44FD045489F71386AD000CFD9BF90F350D020CFD9C090000000A0F350D080C9A87020F8750F900000006000000010000000A00000004000000010000000A0000000013867100000000000CFD9BF90F350D020CFD9C090000000A00000007000000010000000A0000000300000002135D450500000002050000FC135D80FD00000003045489F71386AD000CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F90000000700000001000000050F350D080C9A87020F8750F900000007000000010F878CF9000000010C9A87080F87510900000004000000070000000700000004000000010F34D102000000010CFD9C09000000090F350D080C9A87080000000900000005000000040000000013867100000000000CFD9BF90F350D020CFD9C090F34D108000000040000000500000007000000010F34D1020000000100000005135D44FD045489F71386AD000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87020F8750F900000006000000010000000500000004000000010F34D102000000010000000500000000138671000000000000000005000000030000000400000001120701020000000108A913090000000912073D08050000FA0000000A000000050000000400000004"
theorem small_6568704_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6568704_right_root small_6568704_right_fuel small_6568704_right_count small_6568704_right_encoded = true := by
  decide +kernel
theorem small_6568704_right_covered : CoveredBy scale carrier boxes small_6568704_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6568704_right_root small_6568704_right_fuel small_6568704_right_count small_6568704_right_encoded small_6568704_right_checked

theorem cover_6568704 : CoveredBy scale carrier boxes root_6568704 := by
  apply coveredBy_split_literal root_6568704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6568705 small_6568704_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6568705
  · exact small_6568704_right_covered
#print axioms cover_6568704

def root_6568699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568699_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568699_right_fuel : Nat := 1
def small_6568699_right_count : Nat := 1
def small_6568699_right_encoded : String := "00000003"
theorem small_6568699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6568699_right_root small_6568699_right_fuel small_6568699_right_count small_6568699_right_encoded = true := by
  decide +kernel
theorem small_6568699_right_covered : CoveredBy scale carrier boxes small_6568699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6568699_right_root small_6568699_right_fuel small_6568699_right_count small_6568699_right_encoded small_6568699_right_checked

theorem cover_6568699 : CoveredBy scale carrier boxes root_6568699 := by
  apply coveredBy_split_literal root_6568699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6568704 small_6568699_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6568704
  · exact small_6568699_right_covered
#print axioms cover_6568699

def root_6566745 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6566745 : CoveredBy scale carrier boxes root_6566745 := by
  apply coveredBy_split_literal root_6566745 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2474.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6568699 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2474.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6568699
#print axioms cover_6566745

def root_6566739 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6566739_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6566739_left_fuel : Nat := 1
def small_6566739_left_count : Nat := 1
def small_6566739_left_encoded : String := "00000002"
theorem small_6566739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6566739_left_root small_6566739_left_fuel small_6566739_left_count small_6566739_left_encoded = true := by
  decide +kernel
theorem small_6566739_left_covered : CoveredBy scale carrier boxes small_6566739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6566739_left_root small_6566739_left_fuel small_6566739_left_count small_6566739_left_encoded small_6566739_left_checked

theorem cover_6566739 : CoveredBy scale carrier boxes root_6566739 := by
  apply coveredBy_split_literal root_6566739 small_6566739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6566745 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6566739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6566745
#print axioms cover_6566739

def root_6564461 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6564461 : CoveredBy scale carrier boxes root_6564461 := by
  apply coveredBy_split_literal root_6564461 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2473.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6566739 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2473.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6566739
#print axioms cover_6564461

def root_6564455 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6564455_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6564455_left_fuel : Nat := 1
def small_6564455_left_count : Nat := 1
def small_6564455_left_encoded : String := "00000001"
theorem small_6564455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6564455_left_root small_6564455_left_fuel small_6564455_left_count small_6564455_left_encoded = true := by
  decide +kernel
theorem small_6564455_left_covered : CoveredBy scale carrier boxes small_6564455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6564455_left_root small_6564455_left_fuel small_6564455_left_count small_6564455_left_encoded small_6564455_left_checked

theorem cover_6564455 : CoveredBy scale carrier boxes root_6564455 := by
  apply coveredBy_split_literal root_6564455 small_6564455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6564461 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6564455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6564461
#print axioms cover_6564455

def root_6560999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6560999 : CoveredBy scale carrier boxes root_6560999 := by
  apply coveredBy_split_literal root_6560999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6561000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6564455 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6561000
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6564455
#print axioms cover_6560999

def root_6560993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6560993_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6560993_left_fuel : Nat := 1
def small_6560993_left_count : Nat := 1
def small_6560993_left_encoded : String := "00000000"
theorem small_6560993_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6560993_left_root small_6560993_left_fuel small_6560993_left_count small_6560993_left_encoded = true := by
  decide +kernel
theorem small_6560993_left_covered : CoveredBy scale carrier boxes small_6560993_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6560993_left_root small_6560993_left_fuel small_6560993_left_count small_6560993_left_encoded small_6560993_left_checked

theorem cover_6560993 : CoveredBy scale carrier boxes root_6560993 := by
  apply coveredBy_split_literal root_6560993 small_6560993_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6560999 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6560993_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6560999
#print axioms cover_6560993

def root_6558259 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6558259 : CoveredBy scale carrier boxes root_6558259 := by
  apply coveredBy_split_literal root_6558259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2470.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6560993 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2470.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6560993
#print axioms cover_6558259

def root_6550455 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6550455 : CoveredBy scale carrier boxes root_6550455 := by
  apply coveredBy_split_literal root_6550455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6550456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6558259 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6550456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6558259
#print axioms cover_6550455

def root_6542725 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6542725 : CoveredBy scale carrier boxes root_6542725 := by
  apply coveredBy_split_literal root_6542725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6542726 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6550455 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6542726
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6550455
#print axioms cover_6542725

def root_6577475 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577475_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577475_right_fuel : Nat := 30
def small_6577475_right_count : Nat := 443
def small_6577475_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F912073D0208A91305120700FA000000090000000212073CFA0000000205000100135D44F7050000FC135D81070500010800000005135D80FF000000040000000500000003135D4507000000030500010800000005135D80FF000000040000000600000000135D80F700000000050000FC135D81070500010800000005135D80FF000000040CFD9BF90F350D020CFD9C050000000600000005000000010F34D102000000010CFD9C05000000090000000500000003135D4507000000030500010800000009135D80FF000000040CFD9BF9000000060F34D102000000010000000900000001120701020000000108A91305120700FA000000090000000212073CFA0000000205000100135D44F7050000FC00000005135D4507000000030500010800000005135D80FF00000004045489F91386AD0200000005000000010000000500000000135D80F700000000050000FC135D81070500010800000005135D80FF00000004045489F91386AD020CFD9C050000000900000005000000010000000500000003135D4507000000030500010800000009135D80FF00000004045489F90000000913867102000000010000000900000004115224FF0000000408A912F912073D0208A91305120700FA000000060000000212073CFA0000000208A912FF12073D0805000100135D44F7050000FC135D81070CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA0000000200000006000000030000000600000000135D80F700000000050000FC135D81070CFD9BF90F350D020CFD9C05000000060F350CFA0000000200000006000000010F34D102000000010CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A87080000000500000006000000040F34D108000000040000000600000003135D4507000000030CFD9BF9000000060F34D10200000001000000060000000412070108000000040000000600000001120701020000000108A91305120700FA08A912FF12073D080500010000000006135D80F700000000050000FC135D8107045489F9000000060000000A000000030000000600000004000000060000000212073CFA0000000208A912FF12073D0805000100135D44F7050000FC135D8107045489F91386AD020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0F350D080000000500000004000000050000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0F350D0800000005000000040000000500000003135D450700000003045489F90000000613867102000000010CFD9C05000000060F350CFA000000020CFD9BFF0000000A0000000600000000135D80F700000000050000FC135D8107045489F91386AD020CFD9C050F34D0FA0CFD9BFF0000000600000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A87080000000500000006000000020F875105000000020C9A8708000000050F878CFF000000040780010000000005128A7CF700000000078000FC0000000500000006000000040F34D10800000004000000060000000113867102000000010CFD9C050F34D0FA0CFD9BFF0F350D0800000005000000040F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000050F875105000000020C9A8708000000050F878CFF000000040780010000000005128A7CF700000000078000FC00000005128A410700000003022A4579000000060000000A000000040F34D108000000040C9A86FA0F878D050780010000000005128A7CF70000000000000006000000020F8751050000000207800100128A40F7078000FC000000050000000600000000128A7CF700000000078000FC128A7D07022A45790000000613E1C502000000010AD3577F0000000A10D101080000000400000006000000030000000600000003135D450700000003045489F91386AD020CFD9C05000000060F350CFA000000020CFD9BFF00000006000000060000000113867102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A87080000000900000006000000020F875105000000020C9A87080F8750FF078001000000000A00000009000000040F878CFF0000000400000006000000040F34D108000000040000000600000004120701080000000405000100135D44F7050000FC135D8107045489F900000006138671020000000100000006000000030000000600000000135D80F700000000050000FC135D8107045489F90000000613867102000000010CFD9C05000000060F350CFA00000002045489FF00000006000000060000000300000006"
theorem small_6577475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6577475_right_root small_6577475_right_fuel small_6577475_right_count small_6577475_right_encoded = true := by
  decide +kernel
theorem small_6577475_right_covered : CoveredBy scale carrier boxes small_6577475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6577475_right_root small_6577475_right_fuel small_6577475_right_count small_6577475_right_encoded small_6577475_right_checked

theorem cover_6577475 : CoveredBy scale carrier boxes root_6577475 := by
  apply coveredBy_split_literal root_6577475 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2478.root small_6577475_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2478.covered
  · exact small_6577475_right_covered
#print axioms cover_6577475

def root_6577470 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577470_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577470_right_fuel : Nat := 1
def small_6577470_right_count : Nat := 1
def small_6577470_right_encoded : String := "00000002"
theorem small_6577470_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6577470_right_root small_6577470_right_fuel small_6577470_right_count small_6577470_right_encoded = true := by
  decide +kernel
theorem small_6577470_right_covered : CoveredBy scale carrier boxes small_6577470_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6577470_right_root small_6577470_right_fuel small_6577470_right_count small_6577470_right_encoded small_6577470_right_checked

theorem cover_6577470 : CoveredBy scale carrier boxes root_6577470 := by
  apply coveredBy_split_literal root_6577470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6577475 small_6577470_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6577475
  · exact small_6577470_right_covered
#print axioms cover_6577470

def root_6581821 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6581821 : CoveredBy scale carrier boxes root_6581821 := by
  apply coveredBy_split_literal root_6581821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2479.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2480.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2479.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2480.covered
#print axioms cover_6581821

def root_6581815 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581815_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581815_left_fuel : Nat := 1
def small_6581815_left_count : Nat := 1
def small_6581815_left_encoded : String := "00000003"
theorem small_6581815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6581815_left_root small_6581815_left_fuel small_6581815_left_count small_6581815_left_encoded = true := by
  decide +kernel
theorem small_6581815_left_covered : CoveredBy scale carrier boxes small_6581815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6581815_left_root small_6581815_left_fuel small_6581815_left_count small_6581815_left_encoded small_6581815_left_checked

theorem cover_6581815 : CoveredBy scale carrier boxes root_6581815 := by
  apply coveredBy_split_literal root_6581815 small_6581815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6581821 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6581815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6581821
#print axioms cover_6581815

def root_6581215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581215_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581215_left_fuel : Nat := 20
def small_6581215_left_count : Nat := 275
def small_6581215_left_encoded : String := "115225070A0001081151E8FF08A912F912073D0208A91307120700FC000000080000000312073CFC0000000305000100135D44F7050000FA135D810505000108000000050000000800000002135D4505000000020000000800000000135D80F700000000050000FA135D81050500010800000005135D80FF000000040CFD9BF90F350D020CFD9C070000000800000005000000010F34D102000000010CFD9C07000000080000000500000002135D450500000002050001080000000A135D80FF000000040CFD9BF9000000080F34D102000000010000000800000001120701020000000108A91307120700FC000000080000000312073CFC0000000305000100135D44F7050000FA00000005135D4505000000020000000800000000135D80F700000000050000FA135D81050500010800000005135D80FF00000004045489F91386AD020CFD9C070000000800000005000000010000000500000002135D45050000000205000108135D44FF045489F91386AD0200000005000000010000000500000004135D80FF00000004045489F90000000813867102000000010000000800000004115224FF0000000408A912F912073D0208A91307120700FC000000080000000312073CFC0000000308A912FF12073D0805000100135D44F7050000FA135D81050CFD9BF9000000080F34D102000000010000000800000002135D4505000000020000000800000000135D80F700000000050000FA135D81050CFD9BF90F350D020CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF0F350D0800000008000000040F34D1080000000400000008000000010F34D102000000010CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D108000000040000000800000002135D4505000000020CFD9BF90F350D020CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D1080000000400000008000000010F34D10200000001000000080000000412070108000000040500010000000008135D80F700000000050000FA135D81050CFD9BF90F350D020CFD9C07000000080F350CFC0000000300000006000000010F34D102000000010000000800000002135D4505000000020CFD9BF9000000080F34D102000000010000000800000001120701020000000108A91307120700FC000000080000000312073CFC0000000308A912FF12073D080500010000000008135D80F700000000050000FA135D8105045489F91386AD020CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D10800000004000000080000000113867102000000010CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D108000000040000000800000002135D450500000002045489F9000000081386710200000001000000080000000412070108000000040500010000000008135D80F700000000050000FA135D8105045489F90000000813867102000000010000000800000002135D4505000000020000000800000003"
theorem small_6581215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6581215_left_root small_6581215_left_fuel small_6581215_left_count small_6581215_left_encoded = true := by
  decide +kernel
theorem small_6581215_left_covered : CoveredBy scale carrier boxes small_6581215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6581215_left_root small_6581215_left_fuel small_6581215_left_count small_6581215_left_encoded small_6581215_left_checked

theorem cover_6581215 : CoveredBy scale carrier boxes root_6581215 := by
  apply coveredBy_split_literal root_6581215 small_6581215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6581815 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6581215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6581815
#print axioms cover_6581215

def root_6581209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581209_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581209_left_fuel : Nat := 1
def small_6581209_left_count : Nat := 1
def small_6581209_left_encoded : String := "00000002"
theorem small_6581209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6581209_left_root small_6581209_left_fuel small_6581209_left_count small_6581209_left_encoded = true := by
  decide +kernel
theorem small_6581209_left_covered : CoveredBy scale carrier boxes small_6581209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6581209_left_root small_6581209_left_fuel small_6581209_left_count small_6581209_left_encoded small_6581209_left_checked

theorem cover_6581209 : CoveredBy scale carrier boxes root_6581209 := by
  apply coveredBy_split_literal root_6581209 small_6581209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6581215 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6581209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6581215
#print axioms cover_6581209

def root_6577469 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6577469 : CoveredBy scale carrier boxes root_6577469 := by
  apply coveredBy_split_literal root_6577469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6577470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6581209 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6577470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6581209
#print axioms cover_6577469

def root_6577463 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577463_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577463_left_fuel : Nat := 1
def small_6577463_left_count : Nat := 1
def small_6577463_left_encoded : String := "00000001"
theorem small_6577463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6577463_left_root small_6577463_left_fuel small_6577463_left_count small_6577463_left_encoded = true := by
  decide +kernel
theorem small_6577463_left_covered : CoveredBy scale carrier boxes small_6577463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6577463_left_root small_6577463_left_fuel small_6577463_left_count small_6577463_left_encoded small_6577463_left_checked

theorem cover_6577463 : CoveredBy scale carrier boxes root_6577463 := by
  apply coveredBy_split_literal root_6577463 small_6577463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6577469 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6577463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6577469
#print axioms cover_6577463

def root_6575987 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6575987 : CoveredBy scale carrier boxes root_6575987 := by
  apply coveredBy_split_literal root_6575987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2477.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6577463 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2477.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6577463
#print axioms cover_6575987

def root_6575982 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6575982_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6575982_right_fuel : Nat := 1
def small_6575982_right_count : Nat := 1
def small_6575982_right_encoded : String := "00000000"
theorem small_6575982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6575982_right_root small_6575982_right_fuel small_6575982_right_count small_6575982_right_encoded = true := by
  decide +kernel
theorem small_6575982_right_covered : CoveredBy scale carrier boxes small_6575982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6575982_right_root small_6575982_right_fuel small_6575982_right_count small_6575982_right_encoded small_6575982_right_checked

theorem cover_6575982 : CoveredBy scale carrier boxes root_6575982 := by
  apply coveredBy_split_literal root_6575982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6575987 small_6575982_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6575987
  · exact small_6575982_right_covered
#print axioms cover_6575982

def root_6592083 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6592083 : CoveredBy scale carrier boxes root_6592083 := by
  apply coveredBy_split_literal root_6592083 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2485.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2486.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2485.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2486.covered
#print axioms cover_6592083

def root_6592077 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592077_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592077_left_fuel : Nat := 1
def small_6592077_left_count : Nat := 1
def small_6592077_left_encoded : String := "00000003"
theorem small_6592077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6592077_left_root small_6592077_left_fuel small_6592077_left_count small_6592077_left_encoded = true := by
  decide +kernel
theorem small_6592077_left_covered : CoveredBy scale carrier boxes small_6592077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6592077_left_root small_6592077_left_fuel small_6592077_left_count small_6592077_left_encoded small_6592077_left_checked

theorem cover_6592077 : CoveredBy scale carrier boxes root_6592077 := by
  apply coveredBy_split_literal root_6592077 small_6592077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6592083 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6592077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6592083
#print axioms cover_6592077

def root_6592039 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592039_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592039_left_fuel : Nat := 8
def small_6592039_left_count : Nat := 17
def small_6592039_left_encoded : String := "0F34D0FC0CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FA000000050F875105000000020000000500000003"
theorem small_6592039_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6592039_left_root small_6592039_left_fuel small_6592039_left_count small_6592039_left_encoded = true := by
  decide +kernel
theorem small_6592039_left_covered : CoveredBy scale carrier boxes small_6592039_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6592039_left_root small_6592039_left_fuel small_6592039_left_count small_6592039_left_encoded small_6592039_left_checked

theorem cover_6592039 : CoveredBy scale carrier boxes root_6592039 := by
  apply coveredBy_split_literal root_6592039 small_6592039_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6592077 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6592039_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6592077
#print axioms cover_6592039

def root_6592033 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592033_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592033_left_fuel : Nat := 1
def small_6592033_left_count : Nat := 1
def small_6592033_left_encoded : String := "00000002"
theorem small_6592033_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6592033_left_root small_6592033_left_fuel small_6592033_left_count small_6592033_left_encoded = true := by
  decide +kernel
theorem small_6592033_left_covered : CoveredBy scale carrier boxes small_6592033_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6592033_left_root small_6592033_left_fuel small_6592033_left_count small_6592033_left_encoded small_6592033_left_checked

theorem cover_6592033 : CoveredBy scale carrier boxes root_6592033 := by
  apply coveredBy_split_literal root_6592033 small_6592033_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6592039 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6592033_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6592039
#print axioms cover_6592033

def root_6591981 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591981_left_fuel : Nat := 10
def small_6591981_left_count : Nat := 23
def small_6591981_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FC000000050F875107000000030000000500000002"
theorem small_6591981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591981_left_root small_6591981_left_fuel small_6591981_left_count small_6591981_left_encoded = true := by
  decide +kernel
theorem small_6591981_left_covered : CoveredBy scale carrier boxes small_6591981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591981_left_root small_6591981_left_fuel small_6591981_left_count small_6591981_left_encoded small_6591981_left_checked

theorem cover_6591981 : CoveredBy scale carrier boxes root_6591981 := by
  apply coveredBy_split_literal root_6591981 small_6591981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6592033 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6591981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6592033
#print axioms cover_6591981

def root_6591975 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591975_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591975_left_fuel : Nat := 1
def small_6591975_left_count : Nat := 1
def small_6591975_left_encoded : String := "00000001"
theorem small_6591975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591975_left_root small_6591975_left_fuel small_6591975_left_count small_6591975_left_encoded = true := by
  decide +kernel
theorem small_6591975_left_covered : CoveredBy scale carrier boxes small_6591975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591975_left_root small_6591975_left_fuel small_6591975_left_count small_6591975_left_encoded small_6591975_left_checked

theorem cover_6591975 : CoveredBy scale carrier boxes root_6591975 := by
  apply coveredBy_split_literal root_6591975 small_6591975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591981 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6591975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591981
#print axioms cover_6591975

def root_6591523 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591523_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591523_left_fuel : Nat := 25
def small_6591523_left_count : Nat := 215
def small_6591523_left_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC0CFD9BFF0F350D08000000050000000400000005000000030F350CFC000000030CFD9BFF0F350D080C9A8700000000050F878CF70000000000000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FC0000000500000006000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A8700000000050F878CF70000000000000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FA000000050F8751050000000200000008000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FA000000050F875105000000020C9A86FC000000050F8751070000000300000005000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000050F875107000000030C9A8708000000050F878CFF0000000400000005000000020F875105000000020C9A86FC0F878D070C9A8708000000050F878CFF0000000400000005000000030F875107000000030C9A8708000000050F878CFF00000004067ECE7912EA95020DE7CA00000000050E6014F7000000000B4D43FA000000050000000A0000000112EA5902000000010DE7CA000E5FD8F70B4D43FA00000005108011050000000200000005000000000E6014F7000000000B4D43FA0000000510801105000000020B4D43FC0000000510801107000000030DE7CA080000000500000007000000040F34D108000000040C9A87000F8750F70C9A86FA0F878D050C9A86FC000000050F8751070000000300000005000000020F875105000000020C9A86FC000000050F87510700000003067ECE790000000612EA5902000000010AD3577F0000000810D101080000000400000006000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000050F87510700000003067ECE790000000612EA5902000000010AD3577F0000000600000006000000020F875105000000020C9A86FC0F878D07067ECE790000000712EA5902000000010AD3577F0000000800000007000000030F87510700000003067ECE790000000712EA5902000000010AD3577F10D13D080DE7CA000E5FD8F70B4D43FA0000000610801105000000020B4D43FC000000070000000600000000000000070000000410D10108000000040000000600000001"
theorem small_6591523_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591523_left_root small_6591523_left_fuel small_6591523_left_count small_6591523_left_encoded = true := by
  decide +kernel
theorem small_6591523_left_covered : CoveredBy scale carrier boxes small_6591523_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591523_left_root small_6591523_left_fuel small_6591523_left_count small_6591523_left_encoded small_6591523_left_checked

theorem cover_6591523 : CoveredBy scale carrier boxes root_6591523 := by
  apply coveredBy_split_literal root_6591523 small_6591523_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591975 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6591523_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591975
#print axioms cover_6591523

def root_6591518 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591518_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591518_right_fuel : Nat := 1
def small_6591518_right_count : Nat := 1
def small_6591518_right_encoded : String := "00000000"
theorem small_6591518_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591518_right_root small_6591518_right_fuel small_6591518_right_count small_6591518_right_encoded = true := by
  decide +kernel
theorem small_6591518_right_covered : CoveredBy scale carrier boxes small_6591518_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591518_right_root small_6591518_right_fuel small_6591518_right_count small_6591518_right_encoded small_6591518_right_checked

theorem cover_6591518 : CoveredBy scale carrier boxes root_6591518 := by
  apply coveredBy_split_literal root_6591518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591523 small_6591518_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591523
  · exact small_6591518_right_covered
#print axioms cover_6591518

def root_6591517 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6591517 : CoveredBy scale carrier boxes root_6591517 := by
  apply coveredBy_split_literal root_6591517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2487.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591518
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2487.covered
#print axioms cover_6591517

def root_6591512 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591512_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591512_right_fuel : Nat := 1
def small_6591512_right_count : Nat := 1
def small_6591512_right_encoded : String := "00000004"
theorem small_6591512_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591512_right_root small_6591512_right_fuel small_6591512_right_count small_6591512_right_encoded = true := by
  decide +kernel
theorem small_6591512_right_covered : CoveredBy scale carrier boxes small_6591512_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591512_right_root small_6591512_right_fuel small_6591512_right_count small_6591512_right_encoded small_6591512_right_checked

theorem cover_6591512 : CoveredBy scale carrier boxes root_6591512 := by
  apply coveredBy_split_literal root_6591512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591517 small_6591512_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591517
  · exact small_6591512_right_covered
#print axioms cover_6591512

def root_6591511 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591511_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591511_right_fuel : Nat := 25
def small_6591511_right_count : Nat := 251
def small_6591511_right_encoded : String := "12070108000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC00000003045489FF0000000600000006000000020F350CFA000000020CFD9C070F34D0FC045489FF1386AD080C9A870000000005000000070000000400000007000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FA0F878D0500000006000000020F875105000000020C9A86FC0000000700000006000000000F878CF70000000000000007000000041386710800000004000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC00000003045489FF1386AD080C9A8700000000050F878CF7000000000C9A86FC000000050000000600000004138671080000000400000006000000020F350CFA000000020CFD9C070F34D0FC045489FF1386AD080C9A8700000000050F878CF7000000000C9A86FA00000005000000090000000413867108000000040C9A87000000000800000007000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FA0F878D050C9A86FC000000050F8751070000000300000006000000020F875105000000020C9A86FC000000080F87510700000003022A45790000000613E1C50200000001067ECE7F12EA95080B4D44000000000810804CF7000000000B4D43FA00000006000000060000000412EA59080000000400000006000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000070F87510700000003022A45790000000613E1C50200000001067ECE7F0000000600000006000000020F875105000000020C9A86FC0F878D07022A45790000000713E1C50200000001067ECE7F0000000900000007000000030F87510700000003022A45790000000713E1C50200000001067ECE7F12EA95080DE7CA000E5FD8F70B4D43FA0000000600000009000000000E6014F700000000000000070000000412EA590800000004000000070000000413867108000000040C9A87000F8750F70C9A86FA0F878D050C9A86FC0000000700000006000000020F875105000000020C9A86FC0F878D0700000008000000030F8751070000000300000006000000000F878CF7000000000C9A86FA000000070F8751050000000200000007000000000F34D10000000000045489F91386AD020CFD9C050F34D0FA0000000700000002000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003045489FF1386AD080C9A86FA000000070F87510500000002000000070000000400000007"
theorem small_6591511_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591511_right_root small_6591511_right_fuel small_6591511_right_count small_6591511_right_encoded = true := by
  decide +kernel
theorem small_6591511_right_covered : CoveredBy scale carrier boxes small_6591511_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591511_right_root small_6591511_right_fuel small_6591511_right_count small_6591511_right_encoded small_6591511_right_checked

theorem cover_6591511 : CoveredBy scale carrier boxes root_6591511 := by
  apply coveredBy_split_literal root_6591511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591512 small_6591511_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591512
  · exact small_6591511_right_covered
#print axioms cover_6591511

def root_6591505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591505_left_fuel : Nat := 1
def small_6591505_left_count : Nat := 1
def small_6591505_left_encoded : String := "00000003"
theorem small_6591505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591505_left_root small_6591505_left_fuel small_6591505_left_count small_6591505_left_encoded = true := by
  decide +kernel
theorem small_6591505_left_covered : CoveredBy scale carrier boxes small_6591505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591505_left_root small_6591505_left_fuel small_6591505_left_count small_6591505_left_encoded small_6591505_left_checked

theorem cover_6591505 : CoveredBy scale carrier boxes root_6591505 := by
  apply coveredBy_split_literal root_6591505 small_6591505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591511 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6591505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591511
#print axioms cover_6591505

def root_6591163 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591163_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591163_left_fuel : Nat := 16
def small_6591163_left_count : Nat := 157
def small_6591163_left_encoded : String := "120700FC08A912FF12073D080CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA04548A07138670FC0CFD9BFF0000000800000005000000031386ACFC000000030CFD9BFF0F350D08000000050000000400000005000000020F350CFA0000000204548A07000000081386ACFC000000030CFD9BFF000000080F34D10800000004000000080000000113867102000000010CFD9C050F34D0FA04548A07138670FC0CFD9BFF0F350D080000000500000004000000050000000300000005000000020F350CFA0000000204548A07000000081386ACFC000000030CFD9BFF0000000800000005000000000F34D10000000000045489F91386AD020CFD9C050F34D0FA04548A07138670FC0CFD9BFF0F350D08000000050000000400000005000000031386ACFC000000030CFD9BFF0F350D08000000050000000400000005000000020F350CFA0000000204548A070000000A1386ACFC000000030CFD9BFF0F350D080000000A000000040000000A0000000113867102000000010CFD9C050F34D0FA04548A07138670FC000000050000000300000005000000020F350CFA0000000204548A07138670FC0000000A000000031386ACFC000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A86FA000000050F87510500000002000000080000000412070108000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA0000000500000002000000080000000113867102000000010CFD9C050F34D0FA000000050000000200000008000000000F34D10000000000045489F90000000713867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020000000900000003"
theorem small_6591163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591163_left_root small_6591163_left_fuel small_6591163_left_count small_6591163_left_encoded = true := by
  decide +kernel
theorem small_6591163_left_covered : CoveredBy scale carrier boxes small_6591163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591163_left_root small_6591163_left_fuel small_6591163_left_count small_6591163_left_encoded small_6591163_left_checked

theorem cover_6591163 : CoveredBy scale carrier boxes root_6591163 := by
  apply coveredBy_split_literal root_6591163 small_6591163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591505 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6591163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591505
#print axioms cover_6591163

def root_6591157 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591157_left_fuel : Nat := 1
def small_6591157_left_count : Nat := 1
def small_6591157_left_encoded : String := "00000002"
theorem small_6591157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591157_left_root small_6591157_left_fuel small_6591157_left_count small_6591157_left_encoded = true := by
  decide +kernel
theorem small_6591157_left_covered : CoveredBy scale carrier boxes small_6591157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591157_left_root small_6591157_left_fuel small_6591157_left_count small_6591157_left_encoded small_6591157_left_checked

theorem cover_6591157 : CoveredBy scale carrier boxes root_6591157 := by
  apply coveredBy_split_literal root_6591157 small_6591157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591163 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6591157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591163
#print axioms cover_6591157

def root_6590083 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6590083 : CoveredBy scale carrier boxes root_6590083 := by
  apply coveredBy_split_literal root_6590083 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2484.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6591157 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2484.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6591157
#print axioms cover_6590083

def root_6590077 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6590077_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6590077_left_fuel : Nat := 1
def small_6590077_left_count : Nat := 1
def small_6590077_left_encoded : String := "00000001"
theorem small_6590077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6590077_left_root small_6590077_left_fuel small_6590077_left_count small_6590077_left_encoded = true := by
  decide +kernel
theorem small_6590077_left_covered : CoveredBy scale carrier boxes small_6590077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6590077_left_root small_6590077_left_fuel small_6590077_left_count small_6590077_left_encoded small_6590077_left_checked

theorem cover_6590077 : CoveredBy scale carrier boxes root_6590077 := by
  apply coveredBy_split_literal root_6590077 small_6590077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6590083 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6590077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6590083
#print axioms cover_6590077

def root_6588367 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6588367 : CoveredBy scale carrier boxes root_6588367 := by
  apply coveredBy_split_literal root_6588367 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2483.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6590077 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2483.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6590077
#print axioms cover_6588367

def root_6588362 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588362_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588362_right_fuel : Nat := 1
def small_6588362_right_count : Nat := 1
def small_6588362_right_encoded : String := "00000000"
theorem small_6588362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6588362_right_root small_6588362_right_fuel small_6588362_right_count small_6588362_right_encoded = true := by
  decide +kernel
theorem small_6588362_right_covered : CoveredBy scale carrier boxes small_6588362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6588362_right_root small_6588362_right_fuel small_6588362_right_count small_6588362_right_encoded small_6588362_right_checked

theorem cover_6588362 : CoveredBy scale carrier boxes root_6588362 := by
  apply coveredBy_split_literal root_6588362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6588367 small_6588362_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6588367
  · exact small_6588362_right_covered
#print axioms cover_6588362

def root_6588361 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6588361 : CoveredBy scale carrier boxes root_6588361 := by
  apply coveredBy_split_literal root_6588361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6588362 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2488.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6588362
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2488.covered
#print axioms cover_6588361

def root_6588355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588355_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588355_left_fuel : Nat := 1
def small_6588355_left_count : Nat := 1
def small_6588355_left_encoded : String := "00000004"
theorem small_6588355_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6588355_left_root small_6588355_left_fuel small_6588355_left_count small_6588355_left_encoded = true := by
  decide +kernel
theorem small_6588355_left_covered : CoveredBy scale carrier boxes small_6588355_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6588355_left_root small_6588355_left_fuel small_6588355_left_count small_6588355_left_encoded small_6588355_left_checked

theorem cover_6588355 : CoveredBy scale carrier boxes root_6588355 := by
  apply coveredBy_split_literal root_6588355 small_6588355_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6588361 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6588355_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6588361
#print axioms cover_6588355

def root_6586701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6586701 : CoveredBy scale carrier boxes root_6586701 := by
  apply coveredBy_split_literal root_6586701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2482.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6588355 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2482.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6588355
#print axioms cover_6586701

def root_6586696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586696_right_fuel : Nat := 1
def small_6586696_right_count : Nat := 1
def small_6586696_right_encoded : String := "00000003"
theorem small_6586696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6586696_right_root small_6586696_right_fuel small_6586696_right_count small_6586696_right_encoded = true := by
  decide +kernel
theorem small_6586696_right_covered : CoveredBy scale carrier boxes small_6586696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6586696_right_root small_6586696_right_fuel small_6586696_right_count small_6586696_right_encoded small_6586696_right_checked

theorem cover_6586696 : CoveredBy scale carrier boxes root_6586696 := by
  apply coveredBy_split_literal root_6586696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6586701 small_6586696_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6586701
  · exact small_6586696_right_covered
#print axioms cover_6586696

def root_6600979 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600979_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600979_right_fuel : Nat := 40
def small_6600979_right_count : Nat := 405
def small_6600979_right_encoded : String := "0F34D10000000000045489F91386AD020CFD9C050F34D0FA0CFD9BFF000000090F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000009000000020F875105000000020C9A87080F8750FF00000009000000040F878CFF00000004078000FC128A7D070AD3577710D13D00067ECE790000000612EA5902000000010B4D43FA0000000910801105000000020DE7CA0800000009000000060000000010D10100000000000000000700000003128A4107000000030AD3577710D13D00000000060000000000000006000000040F34D108000000040C9A86FA0F878D0500000006000000020F87510500000002078000FC00000007000000060000000113867102000000010CFD9C050F34D0FA0CFD9BFF000000090F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A8708000000090F878CFF00000004078000FC128A7D070AD357770000000910D10100000000000000000800000003128A41070000000300000008000000020F875105000000020C9A87080F8750FF078000FC128A7D070AD357770000000910D10100000000000000000900000003128A41070000000300000009000000040F878CFF00000004078000FC128A7D070AD3577710D13D00022A457913E201020B4D43FA10804D050DE7CA08000000090E6014FF0000000408C000FC00000007000000060000000210801105000000020DE7CA080E5FD8FF00000009000000040E6014FF0000000408C000FC11FC25070BE879B700000007000000070000000311FBE90700000003000000060000000113E1C502000000010B4D43FA10804D050DE7CA08000000090E6014FF0000000408C000FC11FC25070BE879B71011AD000115233900000009000000080000000010117100000000000000000800000003000000080000000210801105000000020DE7CA080E5FD8FF08C000FC11FC25070BE879B71011AD00011523390000000913F85902000000010AA6A27A0000000910ED7105000000020D412888000000080EFA4CFF00000004096000FC11AABD070C730AD700000008000000080000000300000008000000001011710000000000000000090000000311FBE907000000030BE879B70000000800000008000000040E6014FF0000000408C000FC11FC25070BE879B71011AD000115233913F895020DAED87F0E9661080AA6A27A0000000910ED710500000002096000FC0000000700000005000000040E96250800000004000000070000000113F85902000000010DAED87F0E9661080AA6A27A10EDAD05000000080000000210ED710500000002096000FC11AABD070C730AD70FA74500008A921913FE35020E0776BF0E413908000000080000000400000007000000010000000800000000000000080000000300000005000000040E962508000000040AA6A27A10EDAD0500000008000000020000000500000000101171000000000001152339000000070000000800000003000000050000000010D1010000000000022A457913E201020B4D43FA10804D05000000090000000210801105000000020DE7CA080E5FD8FF0000000900000004000000050000000113E1C502000000010B4D43FA10804D05000000080000000210801105000000020DE7CA08000000080000000500000003128A4107000000030AD3577710D13D00022A457913E201020B4D43FA0000000910801105000000020DE7CA08000000090000000500000001000000080000000010D101000000000000000008000000040F34D108000000040C9A86FA0F878D05078000FC128A7D070AD3577710D13D00022A45790000000613E1C502000000010AD3577F10D13D080000000800000004000000060000000010D1010000000000022A4579000000060000000800000003128A41070000000300000006000000020F87510500000002078000FC128A7D070AD3577710D13D00022A457913E201020AD3577F10D13D080B4D43FA000000060000000600000004000000060000000113E1C502000000010AD3577F10D13D080B4D43FA10804D0508C000FC11FC25070BE879B71011AD00011523390000000613F85902000000010BE879BF000000060000000600000000101171000000000000000007000000030000000500000002000000050000000410D1010800000004000000050000000010D1010000000000000000050000000300000005"
theorem small_6600979_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600979_right_root small_6600979_right_fuel small_6600979_right_count small_6600979_right_encoded = true := by
  decide +kernel
theorem small_6600979_right_covered : CoveredBy scale carrier boxes small_6600979_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600979_right_root small_6600979_right_fuel small_6600979_right_count small_6600979_right_encoded small_6600979_right_checked

theorem cover_6600979 : CoveredBy scale carrier boxes root_6600979 := by
  apply coveredBy_split_literal root_6600979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2489.root small_6600979_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2489.covered
  · exact small_6600979_right_covered
#print axioms cover_6600979

def root_6600974 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600974_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600974_right_fuel : Nat := 1
def small_6600974_right_count : Nat := 1
def small_6600974_right_encoded : String := "00000003"
theorem small_6600974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600974_right_root small_6600974_right_fuel small_6600974_right_count small_6600974_right_encoded = true := by
  decide +kernel
theorem small_6600974_right_covered : CoveredBy scale carrier boxes small_6600974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600974_right_root small_6600974_right_fuel small_6600974_right_count small_6600974_right_encoded small_6600974_right_checked

theorem cover_6600974 : CoveredBy scale carrier boxes root_6600974 := by
  apply coveredBy_split_literal root_6600974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600979 small_6600974_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600979
  · exact small_6600974_right_covered
#print axioms cover_6600974

def root_6600973 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600973_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600973_right_fuel : Nat := 21
def small_6600973_right_count : Nat := 131
def small_6600973_right_encoded : String := "135D4507000000030CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70C9A86FA0000000600000006000000000F878CF7000000000C9A86FA000000090F875105000000020C9A87080000000900000006000000040F34D10800000004000000060000000113867102000000010CFD9C050F34D0FA0CFD9BFF0F350D08000000090000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70C9A86FA0F878D0500000009000000020F875105000000020C9A8708000000090F878CFF0000000400000006000000000F878CF7000000000C9A86FA000000090F875105000000020C9A8708000000090F878CFF00000004028000FC13D7ED07022A45790000000613E1C502000000010DE7CA0000000006000000080000000300000005000000040F34D1080000000400000006000000000F34D10000000000045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F875105000000020C9A87080000000900000006000000040F34D10800000004000000060000000113867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F875105000000020C9A87080000000800000005000000040F34D1080000000400000005"
theorem small_6600973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600973_right_root small_6600973_right_fuel small_6600973_right_count small_6600973_right_encoded = true := by
  decide +kernel
theorem small_6600973_right_covered : CoveredBy scale carrier boxes small_6600973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600973_right_root small_6600973_right_fuel small_6600973_right_count small_6600973_right_encoded small_6600973_right_checked

theorem cover_6600973 : CoveredBy scale carrier boxes root_6600973 := by
  apply coveredBy_split_literal root_6600973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600974 small_6600973_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600974
  · exact small_6600973_right_covered
#print axioms cover_6600973

def root_6600968 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600968_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600968_right_fuel : Nat := 1
def small_6600968_right_count : Nat := 1
def small_6600968_right_encoded : String := "00000004"
theorem small_6600968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600968_right_root small_6600968_right_fuel small_6600968_right_count small_6600968_right_encoded = true := by
  decide +kernel
theorem small_6600968_right_covered : CoveredBy scale carrier boxes small_6600968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600968_right_root small_6600968_right_fuel small_6600968_right_count small_6600968_right_encoded small_6600968_right_checked

theorem cover_6600968 : CoveredBy scale carrier boxes root_6600968 := by
  apply coveredBy_split_literal root_6600968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600973 small_6600968_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600973
  · exact small_6600968_right_covered
#print axioms cover_6600968

def root_6600967 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600967_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600967_right_fuel : Nat := 15
def small_6600967_right_count : Nat := 61
def small_6600967_right_encoded : String := "1207010800000004050000FC135D81070CFD9BF70F350D00045489F91386AD020CFD9C05000000060F350CFA00000002000000060000000113867102000000010CFD9C050F34D0FA00000006000000020F350CFA00000002045489FF1386AD080C9A8700000000060F878CF7000000000C9A86FA000000060000000600000004138671080000000400000006000000000F34D10000000000045489F90000000613867102000000010CFD9C05000000060F350CFA00000002045489FF1386AD080C9A86FA0000000600000005000000040000000600000003135D4507000000030CFD9BF70F350D00000000060000000000000006"
theorem small_6600967_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600967_right_root small_6600967_right_fuel small_6600967_right_count small_6600967_right_encoded = true := by
  decide +kernel
theorem small_6600967_right_covered : CoveredBy scale carrier boxes small_6600967_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600967_right_root small_6600967_right_fuel small_6600967_right_count small_6600967_right_encoded small_6600967_right_checked

theorem cover_6600967 : CoveredBy scale carrier boxes root_6600967 := by
  apply coveredBy_split_literal root_6600967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600968 small_6600967_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600968
  · exact small_6600967_right_covered
#print axioms cover_6600967

def root_6600961 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600961_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600961_left_fuel : Nat := 1
def small_6600961_left_count : Nat := 1
def small_6600961_left_encoded : String := "00000002"
theorem small_6600961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600961_left_root small_6600961_left_fuel small_6600961_left_count small_6600961_left_encoded = true := by
  decide +kernel
theorem small_6600961_left_covered : CoveredBy scale carrier boxes small_6600961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600961_left_root small_6600961_left_fuel small_6600961_left_count small_6600961_left_encoded small_6600961_left_checked

theorem cover_6600961 : CoveredBy scale carrier boxes root_6600961 := by
  apply coveredBy_split_literal root_6600961 small_6600961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600967 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6600961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600967
#print axioms cover_6600961

def root_6600903 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600903_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600903_left_fuel : Nat := 10
def small_6600903_left_count : Nat := 25
def small_6600903_left_encoded : String := "120700FA08A912FF12073D08050000FC135D81070CFD9BF70F350D00045489F900000006138671020000000100000009000000000F34D100000000000000000900000003135D450700000003000000060000000412070108000000040000000600000002"
theorem small_6600903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600903_left_root small_6600903_left_fuel small_6600903_left_count small_6600903_left_encoded = true := by
  decide +kernel
theorem small_6600903_left_covered : CoveredBy scale carrier boxes small_6600903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600903_left_root small_6600903_left_fuel small_6600903_left_count small_6600903_left_encoded small_6600903_left_checked

theorem cover_6600903 : CoveredBy scale carrier boxes root_6600903 := by
  apply coveredBy_split_literal root_6600903 small_6600903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600961 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6600903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600961
#print axioms cover_6600903

def root_6600897 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600897_left_fuel : Nat := 1
def small_6600897_left_count : Nat := 1
def small_6600897_left_encoded : String := "00000001"
theorem small_6600897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600897_left_root small_6600897_left_fuel small_6600897_left_count small_6600897_left_encoded = true := by
  decide +kernel
theorem small_6600897_left_covered : CoveredBy scale carrier boxes small_6600897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600897_left_root small_6600897_left_fuel small_6600897_left_count small_6600897_left_encoded small_6600897_left_checked

theorem cover_6600897 : CoveredBy scale carrier boxes root_6600897 := by
  apply coveredBy_split_literal root_6600897 small_6600897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600903 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6600897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600903
#print axioms cover_6600897

def root_6600547 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600547_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600547_left_fuel : Nat := 22
def small_6600547_left_count : Nat := 161
def small_6600547_left_encoded : String := "12073D0208A91305120700FA08A912FF12073D08050000FC000000060000000600000004000000060000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A8700000000060F878CF700000000000000060000000400000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70C9A86FA0F878D0500000006000000020F875105000000020C9A87080F8750FF000000090000000400000006000000000F878CF7000000000C9A86FA0F878D0500000009000000020F875105000000020C9A87080F8750FF000000090000000400000006000000040F34D1080000000400000006000000000F34D100000000000CFD9BF90F350D020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A870200000006000000060000000400000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A87080000000900000006000000020F875105000000020C9A87080F8750FF00000009000000040F878CFF0000000400000006000000040F34D108000000040000000600000003135D4507000000030CFD9BF70F350D000CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA0000000200000006000000000F34D100000000000CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA0000000200000006000000041207010800000004050000FC135D81070CFD9BF70F350D00000000060000000000000006000000030000000600000001"
theorem small_6600547_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600547_left_root small_6600547_left_fuel small_6600547_left_count small_6600547_left_encoded = true := by
  decide +kernel
theorem small_6600547_left_covered : CoveredBy scale carrier boxes small_6600547_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600547_left_root small_6600547_left_fuel small_6600547_left_count small_6600547_left_encoded small_6600547_left_checked

theorem cover_6600547 : CoveredBy scale carrier boxes root_6600547 := by
  apply coveredBy_split_literal root_6600547 small_6600547_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600897 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6600547_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600897
#print axioms cover_6600547

def root_6600542 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600542_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600542_right_fuel : Nat := 1
def small_6600542_right_count : Nat := 1
def small_6600542_right_encoded : String := "00000000"
theorem small_6600542_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600542_right_root small_6600542_right_fuel small_6600542_right_count small_6600542_right_encoded = true := by
  decide +kernel
theorem small_6600542_right_covered : CoveredBy scale carrier boxes small_6600542_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600542_right_root small_6600542_right_fuel small_6600542_right_count small_6600542_right_encoded small_6600542_right_checked

theorem cover_6600542 : CoveredBy scale carrier boxes root_6600542 := by
  apply coveredBy_split_literal root_6600542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600547 small_6600542_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600547
  · exact small_6600542_right_covered
#print axioms cover_6600542

def root_6600541 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600541_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600541_right_fuel : Nat := 27
def small_6600541_right_count : Nat := 325
def small_6600541_right_encoded : String := "120701000000000008A912F912073D0208A91305120700FA08A912FF12073D08050000FC135D8107045489F71386AD000CFD9BF9000000060F34D1020000000100000006000000000000000700000003135D450700000003045489F70000000913867100000000000000000900000004000000060000000212073CFA0000000208A912FF12073D08050000FC135D8107045489F71386AD000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F875105000000020000000700000004000000070000000013867100000000000000000700000003135D450700000003045489F71386AD000CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA00000002000000060000000013867100000000000CFD9BF9000000070F34D10200000001000000060000000412070108000000040000000600000001120701020000000108A91305120700FA08A912FF12073D08050000FC135D8107045489F70000000800000008000000030000000800000004000000060000000212073CFA0000000208A912FF12073D08050000FC135D8107045489F71386AD00045489F91386AD020CFD9C050F34D0FA0CFD9BFF0000000900000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000009000000020F875105000000020C9A87080F8750FF00000009000000040F878CFF00000004078000FC0000000700000007000000040F34D10800000004000000070000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A8708000000080F878CFF0000000400000008000000020F875105000000020C9A87080F8750FF078000FC128A7D07067ECE770000000912EA590000000000000000080000000300000008000000040F878CFF00000004078000FC128A7D07067ECE7712EA9500022A457900000007000000080000000012EA590000000000000000080000000300000005000000040F34D108000000040C9A86FA0F878D05000000080000000200000005000000001386710000000000045489F91386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F875105000000020C9A87080F8750FF078000FC0000000700000007000000040000000700000004000000070000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000008000000020F875105000000020C9A87080F8750FF078000FC128A7D070000000800000003000000050000000400000005000000040F34D108000000040000000500000003135D450700000003045489F71386AD00045489F91386AD020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F875105000000020C9A8708000000080000000500000004000000060000000113867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D08000000080000000400000008000000001386710000000000045489F91386AD020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A86FA000000060000000500000004000000060000000100000008000000041207010800000004050000FC135D8107045489F71386AD00045489F90000000613867102000000010CFD9C05000000060000000700000000000000070000000300000005"
theorem small_6600541_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600541_right_root small_6600541_right_fuel small_6600541_right_count small_6600541_right_encoded = true := by
  decide +kernel
theorem small_6600541_right_covered : CoveredBy scale carrier boxes small_6600541_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600541_right_root small_6600541_right_fuel small_6600541_right_count small_6600541_right_encoded small_6600541_right_checked

theorem cover_6600541 : CoveredBy scale carrier boxes root_6600541 := by
  apply coveredBy_split_literal root_6600541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600542 small_6600541_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600542
  · exact small_6600541_right_covered
#print axioms cover_6600541

def root_6600535 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600535_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600535_left_fuel : Nat := 1
def small_6600535_left_count : Nat := 1
def small_6600535_left_encoded : String := "00000004"
theorem small_6600535_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600535_left_root small_6600535_left_fuel small_6600535_left_count small_6600535_left_encoded = true := by
  decide +kernel
theorem small_6600535_left_covered : CoveredBy scale carrier boxes small_6600535_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600535_left_root small_6600535_left_fuel small_6600535_left_count small_6600535_left_encoded small_6600535_left_checked

theorem cover_6600535 : CoveredBy scale carrier boxes root_6600535 := by
  apply coveredBy_split_literal root_6600535 small_6600535_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600541 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6600535_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600541
#print axioms cover_6600535

def root_6600185 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600185_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600185_left_fuel : Nat := 17
def small_6600185_left_count : Nat := 161
def small_6600185_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073D0208A91305120700FA000000090000000212073CFA00000002050000FC135D810705000108135D44FF0CFD9BF7000000090F34D100000000000000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C050000000900000009000000010F34D1020000000100000009000000000F34D100000000000CFD9BF9000000090F34D102000000010000000900000003135D4507000000030500010800000009135D80FF000000040CFD9BF70F350D000CFD9BF9000000090F34D1020000000100000009000000000F34D100000000000000000900000001120701020000000108A913050000000912073CFA00000002050000FC135D81070500010800000009135D80FF000000040CFD9BF70F350D00045489F900000009138671020000000100000009000000000F34D100000000000000000900000003135D4507000000030500010800000009135D80FF000000040CFD9BF7000000090F34D100000000000000000900000000120701000000000008A912F912073D0208A913050000000912073CFA00000002050000FC135D81070500010800000009135D80FF00000004045489F71386AD000CFD9BF9000000090F34D10200000001000000090000000013867100000000000CFD9BF9000000090F34D102000000010000000900000003135D4507000000030500010800000009135D80FF00000004045489F70000000913867100000000000000000900000001120701020000000108A913050000000912073CFA00000002050000FC135D81070500010800000009135D80FF00000004045489F70000000913867100000000000000000900000003135D4507000000030000000900000004"
theorem small_6600185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600185_left_root small_6600185_left_fuel small_6600185_left_count small_6600185_left_encoded = true := by
  decide +kernel
theorem small_6600185_left_covered : CoveredBy scale carrier boxes small_6600185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600185_left_root small_6600185_left_fuel small_6600185_left_count small_6600185_left_encoded small_6600185_left_checked

theorem cover_6600185 : CoveredBy scale carrier boxes root_6600185 := by
  apply coveredBy_split_literal root_6600185 small_6600185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600535 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6600185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600535
#print axioms cover_6600185

def root_6600179 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600179_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600179_left_fuel : Nat := 1
def small_6600179_left_count : Nat := 1
def small_6600179_left_encoded : String := "00000003"
theorem small_6600179_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600179_left_root small_6600179_left_fuel small_6600179_left_count small_6600179_left_encoded = true := by
  decide +kernel
theorem small_6600179_left_covered : CoveredBy scale carrier boxes small_6600179_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600179_left_root small_6600179_left_fuel small_6600179_left_count small_6600179_left_encoded small_6600179_left_checked

theorem cover_6600179 : CoveredBy scale carrier boxes root_6600179 := by
  apply coveredBy_split_literal root_6600179 small_6600179_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600185 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6600179_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600185
#print axioms cover_6600179

def root_6586695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6586695 : CoveredBy scale carrier boxes root_6586695 := by
  apply coveredBy_split_literal root_6586695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6586696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6600179 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6586696
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6600179
#print axioms cover_6586695

def root_6586690 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586690_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586690_right_fuel : Nat := 1
def small_6586690_right_count : Nat := 1
def small_6586690_right_encoded : String := "00000002"
theorem small_6586690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6586690_right_root small_6586690_right_fuel small_6586690_right_count small_6586690_right_encoded = true := by
  decide +kernel
theorem small_6586690_right_covered : CoveredBy scale carrier boxes small_6586690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6586690_right_root small_6586690_right_fuel small_6586690_right_count small_6586690_right_encoded small_6586690_right_checked

theorem cover_6586690 : CoveredBy scale carrier boxes root_6586690 := by
  apply coveredBy_split_literal root_6586690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6586695 small_6586690_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6586695
  · exact small_6586690_right_covered
#print axioms cover_6586690

def root_6606705 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606705_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606705_right_fuel : Nat := 34
def small_6606705_right_count : Nat := 313
def small_6606705_right_encoded : String := "0F34D10000000000045489F91386AD020CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070000000A000000030F875107000000030C9A87080000000A0F878CFF000000040000000A000000040F34D108000000040C9A86FC0F878D070000000A000000030F87510700000003078000FA000000070000000A0000000113867102000000010CFD9C070F34D0FC0CFD9BFF0F350D080000000A000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070C9A87080F8750FF078000FA128A7D050AD357770000000A0000000A000000020000000A000000040F878CFF00000004078000FA128A7D050AD3577710D13D00022A45790000000A13E1C502000000010DE7C9FC0000000A0000000A000000000000000A000000020000000A000000030F875107000000030C9A87080F8750FF078000FA128A7D050AD3577710D13D00022A45790000000A13E1C502000000010B4D43FC10804D070B4D44080000000A10804CFF000000040000000A0000000310801107000000030B4D4408108010FF08C000FA000000090000000A0000000410804CFF0000000408C000FA11FC25050BE879B71011AD00011523390000000A13F85902000000010AA6A27C000000060000000A000000000000000A000000020000000A0000000010D10100000000000000000A00000002128A4105000000020000000A000000040F878CFF00000004078000FA128A7D050AD3577710D13D00022A457913E201020B4D43FC0000000A0000000A0000000113E1C502000000010B4D43FC10804D070DE7CA080000000A0E6014FF0000000408C000FA11FC25050BE879B70000000A0000000A000000020000000A0000000310801107000000030DE7CA080E5FD8FF08C000FA11FC25050BE879B71011AD00011523390000000A13F85902000000010AA6A27C10EDAD070000000A0000000310ED7107000000030D4128880000000A0EFA4CFF000000040000000A0000000010117100000000000000000A000000020000000A000000040E6014FF0000000408C000FA11FC25050BE879B71011AD00011523390000000A13F85902000000010DAED87F0E9661080AA6A27C0000000A10ED710700000003096000FA11AABD050000000A0000000200000005000000040E962508000000040AA6A27C10EDAD070000000A00000003000000050000000010117100000000000000000A00000002000000050000000010D1010000000000022A45790000000A13E1C502000000010B4D43FC0000000A0000000A00000002128A4105000000020AD357770000000A0000000A000000040F34D108000000040C9A86FC0F878D07078000FA128A7D050AD3577710D13D00022A45790000000A13E1C502000000010AD3577F00000009000000090000000010D10100000000000000000A00000002128A41050000000200000009000000030F87510700000003078000FA128A7D050AD3577710D13D00022A457913E201020AD3577F10D13D080B4D43FC000000070000000A00000004000000070000000113E1C502000000010AD3577F10D13D080B4D43FC10804D0708C000FA11FC25050BE879B71011AD00011523390000000700000009000000000000000A000000020000000500000003000000050000000410D1010800000004000000050000000010D1010000000000000000050000000200000005"
theorem small_6606705_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606705_right_root small_6606705_right_fuel small_6606705_right_count small_6606705_right_encoded = true := by
  decide +kernel
theorem small_6606705_right_covered : CoveredBy scale carrier boxes small_6606705_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606705_right_root small_6606705_right_fuel small_6606705_right_count small_6606705_right_encoded small_6606705_right_checked

theorem cover_6606705 : CoveredBy scale carrier boxes root_6606705 := by
  apply coveredBy_split_literal root_6606705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2490.root small_6606705_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2490.covered
  · exact small_6606705_right_covered
#print axioms cover_6606705

def root_6606700 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606700_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606700_right_fuel : Nat := 1
def small_6606700_right_count : Nat := 1
def small_6606700_right_encoded : String := "00000002"
theorem small_6606700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606700_right_root small_6606700_right_fuel small_6606700_right_count small_6606700_right_encoded = true := by
  decide +kernel
theorem small_6606700_right_covered : CoveredBy scale carrier boxes small_6606700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606700_right_root small_6606700_right_fuel small_6606700_right_count small_6606700_right_encoded small_6606700_right_checked

theorem cover_6606700 : CoveredBy scale carrier boxes root_6606700 := by
  apply coveredBy_split_literal root_6606700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606705 small_6606700_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606705
  · exact small_6606700_right_covered
#print axioms cover_6606700

def root_6606699 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606699_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606699_right_fuel : Nat := 21
def small_6606699_right_count : Nat := 95
def small_6606699_right_encoded : String := "135D4505000000020CFD9BF70F350D00045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F700000008000000000000000A000000040F34D108000000040C9A8700000000080000000A0000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC000000080F875107000000030C9A87080F8750FF000000080000000400000008000000000F878CF7000000000C9A86FC0F878D070000000A000000030F875107000000030C9A87080000000A0F878CFF00000004028000FA13D7ED05022A45790000000A13E1C502000000010DE7CA00000000090000000A0000000200000005000000040F34D108000000040C9A8700000000080F878CF70000000000000009000000000F34D10000000000045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A"
theorem small_6606699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606699_right_root small_6606699_right_fuel small_6606699_right_count small_6606699_right_encoded = true := by
  decide +kernel
theorem small_6606699_right_covered : CoveredBy scale carrier boxes small_6606699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606699_right_root small_6606699_right_fuel small_6606699_right_count small_6606699_right_encoded small_6606699_right_checked

theorem cover_6606699 : CoveredBy scale carrier boxes root_6606699 := by
  apply coveredBy_split_literal root_6606699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606700 small_6606699_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606700
  · exact small_6606699_right_covered
#print axioms cover_6606699

def root_6606694 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606694_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606694_right_fuel : Nat := 1
def small_6606694_right_count : Nat := 1
def small_6606694_right_encoded : String := "00000004"
theorem small_6606694_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606694_right_root small_6606694_right_fuel small_6606694_right_count small_6606694_right_encoded = true := by
  decide +kernel
theorem small_6606694_right_covered : CoveredBy scale carrier boxes small_6606694_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606694_right_root small_6606694_right_fuel small_6606694_right_count small_6606694_right_encoded small_6606694_right_checked

theorem cover_6606694 : CoveredBy scale carrier boxes root_6606694 := by
  apply coveredBy_split_literal root_6606694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606699 small_6606694_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606699
  · exact small_6606694_right_covered
#print axioms cover_6606694

def root_6606693 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606693_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606693_right_fuel : Nat := 21
def small_6606693_right_count : Nat := 163
def small_6606693_right_encoded : String := "1207010800000004050000FA135D81050CFD9BF70F350D00045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF1386AD080C9A87000F8750F700000008000000000F878CF7000000000C9A86FC000000070F87510700000003078000FA00000007000000070000000413867108000000040C9A87000F8750F70C9A86FC000000070F87510700000003078000FA000000060000000600000000000000070000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FC000000080F87510700000003078000FA128A7D05022A457900000008000000090000000200000009000000000F878CF7000000000C9A86FC0F878D0700000009000000030F87510700000003078000FA128A7D05022A457913E20102067ECE7F0000000700000007000000010000000900000002000000050000000413867108000000040C9A87000F8750F70C9A86FC000000080F87510700000003078000FA128A7D05000000090000000200000005000000000F878CF70000000000000009000000000F34D10000000000045489F91386AD020CFD9C070000000A000000070000000113867102000000010CFD9C07000000090F350CFC00000003045489FF1386AD080C9A86FC0F878D070000000900000003000000050000000413867108000000040000000500000002135D4505000000020CFD9BF70F350D00045489F91386AD020CFD9C070000000A0F350CFC00000003045489FF1386AD080C9A8700000000080000000A0000000413867108000000040C9A8700000000080000000500000001138671020000000100000009000000000F34D10000000000045489F90000000A00000009"
theorem small_6606693_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606693_right_root small_6606693_right_fuel small_6606693_right_count small_6606693_right_encoded = true := by
  decide +kernel
theorem small_6606693_right_covered : CoveredBy scale carrier boxes small_6606693_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606693_right_root small_6606693_right_fuel small_6606693_right_count small_6606693_right_encoded small_6606693_right_checked

theorem cover_6606693 : CoveredBy scale carrier boxes root_6606693 := by
  apply coveredBy_split_literal root_6606693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606694 small_6606693_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606694
  · exact small_6606693_right_covered
#print axioms cover_6606693

def root_6606687 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606687_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606687_left_fuel : Nat := 1
def small_6606687_left_count : Nat := 1
def small_6606687_left_encoded : String := "00000003"
theorem small_6606687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606687_left_root small_6606687_left_fuel small_6606687_left_count small_6606687_left_encoded = true := by
  decide +kernel
theorem small_6606687_left_covered : CoveredBy scale carrier boxes small_6606687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606687_left_root small_6606687_left_fuel small_6606687_left_count small_6606687_left_encoded small_6606687_left_checked

theorem cover_6606687 : CoveredBy scale carrier boxes root_6606687 := by
  apply coveredBy_split_literal root_6606687 small_6606687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606693 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6606687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606693
#print axioms cover_6606687

def root_6606627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606627_left_fuel : Nat := 8
def small_6606627_left_count : Nat := 27
def small_6606627_left_encoded : String := "120700FC08A912FF12073D08050000FA135D81050CFD9BF70F350D0000000008000000000F34D100000000000000000A00000002135D4505000000020000000A000000041207010800000004050000FA135D81050CFD9BF70000000800000009000000020000000900000003"
theorem small_6606627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606627_left_root small_6606627_left_fuel small_6606627_left_count small_6606627_left_encoded = true := by
  decide +kernel
theorem small_6606627_left_covered : CoveredBy scale carrier boxes small_6606627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606627_left_root small_6606627_left_fuel small_6606627_left_count small_6606627_left_encoded small_6606627_left_checked

theorem cover_6606627 : CoveredBy scale carrier boxes root_6606627 := by
  apply coveredBy_split_literal root_6606627 small_6606627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606687 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6606627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606687
#print axioms cover_6606627

def root_6606621 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606621_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606621_left_fuel : Nat := 1
def small_6606621_left_count : Nat := 1
def small_6606621_left_encoded : String := "00000001"
theorem small_6606621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606621_left_root small_6606621_left_fuel small_6606621_left_count small_6606621_left_encoded = true := by
  decide +kernel
theorem small_6606621_left_covered : CoveredBy scale carrier boxes small_6606621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606621_left_root small_6606621_left_fuel small_6606621_left_count small_6606621_left_encoded small_6606621_left_checked

theorem cover_6606621 : CoveredBy scale carrier boxes root_6606621 := by
  apply coveredBy_split_literal root_6606621 small_6606621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606627 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6606621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606627
#print axioms cover_6606621

def root_6606229 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606229_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606229_left_fuel : Nat := 22
def small_6606229_left_count : Nat := 183
def small_6606229_left_encoded : String := "12073D0208A91307120700FC08A912FF12073D08050000FA0000000A0000000A000000041207010800000004050000FA135D81050CFD9BF70F350D0000000008000000000000000700000002135D4505000000020CFD9BF700000008000000090000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9BF70F350D000CFD9BF90F350D020CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70000000A000000000000000A000000040F34D108000000040C9A87000F8750F7000000070000000000000007000000010F34D102000000010CFD9C070F34D0FC0CFD9BFF000000080000000A000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC000000080F875107000000030C9A87080F8750FF000000080000000400000008000000000F878CF7000000000C9A86FC0000000A0000000A000000040F34D108000000040C9A87000F8750F700000008000000000F878CF7000000000C9A86FC000000070000000A000000000F34D100000000000CFD9BF90000000A0F34D102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A00000002135D4505000000020CFD9BF70F350D000CFD9BF90000000A0F34D102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A000000000F34D100000000000000000A000000041207010800000004050000FA135D81050CFD9BF70F350D000CFD9BF9000000070F34D102000000010CFD9C070F34D0FC00000007000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70000000800000000000000070000000400000007000000000F34D100000000000000000700000002135D4505000000020CFD9BF70F350D000CFD9BF90F350D020CFD9C070000000A00000007000000010F34D102000000010000000A000000000F34D100000000000000000700000001"
theorem small_6606229_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606229_left_root small_6606229_left_fuel small_6606229_left_count small_6606229_left_encoded = true := by
  decide +kernel
theorem small_6606229_left_covered : CoveredBy scale carrier boxes small_6606229_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606229_left_root small_6606229_left_fuel small_6606229_left_count small_6606229_left_encoded small_6606229_left_checked

theorem cover_6606229 : CoveredBy scale carrier boxes root_6606229 := by
  apply coveredBy_split_literal root_6606229 small_6606229_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606621 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6606229_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606621
#print axioms cover_6606229

def root_6606224 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606224_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606224_right_fuel : Nat := 1
def small_6606224_right_count : Nat := 1
def small_6606224_right_encoded : String := "00000000"
theorem small_6606224_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606224_right_root small_6606224_right_fuel small_6606224_right_count small_6606224_right_encoded = true := by
  decide +kernel
theorem small_6606224_right_covered : CoveredBy scale carrier boxes small_6606224_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606224_right_root small_6606224_right_fuel small_6606224_right_count small_6606224_right_encoded small_6606224_right_checked

theorem cover_6606224 : CoveredBy scale carrier boxes root_6606224 := by
  apply coveredBy_split_literal root_6606224 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606229 small_6606224_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606229
  · exact small_6606224_right_covered
#print axioms cover_6606224

def root_6606223 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606223_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606223_right_fuel : Nat := 22
def small_6606223_right_count : Nat := 109
def small_6606223_right_encoded : String := "120701000000000008A912F912073D0208A913070000000A12073CFC0000000308A912FF12073D08050000FA135D8105045489F70000000A0000000A000000020000000A000000040000000A00000001120701020000000108A91307120700FC0000000A0000000312073CFC0000000308A912FF12073D08050000FA135D8105045489F71386AD00045489F91386AD020CFD9C070000000A0F350CFC000000030000000A0000000113867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070000000A000000030F875107000000030C9A87080000000A0F878CFF000000040000000A000000040F34D108000000040C9A86FC0000000A00000005000000001386710000000000045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A00000002135D450500000002045489F70000000A0000000A000000041207010800000004050000FA135D8105045489F71386AD00045489F90000000713867102000000010CFD9C07000000090000000700000000000000070000000200000005"
theorem small_6606223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606223_right_root small_6606223_right_fuel small_6606223_right_count small_6606223_right_encoded = true := by
  decide +kernel
theorem small_6606223_right_covered : CoveredBy scale carrier boxes small_6606223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606223_right_root small_6606223_right_fuel small_6606223_right_count small_6606223_right_encoded small_6606223_right_checked

theorem cover_6606223 : CoveredBy scale carrier boxes root_6606223 := by
  apply coveredBy_split_literal root_6606223 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606224 small_6606223_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606224
  · exact small_6606223_right_covered
#print axioms cover_6606223

def root_6606217 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606217_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606217_left_fuel : Nat := 1
def small_6606217_left_count : Nat := 1
def small_6606217_left_encoded : String := "00000004"
theorem small_6606217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606217_left_root small_6606217_left_fuel small_6606217_left_count small_6606217_left_encoded = true := by
  decide +kernel
theorem small_6606217_left_covered : CoveredBy scale carrier boxes small_6606217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606217_left_root small_6606217_left_fuel small_6606217_left_count small_6606217_left_encoded small_6606217_left_checked

theorem cover_6606217 : CoveredBy scale carrier boxes root_6606217 := by
  apply coveredBy_split_literal root_6606217 small_6606217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.root_6606223 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6606217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159.cover_6606223
#print axioms cover_6606217

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0159

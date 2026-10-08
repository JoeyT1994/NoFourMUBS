import TaoBundleAssembly0128
import TaoBundleAssembly0131
import TaoBundleAssembly0132
import TaoBundleAssembly0133
import TaoBundleChunkBatch0505
import TaoBundleChunkBatch0506
import TaoBundleChunkBatch0507
import TaoBundleChunkBatch0508
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134
def root_5394447 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394447_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394447_right_fuel : Nat := 24
def small_5394447_right_count : Nat := 177
def small_5394447_right_encoded : String := "135D44F9050000FA135D80FB00000002045489F71386AD000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F813D7ECF900000001078000FA000000060000000600000006000000080F878D070C9A87080F87510900000004028000F813D7ECF900000001078000FA00000009128A40FB000000050000000200000008000000080000000300000004000000030000000013867100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F813D7ECF900000001078000FA128A7CFB00000002022A45770000000613E1C500000000000B4D44060000000610804D070000000600000003128A40FB022A45770000000613E1C500000000000B4D44060000000610804D0700000006000000030000000213D7B0F9078000FA128A7CFB000000020000000600000005000000010F878D09028000F813D7ECF900000001078000FA128A7CFB00000002022A45770000000813E1C500000000000B4D44060000000810804D0700000005000000030000000500000005000000040F878D070C9A87080F87510900000004028000F813D7ECF900000001078000FA128A7CFB00000002022A45770000000913E1C500000000000DE7CA060E5FD907000000030B4D44080000000610804D0900000005000000040E6015070000000500000003000000050000000500000005000000030000000400000003135D44FB045489F71386AD000CFD9C07000000050F350D060CFD9C09000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F8000000060000000500000005000000050000000400000003000000001386710000000000000000050000000200000001"
theorem small_5394447_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394447_right_root small_5394447_right_fuel small_5394447_right_count small_5394447_right_encoded = true := by
  decide +kernel
theorem small_5394447_right_covered : CoveredBy scale carrier boxes small_5394447_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394447_right_root small_5394447_right_fuel small_5394447_right_count small_5394447_right_encoded small_5394447_right_checked

theorem cover_5394447 : CoveredBy scale carrier boxes root_5394447 := by
  apply coveredBy_split_literal root_5394447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5394448 small_5394447_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5394448
  · exact small_5394447_right_covered
#print axioms cover_5394447

def root_5394442 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394442_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394442_right_fuel : Nat := 1
def small_5394442_right_count : Nat := 1
def small_5394442_right_encoded : String := "00000004"
theorem small_5394442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394442_right_root small_5394442_right_fuel small_5394442_right_count small_5394442_right_encoded = true := by
  decide +kernel
theorem small_5394442_right_covered : CoveredBy scale carrier boxes small_5394442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394442_right_root small_5394442_right_fuel small_5394442_right_count small_5394442_right_encoded small_5394442_right_checked

theorem cover_5394442 : CoveredBy scale carrier boxes root_5394442 := by
  apply coveredBy_split_literal root_5394442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5394447 small_5394442_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5394447
  · exact small_5394442_right_covered
#print axioms cover_5394442

def root_5394346 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394346_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394346_left_fuel : Nat := 18
def small_5394346_left_count : Nat := 47
def small_5394346_left_encoded : String := "1207010800000004050000F8135D80F900000001050000FA135D80FB00000002045489F71386AD000CFD9C07000000050F350D0604548A09000000051386AD080C9A8706000000080000000500000004000000030000000013867100000000000CFD9C07000000050F350D0604548A09000000051386AD080C9A87060F87510700000003078000F8128A7CF900000001078000FA128A7CFB000000020000000800000005000000050000000500000004000000030000000500000005"
theorem small_5394346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394346_left_root small_5394346_left_fuel small_5394346_left_count small_5394346_left_encoded = true := by
  decide +kernel
theorem small_5394346_left_covered : CoveredBy scale carrier boxes small_5394346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394346_left_root small_5394346_left_fuel small_5394346_left_count small_5394346_left_encoded small_5394346_left_checked

theorem cover_5394346 : CoveredBy scale carrier boxes root_5394346 := by
  apply coveredBy_split_literal root_5394346 small_5394346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5394442 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5394346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5394442
#print axioms cover_5394346

def root_5394341 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394341_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394341_right_fuel : Nat := 1
def small_5394341_right_count : Nat := 1
def small_5394341_right_encoded : String := "00000003"
theorem small_5394341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394341_right_root small_5394341_right_fuel small_5394341_right_count small_5394341_right_encoded = true := by
  decide +kernel
theorem small_5394341_right_covered : CoveredBy scale carrier boxes small_5394341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394341_right_root small_5394341_right_fuel small_5394341_right_count small_5394341_right_encoded small_5394341_right_checked

theorem cover_5394341 : CoveredBy scale carrier boxes root_5394341 := by
  apply coveredBy_split_literal root_5394341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5394346 small_5394341_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5394346
  · exact small_5394341_right_covered
#print axioms cover_5394341

def root_5394237 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394237_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394237_left_fuel : Nat := 20
def small_5394237_left_count : Nat := 51
def small_5394237_left_encoded : String := "120701060000000308A913090000000512073D08050000F8135D80F900000001050000FA135D80FB00000002045489F71386AD0004548A07000000051386AD060CFD9C09000000050F350D080C9A87080000000700000005000000040000000300000000138671000000000004548A07000000051386AD060CFD9C09000000050F350D080C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB00000002000000070000000500000005000000050000000400000003000000050000000500000004"
theorem small_5394237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394237_left_root small_5394237_left_fuel small_5394237_left_count small_5394237_left_encoded = true := by
  decide +kernel
theorem small_5394237_left_covered : CoveredBy scale carrier boxes small_5394237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394237_left_root small_5394237_left_fuel small_5394237_left_count small_5394237_left_encoded small_5394237_left_checked

theorem cover_5394237 : CoveredBy scale carrier boxes root_5394237 := by
  apply coveredBy_split_literal root_5394237 small_5394237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5394341 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5394237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5394341
#print axioms cover_5394237

def root_5394231 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394231_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394231_left_fuel : Nat := 1
def small_5394231_left_count : Nat := 1
def small_5394231_left_encoded : String := "00000000"
theorem small_5394231_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394231_left_root small_5394231_left_fuel small_5394231_left_count small_5394231_left_encoded = true := by
  decide +kernel
theorem small_5394231_left_covered : CoveredBy scale carrier boxes small_5394231_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394231_left_root small_5394231_left_fuel small_5394231_left_count small_5394231_left_encoded small_5394231_left_checked

theorem cover_5394231 : CoveredBy scale carrier boxes root_5394231 := by
  apply coveredBy_split_literal root_5394231 small_5394231_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5394237 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5394231_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5394237
#print axioms cover_5394231

def root_5393717 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5393717_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5393717_left_fuel : Nat := 22
def small_5393717_left_count : Nat := 241
def small_5393717_left_encoded : String := "12073D0008A91307120701060000000308A9130912070108000000040000000512073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9BF7000000070F34D1000000000004548A07000000070000000700000007135D44F9050000FA135D80FB000000020CFD9BF7000000050F34D100000000000000000500000005000000010000000412073D0608A913091207010800000004050000F8135D80F900000001050000FA135D80FB000000020CFD9BF7000000080F34D100000000000CFD9C07000000080F350D060000000800000003135D44FB0CFD9BF7000000050F34D1000000000000000005000000020000000812073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9BF70F350D000CFD9C070F34D10600000003000000070F350D060CFD9C090F34D10800000004000000080F350D080C9A8700000000070F878CF7000000000C9A870600000008000000070000000400000003000000000F34D100000000000CFD9C070F34D106000000030CFD9C09000000070F350D0800000007000000040F350D060CFD9C090F34D10800000004000000080F350D080C9A87060F875107000000030C9A87080F87510900000004078000F800000006000000060F878D09078000F80000000A00000008000000040F878D070C9A87080F87510900000004078000F800000007128A40F900000009000000010F878D09078000F8128A7CF900000001000000070000000800000004000000030000000400000003135D44FB0CFD9BF70F350D000CFD9C07000000070F350D060CFD9C09000000070000000700000003000000000F34D100000000000CFD9C070F34D10600000003000000070F350D060CFD9C090F34D108000000040C9A87060F875107000000030000000A000000050F350D080C9A87060F875107000000030000000700000007000000040000000300000002135D44F9050000FA135D80FB000000020CFD9BF70F350D000CFD9C070000000800000008000000000F34D100000000000CFD9C070F34D106000000030CFD9C09000000050F350D080C9A87080F875109000000040000000900000005000000040F350D060CFD9C09000000080F350D080C9A870600000008000000080000000400000003135D44FB0CFD9BF70F350D000CFD9C070000000700000007000000000F34D100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A870800000007000000050000000500000004000000030000000200000001000000040000000300000000"
theorem small_5393717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5393717_left_root small_5393717_left_fuel small_5393717_left_count small_5393717_left_encoded = true := by
  decide +kernel
theorem small_5393717_left_covered : CoveredBy scale carrier boxes small_5393717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5393717_left_root small_5393717_left_fuel small_5393717_left_count small_5393717_left_encoded small_5393717_left_checked

theorem cover_5393717 : CoveredBy scale carrier boxes root_5393717 := by
  apply coveredBy_split_literal root_5393717 small_5393717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5394231 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5393717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5394231
#print axioms cover_5393717

def root_5393712 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5393712_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5393712_right_fuel : Nat := 1
def small_5393712_right_count : Nat := 1
def small_5393712_right_encoded : String := "00000004"
theorem small_5393712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5393712_right_root small_5393712_right_fuel small_5393712_right_count small_5393712_right_encoded = true := by
  decide +kernel
theorem small_5393712_right_covered : CoveredBy scale carrier boxes small_5393712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5393712_right_root small_5393712_right_fuel small_5393712_right_count small_5393712_right_encoded small_5393712_right_checked

theorem cover_5393712 : CoveredBy scale carrier boxes root_5393712 := by
  apply coveredBy_split_literal root_5393712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5393717 small_5393712_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5393717
  · exact small_5393712_right_covered
#print axioms cover_5393712

def root_5392196 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5392196 : CoveredBy scale carrier boxes root_5392196 := by
  apply coveredBy_split_literal root_5392196 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2020.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5393712 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2020.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5393712
#print axioms cover_5392196

def root_5392191 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5392191_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5392191_right_fuel : Nat := 1
def small_5392191_right_count : Nat := 1
def small_5392191_right_encoded : String := "00000003"
theorem small_5392191_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5392191_right_root small_5392191_right_fuel small_5392191_right_count small_5392191_right_encoded = true := by
  decide +kernel
theorem small_5392191_right_covered : CoveredBy scale carrier boxes small_5392191_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5392191_right_root small_5392191_right_fuel small_5392191_right_count small_5392191_right_encoded small_5392191_right_checked

theorem cover_5392191 : CoveredBy scale carrier boxes root_5392191 := by
  apply coveredBy_split_literal root_5392191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5392196 small_5392191_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5392196
  · exact small_5392191_right_covered
#print axioms cover_5392191

def root_5390391 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5390391 : CoveredBy scale carrier boxes root_5390391 := by
  apply coveredBy_split_literal root_5390391 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2019.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5392191 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2019.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5392191
#print axioms cover_5390391

def root_5390386 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5390386_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5390386_right_fuel : Nat := 1
def small_5390386_right_count : Nat := 1
def small_5390386_right_encoded : String := "00000002"
theorem small_5390386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5390386_right_root small_5390386_right_fuel small_5390386_right_count small_5390386_right_encoded = true := by
  decide +kernel
theorem small_5390386_right_covered : CoveredBy scale carrier boxes small_5390386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5390386_right_root small_5390386_right_fuel small_5390386_right_count small_5390386_right_encoded small_5390386_right_checked

theorem cover_5390386 : CoveredBy scale carrier boxes root_5390386 := by
  apply coveredBy_split_literal root_5390386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5390391 small_5390386_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5390391
  · exact small_5390386_right_covered
#print axioms cover_5390386

def root_5384528 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5384528 : CoveredBy scale carrier boxes root_5384528 := by
  apply coveredBy_split_literal root_5384528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5384529 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5390386 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5384529
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5390386
#print axioms cover_5384528

def root_5384523 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5384523_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5384523_right_fuel : Nat := 1
def small_5384523_right_count : Nat := 1
def small_5384523_right_encoded : String := "00000001"
theorem small_5384523_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5384523_right_root small_5384523_right_fuel small_5384523_right_count small_5384523_right_encoded = true := by
  decide +kernel
theorem small_5384523_right_covered : CoveredBy scale carrier boxes small_5384523_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5384523_right_root small_5384523_right_fuel small_5384523_right_count small_5384523_right_encoded small_5384523_right_checked

theorem cover_5384523 : CoveredBy scale carrier boxes root_5384523 := by
  apply coveredBy_split_literal root_5384523 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5384528 small_5384523_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5384528
  · exact small_5384523_right_covered
#print axioms cover_5384523

def root_5359019 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5359019 : CoveredBy scale carrier boxes root_5359019 := by
  apply coveredBy_split_literal root_5359019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5359020 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5384523 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5359020
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5384523
#print axioms cover_5359019

def root_5359013 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359013_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359013_left_fuel : Nat := 1
def small_5359013_left_count : Nat := 1
def small_5359013_left_encoded : String := "00000000"
theorem small_5359013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359013_left_root small_5359013_left_fuel small_5359013_left_count small_5359013_left_encoded = true := by
  decide +kernel
theorem small_5359013_left_covered : CoveredBy scale carrier boxes small_5359013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359013_left_root small_5359013_left_fuel small_5359013_left_count small_5359013_left_encoded small_5359013_left_checked

theorem cover_5359013 : CoveredBy scale carrier boxes root_5359013 := by
  apply coveredBy_split_literal root_5359013 small_5359013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5359019 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5359013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5359019
#print axioms cover_5359013

def root_5358299 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5358299_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5358299_left_fuel : Nat := 26
def small_5358299_left_count : Nat := 333
def small_5358299_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E907000000030A000108000000051152250908A912F912073CF80000000108A912FB0000000A120700FA00000005000000020000000A00000004115225070A0001081151E9090000000408A912F900000009120700F800000005000000011152250908A912F912073CF80000000108A912FB12073CFA0000000208A91307120701060000000308A9130912070108000000040500010000000007135D80F7000000000CFD9BF9000000080F34D0F80CFD9BFB00000007000000080000000112073D08000000090000000412073D0608A9130912070108000000040000000A12073D0805000100135D44F70CFD9BF9000000090000000A00000000135D80F7000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000070F350D060000000A000000030F34D0FA00000009000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000500000002000000010000000400000003120700FA08A9130712070106000000030000000912073D0608A91309120701080000000400000008000000090000000300000002120700F808A912FB12073CFA0000000208A91307120701060000000308A9130900000007000000070000000A120700FA08A91307120701060000000308A9130912070108000000040500010000000005135D80F700000000045489F900000009000000050000000500000005000000020000000100000004000000031151E8FB0A0001061151E907000000030A0001081151E90900000004000000050000000A115225070A0001081151E90900000004000000071152250908A912F912073CF80000000108A9130712070106000000030000000712073D0608A9130912070108000000040000000A12073D080500010000000007135D80F700000000050000FA135D80FB000000020CFD9BF90F350CF8000000010000000700000007000000070000000400000003120700F808A91307000000070000000A000000010000000400000003000000021151E8F90A0000FA115224FB000000020A0001061151E907000000030A0001081151E909000000040000000500000008115225070A0001081151E90900000004000000091152250908A912FB12073CFA0000000208A91307120701060000000308A91309000000080000000912073D0608A913090000000812073D080500010000000008135D80F700000000050000F8135D80F9000000010CFD9BFB0F350CFA000000020000000800000008000000080000000400000003120700FA08A9130712070106000000030000000912073D0600000008000000030000000200000004000000031151E8FB0A0001061151E907000000030A0001081151E9090000000405000100135D44F7050000F8000000050000000800000000135D80F700000000050000F8135D80F900000001050000FA0000000500000007135D44F9050000FA00000008135D44FB05000106000000080000000700000002000000011152250908A9130912070108000000040000000812073D080500010000000008000000080000000400000004115225070A0001081151E9090000000408A9130712070106000000030000000712073D06050001000000000700000007000000031152250908A9130712070106000000030000000712073D0608A9130912070108000000040000000812073D080500010000000007135D80F700000000050000F8135D80F900000001050000FA00000007000000070000000800000004000000030000000400000003000000020000000100000000"
theorem small_5358299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5358299_left_root small_5358299_left_fuel small_5358299_left_count small_5358299_left_encoded = true := by
  decide +kernel
theorem small_5358299_left_covered : CoveredBy scale carrier boxes small_5358299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5358299_left_root small_5358299_left_fuel small_5358299_left_count small_5358299_left_encoded small_5358299_left_checked

theorem cover_5358299 : CoveredBy scale carrier boxes root_5358299 := by
  apply coveredBy_split_literal root_5358299 small_5358299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5359013 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5358299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5359013
#print axioms cover_5358299

def root_5304985 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5304985 : CoveredBy scale carrier boxes root_5304985 := by
  apply coveredBy_split_literal root_5304985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5304986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5358299 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5304986
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5358299
#print axioms cover_5304985

def root_5294541 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294541 : CoveredBy scale carrier boxes root_5294541 := by
  apply coveredBy_split_literal root_5294541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5294542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5304985 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5294542
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5304985
#print axioms cover_5294541

def root_5197645 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197645 : CoveredBy scale carrier boxes root_5197645 := by
  apply coveredBy_split_literal root_5197645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5197646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5294541 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5197646
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5294541
#print axioms cover_5197645

def root_5076041 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076041 : CoveredBy scale carrier boxes root_5076041 := by
  apply coveredBy_split_literal root_5076041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5076042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5197645 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5076042
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5197645
#print axioms cover_5076041

def root_5406949 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5406949 : CoveredBy scale carrier boxes root_5406949 := by
  apply coveredBy_split_literal root_5406949 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2023.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2024.root coord2 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2023.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2024.covered
#print axioms cover_5406949

def root_5406943 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5406943_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5406943_left_fuel : Nat := 1
def small_5406943_left_count : Nat := 1
def small_5406943_left_encoded : String := "00000000"
theorem small_5406943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5406943_left_root small_5406943_left_fuel small_5406943_left_count small_5406943_left_encoded = true := by
  decide +kernel
theorem small_5406943_left_covered : CoveredBy scale carrier boxes small_5406943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5406943_left_root small_5406943_left_fuel small_5406943_left_count small_5406943_left_encoded small_5406943_left_checked

theorem cover_5406943 : CoveredBy scale carrier boxes root_5406943 := by
  apply coveredBy_split_literal root_5406943 small_5406943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5406949 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5406943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5406949
#print axioms cover_5406943

def root_5406465 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5406465_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5406465_left_fuel : Nat := 21
def small_5406465_left_count : Nat := 225
def small_5406465_left_encoded : String := "13D7B0F7067ECE8512EA58FA022A457F13E201080B4D43F810804CF90000000100000007108010F90B4D43FC10804CFD00000003014001000000000713F614F7000000000569AC451340D4FA033F67BF0000000513BBF508000000040000000700000002134110FA00000002033F67BF0000000713BBF508000000040AA6A27810EDACF900000001000000070000000800000007000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC10804CFD00000003014001000000000713F614F7000000000569AC450000000A134110FA000000020115233F000000070000000500000007108010F90B4D43FC10804CFD000000030140010013F5D8F70569AC451340D4FA0115233F000000070000000600000002134110FA000000020115233F00000007000000060000000013F614F7000000000569AC451340D4FA0115233F13F895080AA6A27810EDACF9000000010000000A10ED70F90BF3E57C100928FD000000030000000A1008ECFD0000000700000003000000010000000413F85908000000040AA6A2780000000A10ED70F9000000060000000100000002134110FA000000020115233F13F895080AA6A27810EDACF9000000010BF3E57C100928FD0000000301E00100000000070000000A0000000710ED70F900000008000000010000000413F85908000000040AA6A27810EDACF9000000010BF3E57C0000000A1008ECFD01E00100000000070000000A0000000310ED70F90000000600000001108010FD014001000000000713F614F7000000000569AC4500000007134110FA000000020000000700000003000000010000000212EA94FA00000002022A457F13E201080B4D43F810804CF9000000010B4D43FC10804CFD000000030000000700000007108010F90B4D43FC10804CFD00000003014001000000000713F614F7000000000793F0C5128220FA00000008000000020000000800000007000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC10804CFD0000000300000005108010FD0000000700000003108010F90B4D43FC10804CFD00000003014001000000000813F614F7000000000793F0C5128220FA0115233F00000008000000050000000200000005108010FD014001000000000713F614F7000000000793F0C5128220FA0115233F0000000713F85908000000040AA6A27800000007000000080000000200000008000000030000000100000000"
theorem small_5406465_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5406465_left_root small_5406465_left_fuel small_5406465_left_count small_5406465_left_encoded = true := by
  decide +kernel
theorem small_5406465_left_covered : CoveredBy scale carrier boxes small_5406465_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5406465_left_root small_5406465_left_fuel small_5406465_left_count small_5406465_left_encoded small_5406465_left_checked

theorem cover_5406465 : CoveredBy scale carrier boxes root_5406465 := by
  apply coveredBy_split_literal root_5406465 small_5406465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5406943 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5406465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5406943
#print axioms cover_5406465

def root_5406460 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5406460_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5406460_right_fuel : Nat := 1
def small_5406460_right_count : Nat := 1
def small_5406460_right_encoded : String := "00000003"
theorem small_5406460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5406460_right_root small_5406460_right_fuel small_5406460_right_count small_5406460_right_encoded = true := by
  decide +kernel
theorem small_5406460_right_covered : CoveredBy scale carrier boxes small_5406460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5406460_right_root small_5406460_right_fuel small_5406460_right_count small_5406460_right_encoded small_5406460_right_checked

theorem cover_5406460 : CoveredBy scale carrier boxes root_5406460 := by
  apply coveredBy_split_literal root_5406460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5406465 small_5406460_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5406465
  · exact small_5406460_right_covered
#print axioms cover_5406460

def root_5405886 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405886_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405886_left_fuel : Nat := 20
def small_5405886_left_count : Nat := 273
def small_5405886_left_encoded : String := "0F878CFD000000030280010013D7B0F7067ECE8512EA58FA022A457F13E201080B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0140010013F5D8F70000000A0000000013F614F7000000000569AC4500000009134110FA00000002033F67BF000000090000000A00000003108010F90DE7C9FC000000090E5FD8FD0140010013F5D8F70569AC451340D4FA033F67BF000000070000000A00000002000000080000000013F614F7000000000569AC4500000009134110FA00000002033F67BF0000000913BBF508000000040AA6A27810EDACF900000001000000090000000800000003000000010000000413E1C508000000040B4D43F810804CF9000000010000000A108010F90DE7C9FC0E6014FD000000030000000A0E5FD8FD0140010013F5D8F70569AC4500000006134110FA00000002000000060000000013F614F7000000000569AC450000000A134110FA000000020115233F13F895080AA6A2780000000A00000008000000040000000500000003000000010000000212EA94FA00000002022A457F13E201080B4D43F810804CF9000000010DE7C9FC0E6014FD000000030140010013F5D8F70793F0C50000000A000000050000000013F614F7000000000793F0C500000009000000050E5FD8FD0140010013F5D8F70793F0C500000007000000080000000013F614F7000000000793F0C5128220FA033F67BF13BC31080BF3E578100928F90000000100000007000000090000000400000005000000020000000500000003108010F90DE7C9FC000000080E5FD8FD0000000800000003000000010000000413E1C508000000040B4D43F810804CF90000000100000005000000050000000013D7ECF700000000067ECE8512EA58FA022A457F13E201080B4D43F810804CF90000000100000009000000090000000413E1C508000000040B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0000000A00000003108010F90DE7C9FC0E6014FD00000003000000090E5FD8FD03C0010013A510F70569AC450000000A134110FA000000020115233F13F895080AA6A2780000000A0000000900000004000000050000000013A54CF7000000000569AC4500000009134110FA000000020115233F000000090000000500000003000000010000000212EA94FA00000002022A457F13E201080B4D43F810804CF9000000010DE7C9FC0E6014FD00000003000000050E5FD8FD03C0010013A510F70793F0C5128220FA033F67BF000000090000000500000002000000050000000013A54CF7000000000793F0C5000000090000000500000003108010F90DE7C9FC0E6014FD00000003000000090E5FD8FD03C0010013A510F70793F0C5128220FA033F67BF0000000913BBF508000000040AA6A27810EDACF900000001000000090000000800000002000000080000000013A54CF7000000000793F0C50000000912825CFA00000002033F67BF000000090000000500000003000000010000000400000005"
theorem small_5405886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405886_left_root small_5405886_left_fuel small_5405886_left_count small_5405886_left_encoded = true := by
  decide +kernel
theorem small_5405886_left_covered : CoveredBy scale carrier boxes small_5405886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405886_left_root small_5405886_left_fuel small_5405886_left_count small_5405886_left_encoded small_5405886_left_checked

theorem cover_5405886 : CoveredBy scale carrier boxes root_5405886 := by
  apply coveredBy_split_literal root_5405886 small_5405886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5406460 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5405886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5406460
#print axioms cover_5405886

def root_5405881 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405881_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405881_right_fuel : Nat := 1
def small_5405881_right_count : Nat := 1
def small_5405881_right_encoded : String := "00000001"
theorem small_5405881_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405881_right_root small_5405881_right_fuel small_5405881_right_count small_5405881_right_encoded = true := by
  decide +kernel
theorem small_5405881_right_covered : CoveredBy scale carrier boxes small_5405881_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405881_right_root small_5405881_right_fuel small_5405881_right_count small_5405881_right_encoded small_5405881_right_checked

theorem cover_5405881 : CoveredBy scale carrier boxes root_5405881 := by
  apply coveredBy_split_literal root_5405881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5405886 small_5405881_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5405886
  · exact small_5405881_right_covered
#print axioms cover_5405881

def root_5405499 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405499_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405499_left_fuel : Nat := 19
def small_5405499_left_count : Nat := 181
def small_5405499_left_encoded : String := "0F878CF9000000010C9A86FC0F878CFD000000030280010013D7B0F7067ECE8512EA58FA0000000A0000000212EA94FA00000002022A457F13E201080DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FC0E6014FD00000003000000050E5FD8FD014001000000000713F614F7000000000793F0C50000000A00000005000000030000000100000004000000050000000013D7ECF700000000067ECE8512EA58FA022A457F13E201080DE7C9F80000000A0E5FD8F90000000900000001000000040000000A0000000212EA94FA00000002022A457F13E201080DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FC0E6014FD0000000300000005000000050000000100000004000000050F8750FD0280010013D7B0F7067ECE8512EA58FA022A457F0000000713E1C508000000040DE7C9F8000000070E5FD8F90B4D43FC0000000A00000007000000010000000212EA94FA00000002022A457F0000000713E1C508000000040DE7C9F80E6014F90000000100000005000000050000000013D7ECF700000000067ECE8512EA58FA022A457F13E201080DE7C9F80E6014F900000001000000070E5FD8F90B4D43FC10804CFD0000000303C001000000000713A54CF7000000000569AC45000000090000000600000007000000010000000413E1C508000000040DE7C9F80E6014F9000000010000000A0E5FD8F90B4D43FC10804CFD000000030000000A108010FD03C001000000000713A54CF7000000000569AC4500000007134110FA000000020115233F000000060000000500000003000000010000000212EA94FA00000002022A457F13E201080DE7C9F80E6014F9000000010B4D43FC00000006000000060E5FD8F90B4D43FC10804CFD0000000303C0010013A510F70793F0C500000007000000050000000013A54CF7000000000793F0C50000000600000005108010FD03C0010000000007000000060000000300000001000000040000000500000003"
theorem small_5405499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405499_left_root small_5405499_left_fuel small_5405499_left_count small_5405499_left_encoded = true := by
  decide +kernel
theorem small_5405499_left_covered : CoveredBy scale carrier boxes small_5405499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405499_left_root small_5405499_left_fuel small_5405499_left_count small_5405499_left_encoded small_5405499_left_checked

theorem cover_5405499 : CoveredBy scale carrier boxes root_5405499 := by
  apply coveredBy_split_literal root_5405499 small_5405499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5405881 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5405499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5405881
#print axioms cover_5405499

def root_5405493 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405493_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5405493_left_fuel : Nat := 1
def small_5405493_left_count : Nat := 1
def small_5405493_left_encoded : String := "00000004"
theorem small_5405493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5405493_left_root small_5405493_left_fuel small_5405493_left_count small_5405493_left_encoded = true := by
  decide +kernel
theorem small_5405493_left_covered : CoveredBy scale carrier boxes small_5405493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5405493_left_root small_5405493_left_fuel small_5405493_left_count small_5405493_left_encoded small_5405493_left_checked

theorem cover_5405493 : CoveredBy scale carrier boxes root_5405493 := by
  apply coveredBy_split_literal root_5405493 small_5405493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5405499 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5405493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5405499
#print axioms cover_5405493

def root_5404927 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404927_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404927_left_fuel : Nat := 21
def small_5404927_left_count : Nat := 265
def small_5404927_left_encoded : String := "1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD000000030280010013D7B0F7067ECE8512EA58FA067ECE7F0000000912EA5908000000040DE7C9F80E6014F900000001000000070E5FD8F900000009000000010000000212EA94FA00000002067ECE7F12EA95080DE7C9F80E6014F900000001000000070E5FD8F90DE7C9FC0000000900000007000000010000000412EA5908000000040DE7C9F80E6014F9000000010DE7C9FC0E6014FD000000030000000A000000070E5FD8F90DE7C9FC0E6014FD000000030140010013F5D8F70793F0C50000000712825CFA000000020569AC3F000000070000000500000000000000090E5FD8FD0000000700000003000000010000000013D7ECF700000000067ECE850000000912EA94FA00000002067ECE7F0000000912EA5908000000040DE7C9F80E6014F9000000010DE7C9FC000000090E5FD8FD00000006000000030E5FD8F900000009000000010F8750FD028001000000000713D7ECF700000000067ECE8512EA58FA067ECE7F00000006000000070000000212EA94FA00000002067ECE7F0000000612EA5908000000040DE7C9F8000000060E5FD8F90000000600000001000000030F8750F90C9A86FC0F878CFD000000030280010013D7B0F7067ECE8512EA58FA067ECE7F0000000912EA5908000000040B4D43F810804CF90000000100000009000000090000000212EA94FA00000002067ECE7F12EA95080B4D43F810804CF90000000100000009000000090000000412EA5908000000040B4D43F810804CF9000000010DE7C9FC0E6014FD000000030140010000000008000000090E5FD8FD014001000000000713F614F7000000000793F0C5000000070000000800000003108010F90DE7C9FC000000080E5FD8FD0000000800000003000000010000000013D7ECF700000000067ECE850000000912EA94FA00000002067ECE7F0000000912EA5908000000040B4D43F810804CF90000000100000009000000090F8750FD0280010013D7B0F7067ECE850000000712EA94FA00000002000000070000000013D7ECF700000000067ECE8512EA58FA067ECE7F0000000512EA5908000000040B4D43F810804CF9000000010B4D43FC0000000900000007108010F900000005000000010000000212EA94FA00000002067ECE7F12EA95080B4D43F800000006108010F900000005000000010000000412EA5908000000040B4D43F810804CF9000000010B4D43FC10804CFD0000000303C0010013A510F7000000070000000000000006108010FD0000000600000003108010F90B4D43FC10804CFD0000000303C0010013A510F70793F0C500000009000000080000000013A54CF7000000000793F0C50000000912825CFA0000000200000009108010FD03C001000000000713A54CF7000000000793F0C500000005000000060000000300000001000000030000000100000004"
theorem small_5404927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404927_left_root small_5404927_left_fuel small_5404927_left_count small_5404927_left_encoded = true := by
  decide +kernel
theorem small_5404927_left_covered : CoveredBy scale carrier boxes small_5404927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404927_left_root small_5404927_left_fuel small_5404927_left_count small_5404927_left_encoded small_5404927_left_checked

theorem cover_5404927 : CoveredBy scale carrier boxes root_5404927 := by
  apply coveredBy_split_literal root_5404927 small_5404927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5405493 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5404927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5405493
#print axioms cover_5404927

def root_5404921 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404921_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404921_left_fuel : Nat := 1
def small_5404921_left_count : Nat := 1
def small_5404921_left_encoded : String := "00000003"
theorem small_5404921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404921_left_root small_5404921_left_fuel small_5404921_left_count small_5404921_left_encoded = true := by
  decide +kernel
theorem small_5404921_left_covered : CoveredBy scale carrier boxes small_5404921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404921_left_root small_5404921_left_fuel small_5404921_left_count small_5404921_left_encoded small_5404921_left_checked

theorem cover_5404921 : CoveredBy scale carrier boxes root_5404921 := by
  apply coveredBy_split_literal root_5404921 small_5404921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404927 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5404921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404927
#print axioms cover_5404921

def root_5404920 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404920_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404920_right_fuel : Nat := 14
def small_5404920_right_count : Nat := 55
def small_5404920_right_encoded : String := "0F34D0FC045489FF1386AD080C9A86F80F878CF9000000010280010013D7B0F7067ECE850000000912EA94FA000000020AD3577D10D13CFC00000003067ECE7F0000000912EA590800000004000000090000000900000000000000090F8750F900000009000000010000000413867108000000040C9A86F80F878CF900000001028001000000000A0000000A0F8750F90280010013D7B0F7067ECE850000000A12EA94FA000000020AD3577D10D13CFC0000000300000005000000050000000013D7ECF700000000067ECE8500000009000000050000000100000003"
theorem small_5404920_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404920_right_root small_5404920_right_fuel small_5404920_right_count small_5404920_right_encoded = true := by
  decide +kernel
theorem small_5404920_right_covered : CoveredBy scale carrier boxes small_5404920_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404920_right_root small_5404920_right_fuel small_5404920_right_count small_5404920_right_encoded small_5404920_right_checked

theorem cover_5404920 : CoveredBy scale carrier boxes root_5404920 := by
  apply coveredBy_split_literal root_5404920 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404921 small_5404920_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404921
  · exact small_5404920_right_covered
#print axioms cover_5404920

def root_5404914 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404914_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404914_left_fuel : Nat := 1
def small_5404914_left_count : Nat := 1
def small_5404914_left_encoded : String := "00000002"
theorem small_5404914_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404914_left_root small_5404914_left_fuel small_5404914_left_count small_5404914_left_encoded = true := by
  decide +kernel
theorem small_5404914_left_covered : CoveredBy scale carrier boxes small_5404914_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404914_left_root small_5404914_left_fuel small_5404914_left_count small_5404914_left_encoded small_5404914_left_checked

theorem cover_5404914 : CoveredBy scale carrier boxes root_5404914 := by
  apply coveredBy_split_literal root_5404914 small_5404914_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404920 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5404914_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404920
#print axioms cover_5404914

def root_5404356 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404356_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404356_left_fuel : Nat := 32
def small_5404356_left_count : Nat := 261
def small_5404356_left_encoded : String := "138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC000000090F8750FD00000007000000030F8750F90C9A86FC000000090F8750FD0000000500000003000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030000000A0F8750FD0280010013D7B0F7022A458500000007000000070000000013D7ECF700000000022A45850000000A13E200FA00000002022A457F13E201080DE7C9F80000000A0E5FD8F90B4D43FC000000090000000700000001000000040000000A000000030F8750F90C9A86FC0F878CFD000000030280010013D7B0F7022A45850000000A13E200FA00000002022A457F13E201080B4D43F80000000A00000009000000040000000A0000000013D7ECF700000000022A45850000000913E200FA00000002022A457F000000090000000A0F8750FD0280010013D7B0F7022A458513E1C4FA022A457F0000000513E1C508000000040000000A0000000213E200FA00000002022A457F13E201080B4D43F810804CF90000000100000007108010F900000005000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A00000007108010F90B4D43FC10804CFD00000003014001000000000A0000000A108010FD014001000000000713F614F700000000033F67C5000000050000000700000003000000010000000013D7ECF700000000022A458513E1C4FA022A457F0000000513E1C508000000040B4D43F80000000A108010F900000005000000010000000213E200FA00000002022A457F13E201080B4D43F810804CF9000000010B4D43FC00000009108010FD0000000500000003108010F900000005000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A108010FD03C0010013A510F70000000A0000000013A54CF700000000033F67C50000000A13BC30FA000000020115233F13F895080BF3E5780000000A00000009000000040000000A00000003108010F90B4D43FC10804CFD0000000303C0010013A510F70000000A0000000013A54CF70000000000000009108010FD03C0010013A510F7033F67C50000000513BC30FA000000020115233F0000000513F85908000000040AA6A27810EDACF9000000010000000A10ED70F90AA6A27C0000000A10ED70FD0000000500000003000000010000000013A54CF700000000033F67C50000000513BC30FA000000020115233F0000000513F85908000000040AA6A27810EDACF9000000010000000A10ED70F90AA6A27C10EDACFD000000030000000A10ED70FD046001001383DCF70000000500000000000000050000000300000001000000030000000100000003000000010F34D0FC045489FF0000000913867108000000040000000A0000000300000002"
theorem small_5404356_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404356_left_root small_5404356_left_fuel small_5404356_left_count small_5404356_left_encoded = true := by
  decide +kernel
theorem small_5404356_left_covered : CoveredBy scale carrier boxes small_5404356_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404356_left_root small_5404356_left_fuel small_5404356_left_count small_5404356_left_encoded small_5404356_left_checked

theorem cover_5404356 : CoveredBy scale carrier boxes root_5404356 := by
  apply coveredBy_split_literal root_5404356 small_5404356_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404914 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5404356_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404914
#print axioms cover_5404356

def root_5404350 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404350_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404350_left_fuel : Nat := 1
def small_5404350_left_count : Nat := 1
def small_5404350_left_encoded : String := "00000001"
theorem small_5404350_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404350_left_root small_5404350_left_fuel small_5404350_left_count small_5404350_left_encoded = true := by
  decide +kernel
theorem small_5404350_left_covered : CoveredBy scale carrier boxes small_5404350_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404350_left_root small_5404350_left_fuel small_5404350_left_count small_5404350_left_encoded small_5404350_left_checked

theorem cover_5404350 : CoveredBy scale carrier boxes root_5404350 := by
  apply coveredBy_split_literal root_5404350 small_5404350_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404356 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5404350_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404356
#print axioms cover_5404350

def root_5404349 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404349_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404349_right_fuel : Nat := 17
def small_5404349_right_count : Nat := 91
def small_5404349_right_encoded : String := "0F34D0F804548A05138670FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030000000A000000070000000413867108000000040000000A0000000A000000021386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030280010013D7B0F70AD3577910D13CF800000001067ECE850000000712EA94FA00000002067ECE7F0000000600000007000000070000000013D7ECF7000000000AD3577910D13CF800000001067ECE850000000900000006000000060F8750FD028001000000000700000006000000030000000413867108000000040C9A86FC0F878CFD00000003028001000000000A0000000A0F8750FD028001000000000713D7ECF7000000000AD3577910D13CF800000001067ECE8512EA58FA00000007000000020000000500000005000000030F34D0FC045489FF1386AD08028001000000000A00000009000000040000000A0000000300000001"
theorem small_5404349_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404349_right_root small_5404349_right_fuel small_5404349_right_count small_5404349_right_encoded = true := by
  decide +kernel
theorem small_5404349_right_covered : CoveredBy scale carrier boxes small_5404349_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404349_right_root small_5404349_right_fuel small_5404349_right_count small_5404349_right_encoded small_5404349_right_checked

theorem cover_5404349 : CoveredBy scale carrier boxes root_5404349 := by
  apply coveredBy_split_literal root_5404349 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404350 small_5404349_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404350
  · exact small_5404349_right_covered
#print axioms cover_5404349

def root_5404344 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404344_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404344_right_fuel : Nat := 1
def small_5404344_right_count : Nat := 1
def small_5404344_right_encoded : String := "00000000"
theorem small_5404344_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404344_right_root small_5404344_right_fuel small_5404344_right_count small_5404344_right_encoded = true := by
  decide +kernel
theorem small_5404344_right_covered : CoveredBy scale carrier boxes small_5404344_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404344_right_root small_5404344_right_fuel small_5404344_right_count small_5404344_right_encoded small_5404344_right_checked

theorem cover_5404344 : CoveredBy scale carrier boxes root_5404344 := by
  apply coveredBy_split_literal root_5404344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404349 small_5404344_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404349
  · exact small_5404344_right_covered
#print axioms cover_5404344

def root_5404343 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5404343 : CoveredBy scale carrier boxes root_5404343 := by
  apply coveredBy_split_literal root_5404343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404344 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2025.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404344
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2025.covered
#print axioms cover_5404343

def root_5404337 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404337_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5404337_left_fuel : Nat := 1
def small_5404337_left_count : Nat := 1
def small_5404337_left_encoded : String := "00000004"
theorem small_5404337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5404337_left_root small_5404337_left_fuel small_5404337_left_count small_5404337_left_encoded = true := by
  decide +kernel
theorem small_5404337_left_covered : CoveredBy scale carrier boxes small_5404337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5404337_left_root small_5404337_left_fuel small_5404337_left_count small_5404337_left_encoded small_5404337_left_checked

theorem cover_5404337 : CoveredBy scale carrier boxes root_5404337 := by
  apply coveredBy_split_literal root_5404337 small_5404337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404343 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5404337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404343
#print axioms cover_5404337

def root_5403945 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403945_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403945_left_fuel : Nat := 20
def small_5403945_left_count : Nat := 179
def small_5403945_left_encoded : String := "12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05138670FA0CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030280010013D7B0F7067ECE850000000712EA94FA000000020000000700000000000000090F8750FD00000007000000030F8750F90C9A86FC0F878CFD000000030280010013D7B0F70000000900000000000000090F8750FD0000000500000003000000010F34D0FC0CFD9BFF0F350D080C9A86F80F878CF9000000010000000900000009000000040F34D1080000000400000009000000030F34D0F804548A05138670FA0CFD9BFD0F350CFC000000030CFD9BFF00000005000000070F34D0FC0000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000060F34D108000000040C9A86FC00000006000000060F34D0FC0CFD9BFF000000090F34D1080000000400000009000000030000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000090F34D0FC0CFD9BFF000000090F34D108000000040000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A86F80F878CF900000001000000060F8750F90C9A86FC000000090F8750FD0000000600000003000000010F34D0FC0CFD9BFF0F350D080C9A86F80000000600000009000000040F34D1080000000400000009000000030F34D0F804548A05138670FA0CFD9BFD000000090F34D0FC0000000900000003000000021386ACFA000000020CFD9BFD000000060F34D0FC00000009000000030000000100000004"
theorem small_5403945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403945_left_root small_5403945_left_fuel small_5403945_left_count small_5403945_left_encoded = true := by
  decide +kernel
theorem small_5403945_left_covered : CoveredBy scale carrier boxes small_5403945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403945_left_root small_5403945_left_fuel small_5403945_left_count small_5403945_left_encoded small_5403945_left_checked

theorem cover_5403945 : CoveredBy scale carrier boxes root_5403945 := by
  apply coveredBy_split_literal root_5403945 small_5403945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5404337 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5403945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5404337
#print axioms cover_5403945

def root_5403939 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403939_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403939_left_fuel : Nat := 1
def small_5403939_left_count : Nat := 1
def small_5403939_left_encoded : String := "00000003"
theorem small_5403939_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403939_left_root small_5403939_left_fuel small_5403939_left_count small_5403939_left_encoded = true := by
  decide +kernel
theorem small_5403939_left_covered : CoveredBy scale carrier boxes small_5403939_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403939_left_root small_5403939_left_fuel small_5403939_left_count small_5403939_left_encoded small_5403939_left_checked

theorem cover_5403939 : CoveredBy scale carrier boxes root_5403939 := by
  apply coveredBy_split_literal root_5403939 small_5403939_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403945 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5403939_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403945
#print axioms cover_5403939

def root_5403938 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403938_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403938_right_fuel : Nat := 18
def small_5403938_right_count : Nat := 191
def small_5403938_right_encoded : String := "120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05138670FA045489FD1386ACFC000000030CFD9BFF000000090F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80000000900000009000000040F34D108000000040000000900000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80000000900000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D1080000000400000009000000030F34D0F804548A05000000091386ACFA00000002045489FD00000009138670FC00000009000000030000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA045489FD1386ACFC000000030CFD9BFF000000090F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80000000900000009000000040F34D108000000040000000900000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80000000900000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D1080000000400000009000000030F34D0F804548A05000000091386ACFA00000002045489FD00000009138670FC00000009000000030000000100000004120701080000000405000100135D44F70CFD9BF90F350CF80000000104548A050000000A1386ACFA00000002045489FD1386ACFC00000003045489FF0000000900000005000000050000000A00000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA045489FD0000000900000007000000021386ACFA00000002045489FD1386ACFC00000003045489FF0000000900000005000000050F34D0F8000000090000000100000003"
theorem small_5403938_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403938_right_root small_5403938_right_fuel small_5403938_right_count small_5403938_right_encoded = true := by
  decide +kernel
theorem small_5403938_right_covered : CoveredBy scale carrier boxes small_5403938_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403938_right_root small_5403938_right_fuel small_5403938_right_count small_5403938_right_encoded small_5403938_right_checked

theorem cover_5403938 : CoveredBy scale carrier boxes root_5403938 := by
  apply coveredBy_split_literal root_5403938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403939 small_5403938_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403939
  · exact small_5403938_right_covered
#print axioms cover_5403938

def root_5403933 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403933_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403933_right_fuel : Nat := 1
def small_5403933_right_count : Nat := 1
def small_5403933_right_encoded : String := "00000002"
theorem small_5403933_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403933_right_root small_5403933_right_fuel small_5403933_right_count small_5403933_right_encoded = true := by
  decide +kernel
theorem small_5403933_right_covered : CoveredBy scale carrier boxes small_5403933_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403933_right_root small_5403933_right_fuel small_5403933_right_count small_5403933_right_encoded small_5403933_right_checked

theorem cover_5403933 : CoveredBy scale carrier boxes root_5403933 := by
  apply coveredBy_split_literal root_5403933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403938 small_5403933_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403938
  · exact small_5403933_right_covered
#print axioms cover_5403933

def root_5413208 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413208_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413208_right_fuel : Nat := 18
def small_5413208_right_count : Nat := 195
def small_5413208_right_encoded : String := "120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D108000000040C9A86F80000000900000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D108000000040C9A86F8000000090000000500000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A86FA0F878D0500000009000000020000000800000001000000040F34D1080000000400000005138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000050F8750F900000008000000010000000400000005000000030F34D0F80CFD9C050F34D0FA045489FD1386ACFC000000030CFD9BFF000000090F34D1080000000400000009138670FC0CFD9BFF000000090000000900000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350D08000000060000000400000005000000050000000100000000135D80F7000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80000000900000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040000000500000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F800000009000000090000000400000005000000050F34D0F80CFD9C050F34D0FA045489FD00000009138670FC0000000900000003000000020F350CFA00000002000000050000000100000004120701080000000405000100135D44F70CFD9BF90F350CF8000000010000000500000005000000000000000500000003"
theorem small_5413208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5413208_right_root small_5413208_right_fuel small_5413208_right_count small_5413208_right_encoded = true := by
  decide +kernel
theorem small_5413208_right_covered : CoveredBy scale carrier boxes small_5413208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5413208_right_root small_5413208_right_fuel small_5413208_right_count small_5413208_right_encoded small_5413208_right_checked

theorem cover_5413208 : CoveredBy scale carrier boxes root_5413208 := by
  apply coveredBy_split_literal root_5413208 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2026.root small_5413208_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2026.covered
  · exact small_5413208_right_covered
#print axioms cover_5413208

def root_5413202 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413202_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413202_left_fuel : Nat := 1
def small_5413202_left_count : Nat := 1
def small_5413202_left_encoded : String := "00000002"
theorem small_5413202_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5413202_left_root small_5413202_left_fuel small_5413202_left_count small_5413202_left_encoded = true := by
  decide +kernel
theorem small_5413202_left_covered : CoveredBy scale carrier boxes small_5413202_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5413202_left_root small_5413202_left_fuel small_5413202_left_count small_5413202_left_encoded small_5413202_left_checked

theorem cover_5413202 : CoveredBy scale carrier boxes root_5413202 := by
  apply coveredBy_split_literal root_5413202 small_5413202_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5413208 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5413202_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5413208
#print axioms cover_5413202

def root_5403932 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403932 : CoveredBy scale carrier boxes root_5403932 := by
  apply coveredBy_split_literal root_5403932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5413202 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5413202
#print axioms cover_5403932

def root_5403926 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403926_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403926_left_fuel : Nat := 1
def small_5403926_left_count : Nat := 1
def small_5403926_left_encoded : String := "00000001"
theorem small_5403926_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403926_left_root small_5403926_left_fuel small_5403926_left_count small_5403926_left_encoded = true := by
  decide +kernel
theorem small_5403926_left_covered : CoveredBy scale carrier boxes small_5403926_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403926_left_root small_5403926_left_fuel small_5403926_left_count small_5403926_left_encoded small_5403926_left_checked

theorem cover_5403926 : CoveredBy scale carrier boxes root_5403926 := by
  apply coveredBy_split_literal root_5403926 small_5403926_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403932 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5403926_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403932
#print axioms cover_5403926

def root_5403925 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403925_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403925_right_fuel : Nat := 19
def small_5403925_right_count : Nat := 187
def small_5403925_right_encoded : String := "120700F808A91305120700FA08A912FD12073CFC0000000308A912FF12073D0805000100135D44F7045489F91386ACF80000000104548A05138670FA0CFD9BFD0000000700000009000000021386ACFA000000020CFD9BFD000000060F34D0FC0000000600000003138670F804548A0500000007000000060000000100000000135D80F700000000045489F91386ACF80000000104548A0500000009000000060000000600000004120701080000000405000100135D44F7045489F91386ACF80000000104548A050000000A1386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC000000060000000600000004000000050000000A0000000A00000000135D80F700000000045489F91386ACF80000000104548A05138670FA0CFD9BFD0F350CFC00000003045489FF000000060000000A0000000A000000021386ACFA000000020CFD9BFD0F350CFC000000030000000600000005138670F804548A050000000A0000000500000001120700FC08A912FF0000000912070108000000040000000A000000030000000212073CFA0000000208A912FD12073CFC0000000308A912FF12073D0805000100135D44F7045489F91386ACF8000000010CFD9C050F34D0FA0CFD9BFD000000060F34D0FC0000000600000003000000020F350CFA000000020CFD9BFD000000060F34D0FC0000000600000003138670F80000000600000001000000000000000600000004120701080000000405000100135D44F7045489F91386ACF8000000010CFD9C050F34D0FA0CFD9BFD0F350CFC0000000300000005000000050000000200000005000000050000000000000005120700FC08A912FF12073D0805000100135D44F7045489F91386ACF8000000010CFD9C050F34D0FA00000009000000020F350CFA0000000200000005138670F80CFD9C0500000009000000050000000100000000135D80F700000000045489F91386ACF8000000010CFD9C0500000009000000050000000500000004000000050000000300000001"
theorem small_5403925_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403925_right_root small_5403925_right_fuel small_5403925_right_count small_5403925_right_encoded = true := by
  decide +kernel
theorem small_5403925_right_covered : CoveredBy scale carrier boxes small_5403925_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403925_right_root small_5403925_right_fuel small_5403925_right_count small_5403925_right_encoded small_5403925_right_checked

theorem cover_5403925 : CoveredBy scale carrier boxes root_5403925 := by
  apply coveredBy_split_literal root_5403925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403926 small_5403925_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403926
  · exact small_5403925_right_covered
#print axioms cover_5403925

def root_5403919 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403919_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403919_left_fuel : Nat := 1
def small_5403919_left_count : Nat := 1
def small_5403919_left_encoded : String := "00000004"
theorem small_5403919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403919_left_root small_5403919_left_fuel small_5403919_left_count small_5403919_left_encoded = true := by
  decide +kernel
theorem small_5403919_left_covered : CoveredBy scale carrier boxes small_5403919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403919_left_root small_5403919_left_fuel small_5403919_left_count small_5403919_left_encoded small_5403919_left_checked

theorem cover_5403919 : CoveredBy scale carrier boxes root_5403919 := by
  apply coveredBy_split_literal root_5403919 small_5403919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403925 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5403919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403925
#print axioms cover_5403919

def root_5403147 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403147_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403147_left_fuel : Nat := 26
def small_5403147_left_count : Nat := 367
def small_5403147_left_encoded : String := "1151E8FF08A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000305000100135D44F70500010800000007135D80FF000000040CFD9BF9000000050000000700000000135D80F7000000000500010800000006135D80FF000000040CFD9BF90F350CF80000000104548A05000000050000000600000006120700FC05000100135D44F705000108135D44FF0CFD9BF90F350CF80000000104548A05000000051386ACFA00000002045489FD00000005138670FC0C9A86F80F878CF900000001000000060F8750F902800100000000050000000600000001000000030F34D0F804548A0500000007000000060000000100000004135D80FF000000040CFD9BF90F350CF80000000104548A05138670FA045489FD00000005138670FC0C9A86F80F878CF900000001000000090F8750F9000000050000000100000003000000021386ACFA00000002045489FD1386ACFC000000030C9A86F80F878CF900000001000000090F8750F90000000500000001138670FC0C9A86F80F878CF9000000010280010000000009000000090F8750F90280010013D7B0F707800108128A40FF067ECE850000000512EA94FA000000020000000900000004000000090000000013D7ECF70000000007800108128A40FF067ECE850000000500000006000000040000000900000001000000030F34D0F804548A0500000009000000090000000100000000135D80F70000000005000108135D44FF0CFD9BF90F350CF80000000104548A05138670FA045489FD00000005138670FC0C9A86F8000000060F8750F900000005000000010000000300000002000000060000000600000004135D80FF000000040CFD9BF90F350CF80000000104548A05138670FA045489FD1386ACFC000000030C9A86F8000000060F8750F90000000500000001138670FC0C9A86F80F878CF9000000010780010000000009000000060F8750F907800100128A40F707800108000000050000000900000000128A7CF70000000007800108128A40FF0000000600000004000000090000000100000003000000021386ACFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F907800100128A40F707800108128A40FF000000060000000400000009000000000000000600000001000000030F34D0F80000000600000001000000030000000212073CFA0000000208A912FD12073CFC0000000305000100135D44F705000108135D44FF0000000600000004135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9BFD000000050F34D0FC0000000600000003000000020F350CFA000000020CFD9BFD000000060000000A0F34D0F800000006000000010000000000000006120700FC05000100135D44F705000108135D44FF0CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD00000006138670FC000000060000000300000002000000060000000600000004135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD1386ACFC000000030C9A86F8000000060F8750F90280010013D7B0F7078001080000000600000009000000000000000600000001138670FC0C9A86F80F878CF9000000010280010000000009000000060F8750F90280010013D7B0F707800108128A40FF0AD35785000000090000000600000004000000090000000013D7ECF70000000007800108128A40FF0000000600000004000000090000000100000003000000020F350CFA00000002045489FD00000006138670FC0C9A86F80F878CF9000000010C9A86FA00000006000000090F8750F90000000800000001000000030F34D0F80CFD9C0500000009000000060000000100000000135D80F7000000000500010800000006135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D0FA0000000600000002000000060000000600000003120700F808A91305120700FA08A912FD00000006120700FC000000060000000300000002000000060000000100000004"
theorem small_5403147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403147_left_root small_5403147_left_fuel small_5403147_left_count small_5403147_left_encoded = true := by
  decide +kernel
theorem small_5403147_left_covered : CoveredBy scale carrier boxes small_5403147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403147_left_root small_5403147_left_fuel small_5403147_left_count small_5403147_left_encoded small_5403147_left_checked

theorem cover_5403147 : CoveredBy scale carrier boxes root_5403147 := by
  apply coveredBy_split_literal root_5403147 small_5403147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403919 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5403147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403919
#print axioms cover_5403147

def root_5403141 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403141_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403141_left_fuel : Nat := 1
def small_5403141_left_count : Nat := 1
def small_5403141_left_encoded : String := "00000003"
theorem small_5403141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403141_left_root small_5403141_left_fuel small_5403141_left_count small_5403141_left_encoded = true := by
  decide +kernel
theorem small_5403141_left_covered : CoveredBy scale carrier boxes small_5403141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403141_left_root small_5403141_left_fuel small_5403141_left_count small_5403141_left_encoded small_5403141_left_checked

theorem cover_5403141 : CoveredBy scale carrier boxes root_5403141 := by
  apply coveredBy_split_literal root_5403141 small_5403141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403147 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5403141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403147
#print axioms cover_5403141

def root_5416934 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5416934 : CoveredBy scale carrier boxes root_5416934 := by
  apply coveredBy_split_literal root_5416934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2027.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2028.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2027.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2028.covered
#print axioms cover_5416934

def root_5416928 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416928_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416928_left_fuel : Nat := 1
def small_5416928_left_count : Nat := 1
def small_5416928_left_encoded : String := "00000001"
theorem small_5416928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416928_left_root small_5416928_left_fuel small_5416928_left_count small_5416928_left_encoded = true := by
  decide +kernel
theorem small_5416928_left_covered : CoveredBy scale carrier boxes small_5416928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416928_left_root small_5416928_left_fuel small_5416928_left_count small_5416928_left_encoded small_5416928_left_checked

theorem cover_5416928 : CoveredBy scale carrier boxes root_5416928 := by
  apply coveredBy_split_literal root_5416928 small_5416928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5416934 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5416928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5416934
#print axioms cover_5416928

def root_5416927 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416927_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416927_right_fuel : Nat := 14
def small_5416927_right_count : Nat := 79
def small_5416927_right_encoded : String := "120700F808A91305120700FA08A912FF12073D080500010000000007000000060000000412070108000000040500010000000007135D80F700000000050000FC135D80FD00000003045489F90000000600000006000000070000000212073CFA0000000208A912FF12073D0805000100135D44F7050000FC0000000600000006000000000000000600000004120701080000000405000100135D44F7050000FC135D80FD00000003045489F91386ACF8000000010CFD9C050F34D0FA00000005000000020000000500000005135D44FD045489F91386ACF8000000010CFD9C050000000700000005000000050000000300000000135D80F700000000050000FC135D80FD00000003045489F91386ACF8000000010CFD9C05000000060000000500000005135D44FD045489F900000006000000050000000300000001"
theorem small_5416927_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416927_right_root small_5416927_right_fuel small_5416927_right_count small_5416927_right_encoded = true := by
  decide +kernel
theorem small_5416927_right_covered : CoveredBy scale carrier boxes small_5416927_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416927_right_root small_5416927_right_fuel small_5416927_right_count small_5416927_right_encoded small_5416927_right_checked

theorem cover_5416927 : CoveredBy scale carrier boxes root_5416927 := by
  apply coveredBy_split_literal root_5416927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5416928 small_5416927_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5416928
  · exact small_5416927_right_covered
#print axioms cover_5416927

def root_5416921 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416921_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416921_left_fuel : Nat := 1
def small_5416921_left_count : Nat := 1
def small_5416921_left_encoded : String := "00000004"
theorem small_5416921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416921_left_root small_5416921_left_fuel small_5416921_left_count small_5416921_left_encoded = true := by
  decide +kernel
theorem small_5416921_left_covered : CoveredBy scale carrier boxes small_5416921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416921_left_root small_5416921_left_fuel small_5416921_left_count small_5416921_left_encoded small_5416921_left_checked

theorem cover_5416921 : CoveredBy scale carrier boxes root_5416921 := by
  apply coveredBy_split_literal root_5416921 small_5416921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5416927 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5416921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5416927
#print axioms cover_5416921

def root_5416889 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416889_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416889_left_fuel : Nat := 7
def small_5416889_left_count : Nat := 15
def small_5416889_left_encoded : String := "1151E8FF08A912F912073CF80000000108A913050000000512073CFA00000002050001000000000A00000006120700F8000000060000000100000004"
theorem small_5416889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416889_left_root small_5416889_left_fuel small_5416889_left_count small_5416889_left_encoded = true := by
  decide +kernel
theorem small_5416889_left_covered : CoveredBy scale carrier boxes small_5416889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416889_left_root small_5416889_left_fuel small_5416889_left_count small_5416889_left_encoded small_5416889_left_checked

theorem cover_5416889 : CoveredBy scale carrier boxes root_5416889 := by
  apply coveredBy_split_literal root_5416889 small_5416889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5416921 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5416889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5416921
#print axioms cover_5416889

def root_5416884 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416884_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416884_right_fuel : Nat := 1
def small_5416884_right_count : Nat := 1
def small_5416884_right_encoded : String := "00000003"
theorem small_5416884_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416884_right_root small_5416884_right_fuel small_5416884_right_count small_5416884_right_encoded = true := by
  decide +kernel
theorem small_5416884_right_covered : CoveredBy scale carrier boxes small_5416884_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416884_right_root small_5416884_right_fuel small_5416884_right_count small_5416884_right_encoded small_5416884_right_checked

theorem cover_5416884 : CoveredBy scale carrier boxes root_5416884 := by
  apply coveredBy_split_literal root_5416884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5416889 small_5416884_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5416889
  · exact small_5416884_right_covered
#print axioms cover_5416884

def root_5403140 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403140 : CoveredBy scale carrier boxes root_5403140 := by
  apply coveredBy_split_literal root_5403140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5416884 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5416884
#print axioms cover_5403140

def root_5403135 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403135_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403135_right_fuel : Nat := 1
def small_5403135_right_count : Nat := 1
def small_5403135_right_encoded : String := "00000002"
theorem small_5403135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403135_right_root small_5403135_right_fuel small_5403135_right_count small_5403135_right_encoded = true := by
  decide +kernel
theorem small_5403135_right_covered : CoveredBy scale carrier boxes small_5403135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403135_right_root small_5403135_right_fuel small_5403135_right_count small_5403135_right_encoded small_5403135_right_checked

theorem cover_5403135 : CoveredBy scale carrier boxes root_5403135 := by
  apply coveredBy_split_literal root_5403135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403140 small_5403135_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403140
  · exact small_5403135_right_covered
#print axioms cover_5403135

def root_5403134 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403134 : CoveredBy scale carrier boxes root_5403134 := by
  apply coveredBy_split_literal root_5403134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2029.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403135
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2029.covered
#print axioms cover_5403134

def root_5403128 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403128_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403128_left_fuel : Nat := 1
def small_5403128_left_count : Nat := 1
def small_5403128_left_encoded : String := "00000001"
theorem small_5403128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403128_left_root small_5403128_left_fuel small_5403128_left_count small_5403128_left_encoded = true := by
  decide +kernel
theorem small_5403128_left_covered : CoveredBy scale carrier boxes small_5403128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403128_left_root small_5403128_left_fuel small_5403128_left_count small_5403128_left_encoded small_5403128_left_checked

theorem cover_5403128 : CoveredBy scale carrier boxes root_5403128 := by
  apply coveredBy_split_literal root_5403128 small_5403128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403134 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5403128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403134
#print axioms cover_5403128

def root_5423242 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5423242 : CoveredBy scale carrier boxes root_5423242 := by
  apply coveredBy_split_literal root_5423242 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2030.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2031.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2030.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2031.covered
#print axioms cover_5423242

def root_5423236 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423236_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423236_left_fuel : Nat := 1
def small_5423236_left_count : Nat := 1
def small_5423236_left_encoded : String := "00000004"
theorem small_5423236_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5423236_left_root small_5423236_left_fuel small_5423236_left_count small_5423236_left_encoded = true := by
  decide +kernel
theorem small_5423236_left_covered : CoveredBy scale carrier boxes small_5423236_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5423236_left_root small_5423236_left_fuel small_5423236_left_count small_5423236_left_encoded small_5423236_left_checked

theorem cover_5423236 : CoveredBy scale carrier boxes root_5423236 := by
  apply coveredBy_split_literal root_5423236 small_5423236_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5423242 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5423236_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5423242
#print axioms cover_5423236

def root_5423006 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423006_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423006_left_fuel : Nat := 15
def small_5423006_left_count : Nat := 109
def small_5423006_left_encoded : String := "12073D0805000100135D44F7050000F8135D80F90000000104548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040280010013D7B0F7078000F80000000900000008000000000000000900000003135D44F904548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D1080000000400000008000000030000000100000000135D80F700000000050000F8135D80F90000000104548A05138670FA0CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86FC0F878CFD000000030780010000000009000000090F8750FD00000005000000030F34D0FC0CFD9BFF0F350D080C9A87080F8750FF00000005000000040F878CFF0000000400000009000000040F34D108000000040000000900000003135D44F904548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D10800000004078001000000000900000009000000030000000100000004"
theorem small_5423006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5423006_left_root small_5423006_left_fuel small_5423006_left_count small_5423006_left_encoded = true := by
  decide +kernel
theorem small_5423006_left_covered : CoveredBy scale carrier boxes small_5423006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5423006_left_root small_5423006_left_fuel small_5423006_left_count small_5423006_left_encoded small_5423006_left_checked

theorem cover_5423006 : CoveredBy scale carrier boxes root_5423006 := by
  apply coveredBy_split_literal root_5423006 small_5423006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5423236 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5423006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5423236
#print axioms cover_5423006

def root_5423000 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423000_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423000_left_fuel : Nat := 1
def small_5423000_left_count : Nat := 1
def small_5423000_left_encoded : String := "00000003"
theorem small_5423000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5423000_left_root small_5423000_left_fuel small_5423000_left_count small_5423000_left_encoded = true := by
  decide +kernel
theorem small_5423000_left_covered : CoveredBy scale carrier boxes small_5423000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5423000_left_root small_5423000_left_fuel small_5423000_left_count small_5423000_left_encoded small_5423000_left_checked

theorem cover_5423000 : CoveredBy scale carrier boxes root_5423000 := by
  apply coveredBy_split_literal root_5423000 small_5423000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5423006 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5423000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5423006
#print axioms cover_5423000

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134

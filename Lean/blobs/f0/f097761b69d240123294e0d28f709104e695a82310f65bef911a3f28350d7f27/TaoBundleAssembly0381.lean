import TaoBundleAssembly0365
import TaoBundleAssembly0373
import TaoBundleAssembly0377
import TaoBundleAssembly0379
import TaoBundleAssembly0380
import TaoBundleChunkBatch0505
import TaoBundleChunkBatch0506
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381
def root_5394454 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394454_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394454_right_fuel : Nat := 20
def small_5394454_right_count : Nat := 137
def small_5394454_right_encoded : String := "135D44FB045489F71386AD000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF90000000100000006000000060F878D09078000F80000000A128A40F90000000500000001000000040F878D070C9A8708000000070F878D0900000005000000040000000300000004000000030000000013867100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A45770000000613E1C500000000000B4D44060000000610804D07000000060000000300000006128A40F9028000FA13D7ECFB00000002022A45770000000613E1C500000000000B4D44060000000610804D07000000060000000300000005000000010F878D09078000F8128A7CF900000001028000FA13D7ECFB00000002022A45770000000A13E1C500000000000B4D440610801107000000030000000A10804D0700000005000000030000000500000005000000040F878D070C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A45770000000713E1C500000000000DE7CA060E5FD90700000003000000070000000700000005000000050000000500000003000000040000000300000002"
theorem small_5394454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394454_right_root small_5394454_right_fuel small_5394454_right_count small_5394454_right_encoded = true := by
  decide +kernel
theorem small_5394454_right_covered : CoveredBy scale carrier boxes small_5394454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394454_right_root small_5394454_right_fuel small_5394454_right_count small_5394454_right_encoded small_5394454_right_checked

theorem cover_5394454 : CoveredBy scale carrier boxes root_5394454 := by
  apply coveredBy_split_literal root_5394454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0380.root_5394455 small_5394454_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0380.cover_5394455
  · exact small_5394454_right_covered
#print axioms cover_5394454

def root_5394448 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394448_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394448_left_fuel : Nat := 1
def small_5394448_left_count : Nat := 1
def small_5394448_left_encoded : String := "00000001"
theorem small_5394448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394448_left_root small_5394448_left_fuel small_5394448_left_count small_5394448_left_encoded = true := by
  decide +kernel
theorem small_5394448_left_covered : CoveredBy scale carrier boxes small_5394448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394448_left_root small_5394448_left_fuel small_5394448_left_count small_5394448_left_encoded small_5394448_left_checked

theorem cover_5394448 : CoveredBy scale carrier boxes root_5394448 := by
  apply coveredBy_split_literal root_5394448 small_5394448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394454 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5394448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394454
#print axioms cover_5394448

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
  apply coveredBy_split_literal root_5394447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394448 small_5394447_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394448
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
  apply coveredBy_split_literal root_5394442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394447 small_5394442_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394447
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
  apply coveredBy_split_literal root_5394346 small_5394346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394442 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5394346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394442
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
  apply coveredBy_split_literal root_5394341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394346 small_5394341_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394346
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
  apply coveredBy_split_literal root_5394237 small_5394237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394341 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5394237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394341
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
  apply coveredBy_split_literal root_5394231 small_5394231_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394237 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5394231_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394237
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
  apply coveredBy_split_literal root_5393717 small_5393717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5394231 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5393717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5394231
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
  apply coveredBy_split_literal root_5393712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5393717 small_5393712_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5393717
  · exact small_5393712_right_covered
#print axioms cover_5393712

def root_5392196 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5392196 : CoveredBy scale carrier boxes root_5392196 := by
  apply coveredBy_split_literal root_5392196 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2020.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5393712 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2020.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5393712
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
  apply coveredBy_split_literal root_5392191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5392196 small_5392191_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5392196
  · exact small_5392191_right_covered
#print axioms cover_5392191

def root_5390391 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5390391 : CoveredBy scale carrier boxes root_5390391 := by
  apply coveredBy_split_literal root_5390391 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2019.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5392191 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2019.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5392191
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
  apply coveredBy_split_literal root_5390386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5390391 small_5390386_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5390391
  · exact small_5390386_right_covered
#print axioms cover_5390386

def root_5384528 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5384528 : CoveredBy scale carrier boxes root_5384528 := by
  apply coveredBy_split_literal root_5384528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0380.root_5384529 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5390386 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0380.cover_5384529
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5390386
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
  apply coveredBy_split_literal root_5384523 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5384528 small_5384523_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5384528
  · exact small_5384523_right_covered
#print axioms cover_5384523

def root_5359019 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5359019 : CoveredBy scale carrier boxes root_5359019 := by
  apply coveredBy_split_literal root_5359019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5359020 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5384523 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5359020
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5384523
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
  apply coveredBy_split_literal root_5359013 small_5359013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5359019 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5359013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5359019
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
  apply coveredBy_split_literal root_5358299 small_5358299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5359013 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5358299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5359013
#print axioms cover_5358299

def root_5304985 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5304985 : CoveredBy scale carrier boxes root_5304985 := by
  apply coveredBy_split_literal root_5304985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5304986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5358299 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5304986
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5358299
#print axioms cover_5304985

def root_5294541 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5294541 : CoveredBy scale carrier boxes root_5294541 := by
  apply coveredBy_split_literal root_5294541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5294542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5304985 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5294542
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5304985
#print axioms cover_5294541

def root_5197645 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197645 : CoveredBy scale carrier boxes root_5197645 := by
  apply coveredBy_split_literal root_5197645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.root_5197646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5294541 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0373.cover_5197646
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5294541
#print axioms cover_5197645

def root_5076041 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076041 : CoveredBy scale carrier boxes root_5076041 := by
  apply coveredBy_split_literal root_5076041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5076042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5197645 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5076042
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5197645
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
  apply coveredBy_split_literal root_5406943 small_5406943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5406949 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5406943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5406949
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
  apply coveredBy_split_literal root_5406465 small_5406465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5406943 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5406465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5406943
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
  apply coveredBy_split_literal root_5406460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5406465 small_5406460_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5406465
  · exact small_5406460_right_covered
#print axioms cover_5406460

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381

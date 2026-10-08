import TaoBundleAssembly0638
import TaoBundleAssembly0645
import TaoBundleAssembly0646
import TaoBundleAssembly0647
import TaoBundleAssembly0651
import TaoBundleAssembly0652
import TaoBundleChunkBatch0895
import TaoBundleChunkBatch0896
import TaoBundleChunkBatch0897
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653
def root_9541953 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541953_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541953_left_fuel : Nat := 26
def small_9541953_left_count : Nat := 353
def small_9541953_left_encoded : String := "120701000000000008A91307120701060000000305000102135D44F9050000FA135D810505000108135D44FF04548A01000000080000000800000004000000050000000200000005000000010000000512073D0605000102135D44F9050000FA135D810505000108135D44FF04548A0113867100000000000CFD9C070F34D106000000030280010200000008000000080F350D060000000A000000031386AD000CFD9C070F34D106000000030280010213D7B0F9078000FA128A7D050280010813D7B0FF067ECE810000000812EA95000AD357870000000800000009000000000000000413D7ECFF000000040000000800000002128A4105000000020280010813D7B0FF067ECE810000000A12EA95000AD3578710D1010600000003014001020000000A0000000810D13D060000000A0000000300000000000000040000000A0000000113D7ECF900000001078000FA128A7D0502800108000000080000000800000002128A4105000000020280010813D7B0FF067ECE810000000912EA95000AD3578710D10106000000030000000510D13D0603C001020000000900000005000000030000000000000004000000050F350D060C9A87060F875107000000030000000A0F878D07028001020000000A13D7ECF900000001078000FA128A7D0502800108000000090000000A000000020000000A00000003000000030000000000000004135D80FF0000000404548A0113867100000000000000000A1386AD000CFD9C070F34D10600000003028001020000000A000000050F350D060000000A000000030000000000000002135D45050000000205000108135D44FF04548A0113867100000000000CFD9C070000000A0000000A1386AD000CFD9C070F34D106000000030280010213D7B0F9028000FA13D7ED050280010813D7B0FF067ECE810000000A12EA95000AD3578710D1010600000003000000050000000A000000000000000400000005000000020000000500000001000000050F350D060C9A87060000000A0F878D07028001020000000A13D7ECF900000001028000FA0000000A0000000500000003000000030000000000000004135D80FF0000000404548A010000000A1386AD000CFD9C070F34D10600000003000000050F350D060000000A000000030000000000000001135D80F900000001050000FA135D810505000108135D44FF04548A0113867100000000000CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003000000090F878D0707800102000000090000000500000003000000031386AD000CFD9C070F34D1060000000307800102128A40F9078000FA000000080000000500000001000000050F350D060C9A87060F8751070000000307800102128A40F9078000FA128A7D0500000009000000020000000A00000001128A7CF900000001078000FA00000009000000060F878D0707800102128A40F9078000FA128A7D05028001080000000913D7ECFF00000004067ECE810000000812EA95000DE7CA060E5FD9070000000300000009000000050000000000000002128A4105000000020280010813D7B0FF067ECE810000000912EA95000000000900000000000000040000000500000001128A7CF900000001078000FA128A7D05028001080000000900000005000000020000000500000003000000030000000000000004135D80FF0000000404548A011386710000000000000000051386AD000CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003078001020000000A0000000500000005000000030000000000000002135D45050000000205000108135D44FF04548A011386710000000000000000051386AD000CFD9C070F34D10600000003000000050F350D060C9A87060F8751070000000300000006000000050000000300000000000000040000000500000003"
theorem small_9541953_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9541953_left_root small_9541953_left_fuel small_9541953_left_count small_9541953_left_encoded = true := by
  decide +kernel
theorem small_9541953_left_covered : CoveredBy scale carrier boxes small_9541953_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9541953_left_root small_9541953_left_fuel small_9541953_left_count small_9541953_left_encoded small_9541953_left_checked

theorem cover_9541953 : CoveredBy scale carrier boxes root_9541953 := by
  apply coveredBy_split_literal root_9541953 small_9541953_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0652.root_9542699 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9541953_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0652.cover_9542699
#print axioms cover_9541953

def root_9541948 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541948_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541948_right_fuel : Nat := 1
def small_9541948_right_count : Nat := 1
def small_9541948_right_encoded : String := "00000004"
theorem small_9541948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9541948_right_root small_9541948_right_fuel small_9541948_right_count small_9541948_right_encoded = true := by
  decide +kernel
theorem small_9541948_right_covered : CoveredBy scale carrier boxes small_9541948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9541948_right_root small_9541948_right_fuel small_9541948_right_count small_9541948_right_encoded small_9541948_right_checked

theorem cover_9541948 : CoveredBy scale carrier boxes root_9541948 := by
  apply coveredBy_split_literal root_9541948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9541953 small_9541948_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9541953
  · exact small_9541948_right_covered
#print axioms cover_9541948

def root_9541947 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541947_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541947_right_fuel : Nat := 31
def small_9541947_right_count : Nat := 365
def small_9541947_right_encoded : String := "115224FF0000000408A91301120701000000000008A9130712070106000000030000000512073D0608A912FF12073D0805000102135D44F9050000FA135D810504548A010000000A1386AD000000000A0000000000000002000000050000000100000005000000041207010800000004000000050000000312073D0008A91307120701060000000308A912FF12073D0805000102135D44F9050000FA135D81050CFD9C010F34D10000000000000000050F350D0004548A071386710600000003000000051386AD060CFD9BFF0F350D080C9A87000F875101000000000C9A87080F8750FF028001020000000600000005000000040000000500000005000000040F34D10800000004000000050000000300000000000000020000000500000001000000050000000412070108000000040000000512073D0608A912FF12073D0805000102135D44F9050000FA135D81050CFD9C010F34D100000000000CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080C9A87060000000A0F878D070C9A87080F8750FF028001020000000A00000005000000040000000500000003000000040000000A000000030F350D000CFD9C070F34D106000000030CFD9BFF0F350D080C9A87000F875101000000000C9A87080F8750FF0280010213D7B0F9078000FA128A7D050000000900000002000000090000000113D7ECF900000001078000FA128A7D05000000090000000200000005000000040F878CFF000000040280010200000009000000050F878D010C9A87080F8750FF0280010213D7B0F9078000FA128A7D050AD3578710D10106000000030000000510D13D060DE7CA000E5FD9010000000000000009000000050000000300000002000000050000000100000005000000040000000500000000000000040F34D10800000004000000050F350D060CFD9BFF0F350D080C9A87000F875101000000000C9A87060F875107000000030C9A87080F8750FF02800102000000090000000900000004000000070F878D070C9A87080F8750FF028001020000000900000009000000040F878CFF0000000400000009000000030F878D010C9A87060F875107000000030C9A87080F8750FF028001020000000713D7ECF900000001078000FA000000070000000700000004000000070F878D070C9A87080F8750FF0280010213D7B0F9078000FA128A7D050000000A000000020000000A0000000113D7ECF900000001078000FA128A7D050DE7CA000E5FD901000000000DE7CA060000000700000005000000050000000200000005000000040F878CFF00000004028001020000000A000000050000000300000000000000040F34D108000000040C9A87000F875101000000000000000700000007000000030000000000000002135D4505000000020CFD9C010F34D10000000000000000050F350D000CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080C9A87000F87510100000000000000090F878D010C9A8706000000090000000500000000000000040F34D1080000000400000005000000030000000000000001135D80F900000001050000FA135D81050CFD9C010F34D10000000000000000050F350D000CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080C9A87000F875101000000000C9A87060F875107000000030C9A87080F8750FF0780010200000009128A7CF9000000010000000500000004000000050F878D070C9A87080F8750FF0780010200000009000000050000000400000005000000030F878D010C9A87060F875107000000030C9A87080F8750FF07800102128A40F9078000FA0000000700000005000000010000000500000004000000050000000500000000000000040F34D10800000004000000050000000300000000000000020000000500000004120701080000000405000102135D44F9050000FA135D81050CFD9C010000000A00000005000000020000000500000001000000050000000300000000"
theorem small_9541947_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9541947_right_root small_9541947_right_fuel small_9541947_right_count small_9541947_right_encoded = true := by
  decide +kernel
theorem small_9541947_right_covered : CoveredBy scale carrier boxes small_9541947_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9541947_right_root small_9541947_right_fuel small_9541947_right_count small_9541947_right_encoded small_9541947_right_checked

theorem cover_9541947 : CoveredBy scale carrier boxes root_9541947 := by
  apply coveredBy_split_literal root_9541947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9541948 small_9541947_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9541948
  · exact small_9541947_right_covered
#print axioms cover_9541947

def root_9541942 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541942_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9541942_right_fuel : Nat := 1
def small_9541942_right_count : Nat := 1
def small_9541942_right_encoded : String := "00000003"
theorem small_9541942_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9541942_right_root small_9541942_right_fuel small_9541942_right_count small_9541942_right_encoded = true := by
  decide +kernel
theorem small_9541942_right_covered : CoveredBy scale carrier boxes small_9541942_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9541942_right_root small_9541942_right_fuel small_9541942_right_count small_9541942_right_encoded small_9541942_right_checked

theorem cover_9541942 : CoveredBy scale carrier boxes root_9541942 := by
  apply coveredBy_split_literal root_9541942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9541947 small_9541942_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9541947
  · exact small_9541942_right_covered
#print axioms cover_9541942

def root_9540902 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9540902_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9540902_left_fuel : Nat := 28
def small_9540902_left_count : Nat := 499
def small_9540902_left_encoded : String := "1151E907000000030A0001081151E8FF08A913011207010000000000050001020000000A135D80F900000001050000FA135D8105050001060000000A135D810705000108135D44FF04548A010000000A1386AD00078001020000000A128A7CF900000001078000FA128A7D050000000600000002000000060000000000000004135D80FF000000040000000A0000000300000002135D450500000002050001060000000A135D81070500010800000006000000060000000312073D0005000102135D44F9050000FA135D810505000106135D4507000000030500010800000008135D80FF000000040CFD9C010000000A00000008135D810705000108135D44FF0CFD9C010F34D10000000000028001020000000A13D7ECF900000001078000FA128A7D05078001060000000A128A7D070280010813D7B0FF0AD357810000000500000008000000040000000A0000000300000002000000080000000800000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000C9A8700000000080F878D01028001020000000813D7ECF900000001078000FA128A7D050780010600000007128A7D0707800108000000080000000700000003000000020000000800000000000000000000000300000002135D4505000000020500010600000008135D81070500010800000008135D80FF000000040CFD9C010F34D100000000000000000A000000080000000300000001135D80F900000001050000FA135D810505000106135D45070000000305000108135D44FF0CFD9C010F34D10000000000078001020000000A000000060000000800000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000C9A8700000000080F878D010780010200000008000000060000000000000000135D810705000108135D44FF0CFD9C010F34D1000000000007800102128A40F9078000FA128A7D0507800106128A410700000003028001080000000600000006128A7D070280010813D7B0FF0AD357810000000610D13D0000000006000000000000000413D7ECFF000000040AD357810000000610D13D0000000006000000000000000300000002128A41050000000207800106000000060000000600000001128A7CF900000001078000FA128A7D050780010600000006128A7D070280010800000006000000060000000300000002000000060F350D000C9A8700000000080F878D010780010200000008128A7CF900000001078000FA128A7D050780010600000006000000060000000200000006000000000000000000000004135D80FF000000040CFD9C010F34D1000000000007800102128A40F9078000FA128A7D050780010600000007128A7D0707800108128A40FF0AD357810000000600000007000000040000000700000003000000020000000A00000001128A7CF900000001078000FA128A7D050780010600000006128A7D070780010800000006000000060000000300000002000000060F350D000C9A87000F8751010000000007800102128A40F90000000800000001128A7CF900000001078000FA128A7D050780010600000006128A7D070780010800000006000000060000000300000002000000060F878D0107800102128A40F9078000FA128A7D050780010600000007128A7D0707800108128A40FF0DE7CA00000000060E601501000000060000000000000004000000070000000300000002128A41050000000207800106000000060000000600000001128A7CF900000001078000FA128A7D050780010600000006128A7D0707800108000000060000000600000003000000020000000600000000000000000000000300000002135D45050000000205000106135D4507000000030500010800000006135D80FF0000000400000006135D810705000108135D44FF0CFD9C01000000060000000800000004135D80FF000000040CFD9C01000000060F350D000C9A8700000000060F878D01000000060000000000000000000000030000000000000004115224FF0000000408A91301120701000000000008A912FF12073D080000000A000000040000000A12073D0008A912FF12073D0805000102135D44F9050000FA135D81050500010600000007135D81070CFD9C010000000A0F350D000CFD9BFF0F350D080C9A87000F8751010000000000000007000000070000000400000007000000000000000300000002135D450500000002050001060000000A135D81070CFD9C010000000A0F350D000000000A000000000000000300000001135D80F900000001050000FA135D810505000106135D4507000000030CFD9C010F34D100000000000000000700000007135D81070CFD9C010F34D100000000000CFD9BFF0F350D080C9A87080F8750FF00000007000000040000000700000004000000070F350D000CFD9BFF0F350D080C9A87000F875101000000000C9A87080F8750FF07800102000000090000000600000004000000070F878D010C9A87080F8750FF0780010200000007128A7CF90000000100000006000000040000000700000000000000040F34D1080000000400000007000000000000000300000002135D45050000000205000106135D4507000000030CFD9C01000000060F350D000000000600000000135D81070CFD9C010F34D10000000000000000050F350D000CFD9BFF0F350D080C9A87000000000600000005000000040000000600000000000000030000000412070108000000040000000700000000"
theorem small_9540902_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9540902_left_root small_9540902_left_fuel small_9540902_left_count small_9540902_left_encoded = true := by
  decide +kernel
theorem small_9540902_left_covered : CoveredBy scale carrier boxes small_9540902_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9540902_left_root small_9540902_left_fuel small_9540902_left_count small_9540902_left_encoded small_9540902_left_checked

theorem cover_9540902 : CoveredBy scale carrier boxes root_9540902 := by
  apply coveredBy_split_literal root_9540902 small_9540902_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9541942 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9540902_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9541942
#print axioms cover_9540902

def root_9540896 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9540896_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9540896_left_fuel : Nat := 1
def small_9540896_left_count : Nat := 1
def small_9540896_left_encoded : String := "00000002"
theorem small_9540896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9540896_left_root small_9540896_left_fuel small_9540896_left_count small_9540896_left_encoded = true := by
  decide +kernel
theorem small_9540896_left_covered : CoveredBy scale carrier boxes small_9540896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9540896_left_root small_9540896_left_fuel small_9540896_left_count small_9540896_left_encoded small_9540896_left_checked

theorem cover_9540896 : CoveredBy scale carrier boxes root_9540896 := by
  apply coveredBy_split_literal root_9540896 small_9540896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9540902 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9540896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9540902
#print axioms cover_9540896

def root_9502740 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9502740 : CoveredBy scale carrier boxes root_9502740 := by
  apply coveredBy_split_literal root_9502740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9502741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9540896 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9502741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9540896
#print axioms cover_9502740

def root_9502735 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502735_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502735_right_fuel : Nat := 1
def small_9502735_right_count : Nat := 1
def small_9502735_right_encoded : String := "00000001"
theorem small_9502735_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9502735_right_root small_9502735_right_fuel small_9502735_right_count small_9502735_right_encoded = true := by
  decide +kernel
theorem small_9502735_right_covered : CoveredBy scale carrier boxes small_9502735_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9502735_right_root small_9502735_right_fuel small_9502735_right_count small_9502735_right_encoded small_9502735_right_checked

theorem cover_9502735 : CoveredBy scale carrier boxes root_9502735 := by
  apply coveredBy_split_literal root_9502735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9502740 small_9502735_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9502740
  · exact small_9502735_right_covered
#print axioms cover_9502735

def root_9573635 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9573635 : CoveredBy scale carrier boxes root_9573635 := by
  apply coveredBy_split_literal root_9573635 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3578.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3579.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3578.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3579.covered
#print axioms cover_9573635

def root_9573629 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9573629_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9573629_left_fuel : Nat := 1
def small_9573629_left_count : Nat := 1
def small_9573629_left_encoded : String := "00000003"
theorem small_9573629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9573629_left_root small_9573629_left_fuel small_9573629_left_count small_9573629_left_encoded = true := by
  decide +kernel
theorem small_9573629_left_covered : CoveredBy scale carrier boxes small_9573629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9573629_left_root small_9573629_left_fuel small_9573629_left_count small_9573629_left_encoded small_9573629_left_checked

theorem cover_9573629 : CoveredBy scale carrier boxes root_9573629 := by
  apply coveredBy_split_literal root_9573629 small_9573629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9573635 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9573629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9573635
#print axioms cover_9573629

def root_9573628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9573628 : CoveredBy scale carrier boxes root_9573628 := by
  apply coveredBy_split_literal root_9573628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9573629 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3580.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9573629
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3580.covered
#print axioms cover_9573628

def root_9573623 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9573623_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9573623_right_fuel : Nat := 1
def small_9573623_right_count : Nat := 1
def small_9573623_right_encoded : String := "00000002"
theorem small_9573623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9573623_right_root small_9573623_right_fuel small_9573623_right_count small_9573623_right_encoded = true := by
  decide +kernel
theorem small_9573623_right_covered : CoveredBy scale carrier boxes small_9573623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9573623_right_root small_9573623_right_fuel small_9573623_right_count small_9573623_right_encoded small_9573623_right_checked

theorem cover_9573623 : CoveredBy scale carrier boxes root_9573623 := by
  apply coveredBy_split_literal root_9573623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9573628 small_9573623_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9573628
  · exact small_9573623_right_covered
#print axioms cover_9573623

def root_9573622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9573622 : CoveredBy scale carrier boxes root_9573622 := by
  apply coveredBy_split_literal root_9573622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9573623 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3581.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9573623
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3581.covered
#print axioms cover_9573622

def root_9573616 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9573616_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9573616_left_fuel : Nat := 1
def small_9573616_left_count : Nat := 1
def small_9573616_left_encoded : String := "00000001"
theorem small_9573616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9573616_left_root small_9573616_left_fuel small_9573616_left_count small_9573616_left_encoded = true := by
  decide +kernel
theorem small_9573616_left_covered : CoveredBy scale carrier boxes small_9573616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9573616_left_root small_9573616_left_fuel small_9573616_left_count small_9573616_left_encoded small_9573616_left_checked

theorem cover_9573616 : CoveredBy scale carrier boxes root_9573616 := by
  apply coveredBy_split_literal root_9573616 small_9573616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9573622 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9573616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9573622
#print axioms cover_9573616

def root_9502734 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9502734 : CoveredBy scale carrier boxes root_9502734 := by
  apply coveredBy_split_literal root_9502734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9502735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9573616 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9502735
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9573616
#print axioms cover_9502734

def root_9502729 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502729_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502729_right_fuel : Nat := 1
def small_9502729_right_count : Nat := 1
def small_9502729_right_encoded : String := "00000000"
theorem small_9502729_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9502729_right_root small_9502729_right_fuel small_9502729_right_count small_9502729_right_encoded = true := by
  decide +kernel
theorem small_9502729_right_covered : CoveredBy scale carrier boxes small_9502729_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9502729_right_root small_9502729_right_fuel small_9502729_right_count small_9502729_right_encoded small_9502729_right_checked

theorem cover_9502729 : CoveredBy scale carrier boxes root_9502729 := by
  apply coveredBy_split_literal root_9502729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9502734 small_9502729_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9502734
  · exact small_9502729_right_covered
#print axioms cover_9502729

def root_9490497 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9490497 : CoveredBy scale carrier boxes root_9490497 := by
  apply coveredBy_split_literal root_9490497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0647.root_9490498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9502729 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0647.cover_9490498
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9502729
#print axioms cover_9490497

def root_9490496 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9490496 : CoveredBy scale carrier boxes root_9490496 := by
  apply coveredBy_split_literal root_9490496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9490497 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3582.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9490497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3582.covered
#print axioms cover_9490496

def root_9472086 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9472086 : CoveredBy scale carrier boxes root_9472086 := by
  apply coveredBy_split_literal root_9472086 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0647.root_9472087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9490496 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0647.cover_9472087
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9490496
#print axioms cover_9472086

def root_9450486 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450486 : CoveredBy scale carrier boxes root_9450486 := by
  apply coveredBy_split_literal root_9450486 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.root_9450487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9472086 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0646.cover_9450487
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9472086
#print axioms cover_9450486

def root_9366624 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9366624 : CoveredBy scale carrier boxes root_9366624 := by
  apply coveredBy_split_literal root_9366624 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9366625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9450486 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9366625
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9450486
#print axioms cover_9366624

def root_9151628 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151628 : CoveredBy scale carrier boxes root_9151628 := by
  apply coveredBy_split_literal root_9151628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9151629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9366624 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9151629
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9366624
#print axioms cover_9151628

def root_9585957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9585957 : CoveredBy scale carrier boxes root_9585957 := by
  apply coveredBy_split_literal root_9585957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3584.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3585.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3584.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3585.covered
#print axioms cover_9585957

def root_9585952 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9585952_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9585952_right_fuel : Nat := 1
def small_9585952_right_count : Nat := 1
def small_9585952_right_encoded : String := "00000001"
theorem small_9585952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9585952_right_root small_9585952_right_fuel small_9585952_right_count small_9585952_right_encoded = true := by
  decide +kernel
theorem small_9585952_right_covered : CoveredBy scale carrier boxes small_9585952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9585952_right_root small_9585952_right_fuel small_9585952_right_count small_9585952_right_encoded small_9585952_right_checked

theorem cover_9585952 : CoveredBy scale carrier boxes root_9585952 := by
  apply coveredBy_split_literal root_9585952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9585957 small_9585952_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9585957
  · exact small_9585952_right_covered
#print axioms cover_9585952

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653

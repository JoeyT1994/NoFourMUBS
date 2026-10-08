import TaoBundleAssembly0500
import TaoBundleAssembly0503
import TaoBundleAssembly0504
import TaoBundleChunkBatch0693
import TaoBundleChunkBatch0694
import TaoBundleChunkBatch0695
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505
def root_7359254 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359254_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359254_right_fuel : Nat := 32
def small_7359254_right_count : Nat := 247
def small_7359254_right_encoded : String := "0F34D1000000000004548A0313867102000000010CFD9BFF0F350D080C9A87080F8750FF078000FA128A7D05078000FC128A7D070AD3577710D13D00022A458313E1C502000000010B4D4408108010FF08C000FA11FC2505000000090000000211FBE9050000000208C000FC0000000611FBE90700000003000000080000000410804CFF0000000408C000FA11FC250508C000FC11FC25070BE879B71011AD000115234313F85902000000010BF3E58800000008100928FF00000004096000FA0000000811AA81050000000200000006000000060000000010117100000000000000000800000003000000080000000211FBE9050000000208C000FC11FC25070BE879B700000006101171000000000000000006000000030000000513E201020B4D44080000000810804CFF0000000408C000FA0000000811FBE9050000000208C000FC0000000600000005000000010000000010D1010000000000022A458313E1C502000000010B4D44080000000810804CFF00000004000000080000000800000003128A4107000000030AD35777000000080000000800000002128A410500000002078000FC128A7D070AD3577710D13D00022A458313E1C502000000010B4D4408108010FF064000FA0000000600000005000000040000000513E201020B4D44080000000600000005000000010000000010D1010000000000000000050000000300000005000000040F878CFF00000004078000FA128A7D05078000FC128A7D070AD3577710D13D00022A458313E1C502000000010DE7CA080E5FD8FF08C000FA11FC250508C000FC11FC25070BE879B71011AD000115234313F85902000000010D4128880EFA10FF096000FA11AABD05000000080000000211AA810500000002096000FC11AABD07000000060000000300000005000000040EFA4CFF00000004096000FA11AABD05000000080000000200000005000000080000000010117100000000000000000500000003000000050000000200000005000000040000000513E201020DE7CA080E5FD8FF08C000FA11FC25050000000800000002000000050000000400000005000000010000000010D10100000000000000000500000003000000050000000200000005000000040F34D10800000004000000051386AD020CFD9BFF0F350D080C9A87080F8750FF078000FA128A7D05078000FC128A7D0700000008000000030000000800000002128A410500000002078000FC128A7D07000000060000000300000005000000040F878CFF00000004078000FA128A7D05078000FC128A7D070AD35777000000080000000800000003000000050000000200000005000000040F34D108000000040000000500000001"
theorem small_7359254_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359254_right_root small_7359254_right_fuel small_7359254_right_count small_7359254_right_encoded = true := by
  decide +kernel
theorem small_7359254_right_covered : CoveredBy scale carrier boxes small_7359254_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359254_right_root small_7359254_right_fuel small_7359254_right_count small_7359254_right_encoded small_7359254_right_checked

theorem cover_7359254 : CoveredBy scale carrier boxes root_7359254 := by
  apply coveredBy_split_literal root_7359254 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0504.root_7359255 small_7359254_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0504.cover_7359255
  · exact small_7359254_right_covered
#print axioms cover_7359254

def root_7359249 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359249_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359249_right_fuel : Nat := 1
def small_7359249_right_count : Nat := 1
def small_7359249_right_encoded : String := "00000003"
theorem small_7359249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359249_right_root small_7359249_right_fuel small_7359249_right_count small_7359249_right_encoded = true := by
  decide +kernel
theorem small_7359249_right_covered : CoveredBy scale carrier boxes small_7359249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359249_right_root small_7359249_right_fuel small_7359249_right_count small_7359249_right_encoded small_7359249_right_checked

theorem cover_7359249 : CoveredBy scale carrier boxes root_7359249 := by
  apply coveredBy_split_literal root_7359249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359254 small_7359249_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359254
  · exact small_7359249_right_covered
#print axioms cover_7359249

def root_7359248 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359248_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359248_right_fuel : Nat := 20
def small_7359248_right_count : Nat := 135
def small_7359248_right_encoded : String := "135D4507000000030CFD9BF70F350D0004548A0313867102000000010CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF078000FA128A7D05028000FC13D7ED07022A458313E1C502000000010B4D44000000000710804CF7000000000000000700000007000000030000000700000002128A410500000002028000FC13D7ED07022A458313E1C502000000010B4D44000000000710804CF70000000000000007000000070000000300000005000000040F878CFF00000004078000FA128A7D05028000FC13D7ED07022A458313E1C502000000010B4D4400108010F70000000A0000000010804CF700000000000000050000000A00000003000000050000000200000005000000000F878CF7000000000C9A87080F8750FF078000FA128A7D05028000FC13D7ED07022A458313E1C502000000010DE7CA000E5FD8F700000008000000000000000800000008000000030000000500000002000000050000000400000005000000040F34D10800000004000000051386AD020CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF078000FA128A7D05000000070000000200000007000000040F878CFF00000004078000FA0000000A128A41050000000200000005000000000F878CF7000000000C9A8708000000080F878CFF0000000400000005000000040F34D108000000040000000500000001000000000F34D1000000000004548A0313867102000000010000000500000005"
theorem small_7359248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359248_right_root small_7359248_right_fuel small_7359248_right_count small_7359248_right_encoded = true := by
  decide +kernel
theorem small_7359248_right_covered : CoveredBy scale carrier boxes small_7359248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359248_right_root small_7359248_right_fuel small_7359248_right_count small_7359248_right_encoded small_7359248_right_checked

theorem cover_7359248 : CoveredBy scale carrier boxes root_7359248 := by
  apply coveredBy_split_literal root_7359248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359249 small_7359248_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359249
  · exact small_7359248_right_covered
#print axioms cover_7359248

def root_7359243 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359243_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359243_right_fuel : Nat := 1
def small_7359243_right_count : Nat := 1
def small_7359243_right_encoded : String := "00000002"
theorem small_7359243_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359243_right_root small_7359243_right_fuel small_7359243_right_count small_7359243_right_encoded = true := by
  decide +kernel
theorem small_7359243_right_covered : CoveredBy scale carrier boxes small_7359243_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359243_right_root small_7359243_right_fuel small_7359243_right_count small_7359243_right_encoded small_7359243_right_checked

theorem cover_7359243 : CoveredBy scale carrier boxes root_7359243 := by
  apply coveredBy_split_literal root_7359243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359248 small_7359243_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359248
  · exact small_7359243_right_covered
#print axioms cover_7359243

def root_7359242 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359242_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359242_right_fuel : Nat := 24
def small_7359242_right_count : Nat := 177
def small_7359242_right_encoded : String := "135D450500000002050000FC135D81070CFD9BF70F350D0004548A0313867102000000010CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF028000FA13D7ED05078000FC128A7D07022A458313E1C502000000010B4D44000000000710804CF700000000000000070000000700000003128A410700000003022A458313E1C502000000010B4D44000000000710804CF70000000000000007000000070000000213D7B10500000002078000FC128A7D07000000070000000300000005000000040F878CFF00000004028000FA13D7ED05078000FC128A7D07022A458313E1C502000000010B4D44000000000910804CF700000000000000050000000900000003000000050000000200000005000000000F878CF7000000000C9A87080F8750FF028000FA13D7ED05078000FC128A7D07022A458313E1C502000000010DE7CA000E5FD8F70B4D44080000000610804CFF0000000400000005000000000E6014F7000000000000000500000006000000030000000500000002000000050000000400000005000000040F34D10800000004000000051386AD020CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF028000FA13D7ED05078000FC000000060000000700000002000000070000000400000009000000000F878CF7000000000C9A87080F8750FF028000FA13D7ED05078000FC00000006128A4107000000030000000500000002000000090000000400000009000000040F34D108000000040000000500000001000000000F34D1000000000004548A031386710200000001000000050000000500000003135D4507000000030CFD9BF70F350D0004548A031386710200000001000000051386AD020CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF028000FA000000070000000500000004000000050000000000000005000000040000000500000001000000000F34D1000000000000000005"
theorem small_7359242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359242_right_root small_7359242_right_fuel small_7359242_right_count small_7359242_right_encoded = true := by
  decide +kernel
theorem small_7359242_right_covered : CoveredBy scale carrier boxes small_7359242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359242_right_root small_7359242_right_fuel small_7359242_right_count small_7359242_right_encoded small_7359242_right_checked

theorem cover_7359242 : CoveredBy scale carrier boxes root_7359242 := by
  apply coveredBy_split_literal root_7359242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359243 small_7359242_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359243
  · exact small_7359242_right_covered
#print axioms cover_7359242

def root_7359237 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359237_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359237_right_fuel : Nat := 1
def small_7359237_right_count : Nat := 1
def small_7359237_right_encoded : String := "00000004"
theorem small_7359237_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359237_right_root small_7359237_right_fuel small_7359237_right_count small_7359237_right_encoded = true := by
  decide +kernel
theorem small_7359237_right_covered : CoveredBy scale carrier boxes small_7359237_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359237_right_root small_7359237_right_fuel small_7359237_right_count small_7359237_right_encoded small_7359237_right_checked

theorem cover_7359237 : CoveredBy scale carrier boxes root_7359237 := by
  apply coveredBy_split_literal root_7359237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359242 small_7359237_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359242
  · exact small_7359237_right_covered
#print axioms cover_7359237

def root_7359236 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359236_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359236_right_fuel : Nat := 18
def small_7359236_right_count : Nat := 45
def small_7359236_right_encoded : String := "1207010800000004050000FA135D8105050000FC135D81070CFD9BF70F350D0004548A031386710200000001045489FF1386AD080C9A87000F8750F7078000FA128A7D05078000FC128A7D070000000900000003000000050000000200000005000000000000000500000004000000051386AD02045489FF1386AD080C9A87000000000900000005000000040000000500000001000000000F34D100000000000000000500000003000000050000000200000005"
theorem small_7359236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359236_right_root small_7359236_right_fuel small_7359236_right_count small_7359236_right_encoded = true := by
  decide +kernel
theorem small_7359236_right_covered : CoveredBy scale carrier boxes small_7359236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359236_right_root small_7359236_right_fuel small_7359236_right_count small_7359236_right_encoded small_7359236_right_checked

theorem cover_7359236 : CoveredBy scale carrier boxes root_7359236 := by
  apply coveredBy_split_literal root_7359236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359237 small_7359236_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359237
  · exact small_7359236_right_covered
#print axioms cover_7359236

def root_7359230 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359230_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359230_left_fuel : Nat := 1
def small_7359230_left_count : Nat := 1
def small_7359230_left_encoded : String := "00000001"
theorem small_7359230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359230_left_root small_7359230_left_fuel small_7359230_left_count small_7359230_left_encoded = true := by
  decide +kernel
theorem small_7359230_left_covered : CoveredBy scale carrier boxes small_7359230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359230_left_root small_7359230_left_fuel small_7359230_left_count small_7359230_left_encoded small_7359230_left_checked

theorem cover_7359230 : CoveredBy scale carrier boxes root_7359230 := by
  apply coveredBy_split_literal root_7359230 small_7359230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359236 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7359230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359236
#print axioms cover_7359230

def root_7359229 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359229_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359229_right_fuel : Nat := 20
def small_7359229_right_count : Nat := 197
def small_7359229_right_encoded : String := "12073D0208A912FF12073D08050000FA135D8105050000FC135D81070CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF078000FA0000000700000007000000040F878CFF00000004078000FA0000000A00000009000000000F878CF7000000000C9A87080F8750FF078000FA00000008128A41050000000200000006000000040F878CFF00000004078000FA128A7D05000000080000000200000009000000040F34D10800000004000000090F350D020CFD9BFF0F350D080C9A87000000000900000008000000040F34D108000000040000000900000001000000000F34D100000000000CFD9C030F34D102000000010CFD9BFF0F350D080000000800000004000000080F350D02000000080000000100000003135D4507000000030CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFF0F350D080C9A87000F8750F7000000080000000000000008000000040F34D108000000040C9A87000F8750F70000000A00000000000000050F350D020CFD9BFF000000080000000800000001000000000F34D100000000000000000800000002135D450500000002050000FC135D81070CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFF0F350D080C9A87000000000900000009000000040000000900000009000000000F34D100000000000CFD9C030F34D102000000010CFD9BFF0F350D080C9A87080F8750FF00000006000000040000000500000004000000050F350D02000000080000000100000003135D4507000000030CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFF0F350D080C9A87000F8750F70C9A870800000008000000050000000000000005000000040F34D10800000004000000050F350D020000000800000001000000000F34D1000000000000000008000000041207010800000004050000FA135D8105050000FC135D81070CFD9BF70F350D0000000009000000000000000900000003135D4507000000030CFD9BF70F350D000CFD9C030F34D1020000000100000005000000050000000000000005000000020000000900000001"
theorem small_7359229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359229_right_root small_7359229_right_fuel small_7359229_right_count small_7359229_right_encoded = true := by
  decide +kernel
theorem small_7359229_right_covered : CoveredBy scale carrier boxes small_7359229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359229_right_root small_7359229_right_fuel small_7359229_right_count small_7359229_right_encoded small_7359229_right_checked

theorem cover_7359229 : CoveredBy scale carrier boxes root_7359229 := by
  apply coveredBy_split_literal root_7359229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359230 small_7359229_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359230
  · exact small_7359229_right_covered
#print axioms cover_7359229

def root_7359224 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359224_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359224_right_fuel : Nat := 1
def small_7359224_right_count : Nat := 1
def small_7359224_right_encoded : String := "00000000"
theorem small_7359224_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359224_right_root small_7359224_right_fuel small_7359224_right_count small_7359224_right_encoded = true := by
  decide +kernel
theorem small_7359224_right_covered : CoveredBy scale carrier boxes small_7359224_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359224_right_root small_7359224_right_fuel small_7359224_right_count small_7359224_right_encoded small_7359224_right_checked

theorem cover_7359224 : CoveredBy scale carrier boxes root_7359224 := by
  apply coveredBy_split_literal root_7359224 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359229 small_7359224_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359229
  · exact small_7359224_right_covered
#print axioms cover_7359224

def root_7359223 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359223_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359223_right_fuel : Nat := 22
def small_7359223_right_count : Nat := 85
def small_7359223_right_encoded : String := "120701000000000008A91303120701020000000108A912FF12073D08050000FA135D8105050000FC135D8107045489F71386AD0004548A0313867102000000010CFD9BFF0F350D080C9A87080F8750FF078000FA128A7D05078000FC128A7D070000000800000003000000050000000200000005000000040000000500000004000000051386AD020CFD9BFF0F350D080C9A870800000008000000050000000400000005000000010000000013867100000000000000000500000003000000050000000200000005000000040000000512073D0208A912FF12073D08050000FA135D8105050000FC135D8107045489F70000000800000008000000030000000800000002135D450500000002050000FC135D8107045489F71386AD000CFD9C030F34D102000000010000000500000005000000000000000500000003000000050000000412070108000000040000000500000001"
theorem small_7359223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359223_right_root small_7359223_right_fuel small_7359223_right_count small_7359223_right_encoded = true := by
  decide +kernel
theorem small_7359223_right_covered : CoveredBy scale carrier boxes small_7359223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359223_right_root small_7359223_right_fuel small_7359223_right_count small_7359223_right_encoded small_7359223_right_checked

theorem cover_7359223 : CoveredBy scale carrier boxes root_7359223 := by
  apply coveredBy_split_literal root_7359223 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359224 small_7359223_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359224
  · exact small_7359223_right_covered
#print axioms cover_7359223

def root_7359217 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359217_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7359217_left_fuel : Nat := 1
def small_7359217_left_count : Nat := 1
def small_7359217_left_encoded : String := "00000004"
theorem small_7359217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7359217_left_root small_7359217_left_fuel small_7359217_left_count small_7359217_left_encoded = true := by
  decide +kernel
theorem small_7359217_left_covered : CoveredBy scale carrier boxes small_7359217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7359217_left_root small_7359217_left_fuel small_7359217_left_count small_7359217_left_encoded small_7359217_left_checked

theorem cover_7359217 : CoveredBy scale carrier boxes root_7359217 := by
  apply coveredBy_split_literal root_7359217 small_7359217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359223 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7359217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359223
#print axioms cover_7359217

def root_7357751 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7357751 : CoveredBy scale carrier boxes root_7357751 := by
  apply coveredBy_split_literal root_7357751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2770.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7359217 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2770.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7359217
#print axioms cover_7357751

def root_7357745 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7357745_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7357745_left_fuel : Nat := 1
def small_7357745_left_count : Nat := 1
def small_7357745_left_encoded : String := "00000003"
theorem small_7357745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7357745_left_root small_7357745_left_fuel small_7357745_left_count small_7357745_left_encoded = true := by
  decide +kernel
theorem small_7357745_left_covered : CoveredBy scale carrier boxes small_7357745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7357745_left_root small_7357745_left_fuel small_7357745_left_count small_7357745_left_encoded small_7357745_left_checked

theorem cover_7357745 : CoveredBy scale carrier boxes root_7357745 := by
  apply coveredBy_split_literal root_7357745 small_7357745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7357751 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7357745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7357751
#print axioms cover_7357745

def root_7351945 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7351945 : CoveredBy scale carrier boxes root_7351945 := by
  apply coveredBy_split_literal root_7351945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7351946 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7357745 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7351946
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7357745
#print axioms cover_7351945

def root_7351939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7351939_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7351939_left_fuel : Nat := 1
def small_7351939_left_count : Nat := 1
def small_7351939_left_encoded : String := "00000002"
theorem small_7351939_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7351939_left_root small_7351939_left_fuel small_7351939_left_count small_7351939_left_encoded = true := by
  decide +kernel
theorem small_7351939_left_covered : CoveredBy scale carrier boxes small_7351939_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7351939_left_root small_7351939_left_fuel small_7351939_left_count small_7351939_left_encoded small_7351939_left_checked

theorem cover_7351939 : CoveredBy scale carrier boxes root_7351939 := by
  apply coveredBy_split_literal root_7351939 small_7351939_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7351945 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7351939_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7351945
#print axioms cover_7351939

def root_7325467 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7325467 : CoveredBy scale carrier boxes root_7325467 := by
  apply coveredBy_split_literal root_7325467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.root_7325468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7351939 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0503.cover_7325468
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7351939
#print axioms cover_7325467

def root_7325462 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7325462_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7325462_right_fuel : Nat := 1
def small_7325462_right_count : Nat := 1
def small_7325462_right_encoded : String := "00000001"
theorem small_7325462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7325462_right_root small_7325462_right_fuel small_7325462_right_count small_7325462_right_encoded = true := by
  decide +kernel
theorem small_7325462_right_covered : CoveredBy scale carrier boxes small_7325462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7325462_right_root small_7325462_right_fuel small_7325462_right_count small_7325462_right_encoded small_7325462_right_checked

theorem cover_7325462 : CoveredBy scale carrier boxes root_7325462 := by
  apply coveredBy_split_literal root_7325462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7325467 small_7325462_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7325467
  · exact small_7325462_right_covered
#print axioms cover_7325462

def root_7324940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7324940_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7324940_left_fuel : Nat := 23
def small_7324940_left_count : Nat := 245
def small_7324940_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E8FF08A912F712073D00000000050000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91305120700FA08A91307120700FC00000005000000030000000A0000000212073CFA0000000208A91307120700FC08A912FF000000061207010800000004000000090000000312073CFC0000000308A912FF12073D0805000102135D4503000000010CFD9BF70000000A0F34D1000000000000000006135D81030CFD9BF70F350D000CFD9C050000000A0F350CFA000000020CFD9C07000000060000000A000000000F34D100000000000CFD9C050F34D0FA0CFD9C0700000006000000080000000200000006000000010000000412070108000000040000000A00000000120701000000000008A91305120700FA08A91307120700FC08A912FF0000000512070108000000040500010200000005135D8103045489F700000005138671000000000000000006000000010000000312073CFC0000000308A912FF00000008000000080000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A912FF12073D08000000060000000412070108000000040500010200000008135D8103045489F71386AD000CFD9C050000000800000009000000000000000800000001000000031151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912F712073D0008A913050000000A12073CFA0000000208A912FF12073D080500010200000008135D8103050000FC135D81070CFD9BF70000000A000000080000000300000008000000010000000412070108000000040000000A00000000120701000000000000000008000000021151E905000000020A0000FC115225070A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A913070000000912073CFC0000000308A912FF12073D080500010200000009135D8103050000FA135D81050CFD9BF70000000900000009000000020000000900000001000000040000000900000000120701000000000008A913070000000612073CFC0000000308A912FF0000000600000009000000031151E907000000030A0001081151E8FF08A912F712073D000500010200000006000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A912FF12073D080500010200000008135D8103050000FA135D8105050000FC00000008000000080000000200000009000000010000000412070108000000040000000900000000120701000000000000000008"
theorem small_7324940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7324940_left_root small_7324940_left_fuel small_7324940_left_count small_7324940_left_encoded = true := by
  decide +kernel
theorem small_7324940_left_covered : CoveredBy scale carrier boxes small_7324940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7324940_left_root small_7324940_left_fuel small_7324940_left_count small_7324940_left_encoded small_7324940_left_checked

theorem cover_7324940 : CoveredBy scale carrier boxes root_7324940 := by
  apply coveredBy_split_literal root_7324940 small_7324940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7325462 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7324940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7325462
#print axioms cover_7324940

def root_7324934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7324934_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7324934_left_fuel : Nat := 1
def small_7324934_left_count : Nat := 1
def small_7324934_left_encoded : String := "00000000"
theorem small_7324934_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7324934_left_root small_7324934_left_fuel small_7324934_left_count small_7324934_left_encoded = true := by
  decide +kernel
theorem small_7324934_left_covered : CoveredBy scale carrier boxes small_7324934_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7324934_left_root small_7324934_left_fuel small_7324934_left_count small_7324934_left_encoded small_7324934_left_checked

theorem cover_7324934 : CoveredBy scale carrier boxes root_7324934 := by
  apply coveredBy_split_literal root_7324934 small_7324934_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7324940 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7324934_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7324940
#print axioms cover_7324934

def root_7321330 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7321330 : CoveredBy scale carrier boxes root_7321330 := by
  apply coveredBy_split_literal root_7321330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7321331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7324934 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7321331
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7324934
#print axioms cover_7321330

def root_7378299 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7378299 : CoveredBy scale carrier boxes root_7378299 := by
  apply coveredBy_split_literal root_7378299 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2776.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2777.root coord4 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2776.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2777.covered
#print axioms cover_7378299

def root_7378293 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7378293_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7378293_left_fuel : Nat := 1
def small_7378293_left_count : Nat := 1
def small_7378293_left_encoded : String := "00000003"
theorem small_7378293_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7378293_left_root small_7378293_left_fuel small_7378293_left_count small_7378293_left_encoded = true := by
  decide +kernel
theorem small_7378293_left_covered : CoveredBy scale carrier boxes small_7378293_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7378293_left_root small_7378293_left_fuel small_7378293_left_count small_7378293_left_encoded small_7378293_left_checked

theorem cover_7378293 : CoveredBy scale carrier boxes root_7378293 := by
  apply coveredBy_split_literal root_7378293 small_7378293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7378299 coord3 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_7378293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7378299
#print axioms cover_7378293

def root_7377731 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7377731_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7377731_left_fuel : Nat := 19
def small_7377731_left_count : Nat := 269
def small_7377731_left_encoded : String := "10804D070DE7CA080E5FD909000000040640010012FF70F70115234313F85902000000010AA6A27A10EDAD050BF3E57C000000051008ED07000000030D412888000000050EFA4D0900000005000000040000000210ED7105000000020BF3E57C000000061008ED07000000030D412888000000060EFA4D0905A00100133134F70000000600000000133170F700000000008A922313FDF902000000010A5351BA0000000700000006000000060000000413F895020AA6A27A10EDAD050BF3E57C1009290700000006000000031008ED07000000030D412888000000060EFA4D0905A00100133134F70000000500000000133170F700000000019FB46313EEF902000000010AF9F33A000000050000000600000006000000040000000210ED71050000000200000006000000010000000012FFACF7000000000115234313F85902000000010AA6A27A10EDAD050BF3E57C000000071008ED07000000030D4128880EFA11090000000400000007000000070000000210ED7105000000020BF3E57C100929070D4128880000000600000007000000031008ED07000000030D412888000000060EFA4D0906E0010012C7E4F7008A9223000000070000000600000000000000070000000413F895020AA6A27A10EDAD050BF3E57C100929070D412888000000060EFA4D090000000900000004000000031008ED07000000030D4128880EFA110900000004000000060EFA4D0906E0010012C7E4F7019FB46313EEF902000000010AF9F33A0000000700000009000000060000000012C820F700000000019FB4630000000700000009000000040000000210ED7105000000020BF3E57C000000061008ED070000000300000006000000010E6015090640010012FF70F70115234313F85902000000010DAED8890E962508000000040AA6A27A10EDAD050BF3E57C000000051008ED070000000305A00100000000050000000900000002000000090E9661080AA6A27A10EDAD050BF3E57C000000051008ED070000000305A0010000000005133170F700000000008A92230000000513FE35020E0776C90000000500000007000000010000000210ED7105000000020BF3E57C1009290700000009000000031008ED070000000305A00100133134F7008A9223000000050000000900000000133170F700000000008A922313FDF902000000010E0776C90000000900000007000000090000000413F895020DAED889000000090E9661080AA6A27A10EDAD0500000009000000020000000900000004000000010000000012FFACF7000000000115234313F85902000000010DAED8890E962508000000040AA6A27A00000007000000090E9661080AA6A27A0000000710ED7105000000020BF3E57C000000071008ED070000000306E0010000000007000000070000000413F895020DAED889000000090E9661080AA6A27A10EDAD0500000009000000020000000900000004000000010000000400000003"
theorem small_7377731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7377731_left_root small_7377731_left_fuel small_7377731_left_count small_7377731_left_encoded = true := by
  decide +kernel
theorem small_7377731_left_covered : CoveredBy scale carrier boxes small_7377731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7377731_left_root small_7377731_left_fuel small_7377731_left_count small_7377731_left_encoded small_7377731_left_checked

theorem cover_7377731 : CoveredBy scale carrier boxes root_7377731 := by
  apply coveredBy_split_literal root_7377731 small_7377731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7378293 coord3 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_7377731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7378293
#print axioms cover_7377731

def root_7377725 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7377725_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7377725_left_fuel : Nat := 1
def small_7377725_left_count : Nat := 1
def small_7377725_left_encoded : String := "00000002"
theorem small_7377725_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7377725_left_root small_7377725_left_fuel small_7377725_left_count small_7377725_left_encoded = true := by
  decide +kernel
theorem small_7377725_left_covered : CoveredBy scale carrier boxes small_7377725_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7377725_left_root small_7377725_left_fuel small_7377725_left_count small_7377725_left_encoded small_7377725_left_checked

theorem cover_7377725 : CoveredBy scale carrier boxes root_7377725 := by
  apply coveredBy_split_literal root_7377725 small_7377725_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7377731 coord2 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_7377725_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7377731
#print axioms cover_7377725

def root_7376275 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7376275 : CoveredBy scale carrier boxes root_7376275 := by
  apply coveredBy_split_literal root_7376275 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2775.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7377725 coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2775.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7377725
#print axioms cover_7376275

def root_7376269 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7376269_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7376269_left_fuel : Nat := 1
def small_7376269_left_count : Nat := 1
def small_7376269_left_encoded : String := "00000001"
theorem small_7376269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7376269_left_root small_7376269_left_fuel small_7376269_left_count small_7376269_left_encoded = true := by
  decide +kernel
theorem small_7376269_left_covered : CoveredBy scale carrier boxes small_7376269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7376269_left_root small_7376269_left_fuel small_7376269_left_count small_7376269_left_encoded small_7376269_left_checked

theorem cover_7376269 : CoveredBy scale carrier boxes root_7376269 := by
  apply coveredBy_split_literal root_7376269 small_7376269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.root_7376275 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_7376269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505.cover_7376275
#print axioms cover_7376269

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0505

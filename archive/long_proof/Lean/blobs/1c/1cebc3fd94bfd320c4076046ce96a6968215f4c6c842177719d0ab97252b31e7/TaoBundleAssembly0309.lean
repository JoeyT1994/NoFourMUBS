import TaoBundleAssembly0307
import TaoBundleAssembly0308
import TaoBundleChunkBatch0397
import TaoBundleChunkBatch0398
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309
def root_4233444 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233444_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233444_right_fuel : Nat := 25
def small_4233444_right_count : Nat := 275
def small_4233444_right_encoded : String := "135D45010000000005000102135D44F9050000FA135D81050CFD9C070F34D10600000003045489FF1386AD08028000F613D7ED010280010213D7B0F9078000FA128A7D050AD357870000000610D13D06067ECE7F0000000612EA590800000004000000060000000300000002128A4105000000020AD3578710D1010600000003067ECE7F0000000612EA5908000000040000000610D13D06067ECE7F0000000912EA59080000000403C000F613A54D010140010213F5D8F9064000FA000000060000000900000001000000090000000000000009000000030000000113D7ECF900000001078000FA128A7D050AD3578710D1010600000003067ECE7F0000000612EA590800000004000000060000000900000002128A4105000000020AD3578710D1010600000003067ECE7F0000000900000005000000090000000013D7B101000000000280010213D7B0F9078000FA128A7D050000000600000002128A4105000000020AD3578710D101060000000300000006000000090000000100000009000000041386710800000004028000F613D7ED010280010213D7B0F9078000FA128A7D050AD357870000000610D13D06022A457F000000060000000A0000000300000002128A4105000000020AD3578710D10106000000030000000510D13D060000000A000000030000000113D7ECF900000001078000FA128A7D050AD3578710D1010600000003022A457F000000060000000510D13D06022A457F13E2010803C000F613A54D0103C0010213A510F9000000090000000100000005000000000000000500000004000000050000000300000002000000050000000013D7B101000000000280010213D7B0F9078000FA128A7D050AD357870000000610D13D060000000A00000003000000020000000500000001000000050F350D06045489FF0000000913867108000000040C9A87060F87510700000003000000070F878D07028000F613D7ED010280010213D7B0F9078000FA128A7D05022A457F0000000900000007000000020000000A0000000113D7ECF900000001078000FA128A7D05022A457F000000090000000700000002000000050000000013D7B10100000000028001020000000A00000005000000030000000300000002135D4505000000020CFD9C070F34D10600000003045489FF1386AD08028000F613D7ED010280010213D7B0F9028000FA13D7ED050AD3578710D1010600000003067ECE7F000000070000000510D13D06067ECE7F00000008000000050000000300000002000000050000000100000005000000000000000500000004000000050F350D06045489FF0000000913867108000000040C9A87060000000A000000050000000300000001135D80F900000001050000FA135D81050CFD9C070F34D10600000003045489FF000000091386710800000004000000050F350D06045489FF000000091386710800000004000000090000000300000002135D4505000000020CFD9C070F34D106000000030000000500000005"
theorem small_4233444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233444_right_root small_4233444_right_fuel small_4233444_right_count small_4233444_right_encoded = true := by
  decide +kernel
theorem small_4233444_right_covered : CoveredBy scale carrier boxes small_4233444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233444_right_root small_4233444_right_fuel small_4233444_right_count small_4233444_right_encoded small_4233444_right_checked

theorem cover_4233444 : CoveredBy scale carrier boxes root_4233444 := by
  apply coveredBy_split_literal root_4233444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4233445 small_4233444_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4233445
  · exact small_4233444_right_covered
#print axioms cover_4233444

def root_4233438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233438_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233438_left_fuel : Nat := 1
def small_4233438_left_count : Nat := 1
def small_4233438_left_encoded : String := "00000004"
theorem small_4233438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233438_left_root small_4233438_left_fuel small_4233438_left_count small_4233438_left_encoded = true := by
  decide +kernel
theorem small_4233438_left_covered : CoveredBy scale carrier boxes small_4233438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233438_left_root small_4233438_left_fuel small_4233438_left_count small_4233438_left_encoded small_4233438_left_checked

theorem cover_4233438 : CoveredBy scale carrier boxes root_4233438 := by
  apply coveredBy_split_literal root_4233438 small_4233438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4233444 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4233438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4233444
#print axioms cover_4233438

def root_4233034 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233034_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233034_left_fuel : Nat := 20
def small_4233034_left_count : Nat := 187
def small_4233034_left_encoded : String := "12073D08050000F6135D810105000102135D44F9050000FA135D81050CFD9C070F34D106000000030CFD9BFF0F350D0800000007000000040F34D10800000004078000F600000007128A4101000000000280010213D7B0F9078000FA128A7D050AD357870000000710D13D06000000090000000300000002000000070000000113D7ECF900000001078000FA128A7D050000000900000002000000070F350D060CFD9BFF000000080F34D108000000040C9A8706000000080F878D07078000F600000008128A41010000000000000009000000030000000300000002135D4505000000020CFD9C070F34D106000000030CFD9BFF00000007000000070000000800000001135D80F900000001050000FA135D81050CFD9C070F34D106000000030CFD9BFF000000070F34D10800000004078000F600000007128A410100000000000000070F350D060CFD9BFF0F350D080C9A8706000000080000000A000000040F34D10800000004000000090000000300000002135D4505000000020CFD9C070F34D10600000003000000070F350D060CFD9BFF000000080F34D10800000004000000080000000300000000135D45010000000005000102135D44F9050000FA135D81050CFD9C070F34D106000000030CFD9BFF0F350D080C9A87080F8750FF000000070000000400000009000000040F34D10800000004028000F613D7ED010280010213D7B0F9078000FA0000000900000009000000010000000900000000000000090F350D060CFD9BFF000000090F34D10800000004000000090000000300000002135D4505000000020CFD9C070F34D106000000030CFD9BFF000000090F34D10800000004000000090F350D06000000080000000300000001135D80F900000001050000FA135D81050CFD9C070F34D106000000030CFD9BFF000000090F34D10800000004000000090F350D060CFD9BFF000000090F34D10800000004000000090000000300000002135D4505000000020CFD9C07000000090F350D06000000090000000300000004"
theorem small_4233034_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233034_left_root small_4233034_left_fuel small_4233034_left_count small_4233034_left_encoded = true := by
  decide +kernel
theorem small_4233034_left_covered : CoveredBy scale carrier boxes small_4233034_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233034_left_root small_4233034_left_fuel small_4233034_left_count small_4233034_left_encoded small_4233034_left_checked

theorem cover_4233034 : CoveredBy scale carrier boxes root_4233034 := by
  apply coveredBy_split_literal root_4233034 small_4233034_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4233438 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4233034_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4233438
#print axioms cover_4233034

def root_4233029 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233029_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233029_right_fuel : Nat := 1
def small_4233029_right_count : Nat := 1
def small_4233029_right_encoded : String := "00000003"
theorem small_4233029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233029_right_root small_4233029_right_fuel small_4233029_right_count small_4233029_right_encoded = true := by
  decide +kernel
theorem small_4233029_right_covered : CoveredBy scale carrier boxes small_4233029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233029_right_root small_4233029_right_fuel small_4233029_right_count small_4233029_right_encoded small_4233029_right_checked

theorem cover_4233029 : CoveredBy scale carrier boxes root_4233029 := by
  apply coveredBy_split_literal root_4233029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4233034 small_4233029_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4233034
  · exact small_4233029_right_covered
#print axioms cover_4233029

def root_4232413 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232413_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232413_left_fuel : Nat := 24
def small_4232413_left_count : Nat := 295
def small_4232413_left_encoded : String := "120701060000000308A912FF12073D08050000F6135D81010000000700000000135D45010000000005000102135D44F9050000FA135D810504548A07000000071386AD060CFD9BFF0F350D0800000007000000040F34D10800000004028000F60000000713D7B101000000000280010200000006000000090000000300000002135D45050000000204548A07000000071386AD060CFD9BFF00000007000000070000000300000001135D80F900000001050000FA135D810504548A071386710600000003000000071386AD060CFD9BFF000000070F34D1080000000400000009000000030000000200000007000000041207010800000004050000F6135D810105000102135D44F9050000FA135D810504548A071386710600000003045489FF000000061386710800000004078000F600000007000000071386AD06045489FF000000071386710800000004078000F6128A7D01028001020000000713D7ECF9000000010000000700000000128A4101000000000280010213D7B0F9000000060000000113D7ECF900000001078000FA128A7D0500000006000000020000000700000003000000020000000700000001135D80F900000001050000FA135D810504548A071386710600000003045489FF000000071386710800000004078000F600000007128A41010000000007800102128A40F9078000FA000000060000000500000001000000051386AD06045489FF1386AD08078000F60000000700000007000000041386710800000004078000F6128A7D0107800102128A40F9078000FA128A7D0500000007000000020000000700000001128A7CF900000001078000FA128A7D0500000007000000020000000500000000128A41010000000007800102128A40F9078000FA128A7D05067ECE8712EA590600000003022A457F000000060000000512EA9506022A457F13E2010800000007000000040000000500000003000000020000000500000001000000050000000300000002135D45050000000204548A07000000070000000700000000135D45010000000005000102135D44F9050000FA135D810504548A071386710600000003000000061386AD06045489FF1386AD08028000F613D7ED01028001020000000613D7ECF900000001078000FA00000006000000070000000013D7B10100000000028001020000000613D7ECF900000001078000FA0000000600000005000000041386710800000004028000F613D7ED01028001020000000613D7ECF900000001078000FA00000006000000050000000013D7B101000000000280010200000006000000050000000300000002135D45050000000204548A071386710600000003000000071386AD06045489FF1386AD08028000F6000000070000000500000004000000050000000300000001135D80F900000001050000FA135D810504548A071386710600000003045489FF1386AD08028000F6000000070000000500000004000000051386AD06045489FF1386AD08028000F613D7ED0107800102128A40F9078000FA128A7D05067ECE870000000612EA950600000009000000030000000200000005000000010000000500000000000000050000000400000005000000030000000200000005"
theorem small_4232413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232413_left_root small_4232413_left_fuel small_4232413_left_count small_4232413_left_encoded = true := by
  decide +kernel
theorem small_4232413_left_covered : CoveredBy scale carrier boxes small_4232413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232413_left_root small_4232413_left_fuel small_4232413_left_count small_4232413_left_encoded small_4232413_left_checked

theorem cover_4232413 : CoveredBy scale carrier boxes root_4232413 := by
  apply coveredBy_split_literal root_4232413 small_4232413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4233029 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4232413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4233029
#print axioms cover_4232413

def root_4232407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232407_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232407_left_fuel : Nat := 1
def small_4232407_left_count : Nat := 1
def small_4232407_left_encoded : String := "00000004"
theorem small_4232407_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232407_left_root small_4232407_left_fuel small_4232407_left_count small_4232407_left_encoded = true := by
  decide +kernel
theorem small_4232407_left_covered : CoveredBy scale carrier boxes small_4232407_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232407_left_root small_4232407_left_fuel small_4232407_left_count small_4232407_left_encoded small_4232407_left_checked

theorem cover_4232407 : CoveredBy scale carrier boxes root_4232407 := by
  apply coveredBy_split_literal root_4232407 small_4232407_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4232413 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4232407_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4232413
#print axioms cover_4232407

def root_4232331 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232331_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232331_left_fuel : Nat := 13
def small_4232331_left_count : Nat := 35
def small_4232331_left_encoded : String := "1151E8FF08A9130712070106000000030000000712073D06050000F6135D810105000102135D44F900000008000000010000000700000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D81050500010800000007135D80FF000000040CFD9C07000000070000000800000002000000070000000300000004"
theorem small_4232331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232331_left_root small_4232331_left_fuel small_4232331_left_count small_4232331_left_encoded = true := by
  decide +kernel
theorem small_4232331_left_covered : CoveredBy scale carrier boxes small_4232331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232331_left_root small_4232331_left_fuel small_4232331_left_count small_4232331_left_encoded small_4232331_left_checked

theorem cover_4232331 : CoveredBy scale carrier boxes root_4232331 := by
  apply coveredBy_split_literal root_4232331 small_4232331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4232407 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4232331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4232407
#print axioms cover_4232331

def root_4232326 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232326_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232326_right_fuel : Nat := 1
def small_4232326_right_count : Nat := 1
def small_4232326_right_encoded : String := "00000003"
theorem small_4232326_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232326_right_root small_4232326_right_fuel small_4232326_right_count small_4232326_right_encoded = true := by
  decide +kernel
theorem small_4232326_right_covered : CoveredBy scale carrier boxes small_4232326_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232326_right_root small_4232326_right_fuel small_4232326_right_count small_4232326_right_encoded small_4232326_right_checked

theorem cover_4232326 : CoveredBy scale carrier boxes root_4232326 := by
  apply coveredBy_split_literal root_4232326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4232331 small_4232326_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4232331
  · exact small_4232326_right_covered
#print axioms cover_4232326

def root_4232172 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232172_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232172_left_fuel : Nat := 19
def small_4232172_left_count : Nat := 73
def small_4232172_left_encoded : String := "1151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912FF12073D08050000F6135D810105000102000000080000000800000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D8105000000090000000200000006000000041207010800000004050000F6135D810105000102135D44F9050000FA135D81050500010600000008135D8107045489FF000000081386710800000004078000F6128A7D01028001020000000800000008000000000000000700000003000000020000000800000001135D80F900000001050000FA135D81050500010600000006135D81070000000900000003000000020000000900000000135D450100000000050001020000000900000009"
theorem small_4232172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232172_left_root small_4232172_left_fuel small_4232172_left_count small_4232172_left_encoded = true := by
  decide +kernel
theorem small_4232172_left_covered : CoveredBy scale carrier boxes small_4232172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232172_left_root small_4232172_left_fuel small_4232172_left_count small_4232172_left_encoded small_4232172_left_checked

theorem cover_4232172 : CoveredBy scale carrier boxes root_4232172 := by
  apply coveredBy_split_literal root_4232172 small_4232172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4232326 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4232172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4232326
#print axioms cover_4232172

def root_4232166 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232166_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232166_left_fuel : Nat := 1
def small_4232166_left_count : Nat := 1
def small_4232166_left_encoded : String := "00000002"
theorem small_4232166_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232166_left_root small_4232166_left_fuel small_4232166_left_count small_4232166_left_encoded = true := by
  decide +kernel
theorem small_4232166_left_covered : CoveredBy scale carrier boxes small_4232166_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232166_left_root small_4232166_left_fuel small_4232166_left_count small_4232166_left_encoded small_4232166_left_checked

theorem cover_4232166 : CoveredBy scale carrier boxes root_4232166 := by
  apply coveredBy_split_literal root_4232166 small_4232166_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4232172 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4232166_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4232172
#print axioms cover_4232166

def root_4224666 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4224666 : CoveredBy scale carrier boxes root_4224666 := by
  apply coveredBy_split_literal root_4224666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4224667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4232166 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4224667
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4232166
#print axioms cover_4224666

def root_4224661 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224661_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224661_right_fuel : Nat := 1
def small_4224661_right_count : Nat := 1
def small_4224661_right_encoded : String := "00000001"
theorem small_4224661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224661_right_root small_4224661_right_fuel small_4224661_right_count small_4224661_right_encoded = true := by
  decide +kernel
theorem small_4224661_right_covered : CoveredBy scale carrier boxes small_4224661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224661_right_root small_4224661_right_fuel small_4224661_right_count small_4224661_right_encoded small_4224661_right_checked

theorem cover_4224661 : CoveredBy scale carrier boxes root_4224661 := by
  apply coveredBy_split_literal root_4224661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4224666 small_4224661_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4224666
  · exact small_4224661_right_covered
#print axioms cover_4224661

def root_4224660 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4224660 : CoveredBy scale carrier boxes root_4224660 := by
  apply coveredBy_split_literal root_4224660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4224661 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1585.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4224661
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1585.covered
#print axioms cover_4224660

def root_4224654 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224654_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224654_left_fuel : Nat := 1
def small_4224654_left_count : Nat := 1
def small_4224654_left_encoded : String := "00000000"
theorem small_4224654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224654_left_root small_4224654_left_fuel small_4224654_left_count small_4224654_left_encoded = true := by
  decide +kernel
theorem small_4224654_left_covered : CoveredBy scale carrier boxes small_4224654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224654_left_root small_4224654_left_fuel small_4224654_left_count small_4224654_left_encoded small_4224654_left_checked

theorem cover_4224654 : CoveredBy scale carrier boxes root_4224654 := by
  apply coveredBy_split_literal root_4224654 small_4224654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4224660 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4224654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4224660
#print axioms cover_4224654

def root_4214496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214496 : CoveredBy scale carrier boxes root_4214496 := by
  apply coveredBy_split_literal root_4214496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4224654 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4224654
#print axioms cover_4214496

def root_4257857 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4257857 : CoveredBy scale carrier boxes root_4257857 := by
  apply coveredBy_split_literal root_4257857 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1590.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1591.root coord3 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1590.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1591.covered
#print axioms cover_4257857

def root_4257851 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257851_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257851_left_fuel : Nat := 1
def small_4257851_left_count : Nat := 1
def small_4257851_left_encoded : String := "00000002"
theorem small_4257851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4257851_left_root small_4257851_left_fuel small_4257851_left_count small_4257851_left_encoded = true := by
  decide +kernel
theorem small_4257851_left_covered : CoveredBy scale carrier boxes small_4257851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4257851_left_root small_4257851_left_fuel small_4257851_left_count small_4257851_left_encoded small_4257851_left_checked

theorem cover_4257851 : CoveredBy scale carrier boxes root_4257851 := by
  apply coveredBy_split_literal root_4257851 small_4257851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4257857 coord2 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4257851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4257857
#print axioms cover_4257851

def root_4257289 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257289_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257289_left_fuel : Nat := 19
def small_4257289_left_count : Nat := 269
def small_4257289_left_encoded : String := "10804D050DE7CA060E5FD907000000030640010212FF70F90115234913F85908000000040AA6A27610EDAD010BF3E57A000000051008ED05000000020D412886000000050EFA4D0700000005000000030000000010ED7101000000000BF3E57A000000071008ED05000000020D412886000000070EFA4D0705A00102133134F90000000700000001133170F900000001008A922913FDF908000000040A5351B60000000A00000007000000070000000313F895080AA6A27610EDAD010BF3E57A1009290500000007000000021008ED05000000020D412886000000070EFA4D0705A00102133134F90000000500000001133170F900000001019FB46913EEF908000000040AF9F336000000050000000700000007000000030000000010ED71010000000000000007000000040000000112FFACF9000000010115234913F85908000000040AA6A27610EDAD010BF3E57A0000000A1008ED05000000020D4128860EFA1107000000030000000A0000000A0000000010ED7101000000000BF3E57A100929050D412886000000070000000A000000021008ED05000000020D412886000000070EFA4D0706E0010212C7E4F9008A92290000000900000007000000010000000A0000000313F895080AA6A27610EDAD010BF3E57A100929050D412886000000070EFA4D070000000800000003000000021008ED05000000020D4128860EFA110700000003000000070EFA4D0706E0010212C7E4F9019FB46913EEF908000000040AF9F3360000000A00000008000000070000000112C820F900000001019FB4690000000A00000008000000030000000010ED7101000000000BF3E57A000000071008ED050000000200000007000000040E6015070640010212FF70F90115234913F85908000000040DAED8870E962506000000030AA6A27610EDAD010BF3E57A000000051008ED050000000205A00102000000050000000800000000000000080E9661060AA6A27610EDAD010BF3E57A000000051008ED050000000205A0010200000005133170F900000001008A92290000000513FE35080E0776C70000000500000008000000040000000010ED7101000000000BF3E57A1009290500000008000000021008ED050000000205A00102133134F9008A9229000000050000000800000001133170F900000001008A922913FDF908000000040E0776C7000000080000000A000000080000000313F895080DAED887000000080E9661060AA6A27610EDAD0100000008000000000000000800000003000000040000000112FFACF9000000010115234913F85908000000040DAED8870E962506000000030AA6A2760000000A000000080E9661060AA6A2760000000A10ED7101000000000BF3E57A000000081008ED050000000206E001020000000A0000000A0000000313F895080DAED887000000080E9661060AA6A27610EDAD0100000008000000000000000800000003000000040000000300000002"
theorem small_4257289_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4257289_left_root small_4257289_left_fuel small_4257289_left_count small_4257289_left_encoded = true := by
  decide +kernel
theorem small_4257289_left_covered : CoveredBy scale carrier boxes small_4257289_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4257289_left_root small_4257289_left_fuel small_4257289_left_count small_4257289_left_encoded small_4257289_left_checked

theorem cover_4257289 : CoveredBy scale carrier boxes root_4257289 := by
  apply coveredBy_split_literal root_4257289 small_4257289_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4257851 coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_4257289_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4257851
#print axioms cover_4257289

def root_4257283 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257283_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257283_left_fuel : Nat := 1
def small_4257283_left_count : Nat := 1
def small_4257283_left_encoded : String := "00000000"
theorem small_4257283_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4257283_left_root small_4257283_left_fuel small_4257283_left_count small_4257283_left_encoded = true := by
  decide +kernel
theorem small_4257283_left_covered : CoveredBy scale carrier boxes small_4257283_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4257283_left_root small_4257283_left_fuel small_4257283_left_count small_4257283_left_encoded small_4257283_left_checked

theorem cover_4257283 : CoveredBy scale carrier boxes root_4257283 := by
  apply coveredBy_split_literal root_4257283 small_4257283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4257289 coord0 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4257283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4257289
#print axioms cover_4257283

def root_4255833 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4255833 : CoveredBy scale carrier boxes root_4255833 := by
  apply coveredBy_split_literal root_4255833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1589.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4257283 coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1589.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4257283
#print axioms cover_4255833

def root_4255827 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255827_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255827_left_fuel : Nat := 1
def small_4255827_left_count : Nat := 1
def small_4255827_left_encoded : String := "00000004"
theorem small_4255827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4255827_left_root small_4255827_left_fuel small_4255827_left_count small_4255827_left_encoded = true := by
  decide +kernel
theorem small_4255827_left_covered : CoveredBy scale carrier boxes small_4255827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4255827_left_root small_4255827_left_fuel small_4255827_left_count small_4255827_left_encoded small_4255827_left_checked

theorem cover_4255827 : CoveredBy scale carrier boxes root_4255827 := by
  apply coveredBy_split_literal root_4255827 small_4255827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.root_4255833 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4255827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309.cover_4255833
#print axioms cover_4255827

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0309

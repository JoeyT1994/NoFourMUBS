import TaoBundleAssembly0601
import TaoBundleAssembly0604
import TaoBundleAssembly0608
import TaoBundleChunkBatch0834
import TaoBundleChunkBatch0835
import TaoBundleChunkBatch0836
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609
def root_8885518 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8885518_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8885518_left_fuel : Nat := 24
def small_8885518_left_count : Nat := 335
def small_8885518_left_encoded : String := "1207010800000004050000F8135D810305000104135D44FB05000106135D44FD0CFD9C010F34D1000000000004548A091386710800000004078000F800000006000000081386AD08078000F8128A7D030280010413D7B0FB0280010613D7B0FD0AD35781000000070000000600000003000000060000000213D7ECFB0000000202800106000000070000000700000001128A4103000000010280010413D7B0FB0280010613D7B0FD0AD3578110D1010000000000067ECE890000000612EA9508064000F800000006000000080000000410D13D0000000008000000000000000313D7ECFD000000030AD3578110D10100000000000000000510D13D00067ECE890000000612EA9508064000F8000000060000000500000004000000000000000213D7ECFB00000002028001060000000800000005000000040F350D0004548A09000000081386AD080C9A87000F87510100000000000000080F878D01078000F8128A7D030280010413D7B0FB00000006000000020000000800000001128A4103000000010280010413D7B0FB028001060000000813D7ECFD0000000300000008000000020000000800000000000000040000000000000003135D80FD000000030CFD9C010F34D1000000000004548A09000000071386AD08078000F8128A7D03000000070000000100000005000000040F350D0004548A0913867108000000040C9A87000F87510100000000000000060F878D01078000F80000000600000005000000001386AD080C9A87000F87510100000000078000F8128A7D03028001040000000613D7ECFB0000000207800106000000080000000600000001128A4103000000010280010413D7B0FB07800106128A40FD0000000600000003000000060000000213D7ECFB000000020780010600000008000000050F878D01078000F8128A7D03028001040000000613D7ECFB0000000207800106128A40FD067ECE890000000612EA95080DE7CA000E5FD90100000000000000060000000500000004000000030000000500000001128A4103000000010280010413D7B0FB07800106128A40FD067ECE890000000612EA950800000006000000040000000300000005000000020000000500000000000000040000000000000002135D80FB0000000205000106135D44FD0CFD9C010F34D1000000000004548A09000000071386AD08078000F8128A7D03000000070000000100000005000000040F350D00000000080000000000000003135D80FD000000030CFD9C010F34D10000000000000000050F350D0004548A091386710800000004000000051386AD080C9A87000F87510100000000078000F8128A7D0307800104128A40FB0780010600000008000000050000000200000005000000010000000500000005000000040000000000000001135D45030000000105000104135D44FB05000106135D44FD0CFD9C010F34D1000000000004548A091386710800000004000000051386AD08028000F813D7ED030280010413D7B0FB0280010613D7B0FD0AD3578110D10100000000000000000500000008000000030000000500000002000000050000000100000005000000040F350D0004548A09000000081386AD080C9A8700000000080F878D01028000F8000000080000000800000000000000040000000000000003135D80FD000000030CFD9C010F34D10000000000000000050F350D0004548A091386710800000004000000051386AD080C9A87000F875101000000000000000A00000005000000040000000000000002135D80FB0000000205000106135D44FD0CFD9C010F34D10000000000000000050F350D0000000008000000000000000300000005"
theorem small_8885518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8885518_left_root small_8885518_left_fuel small_8885518_left_count small_8885518_left_encoded = true := by
  decide +kernel
theorem small_8885518_left_covered : CoveredBy scale carrier boxes small_8885518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8885518_left_root small_8885518_left_fuel small_8885518_left_count small_8885518_left_encoded small_8885518_left_checked

theorem cover_8885518 : CoveredBy scale carrier boxes root_8885518 := by
  apply coveredBy_split_literal root_8885518 small_8885518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886230 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8885518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886230
#print axioms cover_8885518

def root_8885513 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8885513_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8885513_right_fuel : Nat := 1
def small_8885513_right_count : Nat := 1
def small_8885513_right_encoded : String := "00000000"
theorem small_8885513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8885513_right_root small_8885513_right_fuel small_8885513_right_count small_8885513_right_encoded = true := by
  decide +kernel
theorem small_8885513_right_covered : CoveredBy scale carrier boxes small_8885513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8885513_right_root small_8885513_right_fuel small_8885513_right_count small_8885513_right_encoded small_8885513_right_checked

theorem cover_8885513 : CoveredBy scale carrier boxes root_8885513 := by
  apply coveredBy_split_literal root_8885513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8885518 small_8885513_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8885518
  · exact small_8885513_right_covered
#print axioms cover_8885513

def root_8884743 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8884743_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8884743_left_fuel : Nat := 26
def small_8884743_left_count : Nat := 361
def small_8884743_left_encoded : String := "120701000000000008A913091207010800000004050000F8135D810305000104135D44FB05000106135D44FD04548A01000000070000000700000003000000050000000200000005000000010000000512073D08050000F8135D810305000104135D44FB05000106135D44FD04548A0113867100000000000CFD9C090F34D10800000004078000F800000007000000090F350D0800000009000000041386AD000CFD9C090F34D10800000004078000F8128A7D030280010413D7B0FB0280010613D7B0FD067ECE810000000712EA95000AD35789000000070000000A000000000000000313D7ECFD00000003000000070000000213D7ECFB0000000202800106000000070000000700000001128A4103000000010280010413D7B0FB0280010613D7B0FD067ECE810000000912EA95000AD3578910D1010800000004064000F8000000070000000910D13D0800000009000000040000000000000003000000090000000213D7ECFB000000020280010613D7B0FD067ECE810000000A12EA95000AD3578910D10108000000040000000510D13D08064000F80000000A00000005000000040000000000000003000000050F350D080C9A87080F87510900000004000000090F878D09078000F8128A7D03028001040000000913D7ECFB00000002028001060000000A0000000900000001128A410300000001028001040000000913D7ECFB000000020000000900000004000000040000000000000003135D80FD0000000304548A011386710000000000000000091386AD000CFD9C090F34D10800000004078000F8128A7D030000000700000001000000050F350D0800000009000000040000000000000002135D80FB0000000205000106135D44FD04548A0113867100000000000CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004000000090F878D09078000F8000000070000000500000004000000041386AD000CFD9C090F34D10800000004078000F8128A7D030000000700000001000000050F350D080C9A87080F87510900000004078000F8128A7D0307800104128A40FB0000000A000000020000000A00000001128A41030000000107800104128A40FB0000000900000002000000060F878D09078000F8128A7D0307800104128A40FB028001060000000A13D7ECFD00000003067ECE810000000712EA95000DE7CA080E5FD9090000000400000009000000050000000000000002128A7CFB00000002028001060000000A0000000500000001128A41030000000107800104128A40FB0280010613D7B0FD067ECE810000000A12EA95000000000A000000000000000300000005000000020000000500000004000000040000000000000003135D80FD0000000304548A011386710000000000000000051386AD000CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F8128A7D03078001040000000900000005000000010000000500000005000000040000000000000001135D45030000000105000104135D44FB05000106135D44FD04548A0113867100000000000CFD9C0900000009000000091386AD000CFD9C090F34D10800000004028000F813D7ED030280010413D7B0FB0280010613D7B0FD067ECE810000000912EA95000AD3578910D10108000000040000000500000009000000000000000300000005000000020000000500000001000000050F350D080C9A8708000000090F878D09028000F8000000090000000900000004000000040000000000000003135D80FD0000000304548A01000000091386AD000CFD9C090F34D10800000004000000050F350D0800000009000000040000000000000002135D80FB0000000205000106135D44FD04548A011386710000000000000000051386AD000CFD9C090F34D10800000004000000050F350D080C9A87080F8751090000000400000006000000050000000400000000000000030000000500000004"
theorem small_8884743_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8884743_left_root small_8884743_left_fuel small_8884743_left_count small_8884743_left_encoded = true := by
  decide +kernel
theorem small_8884743_left_covered : CoveredBy scale carrier boxes small_8884743_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8884743_left_root small_8884743_left_fuel small_8884743_left_count small_8884743_left_encoded small_8884743_left_checked

theorem cover_8884743 : CoveredBy scale carrier boxes root_8884743 := by
  apply coveredBy_split_literal root_8884743 small_8884743_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8885513 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8884743_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8885513
#print axioms cover_8884743

def root_8884738 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8884738_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8884738_right_fuel : Nat := 1
def small_8884738_right_count : Nat := 1
def small_8884738_right_encoded : String := "00000004"
theorem small_8884738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8884738_right_root small_8884738_right_fuel small_8884738_right_count small_8884738_right_encoded = true := by
  decide +kernel
theorem small_8884738_right_covered : CoveredBy scale carrier boxes small_8884738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8884738_right_root small_8884738_right_fuel small_8884738_right_count small_8884738_right_encoded small_8884738_right_checked

theorem cover_8884738 : CoveredBy scale carrier boxes root_8884738 := by
  apply coveredBy_split_literal root_8884738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8884743 small_8884738_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8884743
  · exact small_8884738_right_covered
#print axioms cover_8884738

def root_8883974 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883974_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883974_left_fuel : Nat := 26
def small_8883974_left_count : Nat := 367
def small_8883974_left_encoded : String := "1151E9090000000408A913011207010000000000050000F8135D81030500010400000009135D80FB0000000205000106135D44FD0500010800000009135D810904548A01000000091386AD00078000F8128A7D0307800104000000090000000A00000001128A410300000001078001040000000900000006000000000000000400000003135D80FD000000030000000900000001135D4503000000010500010400000009135D80FB0000000205000106135D44FD050001080000000600000006000000030000000912073D00050000F8135D810305000104135D44FB05000106135D44FD0500010800000007135D81090CFD9C010F34D10000000000078000F8128A7D03028001040000000913D7ECFB000000020280010613D7B0FD0780010800000005128A7D090AD3578100000005000000070000000400000003000000090000000100000007000000070000000400000003135D80FD0000000305000108135D4509000000040CFD9C010000000900000007135D81090CFD9C010F34D10000000000000000090F350D000C9A8700000000070F878D01078000F8128A7D03028001040000000713D7ECFB00000002078001060000000700000008000000010000000700000000000000000000000400000002135D80FB0000000205000106135D44FD05000108135D4509000000040CFD9C010F34D10000000000078000F8128A7D03078001040000000900000006000000010000000600000007135D81090CFD9C010F34D10000000000078000F8128A7D0307800104128A40FB0280010613D7B0FD07800108128A41090000000400000006128A7D090AD357810000000610D13D000000000600000000000000040000000313D7ECFD000000030780010800000009128A7D090AD357810000000610D13D0000000006000000000000000400000002128A7CFB00000002028001060000000613D7ECFD0000000307800108000000060000000600000001128A41030000000107800104128A40FB02800106000000060000000600000002000000060F350D000C9A8700000000070F878D01078000F8128A7D030780010400000007128A7CFB00000002028001060000000600000006000000010000000700000000000000000000000400000003135D80FD0000000305000108135D4509000000040CFD9C010F34D10000000000000000090F350D000C9A8700000000070F878D01078000F800000008000000060000000000000000135D81090CFD9C010F34D10000000000078000F8128A7D0307800104128A40FB07800106128A40FD0780010800000008128A7D090AD35781000000060000000800000004000000030000000800000002128A7CFB000000020780010600000006128A7CFD000000030000000600000001128A41030000000107800104128A40FB0000000900000002000000060F350D000C9A87000F87510100000000078000F8128A7D0307800104128A40FB0000000700000002128A7CFB000000020780010600000006128A7CFD000000030000000600000001000000070F878D01078000F8128A7D0307800104128A40FB07800106128A40FD0780010800000007128A7D090DE7CA00000000060E601501000000060000000000000004000000030000000800000002128A7CFB000000020780010600000006128A7CFD000000030000000600000001128A41030000000107800104128A40FB078001060000000600000006000000020000000600000000000000000000000400000001135D45030000000105000104135D44FB0500010600000007135D80FD000000030500010800000007135D81090CFD9C010F34D1000000000000000009000000070000000400000002135D80FB0000000205000106135D44FD0500010800000007135D81090CFD9C0100000006000000070000000400000003135D80FD0000000305000108135D45090000000400000006135D81090CFD9C01000000060F350D000C9A8700000000060F878D010000000600000000000000000000000400000000"
theorem small_8883974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883974_left_root small_8883974_left_fuel small_8883974_left_count small_8883974_left_encoded = true := by
  decide +kernel
theorem small_8883974_left_covered : CoveredBy scale carrier boxes small_8883974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883974_left_root small_8883974_left_fuel small_8883974_left_count small_8883974_left_encoded small_8883974_left_checked

theorem cover_8883974 : CoveredBy scale carrier boxes root_8883974 := by
  apply coveredBy_split_literal root_8883974 small_8883974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8884738 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8883974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8884738
#print axioms cover_8883974

def root_8883969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883969_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883969_right_fuel : Nat := 1
def small_8883969_right_count : Nat := 1
def small_8883969_right_encoded : String := "00000003"
theorem small_8883969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883969_right_root small_8883969_right_fuel small_8883969_right_count small_8883969_right_encoded = true := by
  decide +kernel
theorem small_8883969_right_covered : CoveredBy scale carrier boxes small_8883969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883969_right_root small_8883969_right_fuel small_8883969_right_count small_8883969_right_encoded small_8883969_right_checked

theorem cover_8883969 : CoveredBy scale carrier boxes root_8883969 := by
  apply coveredBy_split_literal root_8883969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8883974 small_8883969_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8883974
  · exact small_8883969_right_covered
#print axioms cover_8883969

def root_8883968 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8883968 : CoveredBy scale carrier boxes root_8883968 := by
  apply coveredBy_split_literal root_8883968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8883969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3333.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8883969
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3333.covered
#print axioms cover_8883968

def root_8883963 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883963_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883963_right_fuel : Nat := 1
def small_8883963_right_count : Nat := 1
def small_8883963_right_encoded : String := "00000002"
theorem small_8883963_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883963_right_root small_8883963_right_fuel small_8883963_right_count small_8883963_right_encoded = true := by
  decide +kernel
theorem small_8883963_right_covered : CoveredBy scale carrier boxes small_8883963_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883963_right_root small_8883963_right_fuel small_8883963_right_count small_8883963_right_encoded small_8883963_right_checked

theorem cover_8883963 : CoveredBy scale carrier boxes root_8883963 := by
  apply coveredBy_split_literal root_8883963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8883968 small_8883963_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8883968
  · exact small_8883963_right_covered
#print axioms cover_8883963

def root_8883962 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8883962 : CoveredBy scale carrier boxes root_8883962 := by
  apply coveredBy_split_literal root_8883962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8883963 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3334.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8883963
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3334.covered
#print axioms cover_8883962

def root_8883956 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883956_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883956_left_fuel : Nat := 1
def small_8883956_left_count : Nat := 1
def small_8883956_left_encoded : String := "00000001"
theorem small_8883956_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883956_left_root small_8883956_left_fuel small_8883956_left_count small_8883956_left_encoded = true := by
  decide +kernel
theorem small_8883956_left_covered : CoveredBy scale carrier boxes small_8883956_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883956_left_root small_8883956_left_fuel small_8883956_left_count small_8883956_left_encoded small_8883956_left_checked

theorem cover_8883956 : CoveredBy scale carrier boxes root_8883956 := by
  apply coveredBy_split_literal root_8883956 small_8883956_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8883962 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8883956_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8883962
#print axioms cover_8883956

def root_8838596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8838596 : CoveredBy scale carrier boxes root_8838596 := by
  apply coveredBy_split_literal root_8838596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8838597 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8883956 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8838597
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8883956
#print axioms cover_8838596

def root_8838591 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838591_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838591_right_fuel : Nat := 1
def small_8838591_right_count : Nat := 1
def small_8838591_right_encoded : String := "00000000"
theorem small_8838591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8838591_right_root small_8838591_right_fuel small_8838591_right_count small_8838591_right_encoded = true := by
  decide +kernel
theorem small_8838591_right_covered : CoveredBy scale carrier boxes small_8838591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8838591_right_root small_8838591_right_fuel small_8838591_right_count small_8838591_right_encoded small_8838591_right_checked

theorem cover_8838591 : CoveredBy scale carrier boxes root_8838591 := by
  apply coveredBy_split_literal root_8838591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8838596 small_8838591_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8838596
  · exact small_8838591_right_covered
#print axioms cover_8838591

def root_8826401 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826401 : CoveredBy scale carrier boxes root_8826401 := by
  apply coveredBy_split_literal root_8826401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8826402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8838591 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8826402
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8838591
#print axioms cover_8826401

def root_8820371 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8820371 : CoveredBy scale carrier boxes root_8820371 := by
  apply coveredBy_split_literal root_8820371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8820372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8826401 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8820372
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8826401
#print axioms cover_8820371

def root_8786593 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8786593 : CoveredBy scale carrier boxes root_8786593 := by
  apply coveredBy_split_literal root_8786593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.root_8786594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8820371 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0604.cover_8786594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8820371
#print axioms cover_8786593

def root_8923394 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8923394 : CoveredBy scale carrier boxes root_8923394 := by
  apply coveredBy_split_literal root_8923394 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3337.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3338.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3337.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3338.covered
#print axioms cover_8923394

def root_8923389 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8923389_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8923389_right_fuel : Nat := 1
def small_8923389_right_count : Nat := 1
def small_8923389_right_encoded : String := "00000000"
theorem small_8923389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8923389_right_root small_8923389_right_fuel small_8923389_right_count small_8923389_right_encoded = true := by
  decide +kernel
theorem small_8923389_right_covered : CoveredBy scale carrier boxes small_8923389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8923389_right_root small_8923389_right_fuel small_8923389_right_count small_8923389_right_encoded small_8923389_right_checked

theorem cover_8923389 : CoveredBy scale carrier boxes root_8923389 := by
  apply coveredBy_split_literal root_8923389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8923394 small_8923389_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8923394
  · exact small_8923389_right_covered
#print axioms cover_8923389

def root_8920893 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8920893 : CoveredBy scale carrier boxes root_8920893 := by
  apply coveredBy_split_literal root_8920893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3336.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8923389 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3336.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8923389
#print axioms cover_8920893

def root_8920892 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8920892 : CoveredBy scale carrier boxes root_8920892 := by
  apply coveredBy_split_literal root_8920892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8920893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3339.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8920893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3339.covered
#print axioms cover_8920892

def root_8918016 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8918016 : CoveredBy scale carrier boxes root_8918016 := by
  apply coveredBy_split_literal root_8918016 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3335.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8920892 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3335.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8920892
#print axioms cover_8918016

def root_8786592 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8786592 : CoveredBy scale carrier boxes root_8786592 := by
  apply coveredBy_split_literal root_8786592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8786593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8918016 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8786593
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8918016
#print axioms cover_8786592

def root_8711294 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711294 : CoveredBy scale carrier boxes root_8711294 := by
  apply coveredBy_split_literal root_8711294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0601.root_8711295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8786592 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0601.cover_8711295
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8786592
#print axioms cover_8711294

def root_8935946 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935946_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935946_left_fuel : Nat := 26
def small_8935946_left_count : Nat := 339
def small_8935946_left_encoded : String := "12EA94FC000000030B4D43F810804D030B4D43FE10804D090000000500000004108011090000000403C0010013A5110100000000011523450000000513F895040793F0BD00000005128220FC0BF3E5781009290300000005000000011008ED03000000010AA6A27E10EDAD09032001000000000913C1450100000005000000000000000400000009000000030000000213A54D01011523450000000513F895040793F0BD00000005128220FC0BF3E5781009290300000005000000011008ED03000000010AA6A27E10EDAD09000000050000000410ED710900000004046001001383DD01000000000000000913841901019FB4650000000513EF350407095F9D000000050000000700000002000000000000000300000002000000000000000110801103000000010B4D43FE10804D0903C0010013A5110100000000011523450000000513F895040793F0BD000000050000000A0000000213A54D01011523450000000513F895040793F0BD00000005128220FC0AA6A27810EDAD03000000050000000110ED7103000000010000000A00000003000000020000000000000004108011090000000403C0010013A51101000000000115234513F85904000000020793F0BD00000005128220FC0AA6A27810EDAD03000000050000000110ED7103000000010AA6A27E10EDAD09000000050000000410ED710900000004000000090000000313F895040793F0BD12825CFC000000030AA6A278000000090000000A128220FC0AA6A27810EDAD030AA6A27E10EDAD0903200100000000090000000A0000000400000009000000010000000A000000030000000213A54D010115234513F85904000000020793F0BD00000005128220FC0AA6A27810EDAD03000000050000000110ED7103000000010AA6A27E10EDAD09000000050000000410ED710900000004046001001383DD0100000000008A92250000000513FE350407095F9D00000005000000AB0000000213841901008A92250000000513FE350407095F9D00000005000000AB00000002000000000000000313F895040793F0BD12825CFC000000030AA6A27810EDAD03000000050000000110ED7103000000010AA6A27E10EDAD09000000050000000410ED71090000000400000008128220FC0AA6A27810EDAD030AA6A27E10EDAD09046001001383DD0100000000019FB4650000000513EF350407095F9D000000050000000A0000000213841901019FB4650000000513EF350407095F9D000000050000000600000002000000000000000410ED710900000004046001001383DD0100000000019FB465000000090000000913841901019FB46513EEF9040000000207095F9D0000000512B880FC0AF9F33810B82903000000050000000110B7ED03000000010A5351BE112101090000000500000004000000090000000313EF350407095F9D0000000912B880FC0AF9F3380000000710B7ED03000000010A5351BE00000006000000090000000300000002000000000000000110ED7103000000010AA6A27E10EDAD09046001000000000A13841901019FB46513EEF9040000000207095F9D0000000512B880FC000000060000000300000006000000000000000410ED710900000004046001001383DD0100000000019FB46513EEF9040000000207095F9D000000090000000A0000000913841901019FB46513EEF9040000000207095F9D12B8BCFC000000030000000812B880FC0A5351B8112101030A5351BE11210109000000060000000400000009000000011120C503000000010A5351BE00000006000000080000000313EF350407095F9D0000000612B880FC0A5351B80000000600000006000000030000000200000000000000030000000200000000"
theorem small_8935946_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935946_left_root small_8935946_left_fuel small_8935946_left_count small_8935946_left_encoded = true := by
  decide +kernel
theorem small_8935946_left_covered : CoveredBy scale carrier boxes small_8935946_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935946_left_root small_8935946_left_fuel small_8935946_left_count small_8935946_left_encoded small_8935946_left_checked

theorem cover_8935946 : CoveredBy scale carrier boxes root_8935946 := by
  apply coveredBy_split_literal root_8935946 small_8935946_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3342.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_8935946_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3342.covered
#print axioms cover_8935946

def root_8935940 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935940_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935940_left_fuel : Nat := 1
def small_8935940_left_count : Nat := 1
def small_8935940_left_encoded : String := "00000002"
theorem small_8935940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935940_left_root small_8935940_left_fuel small_8935940_left_count small_8935940_left_encoded = true := by
  decide +kernel
theorem small_8935940_left_covered : CoveredBy scale carrier boxes small_8935940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935940_left_root small_8935940_left_fuel small_8935940_left_count small_8935940_left_encoded small_8935940_left_checked

theorem cover_8935940 : CoveredBy scale carrier boxes root_8935940 := by
  apply coveredBy_split_literal root_8935940 small_8935940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.root_8935946 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_8935940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609.cover_8935946
#print axioms cover_8935940

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0609

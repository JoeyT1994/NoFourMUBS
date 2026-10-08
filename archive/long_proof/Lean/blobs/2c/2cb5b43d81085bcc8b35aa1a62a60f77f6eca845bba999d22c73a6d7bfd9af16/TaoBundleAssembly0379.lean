import TaoBundleAssembly0378
import TaoBundleChunkBatch0505
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379
def root_5378819 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378819_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378819_left_fuel : Nat := 25
def small_5378819_left_count : Nat := 233
def small_5378819_left_encoded : String := "1151E907000000030A0001081151E9090000000408A912F712073D0008A912F912073CF800000001050000FA00000005135D44FB0500010600000005135D810705000108000000050000000A00000003000000020000000600000000120701000000000008A912F912073CF800000001050000FA00000005135D44FB0500010600000005135D81070500010800000005135D8109045489F70000000613867100000000000CFD9BF90F350CF8000000010000000600000006000000040000000300000002000000061152250908A912F712073D0008A912F912073CF80000000108A9130912070108000000040000000A12073D08050000FA135D80FB00000002050001060000000A135D81070CFD9BF70000000A0F34D100000000000000000A00000003135D44FB0000000A00000002000000040000000A00000000120701000000000008A912F912073CF80000000108A913091207010800000004050000FA135D80FB00000002050001060000000A135D8107045489F70000000A13867100000000000CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000090F8750F90000000A000000011386AD080C9A86F80000000A0F8750F90000000A00000001000000040000000A00000003135D44FB050001060000000A135D8107045489F70000000A13867100000000000CFD9BF90F350CF8000000010000000900000009000000030000000212073D08050000FA135D80FB0000000205000106135D450700000003045489F70000000A13867100000000000CFD9BF90000000A0000000A135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D108000000040000000A0000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D108000000040C9A86F80000000A0F8750F9078000FA0000000A0000000A000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09078000FA000000050000000A0000000400000001000000040F34D0F80000000A0000000100000003135D44FB05000106135D4507000000030000000A135D8107045489F71386AD000CFD9BF90000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D108000000040000000A0F350D080C9A86F80000000A0F8750F90000000A00000001000000040F34D0F80000000A00000001000000030000000200000004120700F808A913091207010800000004000000090000000A0000000100000004"
theorem small_5378819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5378819_left_root small_5378819_left_fuel small_5378819_left_count small_5378819_left_encoded = true := by
  decide +kernel
theorem small_5378819_left_covered : CoveredBy scale carrier boxes small_5378819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5378819_left_root small_5378819_left_fuel small_5378819_left_count small_5378819_left_encoded small_5378819_left_checked

theorem cover_5378819 : CoveredBy scale carrier boxes root_5378819 := by
  apply coveredBy_split_literal root_5378819 small_5378819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0378.root_5379313 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5378819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0378.cover_5379313
#print axioms cover_5378819

def root_5378814 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378814_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378814_right_fuel : Nat := 1
def small_5378814_right_count : Nat := 1
def small_5378814_right_encoded : String := "00000002"
theorem small_5378814_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5378814_right_root small_5378814_right_fuel small_5378814_right_count small_5378814_right_encoded = true := by
  decide +kernel
theorem small_5378814_right_covered : CoveredBy scale carrier boxes small_5378814_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5378814_right_root small_5378814_right_fuel small_5378814_right_count small_5378814_right_encoded small_5378814_right_checked

theorem cover_5378814 : CoveredBy scale carrier boxes root_5378814 := by
  apply coveredBy_split_literal root_5378814 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5378819 small_5378814_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5378819
  · exact small_5378814_right_covered
#print axioms cover_5378814

def root_5359026 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5359026 : CoveredBy scale carrier boxes root_5359026 := by
  apply coveredBy_split_literal root_5359026 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0378.root_5359027 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5378814 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0378.cover_5359027
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5378814
#print axioms cover_5359026

def root_5359020 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359020_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359020_left_fuel : Nat := 1
def small_5359020_left_count : Nat := 1
def small_5359020_left_encoded : String := "00000001"
theorem small_5359020_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359020_left_root small_5359020_left_fuel small_5359020_left_count small_5359020_left_encoded = true := by
  decide +kernel
theorem small_5359020_left_covered : CoveredBy scale carrier boxes small_5359020_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359020_left_root small_5359020_left_fuel small_5359020_left_count small_5359020_left_encoded small_5359020_left_checked

theorem cover_5359020 : CoveredBy scale carrier boxes root_5359020 := by
  apply coveredBy_split_literal root_5359020 small_5359020_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5359026 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5359020_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5359026
#print axioms cover_5359020

def root_5386711 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386711_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386711_left_fuel : Nat := 23
def small_5386711_left_count : Nat := 191
def small_5386711_left_encoded : String := "1386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA0F878CFB00000002000000080F8750FB078000F8128A7CF900000001067ECE77000000080000000800000005000000020F350D080C9A86FA0F878CFB000000020C9A8708000000090F878D09078000F80000000900000009000000040F8750FB0C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001067ECE770000000912EA5900000000000AD3578710D10106000000030B4D43FA000000090000000710D13D060B4D43FA00000009108010FB0DE7CA08000000090E60150900000008000000040000000200000003128A40F9067ECE770000000912EA5900000000000AD357870000000800000009000000010000000400000002000000040F350D060CFD9C090F34D108000000040C9A86FA000000080F8750FB0C9A87060000000800000008000000020F350D080C9A86FA0F878CFB000000020C9A87060F875107000000030C9A870800000009000000080F878D070C9A8708000000090F878D09078000F8000000090000000800000004000000030F8750FB0C9A87060F875107000000030C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001067ECE770000000612EA5900000000000B4D43FA10804CFB0000000200000008108010FB0B4D44060000000610804D0700000006000000030000000200000008000000040F878D070C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001067ECE770000000912EA5900000000000B4D43FA10804CFB0000000200000009108010FB0DE7CA060E5FD907000000030DE7CA0800000006000000080E6015070DE7CA08000000090000000800000003000000020000000800000004000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C090F34D1080000000400000008000000090F350D060CFD9C090F34D10800000004000000080F350D080000000900000004000000030000000200000000"
theorem small_5386711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386711_left_root small_5386711_left_fuel small_5386711_left_count small_5386711_left_encoded = true := by
  decide +kernel
theorem small_5386711_left_covered : CoveredBy scale carrier boxes small_5386711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386711_left_root small_5386711_left_fuel small_5386711_left_count small_5386711_left_encoded small_5386711_left_checked

theorem cover_5386711 : CoveredBy scale carrier boxes root_5386711 := by
  apply coveredBy_split_literal root_5386711 small_5386711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2018.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5386711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2018.covered
#print axioms cover_5386711

def root_5386705 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386705_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386705_left_fuel : Nat := 1
def small_5386705_left_count : Nat := 1
def small_5386705_left_encoded : String := "00000001"
theorem small_5386705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386705_left_root small_5386705_left_fuel small_5386705_left_count small_5386705_left_encoded = true := by
  decide +kernel
theorem small_5386705_left_covered : CoveredBy scale carrier boxes small_5386705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386705_left_root small_5386705_left_fuel small_5386705_left_count small_5386705_left_encoded small_5386705_left_checked

theorem cover_5386705 : CoveredBy scale carrier boxes root_5386705 := by
  apply coveredBy_split_literal root_5386705 small_5386705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5386711 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5386705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5386711
#print axioms cover_5386705

def root_5386704 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386704_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386704_right_fuel : Nat := 17
def small_5386704_right_count : Nat := 141
def small_5386704_right_encoded : String := "135D44F9045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA000000090F8750FB0C9A8708000000090000000500000002000000040F350D060CFD9C09000000080F350D080C9A86FA0F878CFB000000020C9A870600000008000000090F8750FB0C9A8706000000080F878D070C9A87080000000800000008000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C0900000008000000090F350D060000000800000003000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878CFB000000020C9A8708000000090F878D0900000008000000040F8750FB0C9A87080F87510900000004028000F800000009000000050000000500000002000000040F350D060CFD9C090F34D10800000004000000080F350D080C9A86FA0F878CFB000000020C9A8706000000080F878D070C9A87080000000900000008000000030F8750FB0C9A87060F875107000000030C9A87080F87510900000004028000F80000000900000006000000080F878D070C9A87080F87510900000004028000F8000000090000000800000008000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C09000000080F350D0800000009000000040F350D060CFD9C090000000800000007000000030000000200000001"
theorem small_5386704_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386704_right_root small_5386704_right_fuel small_5386704_right_count small_5386704_right_encoded = true := by
  decide +kernel
theorem small_5386704_right_covered : CoveredBy scale carrier boxes small_5386704_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386704_right_root small_5386704_right_fuel small_5386704_right_count small_5386704_right_encoded small_5386704_right_checked

theorem cover_5386704 : CoveredBy scale carrier boxes root_5386704 := by
  apply coveredBy_split_literal root_5386704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5386705 small_5386704_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5386705
  · exact small_5386704_right_covered
#print axioms cover_5386704

def root_5386699 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386699_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386699_right_fuel : Nat := 1
def small_5386699_right_count : Nat := 1
def small_5386699_right_encoded : String := "00000004"
theorem small_5386699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386699_right_root small_5386699_right_fuel small_5386699_right_count small_5386699_right_encoded = true := by
  decide +kernel
theorem small_5386699_right_covered : CoveredBy scale carrier boxes small_5386699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386699_right_root small_5386699_right_fuel small_5386699_right_count small_5386699_right_encoded small_5386699_right_checked

theorem cover_5386699 : CoveredBy scale carrier boxes root_5386699 := by
  apply coveredBy_split_literal root_5386699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5386704 small_5386699_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5386704
  · exact small_5386699_right_covered
#print axioms cover_5386699

def root_5386607 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386607_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386607_left_fuel : Nat := 15
def small_5386607_left_count : Nat := 43
def small_5386607_left_encoded : String := "1207010800000004050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9C07000000080F350D060000000800000003000000080000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000080F350D0604548A09000000081386AD080C9A86FA000000080F8750FB0C9A870600000008000000080000000200000004000000030F34D0FA000000080000000200000008"
theorem small_5386607_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386607_left_root small_5386607_left_fuel small_5386607_left_count small_5386607_left_encoded = true := by
  decide +kernel
theorem small_5386607_left_covered : CoveredBy scale carrier boxes small_5386607_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386607_left_root small_5386607_left_fuel small_5386607_left_count small_5386607_left_encoded small_5386607_left_checked

theorem cover_5386607 : CoveredBy scale carrier boxes root_5386607 := by
  apply coveredBy_split_literal root_5386607 small_5386607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5386699 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5386607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5386699
#print axioms cover_5386607

def root_5386602 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386602_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386602_right_fuel : Nat := 1
def small_5386602_right_count : Nat := 1
def small_5386602_right_encoded : String := "00000003"
theorem small_5386602_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386602_right_root small_5386602_right_fuel small_5386602_right_count small_5386602_right_encoded = true := by
  decide +kernel
theorem small_5386602_right_covered : CoveredBy scale carrier boxes small_5386602_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386602_right_root small_5386602_right_fuel small_5386602_right_count small_5386602_right_encoded small_5386602_right_checked

theorem cover_5386602 : CoveredBy scale carrier boxes root_5386602 := by
  apply coveredBy_split_literal root_5386602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5386607 small_5386602_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5386607
  · exact small_5386602_right_covered
#print axioms cover_5386602

def root_5385982 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385982_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385982_left_fuel : Nat := 27
def small_5385982_left_count : Nat := 295
def small_5385982_left_encoded : String := "120701060000000308A913091207010800000004050000F8135D80F900000001045489F71386AD000CFD9BFB00000005000000080000000013867100000000000CFD9BFB00000005000000080000000512073D08050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878CFB00000002000000090F8750FB0C9A8708000000070000000500000002000000041386AD060CFD9C090F34D108000000040C9A86FA0F878CFB00000002078000F8128A7CF900000001067ECE77000000080000000800000005000000050F350D080C9A86FA0F878CFB00000002000000090F8750FB0C9A87080F87510900000004000000090F878D09078000F8128A7CF9000000010000000700000005000000040000000200000004000000030F34D0FA04548A0713867106000000030CFD9C090F34D10800000004078000F80000000800000008000000091386AD060CFD9C090F34D10800000004000000080000000900000003000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878CFB000000020C9A87080000000A0F878D090000000A000000040F8750FB0C9A87080F87510900000004078000F8128A7CF900000001022A4577000000070000000A000000050000000500000002000000041386AD060CFD9C090F34D108000000040C9A86FA0F878CFB00000002078000F8128A7CF900000001022A457713E20100067ECE870000000500000008000000000000000A00000005000000050F350D080C9A86FA0F878CFB000000020C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001022A457713E20100067ECE870000000A00000009000000000000000A0000000A000000040F8750FB0C9A87080F87510900000004078000F8128A7CF900000001022A45770000000913E1C50000000000067ECE870000000A0000000A128A40F9022A4577000000090000000A000000010F878D09078000F8128A7CF900000001022A457713E20100067ECE870000000512EA95060B4D43FA10804CFB000000020DE7CA08000000070000000500000005000000030000000013E1C50000000000067ECE870000000512EA95060B4D43FA0000000A000000050000000300000005000000040000000200000004000000030F34D0FA04548A0713867106000000030000000A1386AD060CFD9C090000000A0F350D080000000A000000040000000300000002135D44F9045489F71386AD000CFD9BFB0F350CFA0000000204548A071386710600000003000000051386AD060CFD9C090F34D10800000004000000050F350D080C9A86FA000000090000000500000004000000030F34D0FA04548A070000000A1386AD060CFD9C09000000080000000900000003000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A071386710600000003000000051386AD060CFD9C090000000A0F350D080C9A86FA0000000A0000000500000004000000030F34D0FA0000000A000000020000000100000004"
theorem small_5385982_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385982_left_root small_5385982_left_fuel small_5385982_left_count small_5385982_left_encoded = true := by
  decide +kernel
theorem small_5385982_left_covered : CoveredBy scale carrier boxes small_5385982_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385982_left_root small_5385982_left_fuel small_5385982_left_count small_5385982_left_encoded small_5385982_left_checked

theorem cover_5385982 : CoveredBy scale carrier boxes root_5385982 := by
  apply coveredBy_split_literal root_5385982 small_5385982_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5386602 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5385982_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5386602
#print axioms cover_5385982

def root_5385976 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385976_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385976_left_fuel : Nat := 1
def small_5385976_left_count : Nat := 1
def small_5385976_left_encoded : String := "00000002"
theorem small_5385976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385976_left_root small_5385976_left_fuel small_5385976_left_count small_5385976_left_encoded = true := by
  decide +kernel
theorem small_5385976_left_covered : CoveredBy scale carrier boxes small_5385976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385976_left_root small_5385976_left_fuel small_5385976_left_count small_5385976_left_encoded small_5385976_left_checked

theorem cover_5385976 : CoveredBy scale carrier boxes root_5385976 := by
  apply coveredBy_split_literal root_5385976 small_5385976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385982 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5385976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385982
#print axioms cover_5385976

def root_5385975 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385975_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385975_right_fuel : Nat := 15
def small_5385975_right_count : Nat := 87
def small_5385975_right_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040000000812073D08050000F8135D80F900000001045489F7000000090000000A0000000A0000000412073D0608A9130912070108000000040000000812073D08050000F8135D80F900000001045489F71386AD00045489FB1386ACFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C09000000080000000900000003138670FA0000000900000002000000001386710000000000045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090000000A000000090F350D060000000700000003138670FA0CFD9C07000000080000000700000002135D44F9045489F71386AD00045489FB1386ACFA000000020CFD9C07000000080000000800000008000000001386710000000000045489FB1386ACFA000000020CFD9C0700000008000000070000000700000001000000040000000300000002"
theorem small_5385975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385975_right_root small_5385975_right_fuel small_5385975_right_count small_5385975_right_encoded = true := by
  decide +kernel
theorem small_5385975_right_covered : CoveredBy scale carrier boxes small_5385975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385975_right_root small_5385975_right_fuel small_5385975_right_count small_5385975_right_encoded small_5385975_right_checked

theorem cover_5385975 : CoveredBy scale carrier boxes root_5385975 := by
  apply coveredBy_split_literal root_5385975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385976 small_5385975_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385976
  · exact small_5385975_right_covered
#print axioms cover_5385975

def root_5385969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385969_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385969_left_fuel : Nat := 1
def small_5385969_left_count : Nat := 1
def small_5385969_left_encoded : String := "00000000"
theorem small_5385969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385969_left_root small_5385969_left_fuel small_5385969_left_count small_5385969_left_encoded = true := by
  decide +kernel
theorem small_5385969_left_covered : CoveredBy scale carrier boxes small_5385969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385969_left_root small_5385969_left_fuel small_5385969_left_count small_5385969_left_encoded small_5385969_left_checked

theorem cover_5385969 : CoveredBy scale carrier boxes root_5385969 := by
  apply coveredBy_split_literal root_5385969 small_5385969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385975 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5385969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385975
#print axioms cover_5385969

def root_5385411 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385411_left_fuel : Nat := 23
def small_5385411_left_count : Nat := 257
def small_5385411_left_encoded : String := "12073D0008A912FB12073CFA0000000208A91307120701060000000308A913091207010800000004050000F8135D80F9000000010CFD9BF700000008000000080000000812073D08050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A07000000071386AD060CFD9C0900000007000000090000000300000009000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C09000000070F350D0800000009000000041386AD060CFD9C090F34D108000000040C9A86FA0F878CFB0000000200000008000000050F350D080000000900000004000000030F34D0FA0000000900000002135D44F90CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A071386710600000003000000090000000900000009000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C09000000050F350D0800000009000000041386AD060CFD9C090F34D10800000004000000050F350D080000000900000004000000030F34D0FA0000000900000002000000010000000412073D0608A913091207010800000004050000F8000000080000000812073D08050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D1080000000400000008000000090F350D060CFD9C09000000080F350D080000000900000004000000030F34D0FA0000000900000002000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000080F350D080C9A86FA000000090F8750FB0000000900000002000000040F350D060CFD9C090F34D10800000004000000080F350D080C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F875107000000030C9A87080000000600000008000000090000000200000004000000030F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C0900000008000000090000000300000002135D44F90CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9C07000000080000000800000008000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C09000000080F350D0800000009000000040F350D0600000008000000030F34D0FA0CFD9C070F34D10600000003000000090000000900000002000000010000000400000003120700FA08A91307120701060000000308A913091207010800000004000000080000000912073D0608A913090000000812073D08050000F8135D80F9000000010CFD9BF7000000090F34D1000000000000000009135D44F90CFD9BF700000009000000080000000100000004000000030000000200000000"
theorem small_5385411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385411_left_root small_5385411_left_fuel small_5385411_left_count small_5385411_left_encoded = true := by
  decide +kernel
theorem small_5385411_left_covered : CoveredBy scale carrier boxes small_5385411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385411_left_root small_5385411_left_fuel small_5385411_left_count small_5385411_left_encoded small_5385411_left_checked

theorem cover_5385411 : CoveredBy scale carrier boxes root_5385411 := by
  apply coveredBy_split_literal root_5385411 small_5385411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385969 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5385411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385969
#print axioms cover_5385411

def root_5385406 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385406_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385406_right_fuel : Nat := 1
def small_5385406_right_count : Nat := 1
def small_5385406_right_encoded : String := "00000004"
theorem small_5385406_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385406_right_root small_5385406_right_fuel small_5385406_right_count small_5385406_right_encoded = true := by
  decide +kernel
theorem small_5385406_right_covered : CoveredBy scale carrier boxes small_5385406_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385406_right_root small_5385406_right_fuel small_5385406_right_count small_5385406_right_encoded small_5385406_right_checked

theorem cover_5385406 : CoveredBy scale carrier boxes root_5385406 := by
  apply coveredBy_split_literal root_5385406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385411 small_5385406_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385411
  · exact small_5385406_right_covered
#print axioms cover_5385406

def root_5385014 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385014_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385014_left_fuel : Nat := 23
def small_5385014_left_count : Nat := 183
def small_5385014_left_encoded : String := "1151E9090000000408A912F712073D0008A912FB12073CFA0000000208A9130712070106000000030000000912073D06050000F8135D80F9000000010500010800000009135D81090CFD9BF7000000090F34D100000000000000000900000004135D44F90000000900000001000000030000000900000000120701000000000008A912FB12073CFA0000000208A913071207010600000003050000F8135D80F9000000010500010800000009135D8109045489F70000000913867100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000090F8750FB00000009000000021386AD060C9A86FA000000090F8750FB0000000900000002000000030000000900000004135D44F90500010800000009135D8109045489F70000000913867100000000000CFD9BFB0F350CFA000000020000000A00000009000000040000000112073D06050000F8135D80F90000000105000108135D450900000004045489F70000000913867100000000000CFD9BFB0000000900000009135D8109045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000900000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA000000090F8750FB078000F80000000900000009000000020F350D060C9A86FA000000050F8750FB0C9A8706000000050F878D07078000F800000005000000090000000300000002000000030F34D0FA000000090000000200000004135D44F905000108135D45090000000400000009135D8109045489F71386AD000CFD9BFB00000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000090F350D060C9A86FA000000090F8750FB0000000900000002000000030F34D0FA0000000900000002000000040000000100000003120700FA08A913071207010600000003000000090000000900000002"
theorem small_5385014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385014_left_root small_5385014_left_fuel small_5385014_left_count small_5385014_left_encoded = true := by
  decide +kernel
theorem small_5385014_left_covered : CoveredBy scale carrier boxes small_5385014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385014_left_root small_5385014_left_fuel small_5385014_left_count small_5385014_left_encoded small_5385014_left_checked

theorem cover_5385014 : CoveredBy scale carrier boxes root_5385014 := by
  apply coveredBy_split_literal root_5385014 small_5385014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385406 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5385014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385406
#print axioms cover_5385014

def root_5385009 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385009_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385009_right_fuel : Nat := 1
def small_5385009_right_count : Nat := 1
def small_5385009_right_encoded : String := "00000003"
theorem small_5385009_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385009_right_root small_5385009_right_fuel small_5385009_right_count small_5385009_right_encoded = true := by
  decide +kernel
theorem small_5385009_right_covered : CoveredBy scale carrier boxes small_5385009_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385009_right_root small_5385009_right_fuel small_5385009_right_count small_5385009_right_encoded small_5385009_right_checked

theorem cover_5385009 : CoveredBy scale carrier boxes root_5385009 := by
  apply coveredBy_split_literal root_5385009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.root_5385014 small_5385009_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379.cover_5385014
  · exact small_5385009_right_covered
#print axioms cover_5385009

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0379

import TaoBundleAssembly0049
import TaoBundleChunkBatch0203
import TaoBundleChunkBatch0204
import TaoBundleChunkBatch0205
import TaoBundleChunkBatch0206
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050
def root_2100249 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2100249_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2100249_right_fuel : Nat := 14
def small_2100249_right_count : Nat := 29
def small_2100249_right_encoded : String := "0F34D0FC0CFD9C090F34D108000000040C9A86F6000000050F8750F70C9A8702000000050F878D03022A457B0000000A13E1C504000000020AD3577D10D13CFC000000030AD3578910D10108000000040000000A000000050000000500000001000000000F350D08000000050000000400000003"
theorem small_2100249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2100249_right_root small_2100249_right_fuel small_2100249_right_count small_2100249_right_encoded = true := by
  decide +kernel
theorem small_2100249_right_covered : CoveredBy scale carrier boxes small_2100249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2100249_right_root small_2100249_right_fuel small_2100249_right_count small_2100249_right_encoded small_2100249_right_checked

theorem cover_2100249 : CoveredBy scale carrier boxes root_2100249 := by
  apply coveredBy_split_literal root_2100249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0049.root_2100250 small_2100249_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0049.cover_2100250
  · exact small_2100249_right_covered
#print axioms cover_2100249

def root_2100243 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2100243_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2100243_left_fuel : Nat := 1
def small_2100243_left_count : Nat := 1
def small_2100243_left_encoded : String := "00000002"
theorem small_2100243_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2100243_left_root small_2100243_left_fuel small_2100243_left_count small_2100243_left_encoded = true := by
  decide +kernel
theorem small_2100243_left_covered : CoveredBy scale carrier boxes small_2100243_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2100243_left_root small_2100243_left_fuel small_2100243_left_count small_2100243_left_encoded small_2100243_left_checked

theorem cover_2100243 : CoveredBy scale carrier boxes root_2100243 := by
  apply coveredBy_split_literal root_2100243 small_2100243_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2100249 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2100243_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2100249
#print axioms cover_2100243

def root_2099723 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2099723_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2099723_left_fuel : Nat := 27
def small_2099723_left_count : Nat := 243
def small_2099723_left_encoded : String := "1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F60F878CF7000000000C9A87020F875103000000010C9A86FC00000005000000060F878D030C9A86FC0F878CFD00000003067ECE7B12EA95040AD3578910D1010800000004000000060000000A0000000212EA5904000000020AD3578910D10108000000040DE7C9F6000000050E5FD8F70000000A0000000010D13D0800000005000000040F8750FD0000000600000003000000010F8750F70C9A87020F875103000000010C9A86FC0000000A0F8750FD0000000A000000030F878D030C9A86FC0F878CFD00000003067ECE7B0000000A12EA5904000000020AD3578910D10108000000040000000A0000000A0F8750FD067ECE7B12EA9504000000060000000212EA5904000000020AD3578910D10108000000040000000610D13D080B4D43F610804CF7000000000DE7CA02000000060E6015030000000600000001108010F70DE7CA020000000A0E6015030B4D43FC0000000A000000060000000100000000000000040000000300000001000000000F350D080C9A86F60F878CF7000000000C9A8702000000050F878D030C9A86FC000000050F8750FD0C9A8708000000050F878D09067ECE7B0000000712EA5904000000020DE7C9F6000000050E5FD8F70DE7CA020000000500000007000000000000000400000003000000010F8750F70C9A87020F875103000000010C9A86FC000000050F8750FD0C9A8708000000050F878D09067ECE7B000000080000000500000004000000030F878D030C9A86FC0F878CFD000000030C9A8708000000050F878D09067ECE7B0000000A12EA5904000000020B4D43F6000000050000000A000000040F8750FD0C9A87080F87510900000004067ECE7B00000007000000050F878D09067ECE7B12EA95040B4D43F610804CF70000000000000007108010F70000000A000000000000000212EA5904000000020B4D43F610804CF7000000000DE7CA020E5FD903000000010B4D43FC00000005108010FD00000007000000030E6015030B4D43FC10804CFD000000030DE7CA08000000050000000A108010FD000000070000000300000001108010F70DE7CA020E5FD903000000010000000A0E6015030B4D43FC10804CFD000000030000000A108010FD0DE7CA08000000070E6015090569AC3B000000061340D504000000020DAED88300000006000000070000000400000003000000010000000000000004000000030000000100000000000000040F34D0FC0CFD9C090F34D108000000040C9A86F6000000050F8750F70000000A000000000F350D0800000005000000040000000300000002"
theorem small_2099723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2099723_left_root small_2099723_left_fuel small_2099723_left_count small_2099723_left_encoded = true := by
  decide +kernel
theorem small_2099723_left_covered : CoveredBy scale carrier boxes small_2099723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2099723_left_root small_2099723_left_fuel small_2099723_left_count small_2099723_left_encoded small_2099723_left_checked

theorem cover_2099723 : CoveredBy scale carrier boxes root_2099723 := by
  apply coveredBy_split_literal root_2099723 small_2099723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2100243 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_2099723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2100243
#print axioms cover_2099723

def root_2099718 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2099718_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2099718_right_fuel : Nat := 1
def small_2099718_right_count : Nat := 1
def small_2099718_right_encoded : String := "00000001"
theorem small_2099718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2099718_right_root small_2099718_right_fuel small_2099718_right_count small_2099718_right_encoded = true := by
  decide +kernel
theorem small_2099718_right_covered : CoveredBy scale carrier boxes small_2099718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2099718_right_root small_2099718_right_fuel small_2099718_right_count small_2099718_right_encoded small_2099718_right_checked

theorem cover_2099718 : CoveredBy scale carrier boxes root_2099718 := by
  apply coveredBy_split_literal root_2099718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2099723 small_2099718_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2099723
  · exact small_2099718_right_covered
#print axioms cover_2099718

def root_2093850 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2093850 : CoveredBy scale carrier boxes root_2093850 := by
  apply coveredBy_split_literal root_2093850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0049.root_2093851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2099718 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0049.cover_2093851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2099718
#print axioms cover_2093850

def root_2093844 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2093844_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2093844_left_fuel : Nat := 1
def small_2093844_left_count : Nat := 1
def small_2093844_left_encoded : String := "00000000"
theorem small_2093844_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2093844_left_root small_2093844_left_fuel small_2093844_left_count small_2093844_left_encoded = true := by
  decide +kernel
theorem small_2093844_left_covered : CoveredBy scale carrier boxes small_2093844_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2093844_left_root small_2093844_left_fuel small_2093844_left_count small_2093844_left_encoded small_2093844_left_checked

theorem cover_2093844 : CoveredBy scale carrier boxes root_2093844 := by
  apply coveredBy_split_literal root_2093844 small_2093844_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2093850 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2093844_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2093850
#print axioms cover_2093844

def root_2093843 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2093843_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2093843_right_fuel : Nat := 21
def small_2093843_right_count : Nat := 215
def small_2093843_right_encoded : String := "0F34D0F60CFD9C030F34D10200000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC0F878CFD000000030AD3577710D13CF6000000000AD3578310D1010200000001067ECE7B12EA95040AD3578900000006000000070000000212EA5904000000020AD3578910D10108000000040000000610D13D08000000070000000410D13D02067ECE7B12EA95040AD3578900000006000000050000000212EA5904000000020AD3578910D101080000000400000006000000050000000110D100F60AD3578310D1010200000001067ECE7B000000070000000500000005000000000F8750FD0AD3577710D13CF6000000000AD35783000000060000000600000006000000030F350D080C9A86FC000000050F8750FD0000000700000003000000040F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC0F878CFD000000030AD3577710D13CF6000000000AD3578310D1010200000001022A457B13E201040AD3578910D10108000000040000000810D13D080000000500000004000000020000000810D13D02000000050000000110D100F600000005000000000F8750FD0AD3577710D13CF6000000000AD3578310D1010200000001022A457B0000000613E1C504000000020AD357890000000610D13D080B4D43FC00000008000000060000000410D13D02022A457B00000006000000060000000110D100F60AD35783000000060000000600000000000000030F350D080C9A86FC000000050F8750FD0C9A8708000000050F878D090AD3577710D13CF6000000000AD3578310D10102000000010000000710D13D020000000500000001000000070000000400000003000000040F34D0FC00000005000000030F350D02045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8702000000050F878D030C9A86FC0000000500000006000000010F350D0800000005000000040F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8702000000050F878D030C9A86FC000000050F8750FD0000000600000003000000010F350D0800000005000000040F34D0FC00000005000000030000000100000000"
theorem small_2093843_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2093843_right_root small_2093843_right_fuel small_2093843_right_count small_2093843_right_encoded = true := by
  decide +kernel
theorem small_2093843_right_covered : CoveredBy scale carrier boxes small_2093843_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2093843_right_root small_2093843_right_fuel small_2093843_right_count small_2093843_right_encoded small_2093843_right_checked

theorem cover_2093843 : CoveredBy scale carrier boxes root_2093843 := by
  apply coveredBy_split_literal root_2093843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2093844 small_2093843_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2093844
  · exact small_2093843_right_covered
#print axioms cover_2093843

def root_2093838 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2093838_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2093838_right_fuel : Nat := 1
def small_2093838_right_count : Nat := 1
def small_2093838_right_encoded : String := "00000004"
theorem small_2093838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2093838_right_root small_2093838_right_fuel small_2093838_right_count small_2093838_right_encoded = true := by
  decide +kernel
theorem small_2093838_right_covered : CoveredBy scale carrier boxes small_2093838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2093838_right_root small_2093838_right_fuel small_2093838_right_count small_2093838_right_encoded small_2093838_right_checked

theorem cover_2093838 : CoveredBy scale carrier boxes root_2093838 := by
  apply coveredBy_split_literal root_2093838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2093843 small_2093838_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2093843
  · exact small_2093838_right_covered
#print axioms cover_2093838

def root_2092466 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2092466 : CoveredBy scale carrier boxes root_2092466 := by
  apply coveredBy_split_literal root_2092466 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0811.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2093838 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0811.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2093838
#print axioms cover_2092466

def root_2092460 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2092460_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2092460_left_fuel : Nat := 1
def small_2092460_left_count : Nat := 1
def small_2092460_left_encoded : String := "00000003"
theorem small_2092460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2092460_left_root small_2092460_left_fuel small_2092460_left_count small_2092460_left_encoded = true := by
  decide +kernel
theorem small_2092460_left_covered : CoveredBy scale carrier boxes small_2092460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2092460_left_root small_2092460_left_fuel small_2092460_left_count small_2092460_left_encoded small_2092460_left_checked

theorem cover_2092460 : CoveredBy scale carrier boxes root_2092460 := by
  apply coveredBy_split_literal root_2092460 small_2092460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2092466 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2092460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2092466
#print axioms cover_2092460

def root_2092459 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2092459_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2092459_right_fuel : Nat := 17
def small_2092459_right_count : Nat := 127
def small_2092459_right_encoded : String := "120700FC08A9130912070108000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386AD04045489FD1386ACFC0000000304548A0913867108000000040000000A0000000A0000000A000000021386710400000002045489FD1386ACFC0000000304548A09000000071386AD080C9A86F60F878CF7000000000AD3578300000008000000050000000700000004000000070F350D020000000A000000010F34D0F60CFD9C030F34D10200000001045489FB1386AD04045489FD1386ACFC0000000304548A0913867108000000040AD35777000000080000000500000005000000050000000200000005000000050000000012073D080CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386AD04045489FD1386ACFC000000030CFD9C090F34D108000000040C9A86F600000005000000090F350D08000000050000000400000009000000021386710400000002045489FD1386ACFC000000030CFD9C090F34D108000000040C9A86F6000000050F8750F700000009000000000F350D080000000500000004138670FC0CFD9C090000000500000006000000030F350D02045489FB000000051386710400000002045489FD00000005138670FC0000000500000003000000010F34D0F60CFD9C03000000050F350D020000000500000001000000000000000400000003"
theorem small_2092459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2092459_right_root small_2092459_right_fuel small_2092459_right_count small_2092459_right_encoded = true := by
  decide +kernel
theorem small_2092459_right_covered : CoveredBy scale carrier boxes small_2092459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2092459_right_root small_2092459_right_fuel small_2092459_right_count small_2092459_right_encoded small_2092459_right_checked

theorem cover_2092459 : CoveredBy scale carrier boxes root_2092459 := by
  apply coveredBy_split_literal root_2092459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2092460 small_2092459_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2092460
  · exact small_2092459_right_covered
#print axioms cover_2092459

def root_2092453 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2092453_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2092453_left_fuel : Nat := 1
def small_2092453_left_count : Nat := 1
def small_2092453_left_encoded : String := "00000002"
theorem small_2092453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2092453_left_root small_2092453_left_fuel small_2092453_left_count small_2092453_left_encoded = true := by
  decide +kernel
theorem small_2092453_left_covered : CoveredBy scale carrier boxes small_2092453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2092453_left_root small_2092453_left_fuel small_2092453_left_count small_2092453_left_encoded small_2092453_left_checked

theorem cover_2092453 : CoveredBy scale carrier boxes root_2092453 := by
  apply coveredBy_split_literal root_2092453 small_2092453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2092459 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2092453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2092459
#print axioms cover_2092453

def root_2091509 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2091509_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2091509_left_fuel : Nat := 26
def small_2091509_left_count : Nat := 435
def small_2091509_left_encoded : String := "12073D0408A912FD12073CFC0000000308A9130912070108000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFD000000060000000A000000020F34D104000000020CFD9BFD0F350CFC0000000304548A09000000061386AD080C9A86F60F878CF7000000000000000600000006000000040F34D0FC04548A0913867108000000040000000A1386AD080C9A86F60000000A0000000A00000004000000030F350D020CFD9BFB0000000A0F34D104000000020CFD9BFD0F350CFC0000000304548A0900000006000000060000000A000000010F34D0F60CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFD000000060000000A000000020F34D104000000020CFD9BFD000000060F34D0FC04548A09000000061386AD080AD3577710D13CF6000000000000000A10D100F60AD3578300000006000000050000000000000004000000030F350D020CFD9BFB0000000A0F34D104000000020CFD9BFD000000060000000A000000010000000012073D080CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F60F878CF7000000000C9A8704000000060F878CFB000000020C9A86FC00000006000000060F8750F700000009000000000F350D0800000007000000040F34D0FC0CFD9C090F34D108000000040000000A0F350D08000000090000000400000003000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F60F878CF7000000000C9A86FC0F878CFD000000030AD3578310D10102000000010AD3577B0000000910D10104000000020AD35789000000090000000910D13D020AD3577B0000000A10D10104000000020AD35789000000060000000A000000010F8750FD0AD357830000000600000006000000030F8750F70C9A86FC0F878CFD000000030AD357830000000910D13D0200000009000000010F8750FD0AD357830000000610D13D02000000060000000100000003000000000F350D080C9A86F60F878CF7000000000C9A86FC00000007000000070F8750F70000000900000000000000040F34D0FC0CFD9C090F34D108000000040C9A86F60F878CF7000000000AD3578310D1010200000001000000090000000A0F8750F700000009000000000F350D080C9A86F6000000050000000900000004000000030F350D020CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000A0F350D080C9A86F60F878CF700000000000000070F8750F70000000A00000000000000040F34D0FC0000000A00000003000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F60F878CF7000000000C9A8702000000060F878D030C9A86FC0F878CFD000000030000000A00000006000000010F8750F70C9A87020000000A0F878D030C9A86FC0000000A0F8750FD000000060000000300000001000000000F350D080C9A86F60F878CF7000000000C9A8702000000050F878D030C9A86FC000000050F8750FD0000000700000003000000010F8750F70C9A87020F875103000000010000000A0F878D030C9A86FC0F878CFD000000030000000A0F8750FD0C9A8708000000070F878D090AD3577B0000000710D10104000000020000000700000004000000030000000100000000000000040F34D0FC0CFD9C090F34D108000000040000000A0F350D08000000050000000400000003000000010F34D0F60CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFD000000070F34D0FC0000000500000003000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC0F878CFD000000030AD3577710D13CF6000000000AD3578310D10102000000010000000700000007000000070F8750FD0000000600000003000000070F34D0FC00000005000000030F350D020CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000060000000500000005000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8702000000050F878D0300000006000000010F350D0800000005000000040F34D0FC0000000500000003000000010000000000000004120700FC08A9130912070108000000040000000A12073D080CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0000000A0F34D10400000002045489FD1386ACFC000000030CFD9C090F34D108000000040000000A0F350D080000000500000004000000090F350D0200000005000000010F34D0F60000000500000000000000040000000300000002"
theorem small_2091509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2091509_left_root small_2091509_left_fuel small_2091509_left_count small_2091509_left_encoded = true := by
  decide +kernel
theorem small_2091509_left_covered : CoveredBy scale carrier boxes small_2091509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2091509_left_root small_2091509_left_fuel small_2091509_left_count small_2091509_left_encoded small_2091509_left_checked

theorem cover_2091509 : CoveredBy scale carrier boxes root_2091509 := by
  apply coveredBy_split_literal root_2091509 small_2091509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2092453 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2091509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2092453
#print axioms cover_2091509

def root_2091504 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2091504_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2091504_right_fuel : Nat := 1
def small_2091504_right_count : Nat := 1
def small_2091504_right_encoded : String := "00000001"
theorem small_2091504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2091504_right_root small_2091504_right_fuel small_2091504_right_count small_2091504_right_encoded = true := by
  decide +kernel
theorem small_2091504_right_covered : CoveredBy scale carrier boxes small_2091504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2091504_right_root small_2091504_right_fuel small_2091504_right_count small_2091504_right_encoded small_2091504_right_checked

theorem cover_2091504 : CoveredBy scale carrier boxes root_2091504 := by
  apply coveredBy_split_literal root_2091504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2091509 small_2091504_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2091509
  · exact small_2091504_right_covered
#print axioms cover_2091504

def root_2089020 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2089020 : CoveredBy scale carrier boxes root_2089020 := by
  apply coveredBy_split_literal root_2089020 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0810.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2091504 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0810.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2091504
#print axioms cover_2089020

def root_2089014 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2089014_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2089014_left_fuel : Nat := 1
def small_2089014_left_count : Nat := 1
def small_2089014_left_encoded : String := "00000000"
theorem small_2089014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2089014_left_root small_2089014_left_fuel small_2089014_left_count small_2089014_left_encoded = true := by
  decide +kernel
theorem small_2089014_left_covered : CoveredBy scale carrier boxes small_2089014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2089014_left_root small_2089014_left_fuel small_2089014_left_count small_2089014_left_encoded small_2089014_left_checked

theorem cover_2089014 : CoveredBy scale carrier boxes root_2089014 := by
  apply coveredBy_split_literal root_2089014 small_2089014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2089020 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2089014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2089020
#print axioms cover_2089014

def root_2089013 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2089013 : CoveredBy scale carrier boxes root_2089013 := by
  apply coveredBy_split_literal root_2089013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2089014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0816.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2089014
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0816.covered
#print axioms cover_2089013

def root_2089008 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2089008_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2089008_right_fuel : Nat := 1
def small_2089008_right_count : Nat := 1
def small_2089008_right_encoded : String := "00000004"
theorem small_2089008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2089008_right_root small_2089008_right_fuel small_2089008_right_count small_2089008_right_encoded = true := by
  decide +kernel
theorem small_2089008_right_covered : CoveredBy scale carrier boxes small_2089008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2089008_right_root small_2089008_right_fuel small_2089008_right_count small_2089008_right_encoded small_2089008_right_checked

theorem cover_2089008 : CoveredBy scale carrier boxes root_2089008 := by
  apply coveredBy_split_literal root_2089008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2089013 small_2089008_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2089013
  · exact small_2089008_right_covered
#print axioms cover_2089008

def root_2088476 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088476_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088476_left_fuel : Nat := 28
def small_2088476_left_count : Nat := 243
def small_2088476_left_encoded : String := "1151E9090000000408A912F712073CF60000000008A91303120701020000000108A912FB12073D0408A912FD000000070000000900000002120701040000000208A912FD12073CFC0000000305000108135D4509000000040CFD9BF70F350CF60000000004548A031386710200000001045489FB000000071386710400000002000000061386AD0200000005000000010F34D0F60000000500000000135D81090CFD9BF70F350CF60000000004548A031386710200000001045489FB1386AD04000000090000000213867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000070F8750F70000000900000000000000091386AD02045489FB1386AD040CFD9BFD00000007000000090000000213867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000070F8750F70C9A86FC000000060F8750FD0000000700000003000000000F34D0FC0000000500000003000000010F34D0F604548A031386710200000001045489FB0000000700000005000000050000000000000004120700FC000000050000000312073D0208A912FB12073D0408A912FD12073CFC000000030500010800000005135D81090CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB000000070F34D104000000020CFD9BFD00000007000000090F350D0200000005000000010F34D0F6000000050000000000000004120700FC000000050000000300000002120701040000000208A912FD12073CFC000000030500010800000005135D81090CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386AD040CFD9BFD0F350CFC000000030C9A86F6000000050F8750F70C9A86FC0000000500000007000000000F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A86F6000000050F8750F70C9A86FC000000050F8750FD0780010800000005128A7D090AD3578310D101020000000100000006000000070000000400000003000000000F34D0FC00000005000000030F350D0200000005000000010F34D0F6000000050000000000000004120700FC0500010800000005135D810900000005000000040000000300000001120700F608A91303120701020000000108A912FB00000007120701040000000208A912FD00000005120700FC000000050000000312073D0208A912FB12073D040000000500000002120701040000000208A912FD12073CFC000000030500010800000005135D81090000000500000004120700FC0500010800000005135D81090000000500000004000000030000000100000000"
theorem small_2088476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2088476_left_root small_2088476_left_fuel small_2088476_left_count small_2088476_left_encoded = true := by
  decide +kernel
theorem small_2088476_left_covered : CoveredBy scale carrier boxes small_2088476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2088476_left_root small_2088476_left_fuel small_2088476_left_count small_2088476_left_encoded small_2088476_left_checked

theorem cover_2088476 : CoveredBy scale carrier boxes root_2088476 := by
  apply coveredBy_split_literal root_2088476 small_2088476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2089008 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2088476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2089008
#print axioms cover_2088476

def root_2088470 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088470_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088470_left_fuel : Nat := 1
def small_2088470_left_count : Nat := 1
def small_2088470_left_encoded : String := "00000003"
theorem small_2088470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2088470_left_root small_2088470_left_fuel small_2088470_left_count small_2088470_left_encoded = true := by
  decide +kernel
theorem small_2088470_left_covered : CoveredBy scale carrier boxes small_2088470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2088470_left_root small_2088470_left_fuel small_2088470_left_count small_2088470_left_encoded small_2088470_left_checked

theorem cover_2088470 : CoveredBy scale carrier boxes root_2088470 := by
  apply coveredBy_split_literal root_2088470 small_2088470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2088476 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2088470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2088476
#print axioms cover_2088470

def root_2108770 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108770_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108770_right_fuel : Nat := 17
def small_2108770_right_count : Nat := 139
def small_2108770_right_encoded : String := "135D44FD0CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386AD040CFD9C090F34D10800000004000000050F350D080C9A86F6000000070F8750F70C9A8708000000070000000500000000000000040000000213867104000000020CFD9C090F34D10800000004000000050F350D080C9A86F60F878CF7000000000C9A8708000000070F878D0900000006000000040F8750F70C9A87080F87510900000004028000FC00000007000000050000000500000000000000040F350D02045489FB1386AD040CFD9C09000000060F350D080C9A86F60F878CF7000000000C9A870200000006000000070F8750F70C9A8702000000060F878D030C9A870800000006000000060000000100000000000000040000000213867104000000020CFD9C090F34D10800000004000000060F350D080C9A86F60F878CF7000000000C9A8702000000060F878D030C9A87080000000700000006000000010F8750F70C9A87020F875103000000010C9A87080F87510900000004028000FC0000000700000006000000060F878D030C9A87080F87510900000004028000FC000000070000000600000006000000010000000000000004000000010F34D0F60CFD9C030F34D10200000001045489FB1386AD040CFD9C0900000006000000070000000213867104000000020CFD9C09000000060F350D0800000007000000040F350D02045489FB0000000613867104000000020CFD9C090000000600000009000000010000000000000003"
theorem small_2108770_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2108770_right_root small_2108770_right_fuel small_2108770_right_count small_2108770_right_encoded = true := by
  decide +kernel
theorem small_2108770_right_covered : CoveredBy scale carrier boxes small_2108770_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2108770_right_root small_2108770_right_fuel small_2108770_right_count small_2108770_right_encoded small_2108770_right_checked

theorem cover_2108770 : CoveredBy scale carrier boxes root_2108770 := by
  apply coveredBy_split_literal root_2108770 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0817.root small_2108770_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0817.covered
  · exact small_2108770_right_covered
#print axioms cover_2108770

def root_2108765 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108765_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108765_right_fuel : Nat := 1
def small_2108765_right_count : Nat := 1
def small_2108765_right_encoded : String := "00000004"
theorem small_2108765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2108765_right_root small_2108765_right_fuel small_2108765_right_count small_2108765_right_encoded = true := by
  decide +kernel
theorem small_2108765_right_covered : CoveredBy scale carrier boxes small_2108765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2108765_right_root small_2108765_right_fuel small_2108765_right_count small_2108765_right_encoded small_2108765_right_checked

theorem cover_2108765 : CoveredBy scale carrier boxes root_2108765 := by
  apply coveredBy_split_literal root_2108765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2108770 small_2108765_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2108770
  · exact small_2108765_right_covered
#print axioms cover_2108765

def root_2108695 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108695_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108695_left_fuel : Nat := 15
def small_2108695_left_count : Nat := 33
def small_2108695_left_encoded : String := "1207010800000004050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000060F350D02045489FB00000006138671040000000204548A09000000061386AD080C9A86F6000000060F8750F70C9A870200000006000000060000000000000004000000010F34D0F6000000060000000000000006"
theorem small_2108695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2108695_left_root small_2108695_left_fuel small_2108695_left_count small_2108695_left_encoded = true := by
  decide +kernel
theorem small_2108695_left_covered : CoveredBy scale carrier boxes small_2108695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2108695_left_root small_2108695_left_fuel small_2108695_left_count small_2108695_left_encoded small_2108695_left_checked

theorem cover_2108695 : CoveredBy scale carrier boxes root_2108695 := by
  apply coveredBy_split_literal root_2108695 small_2108695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2108765 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2108695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2108765
#print axioms cover_2108695

def root_2108689 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108689_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108689_left_fuel : Nat := 1
def small_2108689_left_count : Nat := 1
def small_2108689_left_encoded : String := "00000002"
theorem small_2108689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2108689_left_root small_2108689_left_fuel small_2108689_left_count small_2108689_left_encoded = true := by
  decide +kernel
theorem small_2108689_left_covered : CoveredBy scale carrier boxes small_2108689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2108689_left_root small_2108689_left_fuel small_2108689_left_count small_2108689_left_encoded small_2108689_left_checked

theorem cover_2108689 : CoveredBy scale carrier boxes root_2108689 := by
  apply coveredBy_split_literal root_2108689 small_2108689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2108695 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2108689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2108695
#print axioms cover_2108689

def root_2108421 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108421_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108421_left_fuel : Nat := 19
def small_2108421_left_count : Nat := 123
def small_2108421_left_encoded : String := "12073D0408A913091207010800000004050000FC000000060000000612073D08050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C090F34D108000000040000000600000007000000020F34D104000000020CFD9C090F34D10800000004000000060F350D080C9A86F6000000070F8750F70000000700000000000000040F350D020CFD9BFB0F350D040CFD9C09000000060F350D080000000700000004000000020F34D104000000020CFD9C090F34D10800000004000000060F350D080C9A86F60F878CF700000000000000070F8750F70C9A87020F875103000000010C9A87080000000700000006000000070000000000000004000000010F34D0F60CFD9C030F34D102000000010CFD9BFB000000070F34D10400000002000000070F350D020CFD9BFB000000070F34D104000000020CFD9C0900000006000000070000000100000000135D44FD0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350D0400000006000000020F34D104000000020CFD9C09000000060F350D0800000007000000040F350D020CFD9BFB0000000600000006000000010F34D0F60CFD9C030F34D10200000001000000070F350D02000000060000000100000000000000030000000400000002"
theorem small_2108421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2108421_left_root small_2108421_left_fuel small_2108421_left_count small_2108421_left_encoded = true := by
  decide +kernel
theorem small_2108421_left_covered : CoveredBy scale carrier boxes small_2108421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2108421_left_root small_2108421_left_fuel small_2108421_left_count small_2108421_left_encoded small_2108421_left_checked

theorem cover_2108421 : CoveredBy scale carrier boxes root_2108421 := by
  apply coveredBy_split_literal root_2108421 small_2108421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2108689 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2108421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2108689
#print axioms cover_2108421

def root_2108416 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108416_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2108416_right_fuel : Nat := 1
def small_2108416_right_count : Nat := 1
def small_2108416_right_encoded : String := "00000001"
theorem small_2108416_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2108416_right_root small_2108416_right_fuel small_2108416_right_count small_2108416_right_encoded = true := by
  decide +kernel
theorem small_2108416_right_covered : CoveredBy scale carrier boxes small_2108416_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2108416_right_root small_2108416_right_fuel small_2108416_right_count small_2108416_right_encoded small_2108416_right_checked

theorem cover_2108416 : CoveredBy scale carrier boxes root_2108416 := by
  apply coveredBy_split_literal root_2108416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2108421 small_2108416_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2108421
  · exact small_2108416_right_covered
#print axioms cover_2108416

def root_2107582 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107582_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107582_left_fuel : Nat := 29
def small_2107582_left_count : Nat := 389
def small_2107582_left_encoded : String := "120701020000000108A912FB12073D0408A913091207010800000004050000FC135D80FD000000030CFD9BF70F350CF60000000000000006000000060000000612073D08050000FC135D80FD000000030CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C09000000090F350D0800000007000000041386AD020CFD9BFB0F350D040CFD9C090000000700000007000000020F34D104000000020CFD9C090F34D108000000040C9A86F60F878CF70000000000000006000000050F350D080000000700000004000000010F34D0F60000000700000000135D44FD0CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C09000000050F350D0800000007000000041386AD020CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C090F34D10800000004000000050F350D080000000700000004000000010F34D0F60000000700000000000000030000000400000002120701040000000208A913091207010800000004050000FC135D80FD000000030CFD9BF70F350CF60000000000000005000000060000000512073D08050000FC135D80FD000000030CFD9BF70F350CF60000000004548A031386710200000001045489FB1386AD040CFD9C090F34D10800000004000000050F350D080C9A86F60F878CF700000000000000070F8750F70C9A8708000000090000000500000000000000040000000213867104000000020CFD9C090F34D10800000004000000050F350D080C9A86F60F878CF7000000000C9A87080000000A0F878D090000000A000000040F8750F70C9A87080F87510900000004078000FC128A7CFD00000003022A45830000000A0000000A000000050000000500000000000000041386AD02045489FB1386AD040CFD9C090F34D108000000040C9A86F60F878CF700000000078000FC128A7CFD00000003067ECE83000000060000000600000005000000050F350D080C9A86F60F878CF700000000000000070F8750F70C9A87080F87510900000004000000070F878D09078000FC128A7CFD0000000300000009000000050000000400000000000000040000000213867104000000020CFD9C090F34D108000000040C9A86F60F878CF700000000078000FC128A7CFD00000003067ECE8312EA5902000000010000000512EA9502022A457B00000006000000060000000100000005000000050F350D080C9A86F60F878CF7000000000C9A87080F87510900000004000000070F878D09078000FC128A7CFD00000003067ECE830000000A12EA9502022A457B000000070000000A000000010000000A000000040F8750F70C9A87080F87510900000004078000FC128A7CFD00000003067ECE8312EA590200000001022A457B000000070000000A12EA9502022A457B0000000713E1C504000000020000000A00000001128A40FD067ECE830000000A00000007000000030F878D09078000FC128A7CFD00000003067ECE8312EA5902000000010000000512EA9502022A457B13E201040B4D43F610804CF7000000000DE7CA080000000700000005000000050000000213E1C504000000020B4D43F60000000A000000050000000100000005000000040000000000000004000000010F34D0F604548A031386710200000001045489FB1386AD040CFD9C090F34D10800000004078000FC000000060000000600000007000000020000000A1386AD02045489FB1386AD040CFD9C090F34D1080000000400000006000000070000000213867104000000020CFD9C090000000A0F350D080000000A000000040000000100000000135D44FD0CFD9BF70F350CF60000000004548A031386710200000001045489FB000000051386710400000002000000051386AD02045489FB1386AD040CFD9C090F34D10800000004000000050F350D080C9A86F60000000700000005000000040000000213867104000000020CFD9C090000000A0F350D080C9A86F60000000A0000000500000004000000010F34D0F604548A030000000A1386AD02045489FB1386AD040CFD9C090000000600000007000000020000000A00000001000000000000000300000004"
theorem small_2107582_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2107582_left_root small_2107582_left_fuel small_2107582_left_count small_2107582_left_encoded = true := by
  decide +kernel
theorem small_2107582_left_covered : CoveredBy scale carrier boxes small_2107582_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2107582_left_root small_2107582_left_fuel small_2107582_left_count small_2107582_left_encoded small_2107582_left_checked

theorem cover_2107582 : CoveredBy scale carrier boxes root_2107582 := by
  apply coveredBy_split_literal root_2107582 small_2107582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2108416 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2107582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2108416
#print axioms cover_2107582

def root_2107576 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107576_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107576_left_fuel : Nat := 1
def small_2107576_left_count : Nat := 1
def small_2107576_left_encoded : String := "00000000"
theorem small_2107576_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2107576_left_root small_2107576_left_fuel small_2107576_left_count small_2107576_left_encoded = true := by
  decide +kernel
theorem small_2107576_left_covered : CoveredBy scale carrier boxes small_2107576_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2107576_left_root small_2107576_left_fuel small_2107576_left_count small_2107576_left_encoded small_2107576_left_checked

theorem cover_2107576 : CoveredBy scale carrier boxes root_2107576 := by
  apply coveredBy_split_literal root_2107576 small_2107576_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2107582 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2107576_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2107582
#print axioms cover_2107576

def root_2107575 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107575_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107575_right_fuel : Nat := 17
def small_2107575_right_count : Nat := 123
def small_2107575_right_encoded : String := "120700F608A91303120701020000000108A912FB12073D0408A913091207010800000004000000060000000700000002120701040000000208A9130912070108000000040000000612073D08050000FC135D80FD00000003045489F71386ACF60000000004548A0313867102000000010000000A1386AD02045489FB000000070000000A00000001000000070000000A0000000412073D0208A912FB12073D0408A913090000000612073D08050000FC135D80FD00000003045489F71386ACF6000000000CFD9C030F34D10200000001000000070000000700000007135D44FD045489F70000000700000006000000030000000400000002120701040000000208A9130912070108000000040000000612073D08050000FC135D80FD00000003045489F71386ACF6000000000CFD9C030F34D10200000001045489FB0000000713867104000000020CFD9C090000000A000000070F350D02045489FB1386AD040CFD9C0900000006000000070000000213867104000000020000000900000001138670F60CFD9C030F34D10200000001000000070F350D02000000060000000100000000135D44FD045489F71386ACF6000000000CFD9C030F34D10200000001045489FB00000006000000060F350D0200000006000000010000000600000003000000040000000100000000"
theorem small_2107575_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2107575_right_root small_2107575_right_fuel small_2107575_right_count small_2107575_right_encoded = true := by
  decide +kernel
theorem small_2107575_right_covered : CoveredBy scale carrier boxes small_2107575_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2107575_right_root small_2107575_right_fuel small_2107575_right_count small_2107575_right_encoded small_2107575_right_checked

theorem cover_2107575 : CoveredBy scale carrier boxes root_2107575 := by
  apply coveredBy_split_literal root_2107575 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2107576 small_2107575_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2107576
  · exact small_2107575_right_covered
#print axioms cover_2107575

def root_2107570 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107570_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107570_right_fuel : Nat := 1
def small_2107570_right_count : Nat := 1
def small_2107570_right_encoded : String := "00000004"
theorem small_2107570_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2107570_right_root small_2107570_right_fuel small_2107570_right_count small_2107570_right_encoded = true := by
  decide +kernel
theorem small_2107570_right_covered : CoveredBy scale carrier boxes small_2107570_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2107570_right_root small_2107570_right_fuel small_2107570_right_count small_2107570_right_encoded small_2107570_right_checked

theorem cover_2107570 : CoveredBy scale carrier boxes root_2107570 := by
  apply coveredBy_split_literal root_2107570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2107575 small_2107570_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2107575
  · exact small_2107570_right_covered
#print axioms cover_2107570

def root_2107192 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107192_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107192_left_fuel : Nat := 23
def small_2107192_left_count : Nat := 177
def small_2107192_left_encoded : String := "1151E9090000000408A912F712073CF60000000008A91303120701020000000108A912FB000000071207010400000002050000FC135D80FD000000030500010800000007135D81090CFD9BF70F350CF60000000004548A031386710200000001045489FB0000000713867104000000020C9A86F6000000070F8750F700000007000000001386AD02045489FB0000000713867104000000020C9A86F6000000070F8750F70000000700000000000000010000000700000004135D44FD0500010800000007135D81090CFD9BF70F350CF60000000004548A031386710200000001000000070000000700000007000000040000000312073D0208A912FB12073D04050000FC135D80FD000000030500010800000007135D81090CFD9BF7000000070000000700000004135D44FD0000000700000003000000021207010400000002050000FC135D80FD0000000305000108135D4509000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000070000000700000007135D81090CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB0000000713867104000000020C9A86F6000000070F8750F7078000FC0000000700000007000000000F350D02045489FB0000000713867104000000020C9A86F6000000050F8750F70C9A8702000000050F878D03078000FC00000005000000070000000100000000000000010F34D0F6000000070000000000000004135D44FD05000108135D45090000000400000007135D81090CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000070F350D02045489FB0000000713867104000000020C9A86F6000000070F8750F70000000700000000000000010F34D0F60000000700000000000000040000000300000001120700F608A9130312070102000000010000000712073D0208A912FB000000071207010400000002000000070000000100000000"
theorem small_2107192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2107192_left_root small_2107192_left_fuel small_2107192_left_count small_2107192_left_encoded = true := by
  decide +kernel
theorem small_2107192_left_covered : CoveredBy scale carrier boxes small_2107192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2107192_left_root small_2107192_left_fuel small_2107192_left_count small_2107192_left_encoded small_2107192_left_checked

theorem cover_2107192 : CoveredBy scale carrier boxes root_2107192 := by
  apply coveredBy_split_literal root_2107192 small_2107192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2107570 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2107192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2107570
#print axioms cover_2107192

def root_2107187 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107187_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2107187_right_fuel : Nat := 1
def small_2107187_right_count : Nat := 1
def small_2107187_right_encoded : String := "00000003"
theorem small_2107187_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2107187_right_root small_2107187_right_fuel small_2107187_right_count small_2107187_right_encoded = true := by
  decide +kernel
theorem small_2107187_right_covered : CoveredBy scale carrier boxes small_2107187_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2107187_right_root small_2107187_right_fuel small_2107187_right_count small_2107187_right_encoded small_2107187_right_checked

theorem cover_2107187 : CoveredBy scale carrier boxes root_2107187 := by
  apply coveredBy_split_literal root_2107187 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2107192 small_2107187_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2107192
  · exact small_2107187_right_covered
#print axioms cover_2107187

def root_2088469 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2088469 : CoveredBy scale carrier boxes root_2088469 := by
  apply coveredBy_split_literal root_2088469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2088470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2107187 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2088470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2107187
#print axioms cover_2088469

def root_2088463 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088463_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088463_left_fuel : Nat := 1
def small_2088463_left_count : Nat := 1
def small_2088463_left_encoded : String := "00000002"
theorem small_2088463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2088463_left_root small_2088463_left_fuel small_2088463_left_count small_2088463_left_encoded = true := by
  decide +kernel
theorem small_2088463_left_covered : CoveredBy scale carrier boxes small_2088463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2088463_left_root small_2088463_left_fuel small_2088463_left_count small_2088463_left_encoded small_2088463_left_checked

theorem cover_2088463 : CoveredBy scale carrier boxes root_2088463 := by
  apply coveredBy_split_literal root_2088463 small_2088463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2088469 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2088463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2088469
#print axioms cover_2088463

def root_2088091 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088091_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088091_left_fuel : Nat := 20
def small_2088091_left_count : Nat := 171
def small_2088091_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A912F712073CF60000000008A9130312070102000000010000000712073D020000000500000001000000071152250908A912F712073CF60000000008A91303120701020000000108A912FD12073CFC0000000308A9130912070108000000040500010400000006135D80FB000000020CFD9BF7000000090F34D0F604548A0300000006000000060000000012073D080000000700000004120700FC08A9130900000009000000090000000312073D0208A912FD12073CFC0000000308A9130912070108000000040000000A12073D0805000104135D44FB0CFD9BF70000000A0000000700000002135D80FB000000020CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000090F350D020000000A000000010F34D0F60CFD9C030F34D10200000001000000070F350D0200000005000000010000000000000004120700FC0000000A0000000300000001120700F608A91303120701020000000108A912FD00000007120700FC08A9130912070108000000040500010400000005135D80FB00000002045489F70000000A00000005000000050000000312073D0208A912FD12073CFC0000000308A9130912070108000000040000000600000007120700FC00000005000000030000000100000000000000041151E8FD0A0001081151E90900000004000000071152250908A912F712073CF60000000008A91303120701020000000108A91309000000060000000712073D0208A913090000000612073D080500010400000006135D80FB00000002050000FC135D80FD000000030CFD9BF70F350CF6000000000000000600000006000000060000000400000001120700F608A9130312070102000000010000000712073D02000000060000000100000000000000040000000300000002"
theorem small_2088091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2088091_left_root small_2088091_left_fuel small_2088091_left_count small_2088091_left_encoded = true := by
  decide +kernel
theorem small_2088091_left_covered : CoveredBy scale carrier boxes small_2088091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2088091_left_root small_2088091_left_fuel small_2088091_left_count small_2088091_left_encoded small_2088091_left_checked

theorem cover_2088091 : CoveredBy scale carrier boxes root_2088091 := by
  apply coveredBy_split_literal root_2088091 small_2088091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2088463 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2088091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2088463
#print axioms cover_2088091

def root_2088086 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088086_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2088086_right_fuel : Nat := 1
def small_2088086_right_count : Nat := 1
def small_2088086_right_encoded : String := "00000001"
theorem small_2088086_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2088086_right_root small_2088086_right_fuel small_2088086_right_count small_2088086_right_encoded = true := by
  decide +kernel
theorem small_2088086_right_covered : CoveredBy scale carrier boxes small_2088086_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2088086_right_root small_2088086_right_fuel small_2088086_right_count small_2088086_right_encoded small_2088086_right_checked

theorem cover_2088086 : CoveredBy scale carrier boxes root_2088086 := by
  apply coveredBy_split_literal root_2088086 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2088091 small_2088086_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2088091
  · exact small_2088086_right_covered
#print axioms cover_2088086

def root_2086976 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2086976 : CoveredBy scale carrier boxes root_2086976 := by
  apply coveredBy_split_literal root_2086976 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0809.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2088086 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0809.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2088086
#print axioms cover_2086976

def root_2086970 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2086970_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2086970_left_fuel : Nat := 1
def small_2086970_left_count : Nat := 1
def small_2086970_left_encoded : String := "00000000"
theorem small_2086970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2086970_left_root small_2086970_left_fuel small_2086970_left_count small_2086970_left_encoded = true := by
  decide +kernel
theorem small_2086970_left_covered : CoveredBy scale carrier boxes small_2086970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2086970_left_root small_2086970_left_fuel small_2086970_left_count small_2086970_left_encoded small_2086970_left_checked

theorem cover_2086970 : CoveredBy scale carrier boxes root_2086970 := by
  apply coveredBy_split_literal root_2086970 small_2086970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2086976 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2086970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2086976
#print axioms cover_2086970

def root_2116580 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116580_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116580_right_fuel : Nat := 17
def small_2116580_right_count : Nat := 115
def small_2116580_right_encoded : String := "135D44F70CFD9C030F34D10200000001045489FB1386AD04000000090000000213867104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D080000000900000004000000090F350D02045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87020000000A0F878D030C9A86FC0000000A00000009000000010F350D080C9A87020F875103000000010000000A00000009000000040F34D0FC0000000A000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87020F875103000000010C9A86FC0000000A0F8750FD028000F60000000A00000005000000030F878D030C9A86FC0F878CFD000000030000000700000005000000010F350D080C9A87020F875103000000010C9A86FC0F878CFD000000030000000A0F8750FD0C9A87080F87510900000004028000F60000000A000000080F878D09028000F60000000A0000000900000004000000030F878D030C9A86FC000000090F8750FD0C9A8708000000090F878D0900000009000000040000000300000001000000040F34D0FC0CFD9C090F34D10800000004000000070F350D080000000600000004000000030000000100000000"
theorem small_2116580_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2116580_right_root small_2116580_right_fuel small_2116580_right_count small_2116580_right_encoded = true := by
  decide +kernel
theorem small_2116580_right_covered : CoveredBy scale carrier boxes small_2116580_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2116580_right_root small_2116580_right_fuel small_2116580_right_count small_2116580_right_encoded small_2116580_right_checked

theorem cover_2116580 : CoveredBy scale carrier boxes root_2116580 := by
  apply coveredBy_split_literal root_2116580 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0819.root small_2116580_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0819.covered
  · exact small_2116580_right_covered
#print axioms cover_2116580

def root_2116575 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116575_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116575_right_fuel : Nat := 1
def small_2116575_right_count : Nat := 1
def small_2116575_right_encoded : String := "00000004"
theorem small_2116575_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2116575_right_root small_2116575_right_fuel small_2116575_right_count small_2116575_right_encoded = true := by
  decide +kernel
theorem small_2116575_right_covered : CoveredBy scale carrier boxes small_2116575_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2116575_right_root small_2116575_right_fuel small_2116575_right_count small_2116575_right_encoded small_2116575_right_checked

theorem cover_2116575 : CoveredBy scale carrier boxes root_2116575 := by
  apply coveredBy_split_literal root_2116575 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2116580 small_2116575_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2116580
  · exact small_2116575_right_covered
#print axioms cover_2116575

def root_2116031 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116031_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116031_left_fuel : Nat := 23
def small_2116031_left_count : Nat := 259
def small_2116031_left_encoded : String := "1207010800000004050000F6135D80F7000000000CFD9C030F34D10200000001045489FB1386AD040CFD9BFD0F350CFC0000000304548A09000000051386AD080C9A86FC0F878CFD00000003078000F6128A7CF7000000000AD357830000000910D13D0200000009000000010000000500000005000000040F34D0FC04548A091386710800000004078000F600000009000000071386AD080000000900000004000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A09000000051386AD080C9A86FC0F878CFD00000003078000F6128A7CF7000000000AD357830000000910D13D02022A457B0000000900000007000000010000000500000005000000040F34D0FC04548A090000000700000007000000030F350D02045489FB1386AD040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87020F875103000000010000000A0F878D030C9A86FC0F878CFD000000030000000A00000005000000011386AD080C9A87020F875103000000010000000A0F878D030C9A86FC0F878CFD000000030000000A0F8750FD078000F6128A7CF70000000000000006000000050000000300000001000000040F34D0FC0000000A000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87020F875103000000010C9A86FC000000070F8750FD078000F6128A7CF700000000022A457B000000060000000700000005000000030F878D030C9A86FC0F878CFD000000030000000700000005000000011386AD080C9A87020F875103000000010C9A86FC0F878CFD000000030000000A0F8750FD078000F6128A7CF700000000022A457B0000000A13E1C50400000002067ECE890000000700000007128A40F7022A457B0000000A0000000700000000000000030F878D030C9A86FC0F878CFD00000003078000F6128A7CF700000000022A457B13E20104067ECE89000000070000000A0000000200000007000000070F8750FD078000F6128A7CF700000000022A457B13E20104067ECE890000000512EA95080DE7CA020000000600000005000000040000000213E1C50400000002067ECE890000000512EA95080DE7CA02000000070000000500000004000000050000000300000001000000040F34D0FC04548A0900000007000000070000000300000001135D44F70CFD9C030F34D10200000001045489FB000000051386710400000002000000050F350D02045489FB1386AD040CFD9BFD0F350CFC0000000304548A091386710800000004000000051386AD080C9A87020000000A00000005000000040F34D0FC00000007000000030000000213867104000000020CFD9BFD0F350CFC0000000304548A09000000071386AD080C9A8702000000070000000500000004000000070000000100000000"
theorem small_2116031_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2116031_left_root small_2116031_left_fuel small_2116031_left_count small_2116031_left_encoded = true := by
  decide +kernel
theorem small_2116031_left_covered : CoveredBy scale carrier boxes small_2116031_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2116031_left_root small_2116031_left_fuel small_2116031_left_count small_2116031_left_encoded small_2116031_left_checked

theorem cover_2116031 : CoveredBy scale carrier boxes root_2116031 := by
  apply coveredBy_split_literal root_2116031 small_2116031_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2116575 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2116031_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2116575
#print axioms cover_2116031

def root_2116025 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116025_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116025_left_fuel : Nat := 1
def small_2116025_left_count : Nat := 1
def small_2116025_left_encoded : String := "00000003"
theorem small_2116025_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2116025_left_root small_2116025_left_fuel small_2116025_left_count small_2116025_left_encoded = true := by
  decide +kernel
theorem small_2116025_left_covered : CoveredBy scale carrier boxes small_2116025_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2116025_left_root small_2116025_left_fuel small_2116025_left_count small_2116025_left_encoded small_2116025_left_checked

theorem cover_2116025 : CoveredBy scale carrier boxes root_2116025 := by
  apply coveredBy_split_literal root_2116025 small_2116025_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2116031 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2116025_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2116031
#print axioms cover_2116025

def root_2116024 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116024_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116024_right_fuel : Nat := 14
def small_2116024_right_count : Nat := 51
def small_2116024_right_encoded : String := "120700FC08A913091207010800000004050000F6135D80F7000000000CFD9C030F34D10200000001045489FB0000000A000000070000000A0000000712073D08050000F6135D80F7000000000CFD9C030F34D10200000001000000090F350D02045489FB0000000A1386710400000002045489FD1386ACFC000000030CFD9C090F34D1080000000400000007000000060000000600000001135D44F70CFD9C03000000090F350D02045489FB0000000A13867104000000020000000600000001000000000000000400000003"
theorem small_2116024_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2116024_right_root small_2116024_right_fuel small_2116024_right_count small_2116024_right_encoded = true := by
  decide +kernel
theorem small_2116024_right_covered : CoveredBy scale carrier boxes small_2116024_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2116024_right_root small_2116024_right_fuel small_2116024_right_count small_2116024_right_encoded small_2116024_right_checked

theorem cover_2116024 : CoveredBy scale carrier boxes root_2116024 := by
  apply coveredBy_split_literal root_2116024 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2116025 small_2116024_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2116025
  · exact small_2116024_right_covered
#print axioms cover_2116024

def root_2116018 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116018_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2116018_left_fuel : Nat := 1
def small_2116018_left_count : Nat := 1
def small_2116018_left_encoded : String := "00000002"
theorem small_2116018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2116018_left_root small_2116018_left_fuel small_2116018_left_count small_2116018_left_encoded = true := by
  decide +kernel
theorem small_2116018_left_covered : CoveredBy scale carrier boxes small_2116018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2116018_left_root small_2116018_left_fuel small_2116018_left_count small_2116018_left_encoded small_2116018_left_checked

theorem cover_2116018 : CoveredBy scale carrier boxes root_2116018 := by
  apply coveredBy_split_literal root_2116018 small_2116018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2116024 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2116018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2116024
#print axioms cover_2116018

def root_2115600 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115600_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115600_left_fuel : Nat := 19
def small_2115600_left_count : Nat := 193
def small_2115600_left_encoded : String := "12073D0408A912FD12073CFC0000000308A913091207010800000004050000F6135D80F7000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030000000600000009000000020F34D104000000020CFD9BFD0F350CFC0000000304548A091386710800000004000000051386AD080C9A86FC0F878CFD000000030000000900000005000000040F34D0FC0000000A000000030F350D020CFD9BFB0000000A0F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040000000A0000000A0000000A00000001135D44F70CFD9C030F34D102000000010CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD00000005000000090F350D020CFD9BFB0000000A0F34D104000000020CFD9BFD0000000A0000000A000000010000000012073D08050000F6135D80F7000000000CFD9C030F34D102000000010CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090000000900000009000000090F350D020CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000A0000000A0000000A000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87020000000A0F878D030000000A000000010F350D080C9A87020F875103000000010000000A0F878D030C9A86FC0000000A0000000900000001000000040F34D0FC0000000A0000000300000001135D44F70CFD9C030F34D102000000010CFD9BFB00000009000000090F350D020CFD9BFB0F350D040CFD9BFD0000000A00000009000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000A0F350D0800000009000000040F34D0FC0000000A00000003000000010000000000000004120700FC08A9130912070108000000040000000A12073D08050000F6135D80F7000000000CFD9C030F34D10200000001000000090000000A135D44F70CFD9C03000000090000000A00000000000000040000000300000002"
theorem small_2115600_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115600_left_root small_2115600_left_fuel small_2115600_left_count small_2115600_left_encoded = true := by
  decide +kernel
theorem small_2115600_left_covered : CoveredBy scale carrier boxes small_2115600_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115600_left_root small_2115600_left_fuel small_2115600_left_count small_2115600_left_encoded small_2115600_left_checked

theorem cover_2115600 : CoveredBy scale carrier boxes root_2115600 := by
  apply coveredBy_split_literal root_2115600 small_2115600_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2116018 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2115600_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2116018
#print axioms cover_2115600

def root_2115595 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115595_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115595_right_fuel : Nat := 1
def small_2115595_right_count : Nat := 1
def small_2115595_right_encoded : String := "00000001"
theorem small_2115595_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115595_right_root small_2115595_right_fuel small_2115595_right_count small_2115595_right_encoded = true := by
  decide +kernel
theorem small_2115595_right_covered : CoveredBy scale carrier boxes small_2115595_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115595_right_root small_2115595_right_fuel small_2115595_right_count small_2115595_right_encoded small_2115595_right_checked

theorem cover_2115595 : CoveredBy scale carrier boxes root_2115595 := by
  apply coveredBy_split_literal root_2115595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2115600 small_2115595_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2115600
  · exact small_2115595_right_covered
#print axioms cover_2115595

def root_2115379 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115379_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115379_left_fuel : Nat := 21
def small_2115379_left_count : Nat := 107
def small_2115379_left_encoded : String := "120701020000000108A912FB12073D0408A912FD12073CFC0000000308A913091207010800000004050000F6135D80F70000000004548A03000000091386AD020CFD9BFB0000000900000009000000010000000912073D08050000F6000000090000000900000004120700FC08A9130900000009000000090000000300000002120701040000000208A912FD12073CFC0000000308A913091207010800000004050000F6135D80F70000000004548A03000000091386AD02045489FB1386AD040CFD9BFD00000005000000090000000213867104000000020CFD9BFD0000000500000009000000010000000512073D08050000F6135D80F70000000004548A031386710200000001045489FB0000000913867104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D080000000900000004000000091386AD02045489FB0000000913867104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D080C9A86FC000000090F8750FD0C9A87080000000900000009000000030000000400000009000000010000000900000004120700FC08A91309000000090000000900000003"
theorem small_2115379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115379_left_root small_2115379_left_fuel small_2115379_left_count small_2115379_left_encoded = true := by
  decide +kernel
theorem small_2115379_left_covered : CoveredBy scale carrier boxes small_2115379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115379_left_root small_2115379_left_fuel small_2115379_left_count small_2115379_left_encoded small_2115379_left_checked

theorem cover_2115379 : CoveredBy scale carrier boxes root_2115379 := by
  apply coveredBy_split_literal root_2115379 small_2115379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2115595 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2115379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2115595
#print axioms cover_2115379

def root_2115374 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115374_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115374_right_fuel : Nat := 1
def small_2115374_right_count : Nat := 1
def small_2115374_right_encoded : String := "00000004"
theorem small_2115374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115374_right_root small_2115374_right_fuel small_2115374_right_count small_2115374_right_encoded = true := by
  decide +kernel
theorem small_2115374_right_covered : CoveredBy scale carrier boxes small_2115374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115374_right_root small_2115374_right_fuel small_2115374_right_count small_2115374_right_encoded small_2115374_right_checked

theorem cover_2115374 : CoveredBy scale carrier boxes root_2115374 := by
  apply coveredBy_split_literal root_2115374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2115379 small_2115374_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2115379
  · exact small_2115374_right_covered
#print axioms cover_2115374

def root_2115062 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115062_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115062_left_fuel : Nat := 23
def small_2115062_left_count : Nat := 147
def small_2115062_left_encoded : String := "1151E9090000000408A91303120701020000000108A912FB00000009120701040000000208A912FD12073CFC00000003050000F6135D80F7000000000500010800000009135D810904548A03000000090000000900000004000000090000000912073D0208A912FB12073D0408A912FD12073CFC00000003050000F6135D80F70000000005000108135D4509000000040CFD9C030000000900000009135D81090CFD9C030F34D10200000001000000090F350D020CFD9BFB000000090F34D104000000020CFD9BFD0F350CFC000000030C9A87020000000800000009000000080000000100000004000000090000000900000002120701040000000208A912FD12073CFC00000003050000F6135D80F70000000005000108135D4509000000040CFD9C030F34D102000000010000000600000006135D81090CFD9C030F34D10200000001045489FB000000091386710400000002000000060F350D02045489FB1386AD040CFD9BFD0F350CFC000000030C9A87020F87510300000001000000050F878D030C9A86FC0F878CFD00000003000000050F8750FD078000F6000000080000000800000003000000010F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A87020000000500000006000000060000000100000004135D44F705000108135D4509000000040CFD9C030000000900000006135D81090CFD9C030F34D10200000001000000090F350D02045489FB00000009138671040000000200000006000000010000000400000000120700FC000000060000000300000001"
theorem small_2115062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115062_left_root small_2115062_left_fuel small_2115062_left_count small_2115062_left_encoded = true := by
  decide +kernel
theorem small_2115062_left_covered : CoveredBy scale carrier boxes small_2115062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115062_left_root small_2115062_left_fuel small_2115062_left_count small_2115062_left_encoded small_2115062_left_checked

theorem cover_2115062 : CoveredBy scale carrier boxes root_2115062 := by
  apply coveredBy_split_literal root_2115062 small_2115062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2115374 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2115062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2115374
#print axioms cover_2115062

def root_2115056 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115056_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115056_left_fuel : Nat := 1
def small_2115056_left_count : Nat := 1
def small_2115056_left_encoded : String := "00000003"
theorem small_2115056_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115056_left_root small_2115056_left_fuel small_2115056_left_count small_2115056_left_encoded = true := by
  decide +kernel
theorem small_2115056_left_covered : CoveredBy scale carrier boxes small_2115056_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115056_left_root small_2115056_left_fuel small_2115056_left_count small_2115056_left_encoded small_2115056_left_checked

theorem cover_2115056 : CoveredBy scale carrier boxes root_2115056 := by
  apply coveredBy_split_literal root_2115056 small_2115056_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2115062 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2115056_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2115062
#print axioms cover_2115056

def root_2123637 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123637_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123637_left_fuel : Nat := 26
def small_2123637_left_count : Nat := 465
def small_2123637_left_encoded : String := "0F875103000000010C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD00000003022A457B0000000813E1C504000000020B4D44020000000810804D030B4D44080000000810804D0908C000F611FC24F70000000000000008000000080000000400000001128A40FD022A457B0000000813E1C504000000020B4D44020000000810804D030B4D44080000000810804D0908C000F60000000800000008000000040000000100000003128A40F7078000FC128A7CFD00000003022A457B0000000813E1C504000000020B4D44020000000810804D030B4D44080000000810804D09064000F600000008000000080000000400000001128A40FD022A457B0000000813E1C504000000020B4D44020000000810804D030B4D44080000000810804D0900000008000000040000000100000003000000000F878D09078000F6128A7CF700000000078000FC128A7CFD00000003022A457B13E201040B4D440210801103000000010DE7CA08000000080000000A10804D030DE7CA080E5FD9090000000408C000F600000008000000080E60150908C000F611FC24F70000000008C000FC0000000A0000000611FBE8F70000000A0000000000000004000000010000000213E1C504000000020B4D440210801103000000010DE7CA080E5FD9090000000408C000F611FC24F70000000000000008000000080E60150908C000F611FC24F7000000000000000911FBE8F708C000FC0000000A11FBE8FD0115233B0000000813F85904000000020000000800000003000000000000000410804D030DE7CA080E5FD9090000000408C000F611FC24F70000000008C000FC11FC24FD000000030115233B0000000813F85904000000020BF3E58200000005100929030D412888000000050EFA4D0900000008000000040000000111FBE8FD0115233B0000000813F85904000000020BF3E582000000081009290300000008000000010000000311FBE8F708C000FC11FC24FD000000030115233B0000000813F85904000000020BF3E5820000000810092903000000080000000111FBE8FD0115233B0000000813F85904000000020000000800000003000000000E60150908C000F611FC24F70000000008C000FC11FC24FD000000030115233B13F895040DAED8890E962508000000040000000A0000000A0000000213F85904000000020DAED8890E962508000000040BF3E5820000000910092903096000F60000000911AA80F70000000A00000000000000010E9661080BF3E5820000000910092903096000F60000000911AA80F70000000A00000000000000010000000411FBE8FD0115233B0000000613F85904000000020DAED8890E9625080000000400000006000000090000000311FBE8F708C000FC11FC24FD000000030115233B0000000A13F85904000000020DAED8890E962508000000040000000A0000000A11FBE8FD0115233B13F895040DAED8890E96250800000004000000060E96610800000008000000040000000213F85904000000020DAED8890E962508000000040BF3E5821008ED0300000001082000F60000000600000005000000050E9661080BF3E5820000000810092903082000F6124698F7000000000000000800000005000000010000000400000003000000000000000400000001128A40FD022A457B13E201040B4D440210801103000000010DE7CA08000000080000000610804D030DE7CA080E5FD909000000040000000800000006000000010000000213E1C504000000020B4D440210801103000000010DE7CA080E5FD9090000000408C000F600000008000000080E60150908C000F60000000611FBE8F7064000FC12FFACFD000000030000000600000005000000000000000410804D030DE7CA080E5FD9090000000408C000F611FC24F700000000064000FC12FFACFD00000003000000080000000611FBE8F7064000FC12FFACFD000000030000000800000005000000000E60150908C000F60000000600000005000000040000000100000003128A40F7078000FC128A7CFD00000003022A457B13E201040B4D44020000000A10804D030DE7CA080E5FD90900000004000000080000000A000000010000000213E1C504000000020B4D440210801103000000010DE7CA080E5FD90900000004064000F600000008000000080E601509064000F60000000A0000000A0000000410804D030DE7CA080E5FD90900000004064000F612FFACF70000000008C000FC11FC24FD00000003000000080000000812FF70F708C000FC0000000A00000008000000000E601509064000F612FFACF70000000008C000FC11FC24FD000000030000000A00000005000000050000000400000001128A40FD022A457B13E201040B4D440210801103000000010DE7CA08000000080E601509000000050000000410804D030DE7CA080E5FD909000000040000000800000005000000010000000213E1C504000000020B4D440210801103000000010DE7CA080E5FD90900000004000000080E601509000000050000000410804D030000000500000001000000030000000000000004"
theorem small_2123637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2123637_left_root small_2123637_left_fuel small_2123637_left_count small_2123637_left_encoded = true := by
  decide +kernel
theorem small_2123637_left_covered : CoveredBy scale carrier boxes small_2123637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2123637_left_root small_2123637_left_fuel small_2123637_left_count small_2123637_left_encoded small_2123637_left_checked

theorem cover_2123637 : CoveredBy scale carrier boxes root_2123637 := by
  apply coveredBy_split_literal root_2123637 small_2123637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0821.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2123637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0821.covered
#print axioms cover_2123637

def root_2123632 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123632_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123632_right_fuel : Nat := 1
def small_2123632_right_count : Nat := 1
def small_2123632_right_encoded : String := "00000004"
theorem small_2123632_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2123632_right_root small_2123632_right_fuel small_2123632_right_count small_2123632_right_encoded = true := by
  decide +kernel
theorem small_2123632_right_covered : CoveredBy scale carrier boxes small_2123632_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2123632_right_root small_2123632_right_fuel small_2123632_right_count small_2123632_right_encoded small_2123632_right_checked

theorem cover_2123632 : CoveredBy scale carrier boxes root_2123632 := by
  apply coveredBy_split_literal root_2123632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2123637 small_2123632_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2123637
  · exact small_2123632_right_covered
#print axioms cover_2123632

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050

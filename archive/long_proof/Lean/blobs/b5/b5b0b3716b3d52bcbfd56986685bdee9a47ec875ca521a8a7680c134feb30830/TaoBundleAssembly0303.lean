import TaoBundleAssembly0302
import TaoBundleChunkBatch0392
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303
def root_4167050 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167050_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167050_left_fuel : Nat := 30
def small_4167050_left_count : Nat := 225
def small_4167050_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F60000000500000000000000071152250908A91301120700F608A912F912073D0208A91305120700FA08A9130912070108000000040500010600000005135D80FD0000000300000005000000050000000212073CFA0000000208A9130912070108000000040500010600000005135D80FD00000003000000050000000500000001120701020000000108A91305120700FA000000050000000212073CFA0000000208A9130900000005000000060000000012073CF60000000008A912F912073D0208A91305120700FA08A9130912070108000000040500010600000005135D80FD0000000300000005000000050000000212073CFA0000000208A9130912070108000000040500010600000005135D80FD000000030CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA0000000204548A0913867108000000040C9A86F6000000050F875101000000000C9A86FA000000050F875105000000020780010600000005128A7CFD000000030AD357790000000710D1010200000001000000071386AD080C9A86F600000005000000070000000412073D080500010600000005135D80FD000000030CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010F34D10200000001000000070000000400000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A91309120701080000000405000106135D44FD0CFD9C010F34D0F600000005000000000F350CF6000000000000000700000003135D80FD000000030CFD9C010F34D0F6045489F90000000513867102000000010CFD9C05000000050F350CFA0000000200000006000000000F350CF600000000045489F91386AD020CFD9C050F34D0FA00000005000000020F350CFA0000000204548A0913867108000000040C9A86F60F878D010C9A86FA0000000500000006000000000F875101000000000C9A86FA000000070F8751050000000200000007000000070000000113867102000000010CFD9C05000000070F350CFA0000000204548A0913867108000000040C9A86F60F878D010C9A86FA0000000700000006000000000F87510100000000000000070000000712073D0800000007000000040000000400000003"
theorem small_4167050_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167050_left_root small_4167050_left_fuel small_4167050_left_count small_4167050_left_encoded = true := by
  decide +kernel
theorem small_4167050_left_covered : CoveredBy scale carrier boxes small_4167050_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167050_left_root small_4167050_left_fuel small_4167050_left_count small_4167050_left_encoded small_4167050_left_checked

theorem cover_4167050 : CoveredBy scale carrier boxes root_4167050 := by
  apply coveredBy_split_literal root_4167050 small_4167050_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4167540 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4167050_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4167540
#print axioms cover_4167050

def root_4167045 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167045_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167045_right_fuel : Nat := 1
def small_4167045_right_count : Nat := 1
def small_4167045_right_encoded : String := "00000002"
theorem small_4167045_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167045_right_root small_4167045_right_fuel small_4167045_right_count small_4167045_right_encoded = true := by
  decide +kernel
theorem small_4167045_right_covered : CoveredBy scale carrier boxes small_4167045_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167045_right_root small_4167045_right_fuel small_4167045_right_count small_4167045_right_encoded small_4167045_right_checked

theorem cover_4167045 : CoveredBy scale carrier boxes root_4167045 := by
  apply coveredBy_split_literal root_4167045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4167050 small_4167045_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4167050
  · exact small_4167045_right_covered
#print axioms cover_4167045

def root_4188040 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188040_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188040_right_fuel : Nat := 28
def small_4188040_right_count : Nat := 171
def small_4188040_right_encoded : String := "0F34D102000000010CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A8706000000060F878CFD0000000300000006000000000F875101000000000C9A87060F8750FD078000FA128A7D050AD3577910D13D02022A458913E1C508000000040B4D43F60000000810801101000000000B4D44060000000610804CFD0000000300000006000000060000000110D1010200000001000000060000000200000006000000030F878CFD00000003078000FA128A7D050AD3577910D13D02022A458913E1C508000000040B4D43F610804D010DE7CA0600000006000000060000000010801101000000000DE7CA060E5FD8FD08C000FA11FC2505000000060000000200000006000000030E6014FD0000000308C000FA11FC25050BE879B91011AD020115234913F85908000000040DAED87D0E9661060000000600000003000000060000000600000001000000060000000200000005000000060000000110D10102000000010000000600000002000000061386AD080C9A86F6000000060F875101000000000C9A8706000000060000000600000004000000030F34D1060000000304548A0913867108000000040C9A86F60F878D01078000FA128A7D050AD3577910D13D020AD3577D10D13D0600000006000000030000000600000001000000060000000200000006000000000F87510100000000078000FA128A7D050AD3577910D13D020AD3577D10D13D06022A458913E1C508000000040B4D43F610804D01000000060000000000000005000000060000000310D1010600000003000000050000000110D10102000000010000000500000002000000051386AD080C9A86F60F878D0100000006000000000F87510100000000078000FA128A7D050AD3577910D13D020AD3577D00000006000000060000000100000006000000020000000500000004"
theorem small_4188040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4188040_right_root small_4188040_right_fuel small_4188040_right_count small_4188040_right_encoded = true := by
  decide +kernel
theorem small_4188040_right_covered : CoveredBy scale carrier boxes small_4188040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4188040_right_root small_4188040_right_fuel small_4188040_right_count small_4188040_right_encoded small_4188040_right_checked

theorem cover_4188040 : CoveredBy scale carrier boxes root_4188040 := by
  apply coveredBy_split_literal root_4188040 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1568.root small_4188040_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1568.covered
  · exact small_4188040_right_covered
#print axioms cover_4188040

def root_4188034 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188034_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188034_left_fuel : Nat := 1
def small_4188034_left_count : Nat := 1
def small_4188034_left_encoded : String := "00000000"
theorem small_4188034_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4188034_left_root small_4188034_left_fuel small_4188034_left_count small_4188034_left_encoded = true := by
  decide +kernel
theorem small_4188034_left_covered : CoveredBy scale carrier boxes small_4188034_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4188034_left_root small_4188034_left_fuel small_4188034_left_count small_4188034_left_encoded small_4188034_left_checked

theorem cover_4188034 : CoveredBy scale carrier boxes root_4188034 := by
  apply coveredBy_split_literal root_4188034 small_4188034_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4188040 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4188034_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4188040
#print axioms cover_4188034

def root_4187954 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187954_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187954_left_fuel : Nat := 11
def small_4187954_left_count : Nat := 39
def small_4187954_left_encoded : String := "0F34D0F60CFD9BF90F350D020CFD9BFD0F350D0604548A0913867108000000040C9A8702000000050000000800000009000000030F34D1060000000304548A0913867108000000040C9A8702000000090F878CF900000001078000FA000000090000000900000009000000010F34D102000000010CFD9BFD0F350D0600000006000000030F34D1060000000304548A09000000060000000600000000"
theorem small_4187954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187954_left_root small_4187954_left_fuel small_4187954_left_count small_4187954_left_encoded = true := by
  decide +kernel
theorem small_4187954_left_covered : CoveredBy scale carrier boxes small_4187954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187954_left_root small_4187954_left_fuel small_4187954_left_count small_4187954_left_encoded small_4187954_left_checked

theorem cover_4187954 : CoveredBy scale carrier boxes root_4187954 := by
  apply coveredBy_split_literal root_4187954 small_4187954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4188034 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4187954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4188034
#print axioms cover_4187954

def root_4187949 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187949_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187949_right_fuel : Nat := 1
def small_4187949_right_count : Nat := 1
def small_4187949_right_encoded : String := "00000002"
theorem small_4187949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187949_right_root small_4187949_right_fuel small_4187949_right_count small_4187949_right_encoded = true := by
  decide +kernel
theorem small_4187949_right_covered : CoveredBy scale carrier boxes small_4187949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187949_right_root small_4187949_right_fuel small_4187949_right_count small_4187949_right_encoded small_4187949_right_checked

theorem cover_4187949 : CoveredBy scale carrier boxes root_4187949 := by
  apply coveredBy_split_literal root_4187949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187954 small_4187949_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187954
  · exact small_4187949_right_covered
#print axioms cover_4187949

def root_4187948 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187948_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187948_right_fuel : Nat := 17
def small_4187948_right_count : Nat := 115
def small_4187948_right_encoded : String := "135D4505000000020CFD9C010F34D0F60CFD9BF90F350D020CFD9BFD0F350D0604548A090000000600000006000000030F34D1060000000300000009000000010F34D1020000000100000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A87020F8750F9000000090000000100000006000000000F875101000000000C9A87020F8750F90C9A87060F8750FD028000FA0000000900000006000000030F878CFD00000003028000FA0000000900000006000000010F878CF9000000010C9A8706000000060F878CFD00000003000000061386AD080C9A86F60F878D010C9A87020000000600000006000000000F875101000000000C9A87020F8750F900000009000000010000000600000004000000030F34D1060000000304548A0913867108000000040C9A86F60F878D010C9A8702000000070F878CF90000000100000006000000000F875101000000000C9A87020F8750F9028000FA000000090000000500000001000000051386AD080C9A86F6000000090F875101000000000C9A8702000000090000000500000004000000010F34D102000000010CFD9BFD0F350D06000000060000000300000006"
theorem small_4187948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187948_right_root small_4187948_right_fuel small_4187948_right_count small_4187948_right_encoded = true := by
  decide +kernel
theorem small_4187948_right_covered : CoveredBy scale carrier boxes small_4187948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187948_right_root small_4187948_right_fuel small_4187948_right_count small_4187948_right_encoded small_4187948_right_checked

theorem cover_4187948 : CoveredBy scale carrier boxes root_4187948 := by
  apply coveredBy_split_literal root_4187948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187949 small_4187948_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187949
  · exact small_4187948_right_covered
#print axioms cover_4187948

def root_4187942 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187942_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187942_left_fuel : Nat := 1
def small_4187942_left_count : Nat := 1
def small_4187942_left_encoded : String := "00000004"
theorem small_4187942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187942_left_root small_4187942_left_fuel small_4187942_left_count small_4187942_left_encoded = true := by
  decide +kernel
theorem small_4187942_left_covered : CoveredBy scale carrier boxes small_4187942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187942_left_root small_4187942_left_fuel small_4187942_left_count small_4187942_left_encoded small_4187942_left_checked

theorem cover_4187942 : CoveredBy scale carrier boxes root_4187942 := by
  apply coveredBy_split_literal root_4187942 small_4187942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187948 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4187942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187948
#print axioms cover_4187942

def root_4187941 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187941_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187941_right_fuel : Nat := 16
def small_4187941_right_count : Nat := 97
def small_4187941_right_encoded : String := "12073D08050000FA135D81050CFD9C010F34D0F60CFD9BF90F350D0200000009000000010F34D102000000010CFD9BFD0000000600000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D0100000009000000000F875101000000000C9A8702000000090F878CF900000001000000060F350D080000000900000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F6000000090F875101000000000000000900000009000000010F34D102000000010CFD9BFD0F350D0600000006000000030F34D106000000030CFD9C09000000060000000600000002135D4505000000020CFD9C010F34D0F60CFD9BF90F350D0200000009000000010F34D1020000000100000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D060CFD9C090000000600000006000000030F34D106000000030CFD9C090F34D108000000040000000900000009000000010F34D102000000010000000600000004"
theorem small_4187941_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187941_right_root small_4187941_right_fuel small_4187941_right_count small_4187941_right_encoded = true := by
  decide +kernel
theorem small_4187941_right_covered : CoveredBy scale carrier boxes small_4187941_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187941_right_root small_4187941_right_fuel small_4187941_right_count small_4187941_right_encoded small_4187941_right_checked

theorem cover_4187941 : CoveredBy scale carrier boxes root_4187941 := by
  apply coveredBy_split_literal root_4187941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187942 small_4187941_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187942
  · exact small_4187941_right_covered
#print axioms cover_4187941

def root_4187936 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187936_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187936_right_fuel : Nat := 1
def small_4187936_right_count : Nat := 1
def small_4187936_right_encoded : String := "00000003"
theorem small_4187936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187936_right_root small_4187936_right_fuel small_4187936_right_count small_4187936_right_encoded = true := by
  decide +kernel
theorem small_4187936_right_covered : CoveredBy scale carrier boxes small_4187936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187936_right_root small_4187936_right_fuel small_4187936_right_count small_4187936_right_encoded small_4187936_right_checked

theorem cover_4187936 : CoveredBy scale carrier boxes root_4187936 := by
  apply coveredBy_split_literal root_4187936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187941 small_4187936_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187941
  · exact small_4187936_right_covered
#print axioms cover_4187936

def root_4187935 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187935_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187935_right_fuel : Nat := 27
def small_4187935_right_count : Nat := 333
def small_4187935_right_encoded : String := "120701060000000308A913091207010800000004050000FA135D81050CFD9C010F34D0F60CFD9BF90F350D02045489FD1386AD0604548A091386710800000004000000070000000900000003138671060000000304548A090000000700000009000000010F34D10200000001045489FD1386AD0604548A091386710800000004000000071386AD08000000060000000400000003138671060000000304548A09000000071386AD08078000FA000000060000000600000004000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD0604548A0913867108000000040C9A86F60F878D010C9A87020F8750F900000009000000010F878CF900000001078000FA128A7D05067ECE7D12EA9506022A4589000000070000000900000003000000070000000200000007000000000F875101000000000C9A87020F8750F9078000FA128A7D05067ECE7D12EA9506022A458913E1C5080000000400000007000000090000000312EA590600000003022A4589000000070000000800000002128A410500000002067ECE7D0000000700000007000000010F878CF900000001078000FA128A7D05067ECE7D12EA9506022A458913E1C508000000040B4D43F6000000070000000513E201080B4D43F610804D010DE7CA0200000008000000050000000000000005000000040000000312EA5906000000030000000500000002000000051386AD080C9A86F60F878D0100000009000000000F875101000000000C9A87020F8750F900000009000000010F878CF900000001078000FA128A7D050000000800000002000000050000000400000003138671060000000304548A0913867108000000040C9A86F60F878D010C9A8702000000070F878CF90000000100000007000000000F875101000000000C9A87020F8750F9078000FA128A7D05022A457D0000000700000007000000020000000500000001000000051386AD080C9A86F60F878D0100000009000000000F875101000000000C9A8702000000080000000500000004000000010F34D10200000001045489FD1386AD0604548A0913867108000000040C9A86F60F878D01078000FA128A7D050AD3577910D13D02067ECE7D12EA95060000000600000003000000060000000100000006000000020000000500000000000000051386AD080C9A86F60F878D01078000FA128A7D050AD3577910D13D0200000006000000010000000600000002000000050000000000000005000000040000000313867106000000030000000500000002135D4505000000020CFD9C010F34D0F60CFD9BF90F350D02045489FD00000007000000070000000100000007000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD0604548A0913867108000000040C9A86F600000007000000051386AD080C9A86F600000009000000050000000400000003138671060000000304548A090000000700000005000000010F34D102000000010000000512073D08050000FA135D81050CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD060CFD9C090F34D10800000004000000090000000900000003138671060000000300000009000000010F34D10200000001045489FD1386AD060CFD9C090F34D108000000040C9A86F60F878D01000000060000000000000005000000080000000313867106000000030000000800000002135D4505000000020CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BF90F350D02045489FD00000009138671060000000300000009000000010F34D10200000001045489FD000000060000000500000004"
theorem small_4187935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187935_right_root small_4187935_right_fuel small_4187935_right_count small_4187935_right_encoded = true := by
  decide +kernel
theorem small_4187935_right_covered : CoveredBy scale carrier boxes small_4187935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187935_right_root small_4187935_right_fuel small_4187935_right_count small_4187935_right_encoded small_4187935_right_checked

theorem cover_4187935 : CoveredBy scale carrier boxes root_4187935 := by
  apply coveredBy_split_literal root_4187935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187936 small_4187935_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187936
  · exact small_4187935_right_covered
#print axioms cover_4187935

def root_4187930 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187930_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187930_right_fuel : Nat := 1
def small_4187930_right_count : Nat := 1
def small_4187930_right_encoded : String := "00000001"
theorem small_4187930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187930_right_root small_4187930_right_fuel small_4187930_right_count small_4187930_right_encoded = true := by
  decide +kernel
theorem small_4187930_right_covered : CoveredBy scale carrier boxes small_4187930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187930_right_root small_4187930_right_fuel small_4187930_right_count small_4187930_right_encoded small_4187930_right_checked

theorem cover_4187930 : CoveredBy scale carrier boxes root_4187930 := by
  apply coveredBy_split_literal root_4187930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187935 small_4187930_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187935
  · exact small_4187930_right_covered
#print axioms cover_4187930

def root_4187929 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187929_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187929_right_fuel : Nat := 19
def small_4187929_right_count : Nat := 73
def small_4187929_right_encoded : String := "120701020000000108A912FD12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D0F600000006000000000F350CF600000000045489F91386AD020CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000060F875101000000000C9A870600000006000000060000000600000003000000060000000113867102000000010CFD9BFD0F350D06000000060000000300000006000000020000000612073D08050000FA00000006000000060000000400000003120701060000000308A913091207010800000004050000FA135D81050CFD9C01000000060F350CF60000000000000005000000020000000512073D08050000FA135D81050CFD9C01000000060F350CF60000000000000006000000020000000600000004"
theorem small_4187929_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187929_right_root small_4187929_right_fuel small_4187929_right_count small_4187929_right_encoded = true := by
  decide +kernel
theorem small_4187929_right_covered : CoveredBy scale carrier boxes small_4187929_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187929_right_root small_4187929_right_fuel small_4187929_right_count small_4187929_right_encoded small_4187929_right_checked

theorem cover_4187929 : CoveredBy scale carrier boxes root_4187929 := by
  apply coveredBy_split_literal root_4187929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187930 small_4187929_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187930
  · exact small_4187929_right_covered
#print axioms cover_4187929

def root_4187923 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187923_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187923_left_fuel : Nat := 1
def small_4187923_left_count : Nat := 1
def small_4187923_left_encoded : String := "00000000"
theorem small_4187923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187923_left_root small_4187923_left_fuel small_4187923_left_count small_4187923_left_encoded = true := by
  decide +kernel
theorem small_4187923_left_covered : CoveredBy scale carrier boxes small_4187923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187923_left_root small_4187923_left_fuel small_4187923_left_count small_4187923_left_encoded small_4187923_left_checked

theorem cover_4187923 : CoveredBy scale carrier boxes root_4187923 := by
  apply coveredBy_split_literal root_4187923 small_4187923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187929 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4187923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187929
#print axioms cover_4187923

def root_4187717 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187717_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187717_left_fuel : Nat := 16
def small_4187717_left_count : Nat := 97
def small_4187717_left_encoded : String := "120700F608A912F912073D0208A912FD12073D0608A913091207010800000004050000FA135D810504548A01138670F60CFD9BF90F350D02000000090000000100000006000000001386ACF6000000000CFD9BF90F350D020CFD9BFD000000090F34D1060000000300000009000000010F34D102000000010000000600000002135D45050000000204548A01000000061386ACF6000000000CFD9BF90F350D0200000009000000010000000612073D08050000FA135D810504548A01000000091386ACF6000000000CFD9BF9000000090000000900000002135D45050000000204548A0100000006000000090000000400000003120701060000000308A913091207010800000004050000FA135D810504548A01000000071386ACF6000000000CFD9BF9000000090F34D10200000001045489FD000000060000000600000002000000070000000900000001120701020000000108A912FD12073D060000000600000003120701060000000308A913090000000612073D08000000060000000400000000"
theorem small_4187717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187717_left_root small_4187717_left_fuel small_4187717_left_count small_4187717_left_encoded = true := by
  decide +kernel
theorem small_4187717_left_covered : CoveredBy scale carrier boxes small_4187717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187717_left_root small_4187717_left_fuel small_4187717_left_count small_4187717_left_encoded small_4187717_left_checked

theorem cover_4187717 : CoveredBy scale carrier boxes root_4187717 := by
  apply coveredBy_split_literal root_4187717 small_4187717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187923 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4187717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187923
#print axioms cover_4187717

def root_4187712 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187712_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187712_right_fuel : Nat := 1
def small_4187712_right_count : Nat := 1
def small_4187712_right_encoded : String := "00000004"
theorem small_4187712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187712_right_root small_4187712_right_fuel small_4187712_right_count small_4187712_right_encoded = true := by
  decide +kernel
theorem small_4187712_right_covered : CoveredBy scale carrier boxes small_4187712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187712_right_root small_4187712_right_fuel small_4187712_right_count small_4187712_right_encoded small_4187712_right_checked

theorem cover_4187712 : CoveredBy scale carrier boxes root_4187712 := by
  apply coveredBy_split_literal root_4187712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187717 small_4187712_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187717
  · exact small_4187712_right_covered
#print axioms cover_4187712

def root_4187636 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187636_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187636_left_fuel : Nat := 14
def small_4187636_left_count : Nat := 35
def small_4187636_left_encoded : String := "1151E9090000000408A91301120700F608A912F900000009000000060000000012073CF60000000008A912F912073D0208A912FD12073D06050000FA135D81050500010800000006135D81090CFD9C01000000060F350CF600000000000000060000000400000002000000060000000312070106000000030000000900000001120701020000000100000006"
theorem small_4187636_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187636_left_root small_4187636_left_fuel small_4187636_left_count small_4187636_left_encoded = true := by
  decide +kernel
theorem small_4187636_left_covered : CoveredBy scale carrier boxes small_4187636_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187636_left_root small_4187636_left_fuel small_4187636_left_count small_4187636_left_encoded small_4187636_left_checked

theorem cover_4187636 : CoveredBy scale carrier boxes root_4187636 := by
  apply coveredBy_split_literal root_4187636 small_4187636_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187712 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4187636_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187712
#print axioms cover_4187636

def root_4187630 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187630_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187630_left_fuel : Nat := 1
def small_4187630_left_count : Nat := 1
def small_4187630_left_encoded : String := "00000003"
theorem small_4187630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187630_left_root small_4187630_left_fuel small_4187630_left_count small_4187630_left_encoded = true := by
  decide +kernel
theorem small_4187630_left_covered : CoveredBy scale carrier boxes small_4187630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187630_left_root small_4187630_left_fuel small_4187630_left_count small_4187630_left_encoded small_4187630_left_checked

theorem cover_4187630 : CoveredBy scale carrier boxes root_4187630 := by
  apply coveredBy_split_literal root_4187630 small_4187630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187636 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4187630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187636
#print axioms cover_4187630

def root_4187248 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187248_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187248_left_fuel : Nat := 25
def small_4187248_left_count : Nat := 181
def small_4187248_left_encoded : String := "1151E8FD0A0001081151E90900000004000000061152250908A91301120700F608A912F912073D0208A9130912070108000000040000000600000006000000011207010200000001000000060000000012073CF60000000008A912F912073D0208A913091207010800000004050000FA135D810505000106135D44FD0CFD9C01000000080F350CF6000000000CFD9BF9000000080F34D102000000010000000800000003135D80FD000000030CFD9C010F34D0F60CFD9BF9000000080F34D1020000000100000006000000000F350CF6000000000CFD9BF90F350D0204548A0913867108000000040C9A86F6000000050F875101000000000C9A870200000005000000081386AD080C9A86F60F878D0100000005000000000F875101000000000C9A87020000000A0F878CF900000001078000FA0000000A0000000600000004000000010F34D1020000000104548A091386710800000004000000080000000600000002135D45050000000205000106135D44FD0CFD9C01000000060F350CF6000000000CFD9BF9000000060000000600000003135D80FD000000030CFD9C01000000060F350CF6000000000CFD9BF90F350D0204548A0913867108000000040000000800000006000000010F34D102000000010000000612073D08050000FA135D810505000106135D44FD0CFD9C01000000060F350CF6000000000CFD9BF9000000060000000600000003135D80FD000000030CFD9C01000000060F350CF6000000000CFD9BF90F350D020CFD9C090F34D108000000040C9A86F6000000060F875101000000000C9A87020000000A0000000600000006000000010F34D102000000010000000600000002000000060000000400000001120701020000000108A913091207010800000004050000FA135D81050500010600000006135D80FD000000030CFD9C01000000060F350CF600000000045489F900000006000000060000000200000006000000060000000400000003"
theorem small_4187248_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187248_left_root small_4187248_left_fuel small_4187248_left_count small_4187248_left_encoded = true := by
  decide +kernel
theorem small_4187248_left_covered : CoveredBy scale carrier boxes small_4187248_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187248_left_root small_4187248_left_fuel small_4187248_left_count small_4187248_left_encoded small_4187248_left_checked

theorem cover_4187248 : CoveredBy scale carrier boxes root_4187248 := by
  apply coveredBy_split_literal root_4187248 small_4187248_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187630 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4187248_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187630
#print axioms cover_4187248

def root_4187242 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187242_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187242_left_fuel : Nat := 1
def small_4187242_left_count : Nat := 1
def small_4187242_left_encoded : String := "00000002"
theorem small_4187242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187242_left_root small_4187242_left_fuel small_4187242_left_count small_4187242_left_encoded = true := by
  decide +kernel
theorem small_4187242_left_covered : CoveredBy scale carrier boxes small_4187242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187242_left_root small_4187242_left_fuel small_4187242_left_count small_4187242_left_encoded small_4187242_left_checked

theorem cover_4187242 : CoveredBy scale carrier boxes root_4187242 := by
  apply coveredBy_split_literal root_4187242 small_4187242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187248 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4187242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187248
#print axioms cover_4187242

def root_4167044 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4167044 : CoveredBy scale carrier boxes root_4167044 := by
  apply coveredBy_split_literal root_4167044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4167045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4187242 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4167045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4187242
#print axioms cover_4167044

def root_4167038 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167038_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167038_left_fuel : Nat := 1
def small_4167038_left_count : Nat := 1
def small_4167038_left_encoded : String := "00000001"
theorem small_4167038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167038_left_root small_4167038_left_fuel small_4167038_left_count small_4167038_left_encoded = true := by
  decide +kernel
theorem small_4167038_left_covered : CoveredBy scale carrier boxes small_4167038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167038_left_root small_4167038_left_fuel small_4167038_left_count small_4167038_left_encoded small_4167038_left_checked

theorem cover_4167038 : CoveredBy scale carrier boxes root_4167038 := by
  apply coveredBy_split_literal root_4167038 small_4167038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.root_4167044 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4167038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303.cover_4167044
#print axioms cover_4167038

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0303

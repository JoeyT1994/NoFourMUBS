import TaoBundleAssembly0574
import TaoBundleAssembly0578
import TaoBundleAssembly0580
import TaoBundleChunkBatch0788
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581
def root_8431670 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431670_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431670_left_fuel : Nat := 37
def small_8431670_left_count : Nat := 319
def small_8431670_left_encoded : String := "0F34D100000000000CFD9C050F34D1040000000204548A091386710800000004000000051386AD08078000F8128A7CF900000001078000FC0000000A0000000500000005000000040F350D0404548A0913867108000000040C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD000000030AD3578110D1010000000000022A458913E1C508000000040B4D440410801105000000020000000710804D0508C000F80000000800000005000000020000000810D13D00022A458913E1C508000000040B4D4404108011050000000208C000F811FC24F90000000108C000FC0000000711FBE8FD000000080000000311FBE8F9000000070000000110804D0508C000F811FC24F90000000108C000FC11FC24FD000000030BE879C11011710000000000000000070000000711FBE8FD000000080000000311FBE8F908C000FC11FC24FD000000030000000700000005000000010000000213E201080B4D44040000000710804D0508C000F811FC24F9000000010000000811FBE8F908C000FC000000070000000800000001000000020000000400000000128A40FD0AD3578110D10100000000000000000810D13D00022A458913E1C508000000040B4D44040000000800000005000000080000000000000003128A40F9078000FC128A7CFD000000030AD3578110D1010000000000022A4589000000050000000710D13D00022A458913E1C508000000040B4D44040000000700000005000000070000000000000005000000010F878D05078000F8128A7CF900000001078000FC128A7CFD000000030AD3578110D10100000000000000000510D13D00022A458913E1C508000000040DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC11FC24FD000000030BE879C110117100000000000115234913F859080000000400000005000000081011AD000115234913F85908000000040D4128840EFA110500000002096000F811AABCF900000001096000FC11AABCFD00000003000000070000000811AA80F9096000FC0000000700000005000000010EFA4D05096000F811AABCF900000001096000FC11AABCFD000000030C730AE1000000080FA74500008A922913FDF908000000040D9479440000000800000005000000080000000000000005000000050000000213F895080D412884000000080EFA4D050000000800000002000000040000000000000005000000050000000513E201080DE7CA040E5FD9050000000208C000F811FC24F9000000010000000811FBE8F908C000FC11FC24FD000000030BE879C1000000080000000700000005000000010E60150508C000F811FC24F90000000108C000FC11FC24FD000000030000000800000005000000050000000200000004000000000000000500000005000000021386AD080C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD000000030AD35781000000080000000800000008128A40F9078000FC128A7CFD000000030AD3578110D1010000000000000000070000000700000008000000010F878D05078000F8128A7CF900000001078000FC128A7CFD000000030AD357810000000810D13D00067ECE8912EA59080000000400000008000000080000000000000008128A40F9078000FC128A7CFD000000030AD3578110D10100000000000000000510D13D00067ECE8912EA5908000000040000000500000006000000000000000500000001000000020000000400000002"
theorem small_8431670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431670_left_root small_8431670_left_fuel small_8431670_left_count small_8431670_left_encoded = true := by
  decide +kernel
theorem small_8431670_left_covered : CoveredBy scale carrier boxes small_8431670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431670_left_root small_8431670_left_fuel small_8431670_left_count small_8431670_left_encoded small_8431670_left_checked

theorem cover_8431670 : CoveredBy scale carrier boxes root_8431670 := by
  apply coveredBy_split_literal root_8431670 small_8431670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8432346 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8431670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8432346
#print axioms cover_8431670

def root_8431664 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431664_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431664_left_fuel : Nat := 1
def small_8431664_left_count : Nat := 1
def small_8431664_left_encoded : String := "00000003"
theorem small_8431664_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431664_left_root small_8431664_left_fuel small_8431664_left_count small_8431664_left_encoded = true := by
  decide +kernel
theorem small_8431664_left_covered : CoveredBy scale carrier boxes small_8431664_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431664_left_root small_8431664_left_fuel small_8431664_left_count small_8431664_left_encoded small_8431664_left_checked

theorem cover_8431664 : CoveredBy scale carrier boxes root_8431664 := by
  apply coveredBy_split_literal root_8431664 small_8431664_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431670 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8431664_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431670
#print axioms cover_8431664

def root_8431663 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431663_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431663_right_fuel : Nat := 23
def small_8431663_right_count : Nat := 225
def small_8431663_right_encoded : String := "135D44FD0CFD9C010F34D100000000000CFD9C050F34D10400000002000000050F350D0404548A0913867108000000040000000500000008000000020F350D000CFD9C050F34D1040000000204548A091386710800000004000000051386AD080C9A87000F87510100000000078000F8128A7CF900000001028000FC13D7ECFD000000030AD3578510D10104000000020000000500000009000000050000000500000005000000040F350D0404548A0913867108000000040C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001028000FC13D7ECFD00000003022A458913E1C508000000040B4D44000000000910804D010B4D440410801105000000020000000900000009000000000000000913D7B0FD022A458913E1C50800000004000000090000000800000003128A40F9028000FC13D7ECFD00000003022A458913E1C508000000040B4D440010801101000000000B4D44040000000A10804D050000000A0000000210804D010B4D440410801105000000020000000A000000050000000013E201080B4D440010801101000000000B4D44041080110500000002000000090000000910804D010B4D44041080110500000002064000F8000000080000000500000005000000000000000400000005000000010F878D05078000F8128A7CF900000001028000FC13D7ECFD00000003022A458913E1C508000000040B4D44000000000910804D010DE7CA040E5FD90500000002000000090000000500000000000000090000000500000005000000020F878D010C9A87040F87510500000002078000F8128A7CF900000001028000FC13D7ECFD00000003022A458913E1C508000000040DE7CA000E5FD901000000000B4D44040000000810804D0508C000F80000000800000005000000020000000800000008000000050000000500000005000000001386AD080C9A87000F875101000000000C9A87040F87510500000002078000F800000009128A40F9028000FC13D7ECFD00000003067ECE8912EA5908000000040B4D440000000009000000080000000800000008000000010F878D05078000F800000009128A40F9028000FC13D7ECFD00000003067ECE8912EA5908000000040000000512EA950800000008000000040000000500000001000000020F878D010C9A8704000000080F878D05078000F80000000800000005000000020000000000000004000000020000000000000003"
theorem small_8431663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431663_right_root small_8431663_right_fuel small_8431663_right_count small_8431663_right_encoded = true := by
  decide +kernel
theorem small_8431663_right_covered : CoveredBy scale carrier boxes small_8431663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431663_right_root small_8431663_right_fuel small_8431663_right_count small_8431663_right_encoded small_8431663_right_checked

theorem cover_8431663 : CoveredBy scale carrier boxes root_8431663 := by
  apply coveredBy_split_literal root_8431663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431664 small_8431663_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431664
  · exact small_8431663_right_covered
#print axioms cover_8431663

def root_8431657 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431657_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431657_left_fuel : Nat := 1
def small_8431657_left_count : Nat := 1
def small_8431657_left_encoded : String := "00000001"
theorem small_8431657_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431657_left_root small_8431657_left_fuel small_8431657_left_count small_8431657_left_encoded = true := by
  decide +kernel
theorem small_8431657_left_covered : CoveredBy scale carrier boxes small_8431657_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431657_left_root small_8431657_left_fuel small_8431657_left_count small_8431657_left_encoded small_8431657_left_checked

theorem cover_8431657 : CoveredBy scale carrier boxes root_8431657 := by
  apply coveredBy_split_literal root_8431657 small_8431657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431663 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8431657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431663
#print axioms cover_8431657

def root_8431656 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431656_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431656_right_fuel : Nat := 27
def small_8431656_right_count : Nat := 313
def small_8431656_right_encoded : String := "135D44F9050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C050F34D10400000002000000050F350D0404548A091386710800000004000000051386AD080C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD000000030AD3578110D1010000000000000000050000000700000005000000050000000500000004000000020F350D000CFD9C050F34D1040000000204548A09138671080000000400000005000000060F350D0404548A0913867108000000040C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD00000003022A458913E1C508000000040B4D440010801101000000000B4D44040000000710804D0500000007000000020000000700000007128A40FD022A458913E1C508000000040B4D440010801101000000000B4D44040000000A10804D050000000A0000000210804D010B4D440410801105000000020000000A000000050000000013E201080B4D440010801101000000000B4D440410801105000000020000000710804D0503C000F813A54CF900000001064000FC0000000600000005000000050000000210804D010B4D4404000000070000000500000000000000040000000313D7B0F9078000FC128A7CFD00000003022A458913E1C50800000004000000070000000600000005000000010F878D05028000F813D7ECF900000001078000FC128A7CFD00000003022A458913E1C508000000040B4D440010801101000000000DE7CA040E5FD90500000002000000060000000610804D010DE7CA040E5FD9050000000203C000F813A54CF90000000108C000FC0000000600000005000000050000000500000000000000060000000500000005000000020F878D010C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD00000003022A458913E1C508000000040DE7CA000E5FD90100000000000000070000000700000007000000050000000500000005000000001386AD080C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001078000FC00000007128A40FD067ECE8912EA5908000000040B4D440010801101000000000B4D4404000000070000000610804D010B4D4404000000070000000500000000000000060000000313D7B0F900000006000000010F878D0500000006000000020F878D010C9A87040F87510500000002028000F813D7ECF900000001078000FC00000007128A40FD067ECE8912EA5908000000040000000512EA950800000006000000040000000313D7B0F9078000FC0000000600000005000000010F878D05028000F813D7ECF900000001078000FC0000000600000005000000050000000200000000000000040000000200000000135D44FD0CFD9C010F34D10000000000000000050F350D000CFD9C050F34D10400000002000000050F350D0404548A091386710800000004000000051386AD080C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001028000FC13D7ECFD00000003067ECE8912EA5908000000040B4D440010801101000000000B4D4404108011050000000203C000F80000000900000005000000050000000512EA95080B4D4400000000060000000500000004000000050000000500000005000000050000000400000002000000000000000300000001"
theorem small_8431656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431656_right_root small_8431656_right_fuel small_8431656_right_count small_8431656_right_encoded = true := by
  decide +kernel
theorem small_8431656_right_covered : CoveredBy scale carrier boxes small_8431656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431656_right_root small_8431656_right_fuel small_8431656_right_count small_8431656_right_encoded small_8431656_right_checked

theorem cover_8431656 : CoveredBy scale carrier boxes root_8431656 := by
  apply coveredBy_split_literal root_8431656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431657 small_8431656_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431657
  · exact small_8431656_right_covered
#print axioms cover_8431656

def root_8431650 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431650_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431650_left_fuel : Nat := 1
def small_8431650_left_count : Nat := 1
def small_8431650_left_encoded : String := "00000004"
theorem small_8431650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431650_left_root small_8431650_left_fuel small_8431650_left_count small_8431650_left_encoded = true := by
  decide +kernel
theorem small_8431650_left_covered : CoveredBy scale carrier boxes small_8431650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431650_left_root small_8431650_left_fuel small_8431650_left_count small_8431650_left_encoded small_8431650_left_checked

theorem cover_8431650 : CoveredBy scale carrier boxes root_8431650 := by
  apply coveredBy_split_literal root_8431650 small_8431650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431656 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8431650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431656
#print axioms cover_8431650

def root_8431649 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431649_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431649_right_fuel : Nat := 23
def small_8431649_right_count : Nat := 235
def small_8431649_right_encoded : String := "12073D08050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C050F34D104000000020000000A0F350D040CFD9C090F34D108000000040C9A8704000000080F878D05000000080000000200000008000000020F350D000CFD9C050F34D104000000020CFD9C090F34D108000000040C9A8700000000060F878D010000000600000000000000060F350D040CFD9C090F34D108000000040C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD000000030AD3578910D10108000000040B4D440000000005000000070000000600000008128A40F9078000FC00000006128A40FD0AD3578910D1010800000004000000060000000600000003000000010F878D05078000F8128A7CF900000001078000FC00000006128A40FD000000080000000300000006000000020F878D010C9A87040F87510500000002078000F800000008128A40F9078000FC128A7CFD000000030000000600000008000000010F878D05078000F8128A7CF900000001000000080000000600000002000000000F350D080C9A87000F875101000000000C9A87040F875105000000020C9A87080000000600000006000000060F878D010000000800000000000000040000000200000000135D44FD0CFD9C010F34D10000000000000000080F350D000CFD9C050F34D104000000020CFD9C090F34D108000000040C9A87000F875101000000000000000800000008000000080F350D040CFD9C090F34D108000000040C9A87000F875101000000000C9A8704000000080F878D0500000008000000020000000800000008000000020000000000000003135D44F9050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C050F34D10400000002000000060F350D040CFD9C090F34D108000000040C9A87040F87510500000002000000060000000600000006000000020F350D000CFD9C050F34D10400000002000000060F350D040CFD9C090F34D108000000040C9A8700000000060F878D010000000600000000000000060000000200000000135D44FD0CFD9C010F34D100000000000CFD9C05000000080F350D0400000008000000020F350D000CFD9C050F34D10400000002000000060F350D040CFD9C090F34D108000000040C9A87000F875101000000000C9A87040F87510500000002028000F80000000800000006000000060F878D0100000008000000000F350D0800000006000000040000000200000000000000030000000100000004"
theorem small_8431649_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431649_right_root small_8431649_right_fuel small_8431649_right_count small_8431649_right_encoded = true := by
  decide +kernel
theorem small_8431649_right_covered : CoveredBy scale carrier boxes small_8431649_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431649_right_root small_8431649_right_fuel small_8431649_right_count small_8431649_right_encoded small_8431649_right_checked

theorem cover_8431649 : CoveredBy scale carrier boxes root_8431649 := by
  apply coveredBy_split_literal root_8431649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431650 small_8431649_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431650
  · exact small_8431649_right_covered
#print axioms cover_8431649

def root_8431644 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431644_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431644_right_fuel : Nat := 1
def small_8431644_right_count : Nat := 1
def small_8431644_right_encoded : String := "00000002"
theorem small_8431644_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431644_right_root small_8431644_right_fuel small_8431644_right_count small_8431644_right_encoded = true := by
  decide +kernel
theorem small_8431644_right_covered : CoveredBy scale carrier boxes small_8431644_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431644_right_root small_8431644_right_fuel small_8431644_right_count small_8431644_right_encoded small_8431644_right_checked

theorem cover_8431644 : CoveredBy scale carrier boxes root_8431644 := by
  apply coveredBy_split_literal root_8431644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431649 small_8431644_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431649
  · exact small_8431644_right_covered
#print axioms cover_8431644

def root_8431446 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431446_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431446_left_fuel : Nat := 21
def small_8431446_left_count : Nat := 93
def small_8431446_left_encoded : String := "120701040000000208A913091207010800000004050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D10000000000000000050F350D0004548A05138671040000000204548A09138671080000000400000005000000061386AD0404548A0913867108000000040C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8500000006000000060000000500000005000000051386AD080C9A8700000000060F878D010000000600000000000000040000000200000000000000050000000512073D08050000F8135D80F900000001050000FC135D80FD000000030CFD9C01000000060F350D0004548A05000000060000000600000000135D44FD0CFD9C010F34D10000000000000000080F350D0004548A051386710400000002000000061386AD040CFD9C090F34D108000000040000000600000006000000020000000000000003135D44F9050000FC00000006000000060000000100000004"
theorem small_8431446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431446_left_root small_8431446_left_fuel small_8431446_left_count small_8431446_left_encoded = true := by
  decide +kernel
theorem small_8431446_left_covered : CoveredBy scale carrier boxes small_8431446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431446_left_root small_8431446_left_fuel small_8431446_left_count small_8431446_left_encoded small_8431446_left_checked

theorem cover_8431446 : CoveredBy scale carrier boxes root_8431446 := by
  apply coveredBy_split_literal root_8431446 small_8431446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431644 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8431446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431644
#print axioms cover_8431446

def root_8431441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431441_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431441_right_fuel : Nat := 1
def small_8431441_right_count : Nat := 1
def small_8431441_right_encoded : String := "00000000"
theorem small_8431441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431441_right_root small_8431441_right_fuel small_8431441_right_count small_8431441_right_encoded = true := by
  decide +kernel
theorem small_8431441_right_covered : CoveredBy scale carrier boxes small_8431441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431441_right_root small_8431441_right_fuel small_8431441_right_count small_8431441_right_encoded small_8431441_right_checked

theorem cover_8431441 : CoveredBy scale carrier boxes root_8431441 := by
  apply coveredBy_split_literal root_8431441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431446 small_8431441_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431446
  · exact small_8431441_right_covered
#print axioms cover_8431441

def root_8431191 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431191_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431191_left_fuel : Nat := 23
def small_8431191_left_count : Nat := 117
def small_8431191_left_encoded : String := "120701000000000008A91305120701040000000208A9130912070108000000040000000512073D08050000F800000008000000050000000412073D0408A913091207010800000004050000F8135D80F900000001050000FC135D80FD0000000304548A0113867100000000000CFD9C050F34D10400000002000000050F350D0404548A0913867108000000040000000500000008000000021386AD000CFD9C050F34D10400000002000000050F350D0404548A0913867108000000040C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8100000008000000080000000500000005000000051386AD080C9A8704000000080F878D050000000800000002000000040000000200000000000000050000000512073D08050000F8135D80F900000001050000FC135D80FD0000000304548A01000000081386AD000CFD9C05000000080F350D0400000008000000020000000000000008135D44F9050000FC135D80FD0000000304548A0113867100000000000CFD9C05000000060F350D0400000008000000021386AD000CFD9C05000000060F350D040CFD9C090F34D108000000040000000600000006000000020000000000000008000000010000000400000002"
theorem small_8431191_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431191_left_root small_8431191_left_fuel small_8431191_left_count small_8431191_left_encoded = true := by
  decide +kernel
theorem small_8431191_left_covered : CoveredBy scale carrier boxes small_8431191_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431191_left_root small_8431191_left_fuel small_8431191_left_count small_8431191_left_encoded small_8431191_left_checked

theorem cover_8431191 : CoveredBy scale carrier boxes root_8431191 := by
  apply coveredBy_split_literal root_8431191 small_8431191_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431441 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8431191_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431441
#print axioms cover_8431191

def root_8431186 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431186_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431186_right_fuel : Nat := 1
def small_8431186_right_count : Nat := 1
def small_8431186_right_encoded : String := "00000004"
theorem small_8431186_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431186_right_root small_8431186_right_fuel small_8431186_right_count small_8431186_right_encoded = true := by
  decide +kernel
theorem small_8431186_right_covered : CoveredBy scale carrier boxes small_8431186_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431186_right_root small_8431186_right_fuel small_8431186_right_count small_8431186_right_encoded small_8431186_right_checked

theorem cover_8431186 : CoveredBy scale carrier boxes root_8431186 := by
  apply coveredBy_split_literal root_8431186 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431191 small_8431186_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431191
  · exact small_8431186_right_covered
#print axioms cover_8431186

def root_8431104 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431104_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431104_left_fuel : Nat := 14
def small_8431104_left_count : Nat := 37
def small_8431104_left_encoded : String := "1151E9090000000408A9130112070100000000000000000812073D0008A9130512070104000000020000000612073D04050000F8135D80F900000001050000FC135D80FD0000000305000108135D45090000000400000006135D81090CFD9C01000000060F350D0000000006000000000000000400000008135D44F9050000FC0000000600000006000000010000000200000000"
theorem small_8431104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431104_left_root small_8431104_left_fuel small_8431104_left_count small_8431104_left_encoded = true := by
  decide +kernel
theorem small_8431104_left_covered : CoveredBy scale carrier boxes small_8431104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431104_left_root small_8431104_left_fuel small_8431104_left_count small_8431104_left_encoded small_8431104_left_checked

theorem cover_8431104 : CoveredBy scale carrier boxes root_8431104 := by
  apply coveredBy_split_literal root_8431104 small_8431104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431186 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8431104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431186
#print axioms cover_8431104

def root_8431099 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431099_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8431099_right_fuel : Nat := 1
def small_8431099_right_count : Nat := 1
def small_8431099_right_encoded : String := "00000003"
theorem small_8431099_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8431099_right_root small_8431099_right_fuel small_8431099_right_count small_8431099_right_encoded = true := by
  decide +kernel
theorem small_8431099_right_covered : CoveredBy scale carrier boxes small_8431099_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8431099_right_root small_8431099_right_fuel small_8431099_right_count small_8431099_right_encoded small_8431099_right_checked

theorem cover_8431099 : CoveredBy scale carrier boxes root_8431099 := by
  apply coveredBy_split_literal root_8431099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431104 small_8431099_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431104
  · exact small_8431099_right_covered
#print axioms cover_8431099

def root_8426691 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8426691 : CoveredBy scale carrier boxes root_8426691 := by
  apply coveredBy_split_literal root_8426691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8426692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8431099 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8426692
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8431099
#print axioms cover_8426691

def root_8426686 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426686_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426686_right_fuel : Nat := 1
def small_8426686_right_count : Nat := 1
def small_8426686_right_encoded : String := "00000002"
theorem small_8426686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8426686_right_root small_8426686_right_fuel small_8426686_right_count small_8426686_right_encoded = true := by
  decide +kernel
theorem small_8426686_right_covered : CoveredBy scale carrier boxes small_8426686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8426686_right_root small_8426686_right_fuel small_8426686_right_count small_8426686_right_encoded small_8426686_right_checked

theorem cover_8426686 : CoveredBy scale carrier boxes root_8426686 := by
  apply coveredBy_split_literal root_8426686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8426691 small_8426686_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8426691
  · exact small_8426686_right_covered
#print axioms cover_8426686

def root_8423862 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8423862 : CoveredBy scale carrier boxes root_8423862 := by
  apply coveredBy_split_literal root_8423862 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3151.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8426686 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3151.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8426686
#print axioms cover_8423862

def root_8423857 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8423857_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8423857_right_fuel : Nat := 1
def small_8423857_right_count : Nat := 1
def small_8423857_right_encoded : String := "00000001"
theorem small_8423857_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8423857_right_root small_8423857_right_fuel small_8423857_right_count small_8423857_right_encoded = true := by
  decide +kernel
theorem small_8423857_right_covered : CoveredBy scale carrier boxes small_8423857_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8423857_right_root small_8423857_right_fuel small_8423857_right_count small_8423857_right_encoded small_8423857_right_checked

theorem cover_8423857 : CoveredBy scale carrier boxes root_8423857 := by
  apply coveredBy_split_literal root_8423857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8423862 small_8423857_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8423862
  · exact small_8423857_right_covered
#print axioms cover_8423857

def root_8406373 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8406373 : CoveredBy scale carrier boxes root_8406373 := by
  apply coveredBy_split_literal root_8406373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8406374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8423857 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8406374
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8423857
#print axioms cover_8406373

def root_8406368 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8406368_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8406368_right_fuel : Nat := 1
def small_8406368_right_count : Nat := 1
def small_8406368_right_encoded : String := "00000000"
theorem small_8406368_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8406368_right_root small_8406368_right_fuel small_8406368_right_count small_8406368_right_encoded = true := by
  decide +kernel
theorem small_8406368_right_covered : CoveredBy scale carrier boxes small_8406368_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8406368_right_root small_8406368_right_fuel small_8406368_right_count small_8406368_right_encoded small_8406368_right_checked

theorem cover_8406368 : CoveredBy scale carrier boxes root_8406368 := by
  apply coveredBy_split_literal root_8406368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8406373 small_8406368_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8406373
  · exact small_8406368_right_covered
#print axioms cover_8406368

def root_8397346 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8397346 : CoveredBy scale carrier boxes root_8397346 := by
  apply coveredBy_split_literal root_8397346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8397347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8406368 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8397347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8406368
#print axioms cover_8397346

def root_8357700 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8357700 : CoveredBy scale carrier boxes root_8357700 := by
  apply coveredBy_split_literal root_8357700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8357701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8397346 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8357701
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8397346
#print axioms cover_8357700

def root_8302614 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8302614 : CoveredBy scale carrier boxes root_8302614 := by
  apply coveredBy_split_literal root_8302614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.root_8302615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8357700 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.cover_8302615
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8357700
#print axioms cover_8302614

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581

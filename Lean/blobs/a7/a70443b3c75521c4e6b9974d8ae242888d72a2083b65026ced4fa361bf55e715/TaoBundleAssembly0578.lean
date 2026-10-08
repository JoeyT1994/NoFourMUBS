import TaoBundleAssembly0574
import TaoBundleAssembly0576
import TaoBundleAssembly0577
import TaoBundleChunkBatch0785
import TaoBundleChunkBatch0786
import TaoBundleChunkBatch0787
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578
def root_8391887 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391887_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391887_left_fuel : Nat := 32
def small_8391887_left_count : Nat := 237
def small_8391887_left_encoded : String := "0F34D100000000000CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD0000000300000009128A40FD0000000600000003000000090F878D05078000F8128A7CF900000001078000FC128A7CFD000000030AD3578100000009000000090000000500000005000000020000000413867108000000040C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD000000030AD3578110D1010000000000022A457F0000000913E1C508000000040B4D44040000000910804D05000000090000000210D13D00022A457F13E201080B4D44040000000910804D0508C000F811FC24F9000000010000000600000009000000020000000413E1C508000000040B4D4404108011050000000208C000F811FC24F90000000108C000FC000000060000000611FBE8F9000000090000000110804D0508C000F811FC24F90000000108C000FC11FC24FD000000030BE879C11011710000000000000000091011AD000115233F0000000613F85908000000040BF3E5840000000710092905096000F811AABCF9000000010000000600000009000000020000000011FBE8FD0BE879C1101171000000000000000006000000060000000311FBE8F908C000FC0000000900000005000000010000000200000000128A40FD0AD3578110D10100000000000000000510D13D00022A457F13E201080B4D440400000006000000050000000413E1C508000000040B4D4404108011050000000208C000F80000000600000005000000050000000000000003128A40F9078000FC128A7CFD000000030AD35781000000090000000900000005000000010F878D05078000F8128A7CF900000001078000FC128A7CFD000000030AD3578110D10100000000000000000510D13D00022A457F13E201080DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC000000090000000500000005000000050000000413E1C508000000040DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC11FC24FD000000030BE879C11011710000000000000000051011AD000115233F0000000913F85908000000040D4128840EFA110500000002096000F811AABCF900000001096000FC0000000911AA80FD0000000600000003000000090EFA4D05096000F811AABCF900000001096000FC11AABCFD0000000300000009000000050000000500000002000000000000000500000005000000050000000000000005000000050000000200000002"
theorem small_8391887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391887_left_root small_8391887_left_fuel small_8391887_left_count small_8391887_left_encoded = true := by
  decide +kernel
theorem small_8391887_left_covered : CoveredBy scale carrier boxes small_8391887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391887_left_root small_8391887_left_fuel small_8391887_left_count small_8391887_left_encoded small_8391887_left_checked

theorem cover_8391887 : CoveredBy scale carrier boxes root_8391887 := by
  apply coveredBy_split_literal root_8391887 small_8391887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0577.root_8392389 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8391887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0577.cover_8392389
#print axioms cover_8391887

def root_8391881 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391881_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391881_left_fuel : Nat := 1
def small_8391881_left_count : Nat := 1
def small_8391881_left_encoded : String := "00000003"
theorem small_8391881_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391881_left_root small_8391881_left_fuel small_8391881_left_count small_8391881_left_encoded = true := by
  decide +kernel
theorem small_8391881_left_covered : CoveredBy scale carrier boxes small_8391881_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391881_left_root small_8391881_left_fuel small_8391881_left_count small_8391881_left_encoded small_8391881_left_checked

theorem cover_8391881 : CoveredBy scale carrier boxes root_8391881 := by
  apply coveredBy_split_literal root_8391881 small_8391881_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391887 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8391881_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391887
#print axioms cover_8391881

def root_8391880 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391880_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391880_right_fuel : Nat := 22
def small_8391880_right_count : Nat := 139
def small_8391880_right_encoded : String := "135D44FD0CFD9C010F34D100000000000CFD9C05000000050F350D04045489FF00000005138671080000000400000005000000020F350D000CFD9C050F34D10400000002045489FF000000051386710800000004000000050F350D04045489FF1386AD080C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001000000060000000A000000070F878D010C9A87040F87510500000002078000F800000006128A40F9000000050000000100000007000000000000000413867108000000040C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001028000FC13D7ECFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A000000000000000A128A40F9028000FC13D7ECFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A0000000000000005000000010F878D05078000F8128A7CF900000001028000FC13D7ECFD00000003022A457F0000000713E1C508000000040B4D44000000000710804D0100000005000000000000000500000005000000020F878D010C9A87040F87510500000002078000F8128A7CF900000001028000FC13D7ECFD00000003022A457F0000000613E1C508000000040DE7CA000E5FD901000000000B4D44040000000610804D0500000005000000020E601501000000050000000000000005000000050000000500000000000000020000000000000003"
theorem small_8391880_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391880_right_root small_8391880_right_fuel small_8391880_right_count small_8391880_right_encoded = true := by
  decide +kernel
theorem small_8391880_right_covered : CoveredBy scale carrier boxes small_8391880_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391880_right_root small_8391880_right_fuel small_8391880_right_count small_8391880_right_encoded small_8391880_right_checked

theorem cover_8391880 : CoveredBy scale carrier boxes root_8391880 := by
  apply coveredBy_split_literal root_8391880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391881 small_8391880_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391881
  · exact small_8391880_right_covered
#print axioms cover_8391880

def root_8391874 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391874_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391874_left_fuel : Nat := 1
def small_8391874_left_count : Nat := 1
def small_8391874_left_encoded : String := "00000001"
theorem small_8391874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391874_left_root small_8391874_left_fuel small_8391874_left_count small_8391874_left_encoded = true := by
  decide +kernel
theorem small_8391874_left_covered : CoveredBy scale carrier boxes small_8391874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391874_left_root small_8391874_left_fuel small_8391874_left_count small_8391874_left_encoded small_8391874_left_checked

theorem cover_8391874 : CoveredBy scale carrier boxes root_8391874 := by
  apply coveredBy_split_literal root_8391874 small_8391874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391880 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8391874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391880
#print axioms cover_8391874

def root_8391873 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391873_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391873_right_fuel : Nat := 22
def small_8391873_right_count : Nat := 179
def small_8391873_right_encoded : String := "135D44F9050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C05000000050F350D04045489FF00000005138671080000000400000005000000020F350D000CFD9C050F34D10400000002045489FF000000051386710800000004000000050F350D04045489FF1386AD080C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001078000FC000000080000000A000000090F878D05028000F813D7ECF900000001078000FC00000008128A40FD000000050000000300000009000000020F878D010C9A8704000000090F878D050000000500000002000000000000000413867108000000040C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A00000000128A40FD022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A000000000000000313D7B0F9078000FC128A7CFD000000030000000A00000005000000010F878D05028000F813D7ECF900000001078000FC128A7CFD00000003022A457F0000000813E1C508000000040B4D440010801101000000000000000810804D0100000005000000000000000500000005000000020F878D010C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD00000003022A457F0000000913E1C508000000040DE7CA000E5FD901000000000000000900000009000000050000000500000005000000000000000200000000135D44FD0CFD9C010F34D10000000000000000050F350D000CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A87000F875101000000000C9A87040F87510500000002028000F80000000A0000000500000005000000050000000413867108000000040000000500000002000000000000000300000001"
theorem small_8391873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391873_right_root small_8391873_right_fuel small_8391873_right_count small_8391873_right_encoded = true := by
  decide +kernel
theorem small_8391873_right_covered : CoveredBy scale carrier boxes small_8391873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391873_right_root small_8391873_right_fuel small_8391873_right_count small_8391873_right_encoded small_8391873_right_checked

theorem cover_8391873 : CoveredBy scale carrier boxes root_8391873 := by
  apply coveredBy_split_literal root_8391873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391874 small_8391873_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391874
  · exact small_8391873_right_covered
#print axioms cover_8391873

def root_8391867 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391867_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391867_left_fuel : Nat := 1
def small_8391867_left_count : Nat := 1
def small_8391867_left_encoded : String := "00000004"
theorem small_8391867_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391867_left_root small_8391867_left_fuel small_8391867_left_count small_8391867_left_encoded = true := by
  decide +kernel
theorem small_8391867_left_covered : CoveredBy scale carrier boxes small_8391867_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391867_left_root small_8391867_left_fuel small_8391867_left_count small_8391867_left_encoded small_8391867_left_checked

theorem cover_8391867 : CoveredBy scale carrier boxes root_8391867 := by
  apply coveredBy_split_literal root_8391867 small_8391867_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391873 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8391867_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391873
#print axioms cover_8391867

def root_8391505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391505_left_fuel : Nat := 18
def small_8391505_left_count : Nat := 169
def small_8391505_left_encoded : String := "12073D08050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFF00000007000000070F350D040CFD9BFF000000090F34D1080000000400000009000000020F350D000CFD9C050F34D104000000020CFD9BFF000000070F34D10800000004000000070F350D040CFD9BFF0F350D080C9A87000000000700000009000000040F34D108000000040C9A87000F875101000000000C9A87040F87510500000002078000F8000000060000000A0F878D05078000F800000007128A40F90000000800000001000000020F878D010C9A87040F87510500000002078000F800000006000000090F878D05078000F8128A7CF900000001000000070000000900000002000000000000000200000000135D44FD0CFD9C010F34D100000000000CFD9C050F34D10400000002000000050F350D040CFD9BFF000000090F34D108000000040C9A87040F875105000000020000000600000005000000020F350D000CFD9C050F34D10400000002000000070F350D040CFD9BFF000000070F34D108000000040C9A87000000000700000007000000020000000000000003135D44F9050000FC135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9C050F34D104000000020CFD9BFF000000070F34D108000000040C9A87000F8751010000000000000008000000050F350D040CFD9BFF000000090F34D108000000040C9A87000F8751010000000000000009000000090000000200000000135D44FD0CFD9C010F34D10000000000000000090F350D000CFD9C050F34D10400000002000000070F350D040CFD9BFF000000070F34D108000000040C9A87000F875101000000000C9A87040000000900000005000000050000000200000000000000030000000100000004"
theorem small_8391505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391505_left_root small_8391505_left_fuel small_8391505_left_count small_8391505_left_encoded = true := by
  decide +kernel
theorem small_8391505_left_covered : CoveredBy scale carrier boxes small_8391505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391505_left_root small_8391505_left_fuel small_8391505_left_count small_8391505_left_encoded small_8391505_left_checked

theorem cover_8391505 : CoveredBy scale carrier boxes root_8391505 := by
  apply coveredBy_split_literal root_8391505 small_8391505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391867 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8391505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391867
#print axioms cover_8391505

def root_8391500 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391500_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391500_right_fuel : Nat := 1
def small_8391500_right_count : Nat := 1
def small_8391500_right_encoded : String := "00000002"
theorem small_8391500_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391500_right_root small_8391500_right_fuel small_8391500_right_count small_8391500_right_encoded = true := by
  decide +kernel
theorem small_8391500_right_covered : CoveredBy scale carrier boxes small_8391500_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391500_right_root small_8391500_right_fuel small_8391500_right_count small_8391500_right_encoded small_8391500_right_checked

theorem cover_8391500 : CoveredBy scale carrier boxes root_8391500 := by
  apply coveredBy_split_literal root_8391500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391505 small_8391500_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391505
  · exact small_8391500_right_covered
#print axioms cover_8391500

def root_8391332 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391332_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391332_left_fuel : Nat := 20
def small_8391332_left_count : Nat := 79
def small_8391332_left_encoded : String := "120701040000000208A912FF12073D08050000F8135D80F900000001050000FC135D80FD000000030CFD9C01000000070F350D00000000070000000000000007135D44F9050000FC135D80FD000000030CFD9C01000000050F350D0004548A05000000051386AD040CFD9BFF000000050F34D108000000040000000500000002000000000000000500000001000000041207010800000004050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D10000000000000000050F350D0004548A051386710400000002000000051386AD04045489FF1386AD080C9A870000000007000000050000000413867108000000040C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD000000030000000700000005000000050000000500000002000000000000000500000005"
theorem small_8391332_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391332_left_root small_8391332_left_fuel small_8391332_left_count small_8391332_left_encoded = true := by
  decide +kernel
theorem small_8391332_left_covered : CoveredBy scale carrier boxes small_8391332_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391332_left_root small_8391332_left_fuel small_8391332_left_count small_8391332_left_encoded small_8391332_left_checked

theorem cover_8391332 : CoveredBy scale carrier boxes root_8391332 := by
  apply coveredBy_split_literal root_8391332 small_8391332_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391500 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8391332_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391500
#print axioms cover_8391332

def root_8391327 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391327_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391327_right_fuel : Nat := 1
def small_8391327_right_count : Nat := 1
def small_8391327_right_encoded : String := "00000000"
theorem small_8391327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391327_right_root small_8391327_right_fuel small_8391327_right_count small_8391327_right_encoded = true := by
  decide +kernel
theorem small_8391327_right_covered : CoveredBy scale carrier boxes small_8391327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391327_right_root small_8391327_right_fuel small_8391327_right_count small_8391327_right_encoded small_8391327_right_checked

theorem cover_8391327 : CoveredBy scale carrier boxes root_8391327 := by
  apply coveredBy_split_literal root_8391327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391332 small_8391327_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391332
  · exact small_8391327_right_covered
#print axioms cover_8391327

def root_8391159 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391159_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391159_left_fuel : Nat := 22
def small_8391159_left_count : Nat := 79
def small_8391159_left_encoded : String := "120701000000000008A9130512070104000000020000000512073D0408A912FF12073D08050000F8135D80F900000001050000FC135D80FD0000000304548A010000000900000009135D44FD04548A01000000051386AD000CFD9C05000000050F350D040CFD9BFF000000050F34D108000000040000000500000002000000000000000300000009000000041207010800000004050000F8135D80F900000001050000FC135D80FD0000000304548A011386710000000000000000051386AD000CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A870400000009000000050000000413867108000000040C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003000000090000000500000005000000050000000200000000000000050000000500000002"
theorem small_8391159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391159_left_root small_8391159_left_fuel small_8391159_left_count small_8391159_left_encoded = true := by
  decide +kernel
theorem small_8391159_left_covered : CoveredBy scale carrier boxes small_8391159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391159_left_root small_8391159_left_fuel small_8391159_left_count small_8391159_left_encoded small_8391159_left_checked

theorem cover_8391159 : CoveredBy scale carrier boxes root_8391159 := by
  apply coveredBy_split_literal root_8391159 small_8391159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391327 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8391159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391327
#print axioms cover_8391159

def root_8391153 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391153_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391153_left_fuel : Nat := 1
def small_8391153_left_count : Nat := 1
def small_8391153_left_encoded : String := "00000004"
theorem small_8391153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391153_left_root small_8391153_left_fuel small_8391153_left_count small_8391153_left_encoded = true := by
  decide +kernel
theorem small_8391153_left_covered : CoveredBy scale carrier boxes small_8391153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391153_left_root small_8391153_left_fuel small_8391153_left_count small_8391153_left_encoded small_8391153_left_checked

theorem cover_8391153 : CoveredBy scale carrier boxes root_8391153 := by
  apply coveredBy_split_literal root_8391153 small_8391153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391159 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8391153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391159
#print axioms cover_8391153

def root_8391107 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391107_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391107_left_fuel : Nat := 9
def small_8391107_left_count : Nat := 21
def small_8391107_left_encoded : String := "1151E8FF08A9130112070100000000000000000912073D0008A9130512070104000000020000000712073D04050000F8135D80F900000001050000FC000000070000000700000009000000020000000000000004"
theorem small_8391107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391107_left_root small_8391107_left_fuel small_8391107_left_count small_8391107_left_encoded = true := by
  decide +kernel
theorem small_8391107_left_covered : CoveredBy scale carrier boxes small_8391107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391107_left_root small_8391107_left_fuel small_8391107_left_count small_8391107_left_encoded small_8391107_left_checked

theorem cover_8391107 : CoveredBy scale carrier boxes root_8391107 := by
  apply coveredBy_split_literal root_8391107 small_8391107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391153 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8391107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391153
#print axioms cover_8391107

def root_8391102 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391102_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391102_right_fuel : Nat := 1
def small_8391102_right_count : Nat := 1
def small_8391102_right_encoded : String := "00000003"
theorem small_8391102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391102_right_root small_8391102_right_fuel small_8391102_right_count small_8391102_right_encoded = true := by
  decide +kernel
theorem small_8391102_right_covered : CoveredBy scale carrier boxes small_8391102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391102_right_root small_8391102_right_fuel small_8391102_right_count small_8391102_right_encoded small_8391102_right_checked

theorem cover_8391102 : CoveredBy scale carrier boxes root_8391102 := by
  apply coveredBy_split_literal root_8391102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391107 small_8391102_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391107
  · exact small_8391102_right_covered
#print axioms cover_8391102

def root_8386480 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8386480 : CoveredBy scale carrier boxes root_8386480 := by
  apply coveredBy_split_literal root_8386480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0577.root_8386481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8391102 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0577.cover_8386481
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8391102
#print axioms cover_8386480

def root_8386475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386475_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386475_right_fuel : Nat := 1
def small_8386475_right_count : Nat := 1
def small_8386475_right_encoded : String := "00000002"
theorem small_8386475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386475_right_root small_8386475_right_fuel small_8386475_right_count small_8386475_right_encoded = true := by
  decide +kernel
theorem small_8386475_right_covered : CoveredBy scale carrier boxes small_8386475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386475_right_root small_8386475_right_fuel small_8386475_right_count small_8386475_right_encoded small_8386475_right_checked

theorem cover_8386475 : CoveredBy scale carrier boxes root_8386475 := by
  apply coveredBy_split_literal root_8386475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8386480 small_8386475_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8386480
  · exact small_8386475_right_covered
#print axioms cover_8386475

def root_8384677 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8384677 : CoveredBy scale carrier boxes root_8384677 := by
  apply coveredBy_split_literal root_8384677 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3139.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8386475 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3139.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8386475
#print axioms cover_8384677

def root_8384672 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8384672_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8384672_right_fuel : Nat := 1
def small_8384672_right_count : Nat := 1
def small_8384672_right_encoded : String := "00000001"
theorem small_8384672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8384672_right_root small_8384672_right_fuel small_8384672_right_count small_8384672_right_encoded = true := by
  decide +kernel
theorem small_8384672_right_covered : CoveredBy scale carrier boxes small_8384672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8384672_right_root small_8384672_right_fuel small_8384672_right_count small_8384672_right_encoded small_8384672_right_checked

theorem cover_8384672 : CoveredBy scale carrier boxes root_8384672 := by
  apply coveredBy_split_literal root_8384672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8384677 small_8384672_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8384677
  · exact small_8384672_right_covered
#print axioms cover_8384672

def root_8361090 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8361090 : CoveredBy scale carrier boxes root_8361090 := by
  apply coveredBy_split_literal root_8361090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8361091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8384672 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8361091
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8384672
#print axioms cover_8361090

def root_8361085 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361085_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361085_right_fuel : Nat := 1
def small_8361085_right_count : Nat := 1
def small_8361085_right_encoded : String := "00000000"
theorem small_8361085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8361085_right_root small_8361085_right_fuel small_8361085_right_count small_8361085_right_encoded = true := by
  decide +kernel
theorem small_8361085_right_covered : CoveredBy scale carrier boxes small_8361085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8361085_right_root small_8361085_right_fuel small_8361085_right_count small_8361085_right_encoded small_8361085_right_checked

theorem cover_8361085 : CoveredBy scale carrier boxes root_8361085 := by
  apply coveredBy_split_literal root_8361085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8361090 small_8361085_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8361090
  · exact small_8361085_right_covered
#print axioms cover_8361085

def root_8357701 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8357701 : CoveredBy scale carrier boxes root_8357701 := by
  apply coveredBy_split_literal root_8357701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.root_8357702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8361085 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.cover_8357702
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8361085
#print axioms cover_8357701

def root_8397360 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8397360 : CoveredBy scale carrier boxes root_8397360 := by
  apply coveredBy_split_literal root_8397360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3142.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3143.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3142.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3143.covered
#print axioms cover_8397360

def root_8397354 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397354_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397354_left_fuel : Nat := 1
def small_8397354_left_count : Nat := 1
def small_8397354_left_encoded : String := "00000001"
theorem small_8397354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8397354_left_root small_8397354_left_fuel small_8397354_left_count small_8397354_left_encoded = true := by
  decide +kernel
theorem small_8397354_left_covered : CoveredBy scale carrier boxes small_8397354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8397354_left_root small_8397354_left_fuel small_8397354_left_count small_8397354_left_encoded small_8397354_left_checked

theorem cover_8397354 : CoveredBy scale carrier boxes root_8397354 := by
  apply coveredBy_split_literal root_8397354 small_8397354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8397360 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8397354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8397360
#print axioms cover_8397354

def root_8402064 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8402064 : CoveredBy scale carrier boxes root_8402064 := by
  apply coveredBy_split_literal root_8402064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3144.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3145.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3144.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3145.covered
#print axioms cover_8402064

def root_8402059 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8402059_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8402059_right_fuel : Nat := 1
def small_8402059_right_count : Nat := 1
def small_8402059_right_encoded : String := "00000001"
theorem small_8402059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8402059_right_root small_8402059_right_fuel small_8402059_right_count small_8402059_right_encoded = true := by
  decide +kernel
theorem small_8402059_right_covered : CoveredBy scale carrier boxes small_8402059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8402059_right_root small_8402059_right_fuel small_8402059_right_count small_8402059_right_encoded small_8402059_right_checked

theorem cover_8402059 : CoveredBy scale carrier boxes root_8402059 := by
  apply coveredBy_split_literal root_8402059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8402064 small_8402059_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8402064
  · exact small_8402059_right_covered
#print axioms cover_8402059

def root_8397353 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8397353 : CoveredBy scale carrier boxes root_8397353 := by
  apply coveredBy_split_literal root_8397353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8397354 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8402059 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8397354
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8402059
#print axioms cover_8397353

def root_8397347 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397347_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397347_left_fuel : Nat := 1
def small_8397347_left_count : Nat := 1
def small_8397347_left_encoded : String := "00000000"
theorem small_8397347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8397347_left_root small_8397347_left_fuel small_8397347_left_count small_8397347_left_encoded = true := by
  decide +kernel
theorem small_8397347_left_covered : CoveredBy scale carrier boxes small_8397347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8397347_left_root small_8397347_left_fuel small_8397347_left_count small_8397347_left_encoded small_8397347_left_checked

theorem cover_8397347 : CoveredBy scale carrier boxes root_8397347 := by
  apply coveredBy_split_literal root_8397347 small_8397347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8397353 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8397347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8397353
#print axioms cover_8397347

def root_8413613 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413613_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413613_right_fuel : Nat := 12
def small_8413613_right_count : Nat := 51
def small_8413613_right_encoded : String := "0F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000050F878D010C9A86FC000000050F8750FD0000000500000003000000001386AD080C9A8700000000050F878D010C9A86FC000000050F8750FD000000090000000300000000000000040F34D0FC00000005000000030F350D040CFD9BFD0F350CFC0000000304548A09000000051386AD080C9A8700000000050F878D010000000500000000000000040F34D0FC00000005000000030000000200000001"
theorem small_8413613_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8413613_right_root small_8413613_right_fuel small_8413613_right_count small_8413613_right_encoded = true := by
  decide +kernel
theorem small_8413613_right_covered : CoveredBy scale carrier boxes small_8413613_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8413613_right_root small_8413613_right_fuel small_8413613_right_count small_8413613_right_encoded small_8413613_right_checked

theorem cover_8413613 : CoveredBy scale carrier boxes root_8413613 := by
  apply coveredBy_split_literal root_8413613 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3148.root small_8413613_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3148.covered
  · exact small_8413613_right_covered
#print axioms cover_8413613

def root_8413608 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413608_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413608_right_fuel : Nat := 1
def small_8413608_right_count : Nat := 1
def small_8413608_right_encoded : String := "00000000"
theorem small_8413608_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8413608_right_root small_8413608_right_fuel small_8413608_right_count small_8413608_right_encoded = true := by
  decide +kernel
theorem small_8413608_right_covered : CoveredBy scale carrier boxes small_8413608_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8413608_right_root small_8413608_right_fuel small_8413608_right_count small_8413608_right_encoded small_8413608_right_checked

theorem cover_8413608 : CoveredBy scale carrier boxes root_8413608 := by
  apply coveredBy_split_literal root_8413608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8413613 small_8413608_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8413613
  · exact small_8413608_right_covered
#print axioms cover_8413608

def root_8411210 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8411210 : CoveredBy scale carrier boxes root_8411210 := by
  apply coveredBy_split_literal root_8411210 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3147.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8413608 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3147.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8413608
#print axioms cover_8411210

def root_8411204 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411204_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411204_left_fuel : Nat := 1
def small_8411204_left_count : Nat := 1
def small_8411204_left_encoded : String := "00000004"
theorem small_8411204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8411204_left_root small_8411204_left_fuel small_8411204_left_count small_8411204_left_encoded = true := by
  decide +kernel
theorem small_8411204_left_covered : CoveredBy scale carrier boxes small_8411204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8411204_left_root small_8411204_left_fuel small_8411204_left_count small_8411204_left_encoded small_8411204_left_checked

theorem cover_8411204 : CoveredBy scale carrier boxes root_8411204 := by
  apply coveredBy_split_literal root_8411204 small_8411204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8411210 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8411204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8411210
#print axioms cover_8411204

def root_8411203 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411203_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411203_right_fuel : Nat := 20
def small_8411203_right_count : Nat := 259
def small_8411203_right_encoded : String := "12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D104000000020000000A0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F80F878CF9000000010C9A8704000000080000000A0F8750F90C9A87040F875105000000020C9A86FC00000005000000080000000A000000010000000A0F34D0FC0CFD9C090F34D108000000040C9A86F8000000050F8750F900000007000000010000000A00000003000000020F34D0F80CFD9C050F34D104000000020000000A0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000008000000080F34D0FC0000000A0000000300000002000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87000F875101000000000C9A86F80F878CF9000000010C9A86FC000000050F8750FD00000005000000030F8750F900000006000000010F878D010C9A86F80000000A0F8750F90000000600000001000000000000000A0F34D0FC0CFD9C090F34D108000000040000000600000006000000030F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87000F875101000000000C9A86F8000000050F8750F90C9A8704000000050F878D050C9A86FC000000050F8750FD000000050000000300000002000000010F878D010C9A86F80F878CF9000000010C9A8704000000050F878D050C9A86FC000000050F8750FD0000000500000003000000020F8750F90C9A87040F875105000000020C9A86FC000000050F8750FD00000005000000030F878D050C9A86FC000000050F8750FD0000000A000000030000000200000001000000000F350D080C9A87000F875101000000000C9A86F8000000050F8750F90C9A87040000000500000006000000010F878D010C9A86F80000000A0F8750F90C9A8704000000050000000A0000000100000000000000040F34D0FC0CFD9C090F34D108000000040C9A8700000000050F878D010C9A86F8000000050F8750F90000000500000001000000000F350D080C9A8700000000050F878D010C9A86F80000000500000006000000000000000400000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000050000000A0000000A0F34D0FC0000000A000000030F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000050F878D010C9A8704000000050F878D050000000500000002000000000F350D080C9A8700000000050F878D010000000800000000000000040F34D0FC0CFD9C09000000050F350D080C9A8700000000050000000A000000040000000300000002000000010000000000000004"
theorem small_8411203_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8411203_right_root small_8411203_right_fuel small_8411203_right_count small_8411203_right_encoded = true := by
  decide +kernel
theorem small_8411203_right_covered : CoveredBy scale carrier boxes small_8411203_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8411203_right_root small_8411203_right_fuel small_8411203_right_count small_8411203_right_encoded small_8411203_right_checked

theorem cover_8411203 : CoveredBy scale carrier boxes root_8411203 := by
  apply coveredBy_split_literal root_8411203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8411204 small_8411203_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8411204
  · exact small_8411203_right_covered
#print axioms cover_8411203

def root_8411197 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411197_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411197_left_fuel : Nat := 1
def small_8411197_left_count : Nat := 1
def small_8411197_left_encoded : String := "00000003"
theorem small_8411197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8411197_left_root small_8411197_left_fuel small_8411197_left_count small_8411197_left_encoded = true := by
  decide +kernel
theorem small_8411197_left_covered : CoveredBy scale carrier boxes small_8411197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8411197_left_root small_8411197_left_fuel small_8411197_left_count small_8411197_left_encoded small_8411197_left_checked

theorem cover_8411197 : CoveredBy scale carrier boxes root_8411197 := by
  apply coveredBy_split_literal root_8411197 small_8411197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8411203 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8411197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8411203
#print axioms cover_8411197

def root_8411196 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411196_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411196_right_fuel : Nat := 17
def small_8411196_right_count : Nat := 183
def small_8411196_right_encoded : String := "120700FC08A9130912070108000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC0000000304548A0913867108000000040C9A86F8000000050F8750F9000000060000000100000006000000060F350D0400000007000000020F34D0F80CFD9C050F34D10400000002045489FD00000005138670FC00000005000000030F350D04045489FD00000005138670FC000000070000000300000002000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC0000000304548A090000000500000006000000060F350D04045489FD1386ACFC0000000304548A09000000050000000700000007000000020F34D0F80CFD9C050F34D10400000002045489FD00000005138670FC04548A090000000500000006000000030F350D04045489FD00000005138670FC04548A0900000005000000070000000300000002000000010000000012073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000060F350D04045489FD1386ACFC000000030CFD9C090F34D10800000004000000070000000600000006000000020F34D0F80CFD9C050000000A0F350D04045489FD0000000A138670FC0000000A0000000300000002000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000060F350D04045489FD1386ACFC000000030CFD9C090F34D10800000004000000070000000600000006000000020F34D0F80CFD9C050F34D10400000002045489FD0000000A000000060F350D04045489FD1386ACFC000000030CFD9C090F34D108000000040C9A8700000000050F878D0100000005000000000F350D080C9A87000F875101000000000C9A870400000005000000060000000A00000004138670FC0CFD9C090F34D108000000040000000700000006000000030000000200000001000000000000000400000003"
theorem small_8411196_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8411196_right_root small_8411196_right_fuel small_8411196_right_count small_8411196_right_encoded = true := by
  decide +kernel
theorem small_8411196_right_covered : CoveredBy scale carrier boxes small_8411196_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8411196_right_root small_8411196_right_fuel small_8411196_right_count small_8411196_right_encoded small_8411196_right_checked

theorem cover_8411196 : CoveredBy scale carrier boxes root_8411196 := by
  apply coveredBy_split_literal root_8411196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8411197 small_8411196_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8411197
  · exact small_8411196_right_covered
#print axioms cover_8411196

def root_8411191 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411191_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411191_right_fuel : Nat := 1
def small_8411191_right_count : Nat := 1
def small_8411191_right_encoded : String := "00000002"
theorem small_8411191_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8411191_right_root small_8411191_right_fuel small_8411191_right_count small_8411191_right_encoded = true := by
  decide +kernel
theorem small_8411191_right_covered : CoveredBy scale carrier boxes small_8411191_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8411191_right_root small_8411191_right_fuel small_8411191_right_count small_8411191_right_encoded small_8411191_right_checked

theorem cover_8411191 : CoveredBy scale carrier boxes root_8411191 := by
  apply coveredBy_split_literal root_8411191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.root_8411196 small_8411191_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578.cover_8411196
  · exact small_8411191_right_covered
#print axioms cover_8411191

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0578

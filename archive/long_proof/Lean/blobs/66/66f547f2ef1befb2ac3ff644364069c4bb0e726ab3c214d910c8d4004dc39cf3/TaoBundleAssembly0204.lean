import TaoBundleAssembly0201
import TaoBundleAssembly0202
import TaoBundleAssembly0203
import TaoBundleChunkBatch0788
import TaoBundleChunkBatch0789
import TaoBundleChunkBatch0790
import TaoBundleChunkBatch0791
import TaoBundleChunkBatch0792
import TaoBundleChunkBatch0793
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204
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
  apply coveredBy_split_literal root_8431656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0203.root_8431657 small_8431656_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0203.cover_8431657
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
  apply coveredBy_split_literal root_8431650 small_8431650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431656 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8431650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431656
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
  apply coveredBy_split_literal root_8431649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431650 small_8431649_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431650
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
  apply coveredBy_split_literal root_8431644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431649 small_8431644_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431649
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
  apply coveredBy_split_literal root_8431446 small_8431446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431644 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8431446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431644
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
  apply coveredBy_split_literal root_8431441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431446 small_8431441_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431446
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
  apply coveredBy_split_literal root_8431191 small_8431191_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431441 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8431191_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431441
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
  apply coveredBy_split_literal root_8431186 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431191 small_8431186_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431191
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
  apply coveredBy_split_literal root_8431104 small_8431104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431186 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8431104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431186
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
  apply coveredBy_split_literal root_8431099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431104 small_8431099_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431104
  · exact small_8431099_right_covered
#print axioms cover_8431099

def root_8426691 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8426691 : CoveredBy scale carrier boxes root_8426691 := by
  apply coveredBy_split_literal root_8426691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0203.root_8426692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8431099 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0203.cover_8426692
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8431099
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
  apply coveredBy_split_literal root_8426686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8426691 small_8426686_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8426691
  · exact small_8426686_right_covered
#print axioms cover_8426686

def root_8423862 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8423862 : CoveredBy scale carrier boxes root_8423862 := by
  apply coveredBy_split_literal root_8423862 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3151.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8426686 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3151.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8426686
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
  apply coveredBy_split_literal root_8423857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8423862 small_8423857_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8423862
  · exact small_8423857_right_covered
#print axioms cover_8423857

def root_8406373 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8406373 : CoveredBy scale carrier boxes root_8406373 := by
  apply coveredBy_split_literal root_8406373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0203.root_8406374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8423857 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0203.cover_8406374
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8423857
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
  apply coveredBy_split_literal root_8406368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8406373 small_8406368_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8406373
  · exact small_8406368_right_covered
#print axioms cover_8406368

def root_8397346 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8397346 : CoveredBy scale carrier boxes root_8397346 := by
  apply coveredBy_split_literal root_8397346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8397347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8406368 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8397347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8406368
#print axioms cover_8397346

def root_8357700 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8357700 : CoveredBy scale carrier boxes root_8357700 := by
  apply coveredBy_split_literal root_8357700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8357701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8397346 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8357701
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8397346
#print axioms cover_8357700

def root_8302614 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8302614 : CoveredBy scale carrier boxes root_8302614 := by
  apply coveredBy_split_literal root_8302614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8302615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8357700 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8302615
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8357700
#print axioms cover_8302614

def root_8449496 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449496_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449496_left_fuel : Nat := 26
def small_8449496_left_count : Nat := 339
def small_8449496_left_encoded : String := "12EA94F8000000010B4D43FC10804D070B4D43FE10804D090000000500000004108011090000000403C0010413A5110500000002011523410000000513F895000793F0B900000005128220F80BF3E57C1009290700000005000000031008ED07000000030AA6A27E10EDAD09032001040000000713C1450500000005000000020000000400000007000000010000000013A54D05011523410000000513F895000793F0B900000005128220F80BF3E57C1009290700000005000000031008ED07000000030AA6A27E10EDAD09000000050000000410ED710900000004046001041383DD05000000020000000713841905019FB4610000000513EF350007095F99000000050000000900000000000000020000000100000000000000020000000310801107000000030B4D43FE10804D0903C0010413A5110500000002011523410000000513F895000793F0B9000000050000000A0000000013A54D05011523410000000513F895000793F0B900000005128220F80AA6A27C10EDAD07000000050000000310ED7107000000030000000A00000001000000000000000200000004108011090000000403C0010413A51105000000020115234113F85900000000000793F0B900000005128220F80AA6A27C10EDAD07000000050000000310ED7107000000030AA6A27E10EDAD09000000050000000410ED710900000004000000070000000113F895000793F0B912825CF8000000010AA6A27C000000070000000A128220F80AA6A27C10EDAD070AA6A27E10EDAD0903200104000000070000000A0000000400000007000000030000000A000000010000000013A54D050115234113F85900000000000793F0B900000005128220F80AA6A27C10EDAD07000000050000000310ED7107000000030AA6A27E10EDAD09000000050000000410ED710900000004046001041383DD0500000002008A92210000000513FE350007095F9900000005000000870000000013841905008A92210000000513FE350007095F99000000050000008700000000000000020000000113F895000793F0B912825CF8000000010AA6A27C10EDAD07000000050000000310ED7107000000030AA6A27E10EDAD09000000050000000410ED71090000000400000006128220F80AA6A27C10EDAD070AA6A27E10EDAD09046001041383DD0500000002019FB4610000000513EF350007095F99000000050000000A0000000013841905019FB4610000000513EF350007095F99000000050000000800000000000000020000000410ED710900000004046001041383DD0500000002019FB461000000070000000713841905019FB46113EEF9000000000007095F990000000512B880F80AF9F33C10B82907000000050000000310B7ED07000000030A5351BE112101090000000500000004000000070000000113EF350007095F990000000712B880F80AF9F33C0000000910B7ED07000000030A5351BE00000008000000070000000100000000000000020000000310ED7107000000030AA6A27E10EDAD09046001040000000A13841905019FB46113EEF9000000000007095F990000000512B880F8000000080000000100000008000000020000000410ED710900000004046001041383DD0500000002019FB46113EEF9000000000007095F99000000070000000A0000000713841905019FB46113EEF9000000000007095F9912B8BCF8000000010000000612B880F80A5351BC112101070A5351BE11210109000000080000000400000007000000031120C507000000030A5351BE00000008000000060000000113EF350007095F990000000612B880F80A5351BC0000000800000006000000010000000000000002000000010000000000000002"
theorem small_8449496_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8449496_left_root small_8449496_left_fuel small_8449496_left_count small_8449496_left_encoded = true := by
  decide +kernel
theorem small_8449496_left_covered : CoveredBy scale carrier boxes small_8449496_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8449496_left_root small_8449496_left_fuel small_8449496_left_count small_8449496_left_encoded small_8449496_left_checked

theorem cover_8449496 : CoveredBy scale carrier boxes root_8449496 := by
  apply coveredBy_split_literal root_8449496 small_8449496_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3158.root coord1 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_8449496_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3158.covered
#print axioms cover_8449496

def root_8449490 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449490_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449490_left_fuel : Nat := 1
def small_8449490_left_count : Nat := 1
def small_8449490_left_encoded : String := "00000000"
theorem small_8449490_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8449490_left_root small_8449490_left_fuel small_8449490_left_count small_8449490_left_encoded = true := by
  decide +kernel
theorem small_8449490_left_covered : CoveredBy scale carrier boxes small_8449490_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8449490_left_root small_8449490_left_fuel small_8449490_left_count small_8449490_left_encoded small_8449490_left_checked

theorem cover_8449490 : CoveredBy scale carrier boxes root_8449490 := by
  apply coveredBy_split_literal root_8449490 small_8449490_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8449496 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_8449490_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8449496
#print axioms cover_8449490

def root_8449489 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449489_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449489_right_fuel : Nat := 23
def small_8449489_right_count : Nat := 421
def small_8449489_right_encoded : String := "13E20100067ECE7912EA94F8000000010B4D43FC10804D070B4D43FE10804D0903C0010413A5110500000002033F67C113BBF500000000000793F0B900000005128220F80BF3E57C100929070BF3E57E1009290900000005000000041008ED0900000004032001040000000A13C1450502B4D6A1000000050000000900000002000000030000000A0000000113BC31000793F0B912825CF8000000010BF3E57C100929070BF3E57E10092909000000050000000400000007000000030000000A0000000A0000000013A54D05033F67C113BBF500000000000793F0B900000005128220F80BF3E57C100929070BF3E57E10092909000000050000000400000009000000031008ED07000000030BF3E57E000000081008ED0900000004000000080000000113BC31000793F0B90000000800000009000000000000000200000004108011090000000403C0010413A5110500000002033F67C113BBF500000000000793F0B900000007128220F80BF3E57C100929070AA6A27E10EDAD09000000070000000400000007000000031008ED07000000030AA6A27E10EDAD09032001040000000713C1450502B4D6A100000007000000070000000200000004000000070000000113BC31000793F0B900000007128220F80BF3E57C000000071008ED07000000030000000A000000010000000013A54D05033F67C113BBF500000000000793F0B912825CF8000000010BF3E57C1009290700000005000000031008ED07000000030AA6A27E10EDAD0904600104000000051384190500000005000000020000000400000007128220F80BF3E57C000000091008ED07000000030AA6A27E10EDAD09046001041383DD050000000202B4D6A113D0D1000000000007095F99000000050000000900000009000000090000000410ED7109000000040460010400000007000000090000000113BC31000793F0B912825CF8000000010BF3E57C000000091008ED07000000030AA6A27E00000008000000070000000900000000000000020000000310801107000000030B4D43FE10804D0903C001040000000A13A54D05033F67C113BBF500000000000793F0B900000008128220F80000000800000001000000080000000200000004108011090000000403C0010413A5110500000002033F67C113BBF500000000000793F0B9000000070000000A0000000A13A54D05033F67C113BBF500000000000793F0B912825CF8000000010AA6A27C10EDAD070AA6A27E10EDAD0904600104000000070000000800000004000000070000000310ED7107000000030AA6A27E0000000800000006128220F80AA6A27C10EDAD070AA6A27E10EDAD09046001040000000A000000080000000410ED710900000004046001041383DD0500000002000000071384190502B4D6A113D0D1000000000007095F99000000070000000900000008000000020000000310ED7107000000030AA6A27E10EDAD09000000080000000410ED7109000000040460010400000006000000080000000113BC31000793F0B912825CF8000000010AA6A27C0000000800000006128220F80AA6A27C10EDAD070AA6A27E0000000800000009000000030000000800000001000000000000000212EA58F80B4D43FC10804D070B4D43FE10804D0903C0010413A5110500000002033F67C113BBF500000000000569AC39134110F8000000010BF3E57C100929070BF3E57E0000000600000009000000030000000A1340D4F8000000090000000113BC31000000000A0000000013A54D05033F67C113BBF500000000000569AC39134110F8000000010000000900000009000000090000000200000004108011090000000403C0010413A5110500000002033F67C113BBF500000000000569AC39134110F8000000010BF3E57C000000091008ED07000000030AA6A27E10EDAD090000000A0000000410ED710900000004032001040000000700000009000000090000000913A54D0500000009000000020000000310801107000000030B4D43FE10804D0903C001040000000A13A54D05033F67C113BBF500000000000569AC39000000080000000A000000080000000200000004108011090000000403C0010413A5110500000002033F67C113BBF500000000000569AC390000000A000000050000000513A54D05033F67C113BBF500000000000569AC39134110F8000000010AA6A27C10EDAD070AA6A27E10EDAD09046001040000000A0000000800000004000000090000000310ED7107000000030AA6A27E0000000A10ED710900000004046001040000000A000000050000000500000005000000020000000100000000"
theorem small_8449489_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8449489_right_root small_8449489_right_fuel small_8449489_right_count small_8449489_right_encoded = true := by
  decide +kernel
theorem small_8449489_right_covered : CoveredBy scale carrier boxes small_8449489_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8449489_right_root small_8449489_right_fuel small_8449489_right_count small_8449489_right_encoded small_8449489_right_checked

theorem cover_8449489 : CoveredBy scale carrier boxes root_8449489 := by
  apply coveredBy_split_literal root_8449489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8449490 small_8449489_right_root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8449490
  · exact small_8449489_right_covered
#print axioms cover_8449489

def root_8449484 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449484_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449484_right_fuel : Nat := 1
def small_8449484_right_count : Nat := 1
def small_8449484_right_encoded : String := "00000002"
theorem small_8449484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8449484_right_root small_8449484_right_fuel small_8449484_right_count small_8449484_right_encoded = true := by
  decide +kernel
theorem small_8449484_right_covered : CoveredBy scale carrier boxes small_8449484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8449484_right_root small_8449484_right_fuel small_8449484_right_count small_8449484_right_encoded small_8449484_right_checked

theorem cover_8449484 : CoveredBy scale carrier boxes root_8449484 := by
  apply coveredBy_split_literal root_8449484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8449489 small_8449484_right_root coord2 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8449489
  · exact small_8449484_right_covered
#print axioms cover_8449484

def root_8449038 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449038_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449038_left_fuel : Nat := 21
def small_8449038_left_count : Nat := 213
def small_8449038_left_encoded : String := "13D7B10500000002022A458113E1C50000000000067ECE7912EA94F8000000010B4D43FC10804D070B4D43FE10804D0900000005000000041080110900000004014001040000000713F61505011523410000000500000007000000020000000310801107000000030B4D43FE10804D090000000A000000041080110900000004014001040000000713F615050115234113F85900000000000793F0B900000005128220F80AA6A27C0000000700000009000000010000000A0000000212EA58F80B4D43FC10804D070B4D43FE10804D09014001040000000A13F61505011523410000000613F895000569AC39134110F8000000010000000A0000000600000000000000020000000410801109000000040140010413F5D905000000020115234113F85900000000000569AC39000000070000000813F895000569AC39000000070000000A0000000013F615050115234113F85900000000000569AC39134110F8000000010BF3E57C100929070AA6A27E0000000600000007000000031008ED07000000030AA6A27E10EDAD0901E00104000000060000000600000004000000071340D4F80BF3E57C000000061008ED0700000003000000060000000113F895000569AC39134110F8000000010BF3E57C100929070AA6A27E10EDAD0901E0010400000006000000060000000400000007000000031008ED07000000030AA6A27E0000000A000000071340D4F80BF3E57C1009290700000006000000031008ED07000000030000000A0000000100000000000000020000000310801107000000030B4D43FE10804D090000000A000000041080110900000004014001040000000A13F615050115234113F85900000000000569AC39134110F8000000010000000A0000000A0000000A000000020000000113E20100067ECE7912EA94F8000000010B4D43FC10804D070B4D43FE10804D090000000A000000041080110900000004014001040000000713F61505033F67C1000000070000000700000002000000030000000A12EA58F80B4D43FC10804D070B4D43FE10804D090000000A000000041080110900000004014001040000000A13F61505033F67C113BBF500000000000569AC39134110F8000000010BF3E57C000000070000000A0000000A0000000A00000002000000030000000A0000000100000000"
theorem small_8449038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8449038_left_root small_8449038_left_fuel small_8449038_left_count small_8449038_left_encoded = true := by
  decide +kernel
theorem small_8449038_left_covered : CoveredBy scale carrier boxes small_8449038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8449038_left_root small_8449038_left_fuel small_8449038_left_count small_8449038_left_encoded small_8449038_left_checked

theorem cover_8449038 : CoveredBy scale carrier boxes root_8449038 := by
  apply coveredBy_split_literal root_8449038 small_8449038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8449484 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8449038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8449484
#print axioms cover_8449038

def root_8449032 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449032_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8449032_left_fuel : Nat := 1
def small_8449032_left_count : Nat := 1
def small_8449032_left_encoded : String := "00000004"
theorem small_8449032_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8449032_left_root small_8449032_left_fuel small_8449032_left_count small_8449032_left_encoded = true := by
  decide +kernel
theorem small_8449032_left_covered : CoveredBy scale carrier boxes small_8449032_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8449032_left_root small_8449032_left_fuel small_8449032_left_count small_8449032_left_encoded small_8449032_left_checked

theorem cover_8449032 : CoveredBy scale carrier boxes root_8449032 := by
  apply coveredBy_split_literal root_8449032 small_8449032_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8449038 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8449032_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8449038
#print axioms cover_8449032

def root_8448782 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448782_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448782_left_fuel : Nat := 17
def small_8448782_left_count : Nat := 117
def small_8448782_left_encoded : String := "0F878D090280010413D7B10500000002022A458113E1C50000000000067ECE7912EA94F8000000010B4D43FC10804D0700000005000000030000000512EA58F80B4D43FC10804D0700000006000000030000000A0000000113E201000000000A0000000013D7ED05022A458113E1C50000000000067ECE790000000512EA58F80B4D43FC10804D070DE7C9FE000000060E5FD90900000004000000060000000310801107000000030DE7C9FE0E60150900000006000000040E5FD9090000000403C001040000000A13A54D050115234113F85900000000000569AC3900000005000000060000000A000000020000000113E20100067ECE7912EA94F8000000010B4D43FC10804D070DE7C9FE0E60150900000005000000040E5FD9090000000403C0010413A5110500000002033F67C1000000050000000A13A54D05033F67C10000000500000008000000020000000310801107000000030DE7C9FE000000080E5FD9090000000403C001040000000A0000000812EA58F80B4D43FC10804D070DE7C9FE0E60150900000006000000040E5FD9090000000403C001040000000A13A54D05033F67C113BBF50000000000000000060000000800000002000000030000000A00000001000000000000000200000004"
theorem small_8448782_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8448782_left_root small_8448782_left_fuel small_8448782_left_count small_8448782_left_encoded = true := by
  decide +kernel
theorem small_8448782_left_covered : CoveredBy scale carrier boxes small_8448782_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8448782_left_root small_8448782_left_fuel small_8448782_left_count small_8448782_left_encoded small_8448782_left_checked

theorem cover_8448782 : CoveredBy scale carrier boxes root_8448782 := by
  apply coveredBy_split_literal root_8448782 small_8448782_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8449032 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8448782_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8449032
#print axioms cover_8448782

def root_8448776 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448776_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448776_left_fuel : Nat := 1
def small_8448776_left_count : Nat := 1
def small_8448776_left_encoded : String := "00000003"
theorem small_8448776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8448776_left_root small_8448776_left_fuel small_8448776_left_count small_8448776_left_encoded = true := by
  decide +kernel
theorem small_8448776_left_covered : CoveredBy scale carrier boxes small_8448776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8448776_left_root small_8448776_left_fuel small_8448776_left_count small_8448776_left_encoded small_8448776_left_checked

theorem cover_8448776 : CoveredBy scale carrier boxes root_8448776 := by
  apply coveredBy_split_literal root_8448776 small_8448776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8448782 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8448776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8448782
#print axioms cover_8448776

def root_8448018 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448018_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448018_left_fuel : Nat := 23
def small_8448018_left_count : Nat := 361
def small_8448018_left_encoded : String := "0F878D070C9A86FE0F878D090280010413D7B10500000002022A458113E1C50000000000067ECE79000000050000000613E20100067ECE7912EA94F8000000010DE7C9FC0E60150700000005000000030E5FD907000000030DE7C9FE0E60150900000005000000040E5FD90900000004014001040000000A13F61505033F67C10000000513BC31000793F0B90000000500000006000000000000000212EA58F800000006000000010000000013D7ED05022A458113E1C50000000000067ECE79000000050000000613E20100067ECE7912EA94F8000000010DE7C9FC0E60150700000005000000030E5FD907000000030DE7C9FE0E60150900000005000000040000000512EA58F80DE7C9FC000000060E5FD9070000000300000006000000010000000000000002000000040F875109000000040280010413D7B10500000002022A458113E1C50000000000067ECE7912EA94F8000000010DE7C9FC0E60150700000005000000030000000512EA58F80DE7C9FC0E60150700000006000000030E5FD907000000030B4D43FE0000000610801109000000040140010413F5D90500000002011523410000000613F895000569AC3900000007000000060000000013F61505011523410000000613F895000569AC39134110F8000000010D41287C000000060EFA1107000000030AA6A27E00000006000000070000000600000000000000020000000113E20100067ECE7912EA94F8000000010DE7C9FC0E6015070B4D43FE10804D090140010413F5D90500000002033F67C1000000050000000713F61505033F67C100000005000000090000000200000004108011090000000400000007000000030E5FD907000000030B4D43FE10804D090140010413F5D90500000002033F67C113BBF50000000000000000070000000713F61505033F67C10000000513BC31000793F0B900000005128220F80D41287C000000090000000A0000000100000000000000020000000410801109000000040000000712EA58F80DE7C9FC0E6015070B4D43FE0000000600000009000000030E5FD907000000030B4D43FE10804D090140010413F5D905000000020000000613F61505033F67C10000000600000009000000020000000410801109000000040140010413F5D90500000002033F67C113BBF500000000000569AC39000000070000000613BC31000569AC3900000007000000090000000013F61505033F67C113BBF500000000000569AC39134110F8000000010D41287C000000070EFA11070000000300000007000000060000000900000002000000010000000013D7ED05022A458113E1C50000000000067ECE790000000512EA58F80DE7C9FC0E60150700000006000000030E5FD907000000030B4D43FE10804D090000000600000004108011090000000403C0010413A5110500000002011523410000000613F895000569AC39134110F8000000010D41287C000000060EFA1107000000030AA6A27E0000000600000009000000060000000013A54D050115234113F85900000000000569AC39000000050000000600000009000000020000000113E20100067ECE7912EA94F8000000010DE7C9FC0E6015070B4D43FE10804D09000000050000000400000009000000030E5FD907000000030B4D43FE10804D0903C0010413A5110500000002033F67C10000000513BC31000793F0B900000005000000090000000013A54D05033F67C100000005000000090000000200000004108011090000000403C0010413A5110500000002033F67C113BBF500000000000793F0B900000005128220F80D41287C000000070EFA110700000003000000070000000113BC31000793F0B900000007000000090000000013A54D05033F67C113BBF500000000000793F0B90000000500000009000000090000000212EA58F80DE7C9FC000000090E5FD907000000030B4D43FE10804D0900000009000000040000000900000001000000000000000200000003"
theorem small_8448018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8448018_left_root small_8448018_left_fuel small_8448018_left_count small_8448018_left_encoded = true := by
  decide +kernel
theorem small_8448018_left_covered : CoveredBy scale carrier boxes small_8448018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8448018_left_root small_8448018_left_fuel small_8448018_left_count small_8448018_left_encoded small_8448018_left_checked

theorem cover_8448018 : CoveredBy scale carrier boxes root_8448018 := by
  apply coveredBy_split_literal root_8448018 small_8448018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8448776 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8448018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8448776
#print axioms cover_8448018

def root_8448012 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448012_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8448012_left_fuel : Nat := 1
def small_8448012_left_count : Nat := 1
def small_8448012_left_encoded : String := "00000004"
theorem small_8448012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8448012_left_root small_8448012_left_fuel small_8448012_left_count small_8448012_left_encoded = true := by
  decide +kernel
theorem small_8448012_left_covered : CoveredBy scale carrier boxes small_8448012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8448012_left_root small_8448012_left_fuel small_8448012_left_count small_8448012_left_encoded small_8448012_left_checked

theorem cover_8448012 : CoveredBy scale carrier boxes root_8448012 := by
  apply coveredBy_split_literal root_8448012 small_8448012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8448018 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8448012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8448018
#print axioms cover_8448012

def root_8447970 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447970_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447970_left_fuel : Nat := 9
def small_8447970_left_count : Nat := 21
def small_8447970_left_encoded : String := "0F34D0FE0C9A86FC0F878D07028001040000000600000006000000030F87510700000003028001040000000A13D7ED05022A45810000000513E20100067ECE79000000050000000A000000000000000200000004"
theorem small_8447970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447970_left_root small_8447970_left_fuel small_8447970_left_count small_8447970_left_encoded = true := by
  decide +kernel
theorem small_8447970_left_covered : CoveredBy scale carrier boxes small_8447970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447970_left_root small_8447970_left_fuel small_8447970_left_count small_8447970_left_encoded small_8447970_left_checked

theorem cover_8447970 : CoveredBy scale carrier boxes root_8447970 := by
  apply coveredBy_split_literal root_8447970 small_8447970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8448012 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8447970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8448012
#print axioms cover_8447970

def root_8447964 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447964_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447964_left_fuel : Nat := 1
def small_8447964_left_count : Nat := 1
def small_8447964_left_encoded : String := "00000003"
theorem small_8447964_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447964_left_root small_8447964_left_fuel small_8447964_left_count small_8447964_left_encoded = true := by
  decide +kernel
theorem small_8447964_left_covered : CoveredBy scale carrier boxes small_8447964_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447964_left_root small_8447964_left_fuel small_8447964_left_count small_8447964_left_encoded small_8447964_left_checked

theorem cover_8447964 : CoveredBy scale carrier boxes root_8447964 := by
  apply coveredBy_split_literal root_8447964 small_8447964_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447970 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8447964_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447970
#print axioms cover_8447964

def root_8447884 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447884_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447884_left_fuel : Nat := 14
def small_8447884_left_count : Nat := 39
def small_8447884_left_encoded : String := "0F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D09028001040000000600000006000000040F875109000000040280010413D7B10500000002022A458113E1C50000000000067ECE79000000050000000613E20100067ECE7912EA94F8000000010AD357870000000510D13CFC0000000300000005000000060000000013D7ED05022A458100000005000000090000000200000003"
theorem small_8447884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447884_left_root small_8447884_left_fuel small_8447884_left_count small_8447884_left_encoded = true := by
  decide +kernel
theorem small_8447884_left_covered : CoveredBy scale carrier boxes small_8447884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447884_left_root small_8447884_left_fuel small_8447884_left_count small_8447884_left_encoded small_8447884_left_checked

theorem cover_8447884 : CoveredBy scale carrier boxes root_8447884 := by
  apply coveredBy_split_literal root_8447884 small_8447884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447964 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8447884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447964
#print axioms cover_8447884

def root_8447878 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447878_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447878_left_fuel : Nat := 1
def small_8447878_left_count : Nat := 1
def small_8447878_left_encoded : String := "00000001"
theorem small_8447878_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447878_left_root small_8447878_left_fuel small_8447878_left_count small_8447878_left_encoded = true := by
  decide +kernel
theorem small_8447878_left_covered : CoveredBy scale carrier boxes small_8447878_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447878_left_root small_8447878_left_fuel small_8447878_left_count small_8447878_left_encoded small_8447878_left_checked

theorem cover_8447878 : CoveredBy scale carrier boxes root_8447878 := by
  apply coveredBy_split_literal root_8447878 small_8447878_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447884 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8447878_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447884
#print axioms cover_8447878

def root_8447877 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447877_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447877_right_fuel : Nat := 32
def small_8447877_right_count : Nat := 241
def small_8447877_right_encoded : String := "138670F80CFD9C070F34D0FC0CFD9C090000000600000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F875109000000040280010413D7B10500000002022A45810000000613E20100022A457913E200F8000000010DE7C9FC000000060E5FD907000000030B4D43FE0000000600000009000000060000000013D7ED05022A458113E1C50000000000000000060000000900000002000000030F875107000000030C9A86FE0F878D090280010413D7B10500000002022A4581000000060000000A13D7ED05022A458113E1C500000000000000000613E20100022A457913E200F8000000010B4D43FC000000060000000A000000060000000000000002000000040F875109000000040280010413D7B10500000002022A458113E1C50000000000022A457913E200F8000000010B4D43FC10804D070B4D43FE0000000610801109000000040140010400000006000000060000000310801107000000030B4D43FE0000000A1080110900000004014001040000000A13F615050115234113F8590000000000033F67B90000000A0000000500000005000000020000000613E20100022A457913E200F8000000010B4D43FC10804D070B4D43FE0000000A108011090000000400000005000000030000000A000000050000000013D7ED05022A458113E1C50000000000022A457913E200F8000000010B4D43FC10804D070B4D43FE00000006108011090000000403C0010413A51105000000020000000613A54D0500000009000000020000000310801107000000030B4D43FE10804D0903C0010413A51105000000020000000613A54D05011523410000000613F89500033F67B913BC30F8000000010AA6A27C000000060000000A00000005000000000000000200000004108011090000000403C0010413A51105000000020115234113F8590000000000033F67B913BC30F8000000010AA6A27C10EDAD07000000060000000310ED7107000000030000000A000000050000000513A54D050115234113F8590000000000033F67B913BC30F8000000010AA6A27C10EDAD07000000060000000310ED7107000000030AA6A27E10EDAD09000000060000000410ED710900000004046001041383DD0500000002000000050000000500000005000000050000000213E1C4F80B4D43FC000000061080110700000003000000050000000113E20100022A457913E200F8000000010B4D43FC10804D07000000090000000310801107000000030000000500000005000000000000000200000001"
theorem small_8447877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447877_right_root small_8447877_right_fuel small_8447877_right_count small_8447877_right_encoded = true := by
  decide +kernel
theorem small_8447877_right_covered : CoveredBy scale carrier boxes small_8447877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447877_right_root small_8447877_right_fuel small_8447877_right_count small_8447877_right_encoded small_8447877_right_checked

theorem cover_8447877 : CoveredBy scale carrier boxes root_8447877 := by
  apply coveredBy_split_literal root_8447877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447878 small_8447877_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447878
  · exact small_8447877_right_covered
#print axioms cover_8447877

def root_8447871 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447871_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447871_left_fuel : Nat := 1
def small_8447871_left_count : Nat := 1
def small_8447871_left_encoded : String := "00000000"
theorem small_8447871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447871_left_root small_8447871_left_fuel small_8447871_left_count small_8447871_left_encoded = true := by
  decide +kernel
theorem small_8447871_left_covered : CoveredBy scale carrier boxes small_8447871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447871_left_root small_8447871_left_fuel small_8447871_left_count small_8447871_left_encoded small_8447871_left_checked

theorem cover_8447871 : CoveredBy scale carrier boxes root_8447871 := by
  apply coveredBy_split_literal root_8447871 small_8447871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447877 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8447871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447877
#print axioms cover_8447871

def root_8447870 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447870_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447870_right_fuel : Nat := 27
def small_8447870_right_count : Nat := 375
def small_8447870_right_encoded : String := "1386AD00045489F91386ACF8000000010CFD9C070F34D0FC0CFD9C090F34D0FE028001040000000600000006000000040F350CFE000000040C9A86FE0F878D090280010413D7B10500000002067ECE8112EA590000000000067ECE7912EA94F80000000100000009000000060000000900000009000000040F8751090000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D070280010413D7B10500000002067ECE8112EA590000000000067ECE7912EA94F8000000010AD3578900000005000000060000000612EA95000000000A0000000013D7ED05067ECE8112EA590000000000067ECE7900000008000000060000000800000002000000030F87510700000003028001040000000A00000008000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090280010413D7B10500000002067ECE8112EA590000000000067ECE7912EA94F8000000010DE7C9FC0E6015070DE7C9FE0E60150900000006000000040E5FD909000000040140010413F5D905000000020569AC411340D50000000000000000060000000900000009000000030E5FD907000000030000000A12EA58F80DE7C9FC000000090000000A0000000112EA9500067ECE7912EA94F8000000010DE7C9FC000000090000000A000000090000000013D7ED05067ECE8112EA590000000000067ECE7912EA94F8000000010DE7C9FC000000090E5FD907000000030DE7C9FE000000080E5FD9090000000400000009000000090000000900000002000000040F875109000000040280010413D7B10500000002067ECE8112EA590000000000067ECE7912EA94F8000000010DE7C9FC0E6015070B4D43FE10804D090140010400000007000000090000000400000007000000030E5FD907000000030B4D43FE10804D09014001040000000713F615050569AC411340D500000000000793F0B900000007000000090000000900000002000000040000000712EA58F80DE7C9FC000000090E5FD907000000030B4D43FE10804D090000000900000004000000090000000112EA9500067ECE7912EA94F8000000010DE7C9FC000000090E5FD907000000030000000A000000090000000013D7ED05067ECE8112EA590000000000067ECE7912EA94F8000000010DE7C9FC000000090E5FD907000000030B4D43FE10804D09000000090000000400000009000000090000000900000002000000030F875107000000030C9A86FE0F878D09028001040000000A13D7ED05067ECE8112EA590000000000067ECE7912EA94F8000000010B4D43FC00000008000000080000000A0000000800000002000000040F875109000000040280010413D7B10500000002067ECE8112EA590000000000067ECE7912EA94F8000000010000000A0000000A0000000A13D7ED05067ECE8112EA590000000000067ECE7912EA94F8000000010B4D43FC10804D070B4D43FE10804D0903C0010413A51105000000020000000A0000000800000004108011090000000403C0010413A51105000000020569AC411340D500000000000793F0B900000007000000090000000913A54D050569AC411340D500000000000000000900000009000000020000000310801107000000030B4D43FE10804D090000000800000004108011090000000403C001040000000A13A54D050569AC411340D5000000000000000008000000050000000212EA58F80B4D43FC10804D070B4D43FE10804D09000000090000000400000009000000031080110700000003000000050000000112EA9500067ECE7912EA94F8000000010B4D43FC10804D070B4D43FE0000000800000009000000030000000A000000050000000000000002138670F80CFD9C070F34D0FC0CFD9C090000000600000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D0700000006000000030000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000090000000400000009000000030F875107000000030C9A86FE0F878D090000000A000000040F87510900000004000000050000000100000000"
theorem small_8447870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447870_right_root small_8447870_right_fuel small_8447870_right_count small_8447870_right_encoded = true := by
  decide +kernel
theorem small_8447870_right_covered : CoveredBy scale carrier boxes small_8447870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447870_right_root small_8447870_right_fuel small_8447870_right_count small_8447870_right_encoded small_8447870_right_checked

theorem cover_8447870 : CoveredBy scale carrier boxes root_8447870 := by
  apply coveredBy_split_literal root_8447870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447871 small_8447870_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447871
  · exact small_8447870_right_covered
#print axioms cover_8447870

def root_8447864 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447864_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447864_left_fuel : Nat := 1
def small_8447864_left_count : Nat := 1
def small_8447864_left_encoded : String := "00000002"
theorem small_8447864_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447864_left_root small_8447864_left_fuel small_8447864_left_count small_8447864_left_encoded = true := by
  decide +kernel
theorem small_8447864_left_covered : CoveredBy scale carrier boxes small_8447864_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447864_left_root small_8447864_left_fuel small_8447864_left_count small_8447864_left_encoded small_8447864_left_checked

theorem cover_8447864 : CoveredBy scale carrier boxes root_8447864 := by
  apply coveredBy_split_literal root_8447864 small_8447864_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447870 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8447864_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447870
#print axioms cover_8447864

def root_8447863 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8447863 : CoveredBy scale carrier boxes root_8447863 := by
  apply coveredBy_split_literal root_8447863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447864 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3159.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447864
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3159.covered
#print axioms cover_8447863

def root_8447857 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447857_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447857_left_fuel : Nat := 1
def small_8447857_left_count : Nat := 1
def small_8447857_left_encoded : String := "00000004"
theorem small_8447857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447857_left_root small_8447857_left_fuel small_8447857_left_count small_8447857_left_encoded = true := by
  decide +kernel
theorem small_8447857_left_covered : CoveredBy scale carrier boxes small_8447857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447857_left_root small_8447857_left_fuel small_8447857_left_count small_8447857_left_encoded small_8447857_left_checked

theorem cover_8447857 : CoveredBy scale carrier boxes root_8447857 := by
  apply coveredBy_split_literal root_8447857 small_8447857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447863 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8447857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447863
#print axioms cover_8447857

def root_8447759 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447759_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447759_left_fuel : Nat := 13
def small_8447759_left_count : Nat := 49
def small_8447759_left_encoded : String := "120700FE05000104135D45050000000204548A011386710000000000045489F91386ACF8000000010CFD9C070000000500000006000000061386AD00045489F91386ACF8000000010CFD9C07000000060F350CFC0000000304548A09000000051386ACFE000000040C9A86FC00000008000000080000000600000000135D810504548A011386710000000000045489F900000005000000061386AD00045489F91386ACF8000000010CFD9C07000000050000000800000009000000000000000200000004"
theorem small_8447759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447759_left_root small_8447759_left_fuel small_8447759_left_count small_8447759_left_encoded = true := by
  decide +kernel
theorem small_8447759_left_covered : CoveredBy scale carrier boxes small_8447759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447759_left_root small_8447759_left_fuel small_8447759_left_count small_8447759_left_encoded small_8447759_left_checked

theorem cover_8447759 : CoveredBy scale carrier boxes root_8447759 := by
  apply coveredBy_split_literal root_8447759 small_8447759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447857 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8447759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447857
#print axioms cover_8447759

def root_8447753 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447753_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447753_left_fuel : Nat := 1
def small_8447753_left_count : Nat := 1
def small_8447753_left_encoded : String := "00000003"
theorem small_8447753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447753_left_root small_8447753_left_fuel small_8447753_left_count small_8447753_left_encoded = true := by
  decide +kernel
theorem small_8447753_left_covered : CoveredBy scale carrier boxes small_8447753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447753_left_root small_8447753_left_fuel small_8447753_left_count small_8447753_left_encoded small_8447753_left_checked

theorem cover_8447753 : CoveredBy scale carrier boxes root_8447753 := by
  apply coveredBy_split_literal root_8447753 small_8447753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447759 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8447753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447759
#print axioms cover_8447753

def root_8447643 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447643_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447643_left_fuel : Nat := 14
def small_8447643_left_count : Nat := 53
def small_8447643_left_encoded : String := "120700FC08A91309120700FE000000060000000412073CFE0000000405000104135D45050000000204548A011386710000000000045489F91386ACF80000000104548A070000000500000006000000061386AD00045489F91386ACF80000000104548A07000000061386ACFC000000030CFD9C09000000060F350CFE00000004000000090000000600000000135D810504548A011386710000000000045489F900000005000000061386AD00045489F91386ACF80000000104548A07000000050000000900000009000000000000000200000003"
theorem small_8447643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447643_left_root small_8447643_left_fuel small_8447643_left_count small_8447643_left_encoded = true := by
  decide +kernel
theorem small_8447643_left_covered : CoveredBy scale carrier boxes small_8447643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447643_left_root small_8447643_left_fuel small_8447643_left_count small_8447643_left_encoded small_8447643_left_checked

theorem cover_8447643 : CoveredBy scale carrier boxes root_8447643 := by
  apply coveredBy_split_literal root_8447643 small_8447643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447753 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8447643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447753
#print axioms cover_8447643

def root_8447638 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447638_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8447638_right_fuel : Nat := 1
def small_8447638_right_count : Nat := 1
def small_8447638_right_encoded : String := "00000001"
theorem small_8447638_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8447638_right_root small_8447638_right_fuel small_8447638_right_count small_8447638_right_encoded = true := by
  decide +kernel
theorem small_8447638_right_covered : CoveredBy scale carrier boxes small_8447638_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8447638_right_root small_8447638_right_fuel small_8447638_right_count small_8447638_right_encoded small_8447638_right_checked

theorem cover_8447638 : CoveredBy scale carrier boxes root_8447638 := by
  apply coveredBy_split_literal root_8447638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447643 small_8447638_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447643
  · exact small_8447638_right_covered
#print axioms cover_8447638

def root_8445662 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8445662 : CoveredBy scale carrier boxes root_8445662 := by
  apply coveredBy_split_literal root_8445662 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3157.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8447638 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3157.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8447638
#print axioms cover_8445662

def root_8445656 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445656_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445656_left_fuel : Nat := 1
def small_8445656_left_count : Nat := 1
def small_8445656_left_encoded : String := "00000000"
theorem small_8445656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8445656_left_root small_8445656_left_fuel small_8445656_left_count small_8445656_left_encoded = true := by
  decide +kernel
theorem small_8445656_left_covered : CoveredBy scale carrier boxes small_8445656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8445656_left_root small_8445656_left_fuel small_8445656_left_count small_8445656_left_encoded small_8445656_left_checked

theorem cover_8445656 : CoveredBy scale carrier boxes root_8445656 := by
  apply coveredBy_split_literal root_8445656 small_8445656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445662 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8445656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445662
#print axioms cover_8445656

def root_8445655 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8445655 : CoveredBy scale carrier boxes root_8445655 := by
  apply coveredBy_split_literal root_8445655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445656 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3160.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445656
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3160.covered
#print axioms cover_8445655

def root_8445650 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445650_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445650_right_fuel : Nat := 1
def small_8445650_right_count : Nat := 1
def small_8445650_right_encoded : String := "00000004"
theorem small_8445650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8445650_right_root small_8445650_right_fuel small_8445650_right_count small_8445650_right_encoded = true := by
  decide +kernel
theorem small_8445650_right_covered : CoveredBy scale carrier boxes small_8445650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8445650_right_root small_8445650_right_fuel small_8445650_right_count small_8445650_right_encoded small_8445650_right_checked

theorem cover_8445650 : CoveredBy scale carrier boxes root_8445650 := by
  apply coveredBy_split_literal root_8445650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445655 small_8445650_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445655
  · exact small_8445650_right_covered
#print axioms cover_8445650

def root_8460904 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460904_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460904_right_fuel : Nat := 22
def small_8460904_right_count : Nat := 117
def small_8460904_right_encoded : String := "1386AD00045489F91386ACF8000000010CFD9C070F34D0FC0280010413D7B10500000002078000FE128A7D0900000009000000040000000713D7ED05078000FE000000090000000900000002000000030F350CFC000000030C9A86FC0F878D070280010413D7B10500000002078000FE128A7D09067ECE8112EA590000000000067ECE79000000070000000912EA95000000000900000000000000040000000713D7ED05078000FE128A7D09067ECE8112EA590000000000000000090000000900000004128A410900000004067ECE8112EA590000000000000000090000000900000002000000030F875107000000030280010413D7B10500000002078000FE128A7D09067ECE8112EA590000000000067ECE7900000007000000050000000500000004128A4109000000040000000513D7ED05078000FE128A7D09067ECE8112EA590000000000067ECE7912EA94F8000000010B4D43FC10804D0703C001040000000713A54D0508C000FE11FC25090000000900000004000000060000000200000003108011070000000303C001040000000600000006000000050000000500000004128A4109000000040000000500000002138670F80CFD9C070F34D0FC0000000900000003000000050000000100000000"
theorem small_8460904_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460904_right_root small_8460904_right_fuel small_8460904_right_count small_8460904_right_encoded = true := by
  decide +kernel
theorem small_8460904_right_covered : CoveredBy scale carrier boxes small_8460904_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460904_right_root small_8460904_right_fuel small_8460904_right_count small_8460904_right_encoded small_8460904_right_checked

theorem cover_8460904 : CoveredBy scale carrier boxes root_8460904 := by
  apply coveredBy_split_literal root_8460904 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3162.root small_8460904_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3162.covered
  · exact small_8460904_right_covered
#print axioms cover_8460904

def root_8460899 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460899_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460899_right_fuel : Nat := 1
def small_8460899_right_count : Nat := 1
def small_8460899_right_encoded : String := "00000004"
theorem small_8460899_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460899_right_root small_8460899_right_fuel small_8460899_right_count small_8460899_right_encoded = true := by
  decide +kernel
theorem small_8460899_right_covered : CoveredBy scale carrier boxes small_8460899_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460899_right_root small_8460899_right_fuel small_8460899_right_count small_8460899_right_encoded small_8460899_right_checked

theorem cover_8460899 : CoveredBy scale carrier boxes root_8460899 := by
  apply coveredBy_split_literal root_8460899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460904 small_8460899_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460904
  · exact small_8460899_right_covered
#print axioms cover_8460899

def root_8460898 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460898_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460898_right_fuel : Nat := 10
def small_8460898_right_count : Nat := 55
def small_8460898_right_encoded : String := "135D45090000000404548A011386710000000000045489F91386ACF8000000010CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FC000000070F8751070000000300000007138670F80CFD9C07000000080F350CFC000000030C9A86FC0F878D0700000008000000030F8751070000000300000005000000011386AD00045489F91386ACF8000000010CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FC000000070F8751070000000300000005138670F80CFD9C070F34D0FC0000000900000003000000050000000100000000"
theorem small_8460898_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460898_right_root small_8460898_right_fuel small_8460898_right_count small_8460898_right_encoded = true := by
  decide +kernel
theorem small_8460898_right_covered : CoveredBy scale carrier boxes small_8460898_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460898_right_root small_8460898_right_fuel small_8460898_right_count small_8460898_right_encoded small_8460898_right_checked

theorem cover_8460898 : CoveredBy scale carrier boxes root_8460898 := by
  apply coveredBy_split_literal root_8460898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460899 small_8460898_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460899
  · exact small_8460898_right_covered
#print axioms cover_8460898

def root_8460892 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460892_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460892_left_fuel : Nat := 1
def small_8460892_left_count : Nat := 1
def small_8460892_left_encoded : String := "00000002"
theorem small_8460892_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460892_left_root small_8460892_left_fuel small_8460892_left_count small_8460892_left_encoded = true := by
  decide +kernel
theorem small_8460892_left_covered : CoveredBy scale carrier boxes small_8460892_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460892_left_root small_8460892_left_fuel small_8460892_left_count small_8460892_left_encoded small_8460892_left_checked

theorem cover_8460892 : CoveredBy scale carrier boxes root_8460892 := by
  apply coveredBy_split_literal root_8460892 small_8460892_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460898 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8460892_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460898
#print axioms cover_8460892

def root_8460891 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8460891 : CoveredBy scale carrier boxes root_8460891 := by
  apply coveredBy_split_literal root_8460891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460892 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3163.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460892
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3163.covered
#print axioms cover_8460891

def root_8460885 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460885_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460885_left_fuel : Nat := 1
def small_8460885_left_count : Nat := 1
def small_8460885_left_encoded : String := "00000003"
theorem small_8460885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460885_left_root small_8460885_left_fuel small_8460885_left_count small_8460885_left_encoded = true := by
  decide +kernel
theorem small_8460885_left_covered : CoveredBy scale carrier boxes small_8460885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460885_left_root small_8460885_left_fuel small_8460885_left_count small_8460885_left_encoded small_8460885_left_checked

theorem cover_8460885 : CoveredBy scale carrier boxes root_8460885 := by
  apply coveredBy_split_literal root_8460885 small_8460885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460891 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8460885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460891
#print axioms cover_8460885

def root_8460803 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460803_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460803_left_fuel : Nat := 13
def small_8460803_left_count : Nat := 41
def small_8460803_left_encoded : String := "120700FC05000104135D450500000002050000FE135D810904548A011386710000000000045489F90000000A000000081386AD00045489F91386ACF80000000104548A070000000A1386ACFC00000003028001040000000900000009138670F804548A070000000600000009000000010000000000000004135D45090000000404548A01000000081386AD00045489F90000000800000008000000000000000A00000003"
theorem small_8460803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460803_left_root small_8460803_left_fuel small_8460803_left_count small_8460803_left_encoded = true := by
  decide +kernel
theorem small_8460803_left_covered : CoveredBy scale carrier boxes small_8460803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460803_left_root small_8460803_left_fuel small_8460803_left_count small_8460803_left_encoded small_8460803_left_checked

theorem cover_8460803 : CoveredBy scale carrier boxes root_8460803 := by
  apply coveredBy_split_literal root_8460803 small_8460803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460885 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8460803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460885
#print axioms cover_8460803

def root_8460798 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460798_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8460798_right_fuel : Nat := 1
def small_8460798_right_count : Nat := 1
def small_8460798_right_encoded : String := "00000001"
theorem small_8460798_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8460798_right_root small_8460798_right_fuel small_8460798_right_count small_8460798_right_encoded = true := by
  decide +kernel
theorem small_8460798_right_covered : CoveredBy scale carrier boxes small_8460798_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8460798_right_root small_8460798_right_fuel small_8460798_right_count small_8460798_right_encoded small_8460798_right_checked

theorem cover_8460798 : CoveredBy scale carrier boxes root_8460798 := by
  apply coveredBy_split_literal root_8460798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460803 small_8460798_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460803
  · exact small_8460798_right_covered
#print axioms cover_8460798

def root_8459672 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8459672 : CoveredBy scale carrier boxes root_8459672 := by
  apply coveredBy_split_literal root_8459672 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3161.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8460798 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3161.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8460798
#print axioms cover_8459672

def root_8459666 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8459666_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8459666_left_fuel : Nat := 1
def small_8459666_left_count : Nat := 1
def small_8459666_left_encoded : String := "00000000"
theorem small_8459666_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8459666_left_root small_8459666_left_fuel small_8459666_left_count small_8459666_left_encoded = true := by
  decide +kernel
theorem small_8459666_left_covered : CoveredBy scale carrier boxes small_8459666_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8459666_left_root small_8459666_left_fuel small_8459666_left_count small_8459666_left_encoded small_8459666_left_checked

theorem cover_8459666 : CoveredBy scale carrier boxes root_8459666 := by
  apply coveredBy_split_literal root_8459666 small_8459666_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8459672 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8459666_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8459672
#print axioms cover_8459666

def root_8459665 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8459665 : CoveredBy scale carrier boxes root_8459665 := by
  apply coveredBy_split_literal root_8459665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8459666 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3164.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8459666
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3164.covered
#print axioms cover_8459665

def root_8459659 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8459659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8459659_left_fuel : Nat := 1
def small_8459659_left_count : Nat := 1
def small_8459659_left_encoded : String := "00000004"
theorem small_8459659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8459659_left_root small_8459659_left_fuel small_8459659_left_count small_8459659_left_encoded = true := by
  decide +kernel
theorem small_8459659_left_covered : CoveredBy scale carrier boxes small_8459659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8459659_left_root small_8459659_left_fuel small_8459659_left_count small_8459659_left_encoded small_8459659_left_checked

theorem cover_8459659 : CoveredBy scale carrier boxes root_8459659 := by
  apply coveredBy_split_literal root_8459659 small_8459659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8459665 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8459659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8459665
#print axioms cover_8459659

def root_8445649 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8445649 : CoveredBy scale carrier boxes root_8445649 := by
  apply coveredBy_split_literal root_8445649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8459659 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445650
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8459659
#print axioms cover_8445649

def root_8445644 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445644_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445644_right_fuel : Nat := 1
def small_8445644_right_count : Nat := 1
def small_8445644_right_encoded : String := "00000003"
theorem small_8445644_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8445644_right_root small_8445644_right_fuel small_8445644_right_count small_8445644_right_encoded = true := by
  decide +kernel
theorem small_8445644_right_covered : CoveredBy scale carrier boxes small_8445644_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8445644_right_root small_8445644_right_fuel small_8445644_right_count small_8445644_right_encoded small_8445644_right_checked

theorem cover_8445644 : CoveredBy scale carrier boxes root_8445644 := by
  apply coveredBy_split_literal root_8445644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445649 small_8445644_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445649
  · exact small_8445644_right_covered
#print axioms cover_8445644

def root_8467856 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8467856 : CoveredBy scale carrier boxes root_8467856 := by
  apply coveredBy_split_literal root_8467856 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3165.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3166.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3165.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3166.covered
#print axioms cover_8467856

def root_8467850 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467850_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467850_left_fuel : Nat := 1
def small_8467850_left_count : Nat := 1
def small_8467850_left_encoded : String := "00000000"
theorem small_8467850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8467850_left_root small_8467850_left_fuel small_8467850_left_count small_8467850_left_encoded = true := by
  decide +kernel
theorem small_8467850_left_covered : CoveredBy scale carrier boxes small_8467850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8467850_left_root small_8467850_left_fuel small_8467850_left_count small_8467850_left_encoded small_8467850_left_checked

theorem cover_8467850 : CoveredBy scale carrier boxes root_8467850 := by
  apply coveredBy_split_literal root_8467850 small_8467850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8467856 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8467850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8467856
#print axioms cover_8467850

def root_8467849 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467849_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467849_right_fuel : Nat := 18
def small_8467849_right_count : Nat := 155
def small_8467849_right_encoded : String := "12073D0008A912F912073CF80000000108A91309120700FE05000104135D450500000002050000FC0000000800000008000000080000000412073CFE0000000405000104135D450500000002050000FC135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE00000008000000040F350CFE00000004000000060F34D0F80CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A000000040F8751090000000400000006000000010F350D000CFD9BF90F350CF8000000010CFD9C0900000006000000060F34D0F80000000A000000010000000000000003135D4507000000030CFD9C010F34D100000000000CFD9BF90F350CF800000001000000060000000A0F350D000CFD9BF9000000060000000A00000000135D8105050000FC135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C0900000008000000080F34D0F800000008000000010F350D00000000080000000000000003135D4507000000030CFD9C010F34D100000000000CFD9BF9000000080F34D0F800000008000000010F350D00000000080000000000000002120700F808A91309120700FE050001040000000A000000080000000412073CFE0000000405000104135D450500000002050000FC135D81070CFD9C010000000A00000005000000030000000A135D8105050000FC135D81070CFD9C010F34D10000000000045489F900000008138670F80CFD9C090000000800000005000000010F350D00000000080000000000000003135D4507000000030CFD9C010F34D10000000000045489F9000000080000000500000005000000020000000100000000"
theorem small_8467849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8467849_right_root small_8467849_right_fuel small_8467849_right_count small_8467849_right_encoded = true := by
  decide +kernel
theorem small_8467849_right_covered : CoveredBy scale carrier boxes small_8467849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8467849_right_root small_8467849_right_fuel small_8467849_right_count small_8467849_right_encoded small_8467849_right_checked

theorem cover_8467849 : CoveredBy scale carrier boxes root_8467849 := by
  apply coveredBy_split_literal root_8467849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8467850 small_8467849_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8467850
  · exact small_8467849_right_covered
#print axioms cover_8467849

def root_8467844 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467844_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467844_right_fuel : Nat := 1
def small_8467844_right_count : Nat := 1
def small_8467844_right_encoded : String := "00000004"
theorem small_8467844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8467844_right_root small_8467844_right_fuel small_8467844_right_count small_8467844_right_encoded = true := by
  decide +kernel
theorem small_8467844_right_covered : CoveredBy scale carrier boxes small_8467844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8467844_right_root small_8467844_right_fuel small_8467844_right_count small_8467844_right_encoded small_8467844_right_checked

theorem cover_8467844 : CoveredBy scale carrier boxes root_8467844 := by
  apply coveredBy_split_literal root_8467844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8467849 small_8467844_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8467849
  · exact small_8467844_right_covered
#print axioms cover_8467844

def root_8467843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8467843 : CoveredBy scale carrier boxes root_8467843 := by
  apply coveredBy_split_literal root_8467843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8467844 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3167.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8467844
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3167.covered
#print axioms cover_8467843

def root_8467837 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467837_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8467837_left_fuel : Nat := 1
def small_8467837_left_count : Nat := 1
def small_8467837_left_encoded : String := "00000003"
theorem small_8467837_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8467837_left_root small_8467837_left_fuel small_8467837_left_count small_8467837_left_encoded = true := by
  decide +kernel
theorem small_8467837_left_covered : CoveredBy scale carrier boxes small_8467837_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8467837_left_root small_8467837_left_fuel small_8467837_left_count small_8467837_left_encoded small_8467837_left_checked

theorem cover_8467837 : CoveredBy scale carrier boxes root_8467837 := by
  apply coveredBy_split_literal root_8467837 small_8467837_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8467843 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8467837_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8467843
#print axioms cover_8467837

def root_8445643 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8445643 : CoveredBy scale carrier boxes root_8445643 := by
  apply coveredBy_split_literal root_8445643 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8467837 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445644
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8467837
#print axioms cover_8445643

def root_8445637 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445637_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445637_left_fuel : Nat := 1
def small_8445637_left_count : Nat := 1
def small_8445637_left_encoded : String := "00000002"
theorem small_8445637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8445637_left_root small_8445637_left_fuel small_8445637_left_count small_8445637_left_encoded = true := by
  decide +kernel
theorem small_8445637_left_covered : CoveredBy scale carrier boxes small_8445637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8445637_left_root small_8445637_left_fuel small_8445637_left_count small_8445637_left_encoded small_8445637_left_checked

theorem cover_8445637 : CoveredBy scale carrier boxes root_8445637 := by
  apply coveredBy_split_literal root_8445637 small_8445637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445643 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8445637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445643
#print axioms cover_8445637

def root_8474305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8474305 : CoveredBy scale carrier boxes root_8474305 := by
  apply coveredBy_split_literal root_8474305 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3168.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3169.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3168.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3169.covered
#print axioms cover_8474305

def root_8474300 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8474300_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8474300_right_fuel : Nat := 1
def small_8474300_right_count : Nat := 1
def small_8474300_right_encoded : String := "00000002"
theorem small_8474300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8474300_right_root small_8474300_right_fuel small_8474300_right_count small_8474300_right_encoded = true := by
  decide +kernel
theorem small_8474300_right_covered : CoveredBy scale carrier boxes small_8474300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8474300_right_root small_8474300_right_fuel small_8474300_right_count small_8474300_right_encoded small_8474300_right_checked

theorem cover_8474300 : CoveredBy scale carrier boxes root_8474300 := by
  apply coveredBy_split_literal root_8474300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8474305 small_8474300_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8474305
  · exact small_8474300_right_covered
#print axioms cover_8474300

def root_8445636 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8445636 : CoveredBy scale carrier boxes root_8445636 := by
  apply coveredBy_split_literal root_8445636 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8474300 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445637
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8474300
#print axioms cover_8445636

def root_8445630 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445630_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445630_left_fuel : Nat := 1
def small_8445630_left_count : Nat := 1
def small_8445630_left_encoded : String := "00000001"
theorem small_8445630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8445630_left_root small_8445630_left_fuel small_8445630_left_count small_8445630_left_encoded = true := by
  decide +kernel
theorem small_8445630_left_covered : CoveredBy scale carrier boxes small_8445630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8445630_left_root small_8445630_left_fuel small_8445630_left_count small_8445630_left_encoded small_8445630_left_checked

theorem cover_8445630 : CoveredBy scale carrier boxes root_8445630 := by
  apply coveredBy_split_literal root_8445630 small_8445630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445636 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8445630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445636
#print axioms cover_8445630

def root_8478342 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8478342 : CoveredBy scale carrier boxes root_8478342 := by
  apply coveredBy_split_literal root_8478342 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3170.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3171.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3170.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3171.covered
#print axioms cover_8478342

def root_8478337 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8478337_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8478337_right_fuel : Nat := 1
def small_8478337_right_count : Nat := 1
def small_8478337_right_encoded : String := "00000001"
theorem small_8478337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8478337_right_root small_8478337_right_fuel small_8478337_right_count small_8478337_right_encoded = true := by
  decide +kernel
theorem small_8478337_right_covered : CoveredBy scale carrier boxes small_8478337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8478337_right_root small_8478337_right_fuel small_8478337_right_count small_8478337_right_encoded small_8478337_right_checked

theorem cover_8478337 : CoveredBy scale carrier boxes root_8478337 := by
  apply coveredBy_split_literal root_8478337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8478342 small_8478337_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8478342
  · exact small_8478337_right_covered
#print axioms cover_8478337

def root_8445629 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8445629 : CoveredBy scale carrier boxes root_8445629 := by
  apply coveredBy_split_literal root_8445629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8478337 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445630
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8478337
#print axioms cover_8445629

def root_8445624 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445624_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8445624_right_fuel : Nat := 1
def small_8445624_right_count : Nat := 1
def small_8445624_right_encoded : String := "00000000"
theorem small_8445624_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8445624_right_root small_8445624_right_fuel small_8445624_right_count small_8445624_right_encoded = true := by
  decide +kernel
theorem small_8445624_right_covered : CoveredBy scale carrier boxes small_8445624_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8445624_right_root small_8445624_right_fuel small_8445624_right_count small_8445624_right_encoded small_8445624_right_checked

theorem cover_8445624 : CoveredBy scale carrier boxes root_8445624 := by
  apply coveredBy_split_literal root_8445624 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445629 small_8445624_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445629
  · exact small_8445624_right_covered
#print axioms cover_8445624

def root_8443044 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8443044 : CoveredBy scale carrier boxes root_8443044 := by
  apply coveredBy_split_literal root_8443044 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3156.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8445624 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3156.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8445624
#print axioms cover_8443044

def root_8442518 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8442518_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8442518_left_fuel : Nat := 20
def small_8442518_left_count : Nat := 241
def small_8442518_left_encoded : String := "0A0001001151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F900000008120700F800000008000000011151E8FF0000000800000004000000031151E9070000000300000008115225050A0000FC000000081151E9070000000300000008000000021151E8F90A0001041151E905000000020A0000FC000000081151E90700000003000000080000000800000001115225010A0000F8115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A912F900000005120700F808A913070000000512073CFC0000000308A912FF00000005120700FE050001040000000600000005000000040000000112073D0008A912F912073CF80000000108A913070000000512073CFC0000000308A912FF00000005120700FE0000000800000004120700F808A91307120700FC000000090000000312073CFC0000000308A912FF00000008120700FE000000080000000400000001000000001151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FF00000005120700FE00000005000000040000000A12073D0008A912F9000000080000000A000000001151E8FF0000000A00000004115225050A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A912F900000005120700F8000000050000000112073D0008A912F900000008120700F808A913050000000512073D04000000090000000200000001000000001151E8FF08A91301120701000000000008A912F900000008120700F800000005000000010000000800000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912F900000008120700F80000000800000001000000081151E8FF0000000800000004000000021151E8F90A0001041151E905000000020A0000FC115225070A0000FE000000051151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912FF00000005120700FE0000000500000004000000081151E8FF0000000800000004115225050A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A9130512070104000000020000000812073D040000000500000002000000081151E8FF0000000800000004000000031151E9070000000300000008000000020000000100000000"
theorem small_8442518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8442518_left_root small_8442518_left_fuel small_8442518_left_count small_8442518_left_encoded = true := by
  decide +kernel
theorem small_8442518_left_covered : CoveredBy scale carrier boxes small_8442518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8442518_left_root small_8442518_left_fuel small_8442518_left_count small_8442518_left_encoded small_8442518_left_checked

theorem cover_8442518 : CoveredBy scale carrier boxes root_8442518 := by
  apply coveredBy_split_literal root_8442518 small_8442518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8443044 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8442518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8443044
#print axioms cover_8442518

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204

import TaoBundleAssembly0126
import TaoBundleChunkBatch0477
import TaoBundleChunkBatch0478
import TaoBundleChunkBatch0479
import TaoBundleChunkBatch0480
import TaoBundleChunkBatch0481
import TaoBundleChunkBatch0482
import TaoBundleChunkBatch0483
import TaoBundleChunkBatch0484
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127
def root_5102797 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102797_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102797_right_fuel : Nat := 19
def small_5102797_right_count : Nat := 95
def small_5102797_right_encoded : String := "135D44F9050000FA135D80FB00000002045489F71386AD00045489FD1386ACFC00000003045489FF00000005138670FE028000F8000000060000000600000004138670FC045489FF000000090000000600000003000000001386710000000000045489FD1386ACFC00000003045489FF1386ACFE00000004028000F813D7ECF900000001078000FA128A7CFB00000002022A457713E20100067ECE7D00000005000000060000000013E1C50000000000067ECE7D12EA94FC00000003067ECE7F000000050000000600000009128A40FB000000060000000213D7B0F9078000FA128A7CFB00000002022A45770000000813E1C5000000000000000009000000060000000100000006138670FC045489FF1386ACFE00000004000000060000000600000003135D44FB045489F71386AD00045489FD1386ACFC00000003045489FF000000050000000600000006000000001386710000000000045489FD1386ACFC00000003045489FF0000000600000006000000060000000200000001"
theorem small_5102797_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102797_right_root small_5102797_right_fuel small_5102797_right_count small_5102797_right_encoded = true := by
  decide +kernel
theorem small_5102797_right_covered : CoveredBy scale carrier boxes small_5102797_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102797_right_root small_5102797_right_fuel small_5102797_right_count small_5102797_right_encoded small_5102797_right_checked

theorem cover_5102797 : CoveredBy scale carrier boxes root_5102797 := by
  apply coveredBy_split_literal root_5102797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5102798 small_5102797_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5102798
  · exact small_5102797_right_covered
#print axioms cover_5102797

def root_5102792 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102792_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102792_right_fuel : Nat := 1
def small_5102792_right_count : Nat := 1
def small_5102792_right_encoded : String := "00000004"
theorem small_5102792_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102792_right_root small_5102792_right_fuel small_5102792_right_count small_5102792_right_encoded = true := by
  decide +kernel
theorem small_5102792_right_covered : CoveredBy scale carrier boxes small_5102792_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102792_right_root small_5102792_right_fuel small_5102792_right_count small_5102792_right_encoded small_5102792_right_checked

theorem cover_5102792 : CoveredBy scale carrier boxes root_5102792 := by
  apply coveredBy_split_literal root_5102792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5102797 small_5102792_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5102797
  · exact small_5102792_right_covered
#print axioms cover_5102792

def root_5102162 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102162_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102162_left_fuel : Nat := 29
def small_5102162_left_count : Nat := 297
def small_5102162_left_encoded : String := "12073CFE00000004050000F8135D80F900000001050000FA135D80FB00000002045489F71386AD00045489FD00000005138670FC0CFD9BFF000000050F34D0FE078000F8128A7CF900000001078000FA128A7CFB000000020000000700000007128A40F900000005000000010000000400000003000000001386710000000000045489FD1386ACFC000000030CFD9BFF000000050F34D0FE078000F8128A7CF900000001078000FA128A7CFB00000002022A45770000000513E1C50000000000067ECE7D0000000512EA58FC0AD3577F0000000510D100FE08C000F80000000511FBE8F900000005000000010000000400000003128A40FB0000000500000002128A40F9078000FA00000005128A40FB00000005000000020000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000F8128A7CF900000001078000FA128A7CFB00000002022A45770000000513E1C50000000000022A457D000000050000000700000007128A40F9078000FA00000005128A40FB0000000500000002000000010F8750FF00000005000000040F34D0FE078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E20100022A457D13E200FC000000030AD3577F0000000510D100FE000000070000000413E1C4FC0AD3577F0000000710D100FE0000000700000004000000030000000013E1C50000000000022A457D13E200FC000000030AD3577F10D13CFE0000000408C000F80000000711FBE8F9000000050000000110D100FE08C000F811FC24F90000000108C000FA11FC24FB00000002011523370000000713F8590000000000033F67BD00000007000000070000000711FBE8F908C000FA0000000911FBE8FB011523370000000513F8590000000000033F67BD000000050000000700000002000000010000000413E1C4FC0AD3577F10D13CFE000000040000000710D100FE000000090000000400000003128A40FB022A45770000000713E1C50000000000022A457D13E200FC000000030AD3577F0000000510D100FE000000070000000413E1C4FC0AD3577F0000000710D100FE00000006000000040000000300000002128A40F9078000FA128A7CFB00000002022A45770000000913E1C50000000000022A457D13E200FC000000030AD3577F0000000510D100FE000000090000000400000009128A40FB022A457713E20100022A457D00000005000000060000000013E1C50000000000022A457D13E200FC000000030AD3577F00000005000000060000000600000002000000010000000400000003135D44FB045489F7000000051386710000000000045489FD00000005138670FC0CFD9BFF000000050F34D0FE078000F8128A7CF90000000100000007128A40F90000000600000001000000040000000300000002135D44F9050000FA135D80FB00000002045489F7000000051386710000000000045489FD00000005138670FC0CFD9BFF000000050F34D0FE028000F813D7ECF900000001078000FA00000009128A40FB0000000600000002000000090000000400000003135D44FB045489F7000000051386710000000000045489FD00000005138670FC0CFD9BFF0000000500000006000000030000000200000001"
theorem small_5102162_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102162_left_root small_5102162_left_fuel small_5102162_left_count small_5102162_left_encoded = true := by
  decide +kernel
theorem small_5102162_left_covered : CoveredBy scale carrier boxes small_5102162_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102162_left_root small_5102162_left_fuel small_5102162_left_count small_5102162_left_encoded small_5102162_left_checked

theorem cover_5102162 : CoveredBy scale carrier boxes root_5102162 := by
  apply coveredBy_split_literal root_5102162 small_5102162_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5102792 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5102162_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5102792
#print axioms cover_5102162

def root_5102157 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102157_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102157_right_fuel : Nat := 1
def small_5102157_right_count : Nat := 1
def small_5102157_right_encoded : String := "00000003"
theorem small_5102157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102157_right_root small_5102157_right_fuel small_5102157_right_count small_5102157_right_encoded = true := by
  decide +kernel
theorem small_5102157_right_covered : CoveredBy scale carrier boxes small_5102157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102157_right_root small_5102157_right_fuel small_5102157_right_count small_5102157_right_encoded small_5102157_right_checked

theorem cover_5102157 : CoveredBy scale carrier boxes root_5102157 := by
  apply coveredBy_split_literal root_5102157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5102162 small_5102157_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5102162
  · exact small_5102157_right_covered
#print axioms cover_5102157

def root_5101555 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101555_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101555_left_fuel : Nat := 32
def small_5101555_left_count : Nat := 285
def small_5101555_left_encoded : String := "12073CFC0000000308A912FF00000005120700FE050000F8135D80F900000001050000FA135D80FB00000002045489F71386AD000CFD9BFD000000050F34D0FC045489FF00000005138670FE078000F8128A7CF900000001078000FA128A7CFB0000000200000008128A40FB0000000500000002128A40F9000000050000000100000004000000030000000013867100000000000CFD9BFD0F350CFC00000003045489FF00000005138670FE0C9A86FC0F878CFD00000003078000F8128A7CF900000001078000FA128A7CFB00000002022A45770000000513E1C50000000000022A457F0000000500000008128A40FB0000000500000002128A40F9078000FA00000005128A40FB0000000500000002000000010F8750FD0000000500000003000000040F34D0FC045489FF1386ACFE00000004078000F8128A7CF900000001078000FA128A7CFB00000002022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F0000000512EA58FE08C000F80000000511FBE8F900000005000000010000000400000003128A40FB0000000500000002128A40F9078000FA00000005128A40FB000000050000000200000001138670FE078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E201000AD3577D0000000810D100FC022A457F13E200FE000000040000000800000008000000030000000013E1C500000000000AD3577D10D13CFC00000003022A457F13E200FE0000000408C000F811FC24F90000000100000009000000080000000810D100FC022A457F13E200FE0000000408C000F811FC24F90000000108C000FA11FC24FB00000002011523370000000813F859000000000009BE353D00000008117740FC00000008000000030000000A11FBE8F908C000FA0000000811FBE8FB011523370000000513F859000000000009BE353D00000005117740FC0000000A0000000300000002000000010000000A00000003128A40FB022A45770000000A13E1C500000000000AD3577D0000000910D100FC0000000A0000000300000002128A40F9078000FA128A7CFB00000002022A45770000000813E1C500000000000AD3577D0000000810D100FC022A457F000000080000000600000003128A40FB022A457713E201000AD3577D00000005000000060000000013E1C500000000000AD3577D10D13CFC00000003022A457F00000005000000060000000600000002000000010000000400000003135D44FB045489F70000000513867100000000000CFD9BFD000000050F34D0FC045489FF00000005138670FE078000F80000000A128A40F90000000600000001000000040000000300000002135D44F9050000FA135D80FB00000002045489F70000000513867100000000000CFD9BFD000000050F34D0FC045489FF00000005138670FE028000F813D7ECF900000001078000FA00000008128A40FB0000000600000002000000080000000400000003135D44FB045489F70000000513867100000000000CFD9BFD000000050F34D0FC045489FF000000050000000600000003000000020000000100000004"
theorem small_5101555_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101555_left_root small_5101555_left_fuel small_5101555_left_count small_5101555_left_encoded = true := by
  decide +kernel
theorem small_5101555_left_covered : CoveredBy scale carrier boxes small_5101555_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101555_left_root small_5101555_left_fuel small_5101555_left_count small_5101555_left_encoded small_5101555_left_checked

theorem cover_5101555 : CoveredBy scale carrier boxes root_5101555 := by
  apply coveredBy_split_literal root_5101555 small_5101555_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5102157 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5101555_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5102157
#print axioms cover_5101555

def root_5101549 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101549_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101549_left_fuel : Nat := 1
def small_5101549_left_count : Nat := 1
def small_5101549_left_encoded : String := "00000000"
theorem small_5101549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101549_left_root small_5101549_left_fuel small_5101549_left_count small_5101549_left_encoded = true := by
  decide +kernel
theorem small_5101549_left_covered : CoveredBy scale carrier boxes small_5101549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101549_left_root small_5101549_left_fuel small_5101549_left_count small_5101549_left_encoded small_5101549_left_checked

theorem cover_5101549 : CoveredBy scale carrier boxes root_5101549 := by
  apply coveredBy_split_literal root_5101549 small_5101549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101555 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5101549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101555
#print axioms cover_5101549

def root_5101345 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101345_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101345_left_fuel : Nat := 19
def small_5101345_left_count : Nat := 99
def small_5101345_left_encoded : String := "12073D0008A912FD00000005120700FC08A912FF00000005120700FE050000F8135D80F900000001050000FA135D80FB000000020CFD9BF70F350D00045489FD00000005138670FC0000000500000003000000000F34D10000000000045489FD1386ACFC00000003045489FF00000005138670FE078000F8000000050000000800000004138670FC045489FF1386ACFE00000004078000F800000005128A40F90000000500000001138670FE078000F8128A7CF900000001078000FA0000000600000006128A40F900000006000000010000000400000003135D44FB0CFD9BF7000000050F34D10000000000045489FD00000005138670FC045489FF00000005000000060000000300000002135D44F9050000FA135D80FB000000020CFD9BF7000000050F34D10000000000045489FD00000005138670FC045489FF000000050000000600000003135D44FB0CFD9BF7000000050F34D10000000000045489FD00000005138670FC045489FF0000000500000006000000030000000200000001000000040000000300000000"
theorem small_5101345_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101345_left_root small_5101345_left_fuel small_5101345_left_count small_5101345_left_encoded = true := by
  decide +kernel
theorem small_5101345_left_covered : CoveredBy scale carrier boxes small_5101345_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101345_left_root small_5101345_left_fuel small_5101345_left_count small_5101345_left_encoded small_5101345_left_checked

theorem cover_5101345 : CoveredBy scale carrier boxes root_5101345 := by
  apply coveredBy_split_literal root_5101345 small_5101345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101549 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5101345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101549
#print axioms cover_5101345

def root_5101339 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101339_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101339_left_fuel : Nat := 1
def small_5101339_left_count : Nat := 1
def small_5101339_left_encoded : String := "00000004"
theorem small_5101339_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101339_left_root small_5101339_left_fuel small_5101339_left_count small_5101339_left_encoded = true := by
  decide +kernel
theorem small_5101339_left_covered : CoveredBy scale carrier boxes small_5101339_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101339_left_root small_5101339_left_fuel small_5101339_left_count small_5101339_left_encoded small_5101339_left_checked

theorem cover_5101339 : CoveredBy scale carrier boxes root_5101339 := by
  apply coveredBy_split_literal root_5101339 small_5101339_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101345 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5101339_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101345
#print axioms cover_5101339

def root_5101338 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101338_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101338_right_fuel : Nat := 2
def small_5101338_right_count : Nat := 3
def small_5101338_right_encoded : String := "1151E8FF0000000500000004"
theorem small_5101338_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101338_right_root small_5101338_right_fuel small_5101338_right_count small_5101338_right_encoded = true := by
  decide +kernel
theorem small_5101338_right_covered : CoveredBy scale carrier boxes small_5101338_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101338_right_root small_5101338_right_fuel small_5101338_right_count small_5101338_right_encoded small_5101338_right_checked

theorem cover_5101338 : CoveredBy scale carrier boxes root_5101338 := by
  apply coveredBy_split_literal root_5101338 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101339 small_5101338_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101339
  · exact small_5101338_right_covered
#print axioms cover_5101338

def root_5101332 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101332_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101332_left_fuel : Nat := 1
def small_5101332_left_count : Nat := 1
def small_5101332_left_encoded : String := "00000003"
theorem small_5101332_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101332_left_root small_5101332_left_fuel small_5101332_left_count small_5101332_left_encoded = true := by
  decide +kernel
theorem small_5101332_left_covered : CoveredBy scale carrier boxes small_5101332_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101332_left_root small_5101332_left_fuel small_5101332_left_count small_5101332_left_encoded small_5101332_left_checked

theorem cover_5101332 : CoveredBy scale carrier boxes root_5101332 := by
  apply coveredBy_split_literal root_5101332 small_5101332_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101338 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5101332_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101338
#print axioms cover_5101332

def root_5101331 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101331_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101331_right_fuel : Nat := 2
def small_5101331_right_count : Nat := 3
def small_5101331_right_encoded : String := "1151E8FD0000000500000003"
theorem small_5101331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101331_right_root small_5101331_right_fuel small_5101331_right_count small_5101331_right_encoded = true := by
  decide +kernel
theorem small_5101331_right_covered : CoveredBy scale carrier boxes small_5101331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101331_right_root small_5101331_right_fuel small_5101331_right_count small_5101331_right_encoded small_5101331_right_checked

theorem cover_5101331 : CoveredBy scale carrier boxes root_5101331 := by
  apply coveredBy_split_literal root_5101331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101332 small_5101331_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101332
  · exact small_5101331_right_covered
#print axioms cover_5101331

def root_5101326 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101326_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5101326_right_fuel : Nat := 1
def small_5101326_right_count : Nat := 1
def small_5101326_right_encoded : String := "00000002"
theorem small_5101326_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5101326_right_root small_5101326_right_fuel small_5101326_right_count small_5101326_right_encoded = true := by
  decide +kernel
theorem small_5101326_right_covered : CoveredBy scale carrier boxes small_5101326_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5101326_right_root small_5101326_right_fuel small_5101326_right_count small_5101326_right_encoded small_5101326_right_checked

theorem cover_5101326 : CoveredBy scale carrier boxes root_5101326 := by
  apply coveredBy_split_literal root_5101326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101331 small_5101326_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101331
  · exact small_5101326_right_covered
#print axioms cover_5101326

def root_5096758 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5096758 : CoveredBy scale carrier boxes root_5096758 := by
  apply coveredBy_split_literal root_5096758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5096759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5101326 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5096759
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5101326
#print axioms cover_5096758

def root_5096753 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096753_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096753_right_fuel : Nat := 1
def small_5096753_right_count : Nat := 1
def small_5096753_right_encoded : String := "00000001"
theorem small_5096753_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096753_right_root small_5096753_right_fuel small_5096753_right_count small_5096753_right_encoded = true := by
  decide +kernel
theorem small_5096753_right_covered : CoveredBy scale carrier boxes small_5096753_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096753_right_root small_5096753_right_fuel small_5096753_right_count small_5096753_right_encoded small_5096753_right_checked

theorem cover_5096753 : CoveredBy scale carrier boxes root_5096753 := by
  apply coveredBy_split_literal root_5096753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5096758 small_5096753_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5096758
  · exact small_5096753_right_covered
#print axioms cover_5096753

def root_5076653 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076653 : CoveredBy scale carrier boxes root_5076653 := by
  apply coveredBy_split_literal root_5076653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.root_5076654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5096753 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0126.cover_5076654
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5096753
#print axioms cover_5076653

def root_5076647 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076647_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076647_left_fuel : Nat := 1
def small_5076647_left_count : Nat := 1
def small_5076647_left_encoded : String := "00000000"
theorem small_5076647_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076647_left_root small_5076647_left_fuel small_5076647_left_count small_5076647_left_encoded = true := by
  decide +kernel
theorem small_5076647_left_covered : CoveredBy scale carrier boxes small_5076647_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076647_left_root small_5076647_left_fuel small_5076647_left_count small_5076647_left_encoded small_5076647_left_checked

theorem cover_5076647 : CoveredBy scale carrier boxes root_5076647 := by
  apply coveredBy_split_literal root_5076647 small_5076647_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5076653 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076647_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5076653
#print axioms cover_5076647

def root_5076045 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076045_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076045_left_fuel : Nat := 23
def small_5076045_left_count : Nat := 285
def small_5076045_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF00000005120700FE05000100000000050000000800000004120700FC08A912FF12073CFE00000004050001000000000500000007120700FE05000100135D44F70CFD9BF9000000050000000800000000135D80F7000000000CFD9BF90F350CF8000000010CFD9BFB00000005000000080F34D0F800000007000000010000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE0000000405000100000000050000000700000008120700FC08A912FF12073CFE00000004050001000000000700000007000000080000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE00000004050001000000000500000007120700FE05000100000000080000000800000004120700FC0000000700000003120700FA08A912FD000000080000000700000002000000011151E8FF08A912F912073CF80000000108A912FB00000005120700FA08A912FD00000005120700FC000000070000000300000002120700F80000000700000001000000041151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A912FB0000000500000008120700F808A912FB12073CFA0000000208A912FF00000005120700FE000000080000000400000008000000011151E8FF0000000500000004000000031151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FD00000005120700FC08A912FF00000005120700FE05000100135D44F70000000500000000000000070000000400000003120700F808A912FD12073CFC0000000308A912FF00000005120700FE05000100135D44F70000000500000000135D80F700000000050000FA135D80FB00000002045489F900000005138670F80CFD9BFD000000050000000700000001135D44FB045489F900000005000000090000000200000004120700FC08A912FF000000070000000700000003000000011151E8FF00000005000000041151E8FD0000000500000003000000021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD00000005120700FC08A912FF00000005120700FE05000100135D44F70000000500000000000000080000000400000003120700FA08A912FD12073CFC0000000308A912FF0000000500000008120700FC08A912FF12073CFE0000000405000100135D44F70000000500000000135D80F700000000050000F8135D80F900000001045489FB00000005138670FA045489FD000000050000000700000002135D44F9045489FB000000050000000A00000001120700FE000000080000000400000003000000021151E8FF00000005000000041151E8FD00000005000000031151E8FB00000005000000020000000100000000"
theorem small_5076045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076045_left_root small_5076045_left_fuel small_5076045_left_count small_5076045_left_encoded = true := by
  decide +kernel
theorem small_5076045_left_covered : CoveredBy scale carrier boxes small_5076045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076045_left_root small_5076045_left_fuel small_5076045_left_count small_5076045_left_encoded small_5076045_left_checked

theorem cover_5076045 : CoveredBy scale carrier boxes root_5076045 := by
  apply coveredBy_split_literal root_5076045 small_5076045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5076647 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5076045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5076647
#print axioms cover_5076045

def root_5109987 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109987_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109987_right_fuel : Nat := 20
def small_5109987_right_count : Nat := 263
def small_5109987_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A91309120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000304548A09000000061386ACFE000000040C9A86FA0F878CFB00000002000000060000000A0F34D0FC04548A09000000060000000A000000030F34D0FA0000000600000002138670F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC00000006000000030000000600000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000304548A0900000006000000090F34D0FC00000009000000030F34D0FA0000000600000002138670F800000006000000010000000412073CFE00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC000000060F8750FD000000060000000300000004000000050F34D0FC0000000A0000000300000002138670F80CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0F350CFC0000000300000005000000050000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000A0000000500000005120700FC08A91309120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC0000000304548A09138670FE0C9A86FA000000060000000A000000040000000A138670FC0000000A000000030F34D0FA045489FD00000006138670FC04548A09000000061386ACFE00000004067ECE770000000A000000050000000300000002138670F80CFD9BFB0F350CFA00000002045489FD0000000A138670FC0000000A000000030F34D0FA000000060000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC0000000304548A09000000060000000A138670FC04548A09138670FE0C9A86FA0F878CFB0000000200000005000000050000000400000005000000030F34D0FA045489FD000000060000000500000002138670F80CFD9BFB0F350CFA00000002045489FD000000060000000500000006000000010000000412073CFE00000004045489F71386AD00045489F90000000A00000005000000000000000500000003120700FA08A912FD12073CFC0000000308A913090000000612073CFE00000004045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000050000000500000005000000050000000000000005120700FC08A91309120700FE000000060000000412073CFE0000000400000005000000030000000200000001"
theorem small_5109987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5109987_right_root small_5109987_right_fuel small_5109987_right_count small_5109987_right_encoded = true := by
  decide +kernel
theorem small_5109987_right_covered : CoveredBy scale carrier boxes small_5109987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5109987_right_root small_5109987_right_fuel small_5109987_right_count small_5109987_right_encoded small_5109987_right_checked

theorem cover_5109987 : CoveredBy scale carrier boxes root_5109987 := by
  apply coveredBy_split_literal root_5109987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1910.root small_5109987_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1910.covered
  · exact small_5109987_right_covered
#print axioms cover_5109987

def root_5109981 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109981_left_fuel : Nat := 1
def small_5109981_left_count : Nat := 1
def small_5109981_left_encoded : String := "00000000"
theorem small_5109981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5109981_left_root small_5109981_left_fuel small_5109981_left_count small_5109981_left_encoded = true := by
  decide +kernel
theorem small_5109981_left_covered : CoveredBy scale carrier boxes small_5109981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5109981_left_root small_5109981_left_fuel small_5109981_left_count small_5109981_left_encoded small_5109981_left_checked

theorem cover_5109981 : CoveredBy scale carrier boxes root_5109981 := by
  apply coveredBy_split_literal root_5109981 small_5109981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5109987 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5109981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5109987
#print axioms cover_5109981

def root_5108325 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108325 : CoveredBy scale carrier boxes root_5108325 := by
  apply coveredBy_split_literal root_5108325 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1909.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5109981 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1909.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5109981
#print axioms cover_5108325

def root_5108320 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108320_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108320_right_fuel : Nat := 1
def small_5108320_right_count : Nat := 1
def small_5108320_right_encoded : String := "00000004"
theorem small_5108320_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108320_right_root small_5108320_right_fuel small_5108320_right_count small_5108320_right_encoded = true := by
  decide +kernel
theorem small_5108320_right_covered : CoveredBy scale carrier boxes small_5108320_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108320_right_root small_5108320_right_fuel small_5108320_right_count small_5108320_right_encoded small_5108320_right_checked

theorem cover_5108320 : CoveredBy scale carrier boxes root_5108320 := by
  apply coveredBy_split_literal root_5108320 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108325 small_5108320_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108325
  · exact small_5108320_right_covered
#print axioms cover_5108320

def root_5108319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108319_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108319_right_fuel : Nat := 17
def small_5108319_right_count : Nat := 113
def small_5108319_right_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D81090CFD9BF70F350D000CFD9BF9000000080F34D0F80000000A00000001000000000F34D100000000000000000A00000004135D4509000000040CFD9BF70000000A0F34D100000000000000000A120700FC0000000A00000003120700FA08A912FD12073CFC00000003050000FE135D81090CFD9BF70F350D0000000008000000000000000800000004135D4509000000040CFD9BF70F350D00000000080000000000000005120700FC000000080000000300000002120700F808A912FB12073CFA0000000208A912FD0000000A120700FC0000000A00000003120700FA08A912FD12073CFC00000003050000FE135D81090CFD9BF70F350D00045489F91386ACF800000001045489FB0000000A00000005000000050000000000000005000000040000000500000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D8109045489F70000000A000000050000000400000005000000050000000500000005"
theorem small_5108319_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108319_right_root small_5108319_right_fuel small_5108319_right_count small_5108319_right_encoded = true := by
  decide +kernel
theorem small_5108319_right_covered : CoveredBy scale carrier boxes small_5108319_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108319_right_root small_5108319_right_fuel small_5108319_right_count small_5108319_right_encoded small_5108319_right_checked

theorem cover_5108319 : CoveredBy scale carrier boxes root_5108319 := by
  apply coveredBy_split_literal root_5108319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108320 small_5108319_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108320
  · exact small_5108319_right_covered
#print axioms cover_5108319

def root_5108313 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108313_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108313_left_fuel : Nat := 1
def small_5108313_left_count : Nat := 1
def small_5108313_left_encoded : String := "00000003"
theorem small_5108313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108313_left_root small_5108313_left_fuel small_5108313_left_count small_5108313_left_encoded = true := by
  decide +kernel
theorem small_5108313_left_covered : CoveredBy scale carrier boxes small_5108313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108313_left_root small_5108313_left_fuel small_5108313_left_count small_5108313_left_encoded small_5108313_left_checked

theorem cover_5108313 : CoveredBy scale carrier boxes root_5108313 := by
  apply coveredBy_split_literal root_5108313 small_5108313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108319 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108319
#print axioms cover_5108313

def root_5113447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5113447 : CoveredBy scale carrier boxes root_5113447 := by
  apply coveredBy_split_literal root_5113447 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1911.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1912.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1911.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1912.covered
#print axioms cover_5113447

def root_5113442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113442_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113442_right_fuel : Nat := 1
def small_5113442_right_count : Nat := 1
def small_5113442_right_encoded : String := "00000004"
theorem small_5113442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5113442_right_root small_5113442_right_fuel small_5113442_right_count small_5113442_right_encoded = true := by
  decide +kernel
theorem small_5113442_right_covered : CoveredBy scale carrier boxes small_5113442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5113442_right_root small_5113442_right_fuel small_5113442_right_count small_5113442_right_encoded small_5113442_right_checked

theorem cover_5113442 : CoveredBy scale carrier boxes root_5113442 := by
  apply coveredBy_split_literal root_5113442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5113447 small_5113442_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5113447
  · exact small_5113442_right_covered
#print axioms cover_5113442

def root_5113441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113441_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113441_right_fuel : Nat := 21
def small_5113441_right_count : Nat := 193
def small_5113441_right_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF90000000A0F34D0F80000000A00000001000000000F34D100000000000000000A00000004135D4509000000040CFD9BF70000000A0F34D100000000000000000A135D44FD050000FE135D81090CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000060F34D0FA0C9A8700000000080F878CF7000000000C9A86F80000000800000006000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000A0000000200000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000A000000050000000500000004135D4509000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA0C9A8700000000060000000A000000020F34D0F80000000A00000001000000000F34D100000000000CFD9BF90000000A0000000500000003120700FA050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF9000000080F34D0F80000000800000001000000000F34D100000000000000000500000004135D4509000000040CFD9BF70F350D000CFD9BF900000008000000050000000000000005135D44FD050000FE135D81090CFD9BF70F350D0000000009000000000000000500000004135D450900000004000000050000000300000002120700F808A912FB12073CFA00000002050000FC135D80FD00000003050000FE135D81090CFD9BF70000000A0F34D1000000000000000005000000040000000A135D44FD050000FE135D81090CFD9BF70F350D00045489F90000000A00000005000000000000000500000004135D4509000000040000000500000003000000050000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D80FD0000000300000005135D44FD050000FE00000005135D45090000000400000005000000030000000500000005"
theorem small_5113441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5113441_right_root small_5113441_right_fuel small_5113441_right_count small_5113441_right_encoded = true := by
  decide +kernel
theorem small_5113441_right_covered : CoveredBy scale carrier boxes small_5113441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5113441_right_root small_5113441_right_fuel small_5113441_right_count small_5113441_right_encoded small_5113441_right_checked

theorem cover_5113441 : CoveredBy scale carrier boxes root_5113441 := by
  apply coveredBy_split_literal root_5113441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5113442 small_5113441_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5113442
  · exact small_5113441_right_covered
#print axioms cover_5113441

def root_5113436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113436_right_fuel : Nat := 1
def small_5113436_right_count : Nat := 1
def small_5113436_right_encoded : String := "00000003"
theorem small_5113436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5113436_right_root small_5113436_right_fuel small_5113436_right_count small_5113436_right_encoded = true := by
  decide +kernel
theorem small_5113436_right_covered : CoveredBy scale carrier boxes small_5113436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5113436_right_root small_5113436_right_fuel small_5113436_right_count small_5113436_right_encoded small_5113436_right_checked

theorem cover_5113436 : CoveredBy scale carrier boxes root_5113436 := by
  apply coveredBy_split_literal root_5113436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5113441 small_5113436_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5113441
  · exact small_5113436_right_covered
#print axioms cover_5113436

def root_5108312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108312 : CoveredBy scale carrier boxes root_5108312 := by
  apply coveredBy_split_literal root_5108312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5113436 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108313
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5113436
#print axioms cover_5108312

def root_5108306 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108306_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108306_left_fuel : Nat := 1
def small_5108306_left_count : Nat := 1
def small_5108306_left_encoded : String := "00000002"
theorem small_5108306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108306_left_root small_5108306_left_fuel small_5108306_left_count small_5108306_left_encoded = true := by
  decide +kernel
theorem small_5108306_left_covered : CoveredBy scale carrier boxes small_5108306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108306_left_root small_5108306_left_fuel small_5108306_left_count small_5108306_left_encoded small_5108306_left_checked

theorem cover_5108306 : CoveredBy scale carrier boxes root_5108306 := by
  apply coveredBy_split_literal root_5108306 small_5108306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108312 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108312
#print axioms cover_5108306

def root_5108305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108305 : CoveredBy scale carrier boxes root_5108305 := by
  apply coveredBy_split_literal root_5108305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108306 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1913.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108306
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1913.covered
#print axioms cover_5108305

def root_5108299 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108299_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108299_left_fuel : Nat := 1
def small_5108299_left_count : Nat := 1
def small_5108299_left_encoded : String := "00000001"
theorem small_5108299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108299_left_root small_5108299_left_fuel small_5108299_left_count small_5108299_left_encoded = true := by
  decide +kernel
theorem small_5108299_left_covered : CoveredBy scale carrier boxes small_5108299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108299_left_root small_5108299_left_fuel small_5108299_left_count small_5108299_left_encoded small_5108299_left_checked

theorem cover_5108299 : CoveredBy scale carrier boxes root_5108299 := by
  apply coveredBy_split_literal root_5108299 small_5108299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108305 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108305
#print axioms cover_5108299

def root_5108298 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108298 : CoveredBy scale carrier boxes root_5108298 := by
  apply coveredBy_split_literal root_5108298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108299 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1914.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108299
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1914.covered
#print axioms cover_5108298

def root_5108292 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108292_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108292_left_fuel : Nat := 1
def small_5108292_left_count : Nat := 1
def small_5108292_left_encoded : String := "00000000"
theorem small_5108292_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108292_left_root small_5108292_left_fuel small_5108292_left_count small_5108292_left_encoded = true := by
  decide +kernel
theorem small_5108292_left_covered : CoveredBy scale carrier boxes small_5108292_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108292_left_root small_5108292_left_fuel small_5108292_left_count small_5108292_left_encoded small_5108292_left_checked

theorem cover_5108292 : CoveredBy scale carrier boxes root_5108292 := by
  apply coveredBy_split_literal root_5108292 small_5108292_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108298 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108292_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108298
#print axioms cover_5108292

def root_5106190 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5106190 : CoveredBy scale carrier boxes root_5106190 := by
  apply coveredBy_split_literal root_5106190 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1908.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5108292 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1908.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5108292
#print axioms cover_5106190

def root_5076044 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076044 : CoveredBy scale carrier boxes root_5076044 := by
  apply coveredBy_split_literal root_5076044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5076045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5106190 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5076045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5106190
#print axioms cover_5076044

def root_5124376 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5124376 : CoveredBy scale carrier boxes root_5124376 := by
  apply coveredBy_split_literal root_5124376 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1916.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1917.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1916.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1917.covered
#print axioms cover_5124376

def root_5124370 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5124370_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5124370_left_fuel : Nat := 1
def small_5124370_left_count : Nat := 1
def small_5124370_left_encoded : String := "00000000"
theorem small_5124370_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5124370_left_root small_5124370_left_fuel small_5124370_left_count small_5124370_left_encoded = true := by
  decide +kernel
theorem small_5124370_left_covered : CoveredBy scale carrier boxes small_5124370_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5124370_left_root small_5124370_left_fuel small_5124370_left_count small_5124370_left_encoded small_5124370_left_checked

theorem cover_5124370 : CoveredBy scale carrier boxes root_5124370 := by
  apply coveredBy_split_literal root_5124370 small_5124370_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5124376 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5124370_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5124376
#print axioms cover_5124370

def root_5123036 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5123036 : CoveredBy scale carrier boxes root_5123036 := by
  apply coveredBy_split_literal root_5123036 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1915.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5124370 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1915.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5124370
#print axioms cover_5123036

def root_5127597 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5127597 : CoveredBy scale carrier boxes root_5127597 := by
  apply coveredBy_split_literal root_5127597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1918.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1919.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1918.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1919.covered
#print axioms cover_5127597

def root_5127592 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5127592_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5127592_right_fuel : Nat := 1
def small_5127592_right_count : Nat := 1
def small_5127592_right_encoded : String := "00000000"
theorem small_5127592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5127592_right_root small_5127592_right_fuel small_5127592_right_count small_5127592_right_encoded = true := by
  decide +kernel
theorem small_5127592_right_covered : CoveredBy scale carrier boxes small_5127592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5127592_right_root small_5127592_right_fuel small_5127592_right_count small_5127592_right_encoded small_5127592_right_checked

theorem cover_5127592 : CoveredBy scale carrier boxes root_5127592 := by
  apply coveredBy_split_literal root_5127592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5127597 small_5127592_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5127597
  · exact small_5127592_right_covered
#print axioms cover_5127592

def root_5132011 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5132011 : CoveredBy scale carrier boxes root_5132011 := by
  apply coveredBy_split_literal root_5132011 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1920.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1921.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1920.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1921.covered
#print axioms cover_5132011

def root_5132005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5132005_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5132005_left_fuel : Nat := 1
def small_5132005_left_count : Nat := 1
def small_5132005_left_encoded : String := "00000000"
theorem small_5132005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5132005_left_root small_5132005_left_fuel small_5132005_left_count small_5132005_left_encoded = true := by
  decide +kernel
theorem small_5132005_left_covered : CoveredBy scale carrier boxes small_5132005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5132005_left_root small_5132005_left_fuel small_5132005_left_count small_5132005_left_encoded small_5132005_left_checked

theorem cover_5132005 : CoveredBy scale carrier boxes root_5132005 := by
  apply coveredBy_split_literal root_5132005 small_5132005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5132011 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5132005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5132011
#print axioms cover_5132005

def root_5127591 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5127591 : CoveredBy scale carrier boxes root_5127591 := by
  apply coveredBy_split_literal root_5127591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5127592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5132005 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5127592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5132005
#print axioms cover_5127591

def root_5123035 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5123035 : CoveredBy scale carrier boxes root_5123035 := by
  apply coveredBy_split_literal root_5123035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5123036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5127591 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5123036
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5127591
#print axioms cover_5123035

def root_5076043 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076043 : CoveredBy scale carrier boxes root_5076043 := by
  apply coveredBy_split_literal root_5076043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5076044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5123035 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5076044
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5123035
#print axioms cover_5076043

def root_5140523 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140523_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140523_right_fuel : Nat := 20
def small_5140523_right_count : Nat := 173
def small_5140523_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB000000070000000700000007000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A0700000007000000070F34D0FA0000000600000002138670F80000000600000001120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA04548A07000000060000000700000002138670F80000000700000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A07138670FC045489FF00000006138670FE0C9A86FA0F878CFB00000002000000050000000500000004000000031386ACFC00000003045489FF00000007000000050F34D0FA04548A07000000060000000500000002138670F80CFD9BFB0F350CFA00000002000000070000000600000001000000040000000312073CFC0000000308A912FF12073CFE00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB000000070F34D0FA0CFD9C07000000070F350CFC00000003000000050000000200000007000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070000000500000005120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB000000070000000500000005000000000000000500000004120700FA08A91307120700FC08A912FF00000006120700FE00000006000000040000000312073CFC0000000308A912FF12073CFE00000004045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9C070F34D0FC00000006000000030000000500000005000000050000000000000005000000050000000200000001"
theorem small_5140523_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5140523_right_root small_5140523_right_fuel small_5140523_right_count small_5140523_right_encoded = true := by
  decide +kernel
theorem small_5140523_right_covered : CoveredBy scale carrier boxes small_5140523_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5140523_right_root small_5140523_right_fuel small_5140523_right_count small_5140523_right_encoded small_5140523_right_checked

theorem cover_5140523 : CoveredBy scale carrier boxes root_5140523 := by
  apply coveredBy_split_literal root_5140523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1924.root small_5140523_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1924.covered
  · exact small_5140523_right_covered
#print axioms cover_5140523

def root_5140517 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140517_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140517_left_fuel : Nat := 1
def small_5140517_left_count : Nat := 1
def small_5140517_left_encoded : String := "00000000"
theorem small_5140517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5140517_left_root small_5140517_left_fuel small_5140517_left_count small_5140517_left_encoded = true := by
  decide +kernel
theorem small_5140517_left_covered : CoveredBy scale carrier boxes small_5140517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5140517_left_root small_5140517_left_fuel small_5140517_left_count small_5140517_left_encoded small_5140517_left_checked

theorem cover_5140517 : CoveredBy scale carrier boxes root_5140517 := by
  apply coveredBy_split_literal root_5140517 small_5140517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5140523 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5140517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5140523
#print axioms cover_5140517

def root_5138807 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138807 : CoveredBy scale carrier boxes root_5138807 := by
  apply coveredBy_split_literal root_5138807 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1923.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5140517 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1923.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5140517
#print axioms cover_5138807

def root_5138801 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138801_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138801_left_fuel : Nat := 1
def small_5138801_left_count : Nat := 1
def small_5138801_left_encoded : String := "00000004"
theorem small_5138801_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138801_left_root small_5138801_left_fuel small_5138801_left_count small_5138801_left_encoded = true := by
  decide +kernel
theorem small_5138801_left_covered : CoveredBy scale carrier boxes small_5138801_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138801_left_root small_5138801_left_fuel small_5138801_left_count small_5138801_left_encoded small_5138801_left_checked

theorem cover_5138801 : CoveredBy scale carrier boxes root_5138801 := by
  apply coveredBy_split_literal root_5138801 small_5138801_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138807 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138801_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138807
#print axioms cover_5138801

def root_5143813 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5143813 : CoveredBy scale carrier boxes root_5143813 := by
  apply coveredBy_split_literal root_5143813 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1925.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1926.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1925.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1926.covered
#print axioms cover_5143813

def root_5143808 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5143808_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5143808_right_fuel : Nat := 1
def small_5143808_right_count : Nat := 1
def small_5143808_right_encoded : String := "00000004"
theorem small_5143808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5143808_right_root small_5143808_right_fuel small_5143808_right_count small_5143808_right_encoded = true := by
  decide +kernel
theorem small_5143808_right_covered : CoveredBy scale carrier boxes small_5143808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5143808_right_root small_5143808_right_fuel small_5143808_right_count small_5143808_right_encoded small_5143808_right_checked

theorem cover_5143808 : CoveredBy scale carrier boxes root_5143808 := by
  apply coveredBy_split_literal root_5143808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5143813 small_5143808_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5143813
  · exact small_5143808_right_covered
#print axioms cover_5143808

def root_5138800 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138800 : CoveredBy scale carrier boxes root_5138800 := by
  apply coveredBy_split_literal root_5138800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5143808 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138801
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5143808
#print axioms cover_5138800

def root_5138795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138795_right_fuel : Nat := 1
def small_5138795_right_count : Nat := 1
def small_5138795_right_encoded : String := "00000003"
theorem small_5138795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138795_right_root small_5138795_right_fuel small_5138795_right_count small_5138795_right_encoded = true := by
  decide +kernel
theorem small_5138795_right_covered : CoveredBy scale carrier boxes small_5138795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138795_right_root small_5138795_right_fuel small_5138795_right_count small_5138795_right_encoded small_5138795_right_checked

theorem cover_5138795 : CoveredBy scale carrier boxes root_5138795 := by
  apply coveredBy_split_literal root_5138795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138800 small_5138795_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138800
  · exact small_5138795_right_covered
#print axioms cover_5138795

def root_5138794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138794_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138794_right_fuel : Nat := 23
def small_5138794_right_count : Nat := 307
def small_5138794_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF70F350D000CFD9BF90000000900000007000000000F34D100000000000000000900000003135D4507000000030CFD9BF7000000090F34D1000000000000000009120700FE0000000900000004120700FA08A912FF00000009120700FE000000090000000400000002120700F808A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF70F350D0000000007000000000000000700000003135D4507000000030CFD9BF70F350D00000000070000000000000005120700FE0000000700000004120700FA08A912FF12073CFE00000004050000FC135D81070CFD9BF70F350D00045489F900000009000000050000000000000005000000030000000500000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D8107045489F7000000090000000500000003000000050000000500000005000000051151E8FF08A912F712073D0008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D8107050000FE135D80FF000000040CFD9BF70F350D000CFD9BF9000000090F34D0F80CFD9BFB000000070F34D0FA000000090000000200000001000000000F34D1000000000000000009135D44FF0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB000000090F34D0FA00000009000000020F34D0F80CFD9BFB0F350CFA000000020C9A8700000000070F878CF7000000000C9A86FA00000007000000060F34D0FA000000090000000200000001000000000F34D100000000000CFD9BF90F350CF80000000100000009000000050000000400000003135D450700000003050000FE135D80FF000000040CFD9BF7000000090F34D1000000000000000009135D44FF0CFD9BF70F350D000CFD9BF90F350CF800000001000000090F34D0F80CFD9BFB0F350CFA000000020C9A870000000006000000090000000500000001000000000F34D100000000000CFD9BF9000000090000000500000004120700FA050000FC135D8107050000FE135D80FF000000040CFD9BF7000000090F34D1000000000000000005135D44FF0CFD9BF70F350D000CFD9BF9000000090000000500000000000000050000000400000003135D450700000003050000FE000000090000000500000002120700F808A912FB12073CFA00000002050000FC135D8107050000FE135D80FF000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9BFB000000070F34D0FA000000070000000200000007000000000F34D1000000000000000005135D44FF0CFD9BF70F350D000000000A00000000000000050000000400000003135D450700000003050000FE135D80FF000000040CFD9BF70F350D00045489F91386ACF8000000010000000500000005000000000000000500000005000000050000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D8107050000FE135D80FF00000004000000050000000500000003135D45070000000300000005000000050000000500000004"
theorem small_5138794_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138794_right_root small_5138794_right_fuel small_5138794_right_count small_5138794_right_encoded = true := by
  decide +kernel
theorem small_5138794_right_covered : CoveredBy scale carrier boxes small_5138794_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138794_right_root small_5138794_right_fuel small_5138794_right_count small_5138794_right_encoded small_5138794_right_checked

theorem cover_5138794 : CoveredBy scale carrier boxes root_5138794 := by
  apply coveredBy_split_literal root_5138794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138795 small_5138794_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138795
  · exact small_5138794_right_covered
#print axioms cover_5138794

def root_5138788 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138788_left_fuel : Nat := 1
def small_5138788_left_count : Nat := 1
def small_5138788_left_encoded : String := "00000002"
theorem small_5138788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138788_left_root small_5138788_left_fuel small_5138788_left_count small_5138788_left_encoded = true := by
  decide +kernel
theorem small_5138788_left_covered : CoveredBy scale carrier boxes small_5138788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138788_left_root small_5138788_left_fuel small_5138788_left_count small_5138788_left_encoded small_5138788_left_checked

theorem cover_5138788 : CoveredBy scale carrier boxes root_5138788 := by
  apply coveredBy_split_literal root_5138788 small_5138788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138794 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138794
#print axioms cover_5138788

def root_5138787 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138787 : CoveredBy scale carrier boxes root_5138787 := by
  apply coveredBy_split_literal root_5138787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138788 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1927.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138788
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1927.covered
#print axioms cover_5138787

def root_5138781 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138781_left_fuel : Nat := 1
def small_5138781_left_count : Nat := 1
def small_5138781_left_encoded : String := "00000001"
theorem small_5138781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138781_left_root small_5138781_left_fuel small_5138781_left_count small_5138781_left_encoded = true := by
  decide +kernel
theorem small_5138781_left_covered : CoveredBy scale carrier boxes small_5138781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138781_left_root small_5138781_left_fuel small_5138781_left_count small_5138781_left_encoded small_5138781_left_checked

theorem cover_5138781 : CoveredBy scale carrier boxes root_5138781 := by
  apply coveredBy_split_literal root_5138781 small_5138781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138787 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138787
#print axioms cover_5138781

def root_5150701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5150701 : CoveredBy scale carrier boxes root_5150701 := by
  apply coveredBy_split_literal root_5150701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1928.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1929.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1928.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1929.covered
#print axioms cover_5150701

def root_5150696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5150696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5150696_right_fuel : Nat := 1
def small_5150696_right_count : Nat := 1
def small_5150696_right_encoded : String := "00000001"
theorem small_5150696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5150696_right_root small_5150696_right_fuel small_5150696_right_count small_5150696_right_encoded = true := by
  decide +kernel
theorem small_5150696_right_covered : CoveredBy scale carrier boxes small_5150696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5150696_right_root small_5150696_right_fuel small_5150696_right_count small_5150696_right_encoded small_5150696_right_checked

theorem cover_5150696 : CoveredBy scale carrier boxes root_5150696 := by
  apply coveredBy_split_literal root_5150696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5150701 small_5150696_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5150701
  · exact small_5150696_right_covered
#print axioms cover_5150696

def root_5138780 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138780 : CoveredBy scale carrier boxes root_5138780 := by
  apply coveredBy_split_literal root_5138780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138781 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5150696 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138781
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5150696
#print axioms cover_5138780

def root_5138774 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138774_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138774_left_fuel : Nat := 1
def small_5138774_left_count : Nat := 1
def small_5138774_left_encoded : String := "00000000"
theorem small_5138774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138774_left_root small_5138774_left_fuel small_5138774_left_count small_5138774_left_encoded = true := by
  decide +kernel
theorem small_5138774_left_covered : CoveredBy scale carrier boxes small_5138774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138774_left_root small_5138774_left_fuel small_5138774_left_count small_5138774_left_encoded small_5138774_left_checked

theorem cover_5138774 : CoveredBy scale carrier boxes root_5138774 := by
  apply coveredBy_split_literal root_5138774 small_5138774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138780 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138780
#print axioms cover_5138774

def root_5136706 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5136706 : CoveredBy scale carrier boxes root_5136706 := by
  apply coveredBy_split_literal root_5136706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1922.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5138774 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1922.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5138774
#print axioms cover_5136706

def root_5155390 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155390_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155390_right_fuel : Nat := 25
def small_5155390_right_count : Nat := 221
def small_5155390_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A912F712073D0008A912F912073CF80000000108A91307120700FC08A91309120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF80000000104548A07138670FC0000000A000000031386ACFC0000000304548A0900000006000000060F34D0F80000000700000001000000000F34D100000000000CFD9BF90F350CF80000000104548A07138670FC0000000A000000031386ACFC0000000304548A0900000006000000060F34D0F80000000A00000001135D44FB0CFD9BF70F350D000CFD9BF90000000A00000007000000000F34D100000000000000000A000000020000000412073CFE00000004050000FA135D80FB000000020CFD9BF70000000A0F34D100000000000000000A0000000A0000000312073CFC0000000308A91309120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF8000000010000000600000007000000000F34D100000000000CFD9BF90000000600000005135D44FB0CFD9BF7000000070F34D100000000000CFD9BF90000000600000005000000020000000412073CFE00000004050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90000000600000005000000000000000500000005120700F808A91307120700FC08A91309120700FE050000FA135D80FB000000020CFD9BF7000000070F34D100000000000000000700000007000000040000000A0000000312073CFC0000000308A91309120700FE0000000700000004000000050000000100000000120701000000000008A912F912073CF80000000108A91307120700FC08A91309120700FE050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF80000000104548A07138670FC04548A09138670FE0C9A86F80000000A00000006000000040000000600000003000000060F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010000000500000005135D44FB045489F71386AD000CFD9BF90000000A0000000500000000000000050000000200000004000000050000000300000005120700F808A91307120700FC08A91309120700FE050000FA135D80FB0000000200000005000000050000000400000005000000030000000500000001000000041151E9090000000400000005000000031151E907000000030000000500000002"
theorem small_5155390_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5155390_right_root small_5155390_right_fuel small_5155390_right_count small_5155390_right_encoded = true := by
  decide +kernel
theorem small_5155390_right_covered : CoveredBy scale carrier boxes small_5155390_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5155390_right_root small_5155390_right_fuel small_5155390_right_count small_5155390_right_encoded small_5155390_right_checked

theorem cover_5155390 : CoveredBy scale carrier boxes root_5155390 := by
  apply coveredBy_split_literal root_5155390 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1931.root small_5155390_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1931.covered
  · exact small_5155390_right_covered
#print axioms cover_5155390

def root_5155384 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155384_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155384_left_fuel : Nat := 1
def small_5155384_left_count : Nat := 1
def small_5155384_left_encoded : String := "00000001"
theorem small_5155384_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5155384_left_root small_5155384_left_fuel small_5155384_left_count small_5155384_left_encoded = true := by
  decide +kernel
theorem small_5155384_left_covered : CoveredBy scale carrier boxes small_5155384_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5155384_left_root small_5155384_left_fuel small_5155384_left_count small_5155384_left_encoded small_5155384_left_checked

theorem cover_5155384 : CoveredBy scale carrier boxes root_5155384 := by
  apply coveredBy_split_literal root_5155384 small_5155384_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5155390 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5155384_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5155390
#print axioms cover_5155384

def root_5155383 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155383_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155383_right_fuel : Nat := 27
def small_5155383_right_count : Nat := 355
def small_5155383_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A912F712073D0008A912FB12073CFA0000000208A91307120700FC08A91309120700FE050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A07138670FC04548A09000000080000000600000003000000090F34D0FA0000000800000002000000000F34D100000000000CFD9BFB0F350CFA0000000204548A07138670FC04548A09138670FE00000009000000040000000600000003000000090F34D0FA0000000900000002135D44F90CFD9BF70F350D000CFD9BFB0000000900000008000000000F34D1000000000000000009000000010000000412073CFE00000004050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA000000020000000600000008000000000F34D100000000000CFD9BFB0000000600000005135D44F90CFD9BF7000000080F34D100000000000CFD9BFB0000000600000005000000010000000312073CFC0000000308A91309120700FE050000F8135D80F9000000010CFD9BF7000000090F34D1000000000000000009000000090000000412073CFE00000004050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0000000600000005000000000000000500000005120700FA08A91307120700FC08A91309120700FE050000F8135D80F9000000010CFD9BF7000000080F34D10000000000000000080000000800000004000000080000000312073CFC0000000308A91309120700FE0000000900000004000000050000000200000000120701000000000008A912FB12073CFA0000000208A91307120700FC08A91309120700FE050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA0000000204548A07138670FC04548A09138670FE0C9A86FA0000000900000006000000040000000600000003000000060F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020000000500000005135D44F9045489F71386AD000CFD9BFB000000090000000500000000000000050000000100000004000000050000000300000005120700FA08A91307120700FC08A91309120700FE050000F8135D80F90000000100000005000000050000000400000005000000030000000500000002000000041151E9090000000400000005000000031151E90700000003000000051151E8FB0A0000FC115225070A0000FE1152250908A912F712073D0008A91307120700FC08A91309120700FE050000F8135D80F900000001050000FA135D80FB000000020CFD9BF70F350D0004548A0700000006000000060000000000000006135D44FB0CFD9BF70F350D0000000006000000000000000600000002135D44F9050000FA135D80FB000000020CFD9BF70F350D00000000060000000000000006135D44FB0CFD9BF70F350D0004548A070000000600000006000000000000000600000002000000010000000412073CFE00000004050000F8135D80F900000001050000FA000000060000000A135D44F9050000FA00000006135D44FB0000000600000002000000010000000312073CFC0000000308A91309120700FE050000F8135D80F900000001050000FA00000006135D44FB0000000600000002135D44F9050000FA00000006135D44FB000000060000000200000001000000040000000500000000120701000000000008A91307120700FC08A91309120700FE050000F8135D80F900000001050000FA0000000600000006135D44F9050000FA00000006000000060000000100000004000000050000000300000005000000041151E9090000000408A912F712073D00000000050000000000000005000000031151E907000000030A0000FE1152250908A912F712073D00000000050000000000000005000000041151E90900000004000000050000000200000001"
theorem small_5155383_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5155383_right_root small_5155383_right_fuel small_5155383_right_count small_5155383_right_encoded = true := by
  decide +kernel
theorem small_5155383_right_covered : CoveredBy scale carrier boxes small_5155383_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5155383_right_root small_5155383_right_fuel small_5155383_right_count small_5155383_right_encoded small_5155383_right_checked

theorem cover_5155383 : CoveredBy scale carrier boxes root_5155383 := by
  apply coveredBy_split_literal root_5155383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5155384 small_5155383_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5155384
  · exact small_5155383_right_covered
#print axioms cover_5155383

def root_5155377 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155377_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155377_left_fuel : Nat := 1
def small_5155377_left_count : Nat := 1
def small_5155377_left_encoded : String := "00000000"
theorem small_5155377_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5155377_left_root small_5155377_left_fuel small_5155377_left_count small_5155377_left_encoded = true := by
  decide +kernel
theorem small_5155377_left_covered : CoveredBy scale carrier boxes small_5155377_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5155377_left_root small_5155377_left_fuel small_5155377_left_count small_5155377_left_encoded small_5155377_left_checked

theorem cover_5155377 : CoveredBy scale carrier boxes root_5155377 := by
  apply coveredBy_split_literal root_5155377 small_5155377_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5155383 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5155377_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5155383
#print axioms cover_5155377

def root_5153943 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5153943 : CoveredBy scale carrier boxes root_5153943 := by
  apply coveredBy_split_literal root_5153943 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1930.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5155377 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1930.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5155377
#print axioms cover_5153943

def root_5136705 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5136705 : CoveredBy scale carrier boxes root_5136705 := by
  apply coveredBy_split_literal root_5136705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5136706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5153943 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5136706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5153943
#print axioms cover_5136705

def root_5167183 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5167183_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5167183_left_fuel : Nat := 23
def small_5167183_left_count : Nat := 429
def small_5167183_left_encoded : String := "13E20100067ECE8712EA58FC0B4D43F810804CF9000000010B4D43FA10804CFB0000000203C0010813A510FF033F67B713BC3100000000070000000013BBF500000000000569AC471340D4FC0000000800000003134110FC000000030BF3E578100928F900000001000000071008ECF90BF3E57A0000000800000007000000010000000413A54CFF00000004033F67B70000000813BBF500000000000569AC4700000008134110FC0000000300000008108010FB03C001080000000713A54CFF00000004033F67B70000000713BBF500000000000569AC47000000070000000A00000002108010F90B4D43FA10804CFB0000000203C0010813A510FF033F67B70000000813BBF500000000000569AC4700000008134110FC000000030AA6A27810EDACF9000000010BF3E57A000000081008ECFB000000070000000210ED70F90BF3E57A000000081008ECFB03200108000000070000000800000002000000010000000413A54CFF0000000400000008108010FB03C0010813A510FF033F67B70000000513BBF500000000000569AC4700000005000000070000000413A54CFF00000004033F67B70000000513BBF500000000000569AC4700000005134110FC000000030AA6A27810EDACF9000000010AA6A27A10EDACFB000000020460010800000007000000080000000710ED70F90AA6A27A10EDACFB000000020000000810ED70FB046001080000000700000005000000020000000100000002000000010000000312EA94FC000000030B4D43F810804CF9000000010B4D43FA10804CFB0000000203C0010813A510FF033F67B713BC31000793F0C70000000712825CFC000000030BF3E578100928F900000001000000071008ECF90BF3E57A0000000900000007000000010000000013BBF500000000000793F0C7128220FC0BF3E578100928F900000001000000071008ECF90BF3E57A100928FB00000002032001080000000713C144FF0000000402B4D6970000000800000005000000070000000100000003000000050000000413A54CFF00000004033F67B713BC31000793F0C7000000080000000A0000000013BBF500000000000793F0C7128220FC0BF3E578100928F9000000010000000A1008ECF90BF3E57A000000081008ECFB0000000A00000002000000010000000300000005108010FB03C001080000000713A54CFF00000004033F67B70000000A13BBF500000000000793F0C7128220FC0000000A000000030000000A00000002108010F90B4D43FA10804CFB0000000203C0010813A510FF033F67B713BC31000793F0C7128220FC0AA6A27810EDACF9000000010BF3E57A00000008000000070000000900000003000000090000000013BBF500000000000793F0C7128220FC0AA6A27810EDACF9000000010BF3E57A000000091008ECFB032001080000000713C144FF0000000402B4D6970000000700000009000000020000000900000003000000090000000413A54CFF00000004033F67B713BC31000793F0C70000000812825CFC000000030AA6A27810EDACF9000000010BF3E57A000000081008ECFB0000000A0000000210ED70F900000009000000010000000013BBF500000000000793F0C7128220FC0AA6A27810EDACF9000000010BF3E57A000000081008ECFB046001081383DCFF02B4D6970000000813D0D1000000000007095FA7000000080000000500000004000000080000000210ED70F90BF3E57A000000081008ECFB04600108000000090000000800000002000000010000000312825CFC000000030AA6A27810EDACF9000000010BF3E57A000000051008ECFB0460010800000005138418FF00000004000000050000000210ED70F90000000900000001108010FB03C0010813A510FF033F67B70000000713BBF500000000000793F0C700000007000000090000000413A54CFF00000004033F67B713BC31000793F0C7128220FC0AA6A2780000000A10ED70F90AA6A27A0000000800000006000000010000000312825CFC000000030AA6A2780000000A000000060000000013BBF500000000000793F0C7128220FC0AA6A27810EDACF9000000010AA6A27A10EDACFB0000000204600108000000070000000A0000000710ED70F90AA6A27A10EDACFB00000002046001081383DCFF0000000900000004138418FF0000000402B4D6970000000813D0D1000000000007095FA7000000080000000910ED70FB04600108000000060000000A00000002000000010000000312825CFC000000030AA6A27810EDACF9000000010AA6A27A10EDACFB0000000204600108000000090000000A10ED70FB000000070000000210ED70F90AA6A27A000000090000000600000001000000020000000100000000"
theorem small_5167183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5167183_left_root small_5167183_left_fuel small_5167183_left_count small_5167183_left_encoded = true := by
  decide +kernel
theorem small_5167183_left_covered : CoveredBy scale carrier boxes small_5167183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5167183_left_root small_5167183_left_fuel small_5167183_left_count small_5167183_left_encoded small_5167183_left_checked

theorem cover_5167183 : CoveredBy scale carrier boxes root_5167183 := by
  apply coveredBy_split_literal root_5167183 small_5167183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1934.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_5167183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1934.covered
#print axioms cover_5167183

def root_5167177 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5167177_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5167177_left_fuel : Nat := 1
def small_5167177_left_count : Nat := 1
def small_5167177_left_encoded : String := "00000004"
theorem small_5167177_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5167177_left_root small_5167177_left_fuel small_5167177_left_count small_5167177_left_encoded = true := by
  decide +kernel
theorem small_5167177_left_covered : CoveredBy scale carrier boxes small_5167177_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5167177_left_root small_5167177_left_fuel small_5167177_left_count small_5167177_left_encoded small_5167177_left_checked

theorem cover_5167177 : CoveredBy scale carrier boxes root_5167177 := by
  apply coveredBy_split_literal root_5167177 small_5167177_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5167183 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5167177_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5167183
#print axioms cover_5167177

def root_5166713 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166713_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166713_left_fuel : Nat := 21
def small_5166713_left_count : Nat := 219
def small_5166713_left_encoded : String := "13D7B0FF022A457713E20100067ECE8712EA58FC0B4D43F810804CF90000000100000007108010F90B4D43FA10804CFB00000002014001080000000713F614FF00000004033F67B70000000713BBF500000000000569AC4700000007134110FC000000030AA6A27810EDACF900000001000000070000000900000007000000010000000312EA94FC000000030B4D43F810804CF9000000010B4D43FA10804CFB000000020000000700000007108010F90B4D43FA10804CFB00000002014001080000000713F614FF00000004033F67B7000000090000000900000007000000010000000013E1C50000000000067ECE8712EA58FC0B4D43F810804CF9000000010B4D43FA10804CFB00000002014001080000000713F614FF000000040115233713F895000569AC4700000006134110FC0000000300000007000000000000000600000007108010F90B4D43FA10804CFB000000020140010813F5D8FF0115233713F895000569AC4700000007000000090000000013F85900000000000569AC470000000A000000090000000413F614FF000000040115233713F895000569AC471340D4FC0AA6A27810EDACF9000000010000000610ED70F90BF3E57A100928FB00000002000000061008ECFB00000007000000020000000100000003134110FC000000030AA6A27810EDACF9000000010BF3E57A100928FB0000000201E0010800000006000000060000000710ED70F900000009000000010000000013F85900000000000569AC471340D4FC0AA6A2780000000610ED70F9000000060000000100000003134110FC000000030AA6A27810EDACF9000000010BF3E57A000000061008ECFB01E0010800000006000000060000000210ED70F90000000A00000001108010FB014001080000000713F614FF00000004011523370000000713F85900000000000569AC4700000007134110FC000000030000000700000002000000010000000312EA94FC000000030B4D43F810804CF9000000010B4D43FA10804CFB0000000200000005108010FB0000000700000002108010F90B4D43FA10804CFB00000002014001080000000913F614FF00000004011523370000000900000005108010FB014001080000000713F614FF00000004011523370000000713F85900000000000793F0C7128220FC0AA6A27800000007000000090000000300000005000000020000000100000004"
theorem small_5166713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5166713_left_root small_5166713_left_fuel small_5166713_left_count small_5166713_left_encoded = true := by
  decide +kernel
theorem small_5166713_left_covered : CoveredBy scale carrier boxes small_5166713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5166713_left_root small_5166713_left_fuel small_5166713_left_count small_5166713_left_encoded small_5166713_left_checked

theorem cover_5166713 : CoveredBy scale carrier boxes root_5166713 := by
  apply coveredBy_split_literal root_5166713 small_5166713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5167177 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5166713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5167177
#print axioms cover_5166713

def root_5166708 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166708_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166708_right_fuel : Nat := 1
def small_5166708_right_count : Nat := 1
def small_5166708_right_encoded : String := "00000002"
theorem small_5166708_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5166708_right_root small_5166708_right_fuel small_5166708_right_count small_5166708_right_encoded = true := by
  decide +kernel
theorem small_5166708_right_covered : CoveredBy scale carrier boxes small_5166708_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5166708_right_root small_5166708_right_fuel small_5166708_right_count small_5166708_right_encoded small_5166708_right_checked

theorem cover_5166708 : CoveredBy scale carrier boxes root_5166708 := by
  apply coveredBy_split_literal root_5166708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5166713 small_5166708_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5166713
  · exact small_5166708_right_covered
#print axioms cover_5166708

def root_5166118 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166118_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166118_left_fuel : Nat := 20
def small_5166118_left_count : Nat := 281
def small_5166118_left_encoded : String := "0F878CFB000000020280010813D7B0FF022A457713E20100067ECE8712EA58FC0B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0140010813F5D8FF000000060000000413F614FF00000004033F67B7000000080000000600000002108010F90DE7C9FA000000080E5FD8FB0140010813F5D8FF033F67B713BC31000569AC4700000007000000090000000013BBF500000000000569AC4700000006000000090000000413F614FF00000004033F67B70000000813BBF500000000000569AC4700000006134110FC000000030AA6A27810EDACF900000001000000080000000800000002000000010000000312EA94FC000000030B4D43F810804CF9000000010DE7C9FA0E6014FB000000020140010813F5D8FF033F67B700000009000000050000000413F614FF00000004033F67B700000008000000050E5FD8FB0140010813F5D8FF033F67B70000000713BBF50000000000000000090000000413F614FF00000004033F67B713BC31000793F0C7128220FC0BF3E578100928F90000000100000007000000080000000300000005000000000000000500000002108010F90DE7C9FA000000090E5FD8FB0000000900000002000000010000000013E1C50000000000067ECE8712EA58FC0B4D43F810804CF90000000100000006108010F90DE7C9FA0E6014FB00000002000000060E5FD8FB0140010813F5D8FF0115233713F895000569AC47000000060000000900000000000000060000000413F614FF000000040115233713F895000569AC4700000006134110FC000000030AA6A2780000000600000009000000000000000600000002000000010000000312EA94FC000000030B4D43F810804CF90000000100000005000000050000000413D7ECFF00000004022A457713E20100067ECE8712EA58FC0B4D43F810804CF90000000100000008000000080000000312EA94FC000000030B4D43F810804CF9000000010DE7C9FA0E6014FB00000002000000050E5FD8FB03C0010813A510FF033F67B713BC31000793F0C7000000080000000500000000000000050000000413A54CFF00000004033F67B7000000080000000500000002108010F90DE7C9FA0E6014FB00000002000000080E5FD8FB03C0010813A510FF033F67B713BC31000793F0C700000008000000090000000013BBF500000000000793F0C7128220FC0AA6A27810EDACF900000001000000080000000800000003000000050000000413A54CFF00000004033F67B70000000813BBF500000000000793F0C7000000080000000500000002000000010000000013E1C50000000000067ECE8712EA58FC0B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0000000600000002108010F90DE7C9FA0E6014FB00000002000000060E5FD8FB03C0010813A510FF0115233713F895000569AC4700000006134110FC000000030AA6A278000000060000000800000000000000060000000413A54CFF00000004011523370000000813F85900000000000569AC47000000060000000500000002000000010000000300000005"
theorem small_5166118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5166118_left_root small_5166118_left_fuel small_5166118_left_count small_5166118_left_encoded = true := by
  decide +kernel
theorem small_5166118_left_covered : CoveredBy scale carrier boxes small_5166118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5166118_left_root small_5166118_left_fuel small_5166118_left_count small_5166118_left_encoded small_5166118_left_checked

theorem cover_5166118 : CoveredBy scale carrier boxes root_5166118 := by
  apply coveredBy_split_literal root_5166118 small_5166118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5166708 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5166118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5166708
#print axioms cover_5166118

def root_5166113 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166113_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5166113_right_fuel : Nat := 1
def small_5166113_right_count : Nat := 1
def small_5166113_right_encoded : String := "00000001"
theorem small_5166113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5166113_right_root small_5166113_right_fuel small_5166113_right_count small_5166113_right_encoded = true := by
  decide +kernel
theorem small_5166113_right_covered : CoveredBy scale carrier boxes small_5166113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5166113_right_root small_5166113_right_fuel small_5166113_right_count small_5166113_right_encoded small_5166113_right_checked

theorem cover_5166113 : CoveredBy scale carrier boxes root_5166113 := by
  apply coveredBy_split_literal root_5166113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5166118 small_5166113_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5166118
  · exact small_5166113_right_covered
#print axioms cover_5166113

def root_5165711 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165711_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165711_left_fuel : Nat := 19
def small_5165711_left_count : Nat := 189
def small_5165711_left_encoded : String := "0F878CF9000000010C9A86FA0F878CFB000000020280010813D7B0FF022A457713E20100067ECE8712EA58FC000000060000000312EA94FC000000030DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FA0E6014FB00000002000000050E5FD8FB014001080000000713F614FF00000004033F67B713BC31000793F0C70000000600000005000000000000000500000002000000010000000013E1C50000000000067ECE8700000006000000050000000413D7ECFF00000004022A457713E20100067ECE8712EA58FC0DE7C9F8000000060E5FD8F900000006000000010000000312EA94FC000000030DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FA0E6014FB000000020000000500000005000000010000000013E1C50000000000067ECE8700000006000000050F8750FB0280010813D7B0FF022A457713E20100000000070000000013E1C50000000000067ECE8712EA58FC0DE7C9F8000000070E5FD8F90B4D43FA0000000600000007000000010000000312EA94FC000000030DE7C9F80E6014F90000000100000005000000050000000413D7ECFF00000004022A457713E20100067ECE8712EA58FC0DE7C9F80E6014F900000001000000070E5FD8F90B4D43FA10804CFB0000000203C001080000000713A54CFF00000004033F67B70000000813BBF500000000000000000600000007000000010000000312EA94FC000000030DE7C9F80E6014F9000000010B4D43FA0000000A000000070E5FD8F90B4D43FA10804CFB0000000203C0010813A510FF033F67B700000007000000050000000413A54CFF00000004033F67B70000000A00000005108010FB03C00108000000070000000A00000002000000010000000013E1C50000000000067ECE8712EA58FC0DE7C9F80E6014F900000001000000060E5FD8F90B4D43FA10804CFB0000000200000006108010FB03C001080000000713A54CFF00000004011523370000000713F85900000000000569AC4700000006000000050000000200000001000000030000000500000002"
theorem small_5165711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165711_left_root small_5165711_left_fuel small_5165711_left_count small_5165711_left_encoded = true := by
  decide +kernel
theorem small_5165711_left_covered : CoveredBy scale carrier boxes small_5165711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165711_left_root small_5165711_left_fuel small_5165711_left_count small_5165711_left_encoded small_5165711_left_checked

theorem cover_5165711 : CoveredBy scale carrier boxes root_5165711 := by
  apply coveredBy_split_literal root_5165711 small_5165711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5166113 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5165711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5166113
#print axioms cover_5165711

def root_5165705 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165705_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165705_left_fuel : Nat := 1
def small_5165705_left_count : Nat := 1
def small_5165705_left_encoded : String := "00000003"
theorem small_5165705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165705_left_root small_5165705_left_fuel small_5165705_left_count small_5165705_left_encoded = true := by
  decide +kernel
theorem small_5165705_left_covered : CoveredBy scale carrier boxes small_5165705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165705_left_root small_5165705_left_fuel small_5165705_left_count small_5165705_left_encoded small_5165705_left_checked

theorem cover_5165705 : CoveredBy scale carrier boxes root_5165705 := by
  apply coveredBy_split_literal root_5165705 small_5165705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5165711 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5165705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5165711
#print axioms cover_5165705

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127

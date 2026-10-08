import TaoBundleAssembly0360
import TaoBundleChunkBatch0477
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361
def root_5096772 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096772_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096772_right_fuel : Nat := 20
def small_5096772_right_count : Nat := 131
def small_5096772_right_encoded : String := "1151E8FF08A912F712073D0008A912FB00000005120700FA08A912FD00000005120700FC050000F8135D80F900000001050000FE135D80FF000000040CFD9BF70F350D00045489FB00000005138670FA0000000500000002000000000F34D1000000000000000008135D44FF0CFD9BF7000000050F34D100000000000000000800000004135D44F9050000FE135D80FF000000040CFD9BF7000000050000000A135D44FF0CFD9BF7000000050000000A0000000400000001000000030000000200000000120701000000000008A912FB12073CFA0000000208A912FD00000005120700FC050000F8135D80F900000001050000FE135D80FF00000004045489F71386AD000CFD9BFB000000050F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD00000005138670FC0C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002000000030F34D0FA0000000A00000002135D44FF045489F70000000513867100000000000CFD9BFB000000050F34D0FA000000060000000200000004135D44F9050000FE135D80FF00000004045489F7000000050000000A135D44FF045489F70000000513867100000000000CFD9BFB000000050000000A000000040000000100000003120700FA08A912FD00000006120700FC050000F8135D80F900000001000000060000000A000000030000000200000004"
theorem small_5096772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096772_right_root small_5096772_right_fuel small_5096772_right_count small_5096772_right_encoded = true := by
  decide +kernel
theorem small_5096772_right_covered : CoveredBy scale carrier boxes small_5096772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096772_right_root small_5096772_right_fuel small_5096772_right_count small_5096772_right_encoded small_5096772_right_checked

theorem cover_5096772 : CoveredBy scale carrier boxes root_5096772 := by
  apply coveredBy_split_literal root_5096772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5096773 small_5096772_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5096773
  · exact small_5096772_right_covered
#print axioms cover_5096772

def root_5096766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096766_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096766_left_fuel : Nat := 1
def small_5096766_left_count : Nat := 1
def small_5096766_left_encoded : String := "00000003"
theorem small_5096766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096766_left_root small_5096766_left_fuel small_5096766_left_count small_5096766_left_encoded = true := by
  decide +kernel
theorem small_5096766_left_covered : CoveredBy scale carrier boxes small_5096766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096766_left_root small_5096766_left_fuel small_5096766_left_count small_5096766_left_encoded small_5096766_left_checked

theorem cover_5096766 : CoveredBy scale carrier boxes root_5096766 := by
  apply coveredBy_split_literal root_5096766 small_5096766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5096772 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5096766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5096772
#print axioms cover_5096766

def root_5096765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096765_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096765_right_fuel : Nat := 17
def small_5096765_right_count : Nat := 47
def small_5096765_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB000000050000000800000000120701000000000008A912FB12073CFA0000000208A912FF00000005120700FE050000F8135D80F900000001050000FC135D80FD00000003045489F700000008138671000000000000000008135D44FD045489F70000000513867100000000000CFD9BFB0000000500000008000000030000000800000004120700FA00000008000000021151E8FF000000050000000400000003"
theorem small_5096765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096765_right_root small_5096765_right_fuel small_5096765_right_count small_5096765_right_encoded = true := by
  decide +kernel
theorem small_5096765_right_covered : CoveredBy scale carrier boxes small_5096765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096765_right_root small_5096765_right_fuel small_5096765_right_count small_5096765_right_encoded small_5096765_right_checked

theorem cover_5096765 : CoveredBy scale carrier boxes root_5096765 := by
  apply coveredBy_split_literal root_5096765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5096766 small_5096765_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5096766
  · exact small_5096765_right_covered
#print axioms cover_5096765

def root_5096759 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096759_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096759_left_fuel : Nat := 1
def small_5096759_left_count : Nat := 1
def small_5096759_left_encoded : String := "00000002"
theorem small_5096759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096759_left_root small_5096759_left_fuel small_5096759_left_count small_5096759_left_encoded = true := by
  decide +kernel
theorem small_5096759_left_covered : CoveredBy scale carrier boxes small_5096759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096759_left_root small_5096759_left_fuel small_5096759_left_count small_5096759_left_encoded small_5096759_left_checked

theorem cover_5096759 : CoveredBy scale carrier boxes root_5096759 := by
  apply coveredBy_split_literal root_5096759 small_5096759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5096765 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5096759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5096765
#print axioms cover_5096759

def root_5102804 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102804_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102804_right_fuel : Nat := 18
def small_5102804_right_count : Nat := 75
def small_5102804_right_encoded : String := "135D44FB045489F71386AD00045489FD1386ACFC00000003045489FF000000050000000A138670FC045489FF1386ACFE00000004078000F800000006000000060000000600000003000000001386710000000000045489FD1386ACFC00000003045489FF1386ACFE00000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A457713E20100067ECE7D00000005000000060000000013E1C50000000000067ECE7D12EA94FC00000003067ECE7F000000050000000612EA58FC067ECE7F12EA94FE0000000400000006000000060000000313D7B0FB022A45770000000713E1C500000000000000000A00000002128A40F9028000FA00000006000000060000000100000006138670FC045489FF1386ACFE0000000400000006000000060000000300000002"
theorem small_5102804_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102804_right_root small_5102804_right_fuel small_5102804_right_count small_5102804_right_encoded = true := by
  decide +kernel
theorem small_5102804_right_covered : CoveredBy scale carrier boxes small_5102804_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102804_right_root small_5102804_right_fuel small_5102804_right_count small_5102804_right_encoded small_5102804_right_checked

theorem cover_5102804 : CoveredBy scale carrier boxes root_5102804 := by
  apply coveredBy_split_literal root_5102804 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1907.root small_5102804_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1907.covered
  · exact small_5102804_right_covered
#print axioms cover_5102804

def root_5102798 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102798_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5102798_left_fuel : Nat := 1
def small_5102798_left_count : Nat := 1
def small_5102798_left_encoded : String := "00000001"
theorem small_5102798_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5102798_left_root small_5102798_left_fuel small_5102798_left_count small_5102798_left_encoded = true := by
  decide +kernel
theorem small_5102798_left_covered : CoveredBy scale carrier boxes small_5102798_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5102798_left_root small_5102798_left_fuel small_5102798_left_count small_5102798_left_encoded small_5102798_left_checked

theorem cover_5102798 : CoveredBy scale carrier boxes root_5102798 := by
  apply coveredBy_split_literal root_5102798 small_5102798_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5102804 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5102798_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5102804
#print axioms cover_5102798

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
  apply coveredBy_split_literal root_5102797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5102798 small_5102797_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5102798
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
  apply coveredBy_split_literal root_5102792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5102797 small_5102792_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5102797
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
  apply coveredBy_split_literal root_5102162 small_5102162_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5102792 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5102162_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5102792
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
  apply coveredBy_split_literal root_5102157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5102162 small_5102157_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5102162
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
  apply coveredBy_split_literal root_5101555 small_5101555_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5102157 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5101555_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5102157
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
  apply coveredBy_split_literal root_5101549 small_5101549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101555 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5101549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101555
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
  apply coveredBy_split_literal root_5101345 small_5101345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101549 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5101345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101549
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
  apply coveredBy_split_literal root_5101339 small_5101339_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101345 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5101339_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101345
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
  apply coveredBy_split_literal root_5101338 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101339 small_5101338_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101339
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
  apply coveredBy_split_literal root_5101332 small_5101332_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101338 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5101332_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101338
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
  apply coveredBy_split_literal root_5101331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101332 small_5101331_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101332
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
  apply coveredBy_split_literal root_5101326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101331 small_5101326_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101331
  · exact small_5101326_right_covered
#print axioms cover_5101326

def root_5096758 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5096758 : CoveredBy scale carrier boxes root_5096758 := by
  apply coveredBy_split_literal root_5096758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5096759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5101326 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5096759
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5101326
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
  apply coveredBy_split_literal root_5096753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5096758 small_5096753_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5096758
  · exact small_5096753_right_covered
#print axioms cover_5096753

def root_5076653 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076653 : CoveredBy scale carrier boxes root_5076653 := by
  apply coveredBy_split_literal root_5076653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5076654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5096753 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5076654
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5096753
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
  apply coveredBy_split_literal root_5076647 small_5076647_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5076653 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076647_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5076653
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
  apply coveredBy_split_literal root_5076045 small_5076045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5076647 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5076045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5076647
#print axioms cover_5076045

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361

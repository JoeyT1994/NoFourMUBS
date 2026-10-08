import TaoBundleAssembly0369
import TaoBundleAssembly0371
import TaoBundleChunkBatch0494
import TaoBundleChunkBatch0495
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372
def root_5267662 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267662_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267662_right_fuel : Nat := 22
def small_5267662_right_count : Nat := 303
def small_5267662_right_encoded : String := "120700FA08A912FD12073D0608A913091207010800000004045489F71386AD000CFD9BF90F350CF800000001045489FB00000006138670FA00000006000000020F34D0F80000000600000001000000000000000612073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F8000000060F8750F900000006000000010F350D080C9A86F80F878CF9000000010C9A87060F8750FD0C9A87080F87510900000004000000050F878D09000000060000000400000003000000090F8750F90C9A87060F8750FD0C9A87080F87510900000004000000090F878D09000000080000000400000003000000090000000100000004000000030F34D106000000030CFD9C090F34D108000000040000000600000009138670FA0CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F8000000060000000A0F350D080000000900000004000000030F34D1060000000300000009000000020F34D0F8045489FB1386ACFA000000020CFD9BFD0F350D060CFD9C090F34D10800000004000000060F350D080C9A8706000000050F878CFD000000030C9A8708000000050000000600000004000000030F34D106000000030CFD9C090F34D10800000004000000060F350D080000000900000004138670FA0CFD9BFD0F350D060CFD9C090000000600000005000000030F34D106000000030CFD9C09000000060000000500000002000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD0F350D060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A87060F8750FD0000000600000003000000060F8750F90C9A87060F8750FD0C9A87080000000600000006000000030000000A0000000100000004000000030F34D106000000030CFD9C09000000060F350D080C9A86F8000000060000000A00000004138670FA0CFD9BFD0F350D060CFD9C090000000A0F350D080C9A86F8000000050000000A00000004000000030F34D106000000030000000A000000020F34D0F8045489FB1386ACFA000000020CFD9BFD0F350D0600000006000000030F34D1060000000300000006138670FA0CFD9BFD000000060000000500000002000000010000000400000003120701060000000308A913091207010800000004045489F71386AD000CFD9BF9000000060F34D0F80000000600000001000000000000000612073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA00000002045489FD1386AD060CFD9C090F34D108000000040C9A86F8000000060000000A0000000900000003138671060000000300000009000000090F34D0F8045489FB1386ACFA00000002045489FD1386AD060CFD9C0900000007000000090000000313867106000000030CFD9C090F34D10800000004000000060000000900000009000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA00000002045489FD0000000A13867106000000030000000A0000000A0F34D0F8045489FB1386ACFA00000002045489FD0000000613867106000000030CFD9C090000000600000005138670FA0000000500000002000000010000000400000002"
theorem small_5267662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267662_right_root small_5267662_right_fuel small_5267662_right_count small_5267662_right_encoded = true := by
  decide +kernel
theorem small_5267662_right_covered : CoveredBy scale carrier boxes small_5267662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267662_right_root small_5267662_right_fuel small_5267662_right_count small_5267662_right_encoded small_5267662_right_checked

theorem cover_5267662 : CoveredBy scale carrier boxes root_5267662 := by
  apply coveredBy_split_literal root_5267662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5267663 small_5267662_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5267663
  · exact small_5267662_right_covered
#print axioms cover_5267662

def root_5267656 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267656_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267656_left_fuel : Nat := 1
def small_5267656_left_count : Nat := 1
def small_5267656_left_encoded : String := "00000001"
theorem small_5267656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267656_left_root small_5267656_left_fuel small_5267656_left_count small_5267656_left_encoded = true := by
  decide +kernel
theorem small_5267656_left_covered : CoveredBy scale carrier boxes small_5267656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267656_left_root small_5267656_left_fuel small_5267656_left_count small_5267656_left_encoded small_5267656_left_checked

theorem cover_5267656 : CoveredBy scale carrier boxes root_5267656 := by
  apply coveredBy_split_literal root_5267656 small_5267656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5267662 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5267656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5267662
#print axioms cover_5267656

def root_5267655 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267655_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267655_right_fuel : Nat := 22
def small_5267655_right_count : Nat := 219
def small_5267655_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073D0608A913091207010800000004045489F7000000070000000612073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C09000000070F350D080000000700000004000000030F34D10600000003000000070F34D0FA0CFD9BFD0F350D060CFD9C09000000070F350D080C9A8706000000050000000700000004000000030F34D106000000030000000700000002138670F80CFD9BFB0F350CFA00000002000000070F34D0FA0CFD9BFD00000007000000070000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D10800000004000000060F350D080C9A86FA0F878CFB000000020C9A87060F8750FD0000000600000003000000060F8750FB0C9A87060F8750FD0000000700000003000000070000000200000004000000030F34D10600000003000000070F34D0FA0CFD9BFD0F350D0600000006000000030F34D106000000030000000600000002138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C09000000070F350D080000000700000004000000030F34D10600000003000000070F34D0FA0CFD9BFD000000060000000500000002000000010000000400000003120701060000000308A913091207010800000004045489F7000000070000000612073D08045489F7000000071386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA045489FD00000006138671060000000300000007000000020000000700000004120700FA08A912FD12073D0608A9130912070108000000040000000612073D08045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350D060CFD9C090000000600000005000000030F34D106000000030CFD9C090000000600000005138670FA0000000500000002138670F80000000500000001000000001386710000000000045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD000000060000000500000005000000050000000400000003120701060000000308A9130912070108000000040000000612073D08045489F71386AD00000000050000000000000005000000040000000200000001"
theorem small_5267655_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267655_right_root small_5267655_right_fuel small_5267655_right_count small_5267655_right_encoded = true := by
  decide +kernel
theorem small_5267655_right_covered : CoveredBy scale carrier boxes small_5267655_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267655_right_root small_5267655_right_fuel small_5267655_right_count small_5267655_right_encoded small_5267655_right_checked

theorem cover_5267655 : CoveredBy scale carrier boxes root_5267655 := by
  apply coveredBy_split_literal root_5267655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5267656 small_5267655_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5267656
  · exact small_5267655_right_covered
#print axioms cover_5267655

def root_5267649 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267649_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5267649_left_fuel : Nat := 1
def small_5267649_left_count : Nat := 1
def small_5267649_left_encoded : String := "00000000"
theorem small_5267649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5267649_left_root small_5267649_left_fuel small_5267649_left_count small_5267649_left_encoded = true := by
  decide +kernel
theorem small_5267649_left_covered : CoveredBy scale carrier boxes small_5267649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5267649_left_root small_5267649_left_fuel small_5267649_left_count small_5267649_left_encoded small_5267649_left_checked

theorem cover_5267649 : CoveredBy scale carrier boxes root_5267649 := by
  apply coveredBy_split_literal root_5267649 small_5267649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5267655 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5267649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5267655
#print axioms cover_5267649

def root_5265663 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5265663 : CoveredBy scale carrier boxes root_5265663 := by
  apply coveredBy_split_literal root_5265663 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1974.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5267649 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1974.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5267649
#print axioms cover_5265663

def root_5265658 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5265658_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5265658_right_fuel : Nat := 1
def small_5265658_right_count : Nat := 1
def small_5265658_right_encoded : String := "00000004"
theorem small_5265658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5265658_right_root small_5265658_right_fuel small_5265658_right_count small_5265658_right_encoded = true := by
  decide +kernel
theorem small_5265658_right_covered : CoveredBy scale carrier boxes small_5265658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5265658_right_root small_5265658_right_fuel small_5265658_right_count small_5265658_right_encoded small_5265658_right_checked

theorem cover_5265658 : CoveredBy scale carrier boxes root_5265658 := by
  apply coveredBy_split_literal root_5265658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5265663 small_5265658_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5265663
  · exact small_5265658_right_covered
#print axioms cover_5265658

def root_5250532 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5250532 : CoveredBy scale carrier boxes root_5250532 := by
  apply coveredBy_split_literal root_5250532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.root_5250533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5265658 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0371.cover_5250533
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5265658
#print axioms cover_5250532

def root_5250526 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250526_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5250526_left_fuel : Nat := 1
def small_5250526_left_count : Nat := 1
def small_5250526_left_encoded : String := "00000003"
theorem small_5250526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5250526_left_root small_5250526_left_fuel small_5250526_left_count small_5250526_left_encoded = true := by
  decide +kernel
theorem small_5250526_left_covered : CoveredBy scale carrier boxes small_5250526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5250526_left_root small_5250526_left_fuel small_5250526_left_count small_5250526_left_encoded small_5250526_left_checked

theorem cover_5250526 : CoveredBy scale carrier boxes root_5250526 := by
  apply coveredBy_split_literal root_5250526 small_5250526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5250532 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5250526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5250532
#print axioms cover_5250526

def root_5243132 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243132 : CoveredBy scale carrier boxes root_5243132 := by
  apply coveredBy_split_literal root_5243132 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5243133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5250526 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5243133
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5250526
#print axioms cover_5243132

def root_5243126 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243126_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243126_left_fuel : Nat := 1
def small_5243126_left_count : Nat := 1
def small_5243126_left_encoded : String := "00000002"
theorem small_5243126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243126_left_root small_5243126_left_fuel small_5243126_left_count small_5243126_left_encoded = true := by
  decide +kernel
theorem small_5243126_left_covered : CoveredBy scale carrier boxes small_5243126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243126_left_root small_5243126_left_fuel small_5243126_left_count small_5243126_left_encoded small_5243126_left_checked

theorem cover_5243126 : CoveredBy scale carrier boxes root_5243126 := by
  apply coveredBy_split_literal root_5243126 small_5243126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5243132 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5243126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5243132
#print axioms cover_5243126

def root_5273787 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273787_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273787_left_fuel : Nat := 20
def small_5273787_left_count : Nat := 103
def small_5273787_left_encoded : String := "12073D0008A912F912073CF80000000108A912FD12073D06050000FA135D80FB0000000205000108135D4509000000040CFD9BF70F350D000CFD9BF90000000900000007000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF9000000010000000700000006000000030F34D10600000003000000070F34D0F80000000700000001135D81090CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD000000070000000700000007000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF900000001000000070F8750F90C9A87060F8750FD0000000A000000030F878CFD000000030000000700000001000000030F34D10600000003000000070F34D0F8000000070000000100000004135D44FB05000108135D4509000000040CFD9BF7000000060F34D1000000000000000007135D81090CFD9BF7000000070F34D1000000000000000007000000040000000200000003120701060000000300000007120700F808A912FD00000007000000070000000100000000"
theorem small_5273787_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5273787_left_root small_5273787_left_fuel small_5273787_left_count small_5273787_left_encoded = true := by
  decide +kernel
theorem small_5273787_left_covered : CoveredBy scale carrier boxes small_5273787_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5273787_left_root small_5273787_left_fuel small_5273787_left_count small_5273787_left_encoded small_5273787_left_checked

theorem cover_5273787 : CoveredBy scale carrier boxes root_5273787 := by
  apply coveredBy_split_literal root_5273787 small_5273787_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1977.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5273787_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1977.covered
#print axioms cover_5273787

def root_5273781 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273781_left_fuel : Nat := 1
def small_5273781_left_count : Nat := 1
def small_5273781_left_encoded : String := "00000004"
theorem small_5273781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5273781_left_root small_5273781_left_fuel small_5273781_left_count small_5273781_left_encoded = true := by
  decide +kernel
theorem small_5273781_left_covered : CoveredBy scale carrier boxes small_5273781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5273781_left_root small_5273781_left_fuel small_5273781_left_count small_5273781_left_encoded small_5273781_left_checked

theorem cover_5273781 : CoveredBy scale carrier boxes root_5273781 := by
  apply coveredBy_split_literal root_5273781 small_5273781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5273787 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5273781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5273787
#print axioms cover_5273781

def root_5273780 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273780_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273780_right_fuel : Nat := 31
def small_5273780_right_count : Nat := 415
def small_5273780_right_encoded : String := "1152250908A912F712073D0008A912F912073CF80000000108A912FD12073D0608A9130912070108000000040000000712073D08050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD000000070000000700000007000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C09000000050F350D080C9A86F80F878CF900000001000000070F8750F9000000050000000100000004000000030F34D10600000003000000070F34D0F80000000700000001135D44FB0CFD9BF7000000070F34D1000000000000000007000000020000000400000003120701060000000300000007120700F8000000070000000100000000120701000000000008A912F912073CF80000000108A912FD12073D0608A913091207010800000004050000FA135D80FB00000002045489F71386AD000CFD9BF90000000500000007000000001386710000000000000000090000000512073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF9000000010C9A87060F8750FD0C9A87080F875109000000040000000A0F878D090000000500000004000000030F878CFD00000003000000070F8750F90C9A87060F8750FD0000000500000003000000050000000100000004000000030F34D106000000030CFD9C09000000070F350D0800000007000000040F34D0F80CFD9BFD0F350D060CFD9C09000000070F350D080000000700000004000000030F34D1060000000300000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF9000000010C9A87060F8750FD0C9A87080F87510900000004078000FA128A7CFB00000002022A45770000000900000009000000090F878D090000000900000004000000030F878CFD000000030C9A87080F87510900000004078000FA128A7CFB00000002022A45770000000713E1C500000000000DE7C9F80000000600000009000000070F878D09078000FA0000000900000005000000040F8750F90C9A87060F8750FD0C9A87080000000900000005000000030F878CFD000000030C9A87080F87510900000004078000FA128A7CFB00000002022A45770000000513E1C500000000000000000500000005000000050000000100000004000000030F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF9000000010C9A870800000007000000070F8750F90C9A87080F87510900000004078000FA128A7CFB00000002022A45770000000513E1C500000000000AD3577D0000000510D101060000000300000005000000050000000500000001000000040F34D0F80CFD9BFD0F350D060CFD9C090F34D10800000004000000070F350D080C9A87060F8750FD0C9A87080F87510900000004078000FA128A7CFB00000002022A45770000000700000009000000070F878D090000000700000004000000030F878CFD000000030000000700000004000000030F34D106000000030000000700000001135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD000000050F34D10600000003000000050F34D0F800000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C09000000050F350D080C9A86F80F878CF9000000010C9A870600000009000000050000000500000004000000030F34D10600000003000000050F34D0F80CFD9BFD000000070000000700000001000000020000000400000003120701060000000308A913090000000712073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF800000001045489FD0000000700000007000000070000000013867100000000000CFD9BF90F350CF800000001045489FD1386AD060CFD9C09000000070F350D080C9A86F8000000070F8750F90000000500000001000000040000000313867106000000030CFD9C09000000070F350D0800000007000000040F34D0F800000007000000010000000700000004120700F808A912FD12073D0608A913090000000712073D08050000FA135D80FB00000002045489F7000000071386710000000000045489F91386ACF8000000010CFD9BFD0000000700000007000000070000000700000004000000031207010600000003000000070000000100000004"
theorem small_5273780_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5273780_right_root small_5273780_right_fuel small_5273780_right_count small_5273780_right_encoded = true := by
  decide +kernel
theorem small_5273780_right_covered : CoveredBy scale carrier boxes small_5273780_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5273780_right_root small_5273780_right_fuel small_5273780_right_count small_5273780_right_encoded small_5273780_right_checked

theorem cover_5273780 : CoveredBy scale carrier boxes root_5273780 := by
  apply coveredBy_split_literal root_5273780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5273781 small_5273780_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5273781
  · exact small_5273780_right_covered
#print axioms cover_5273780

def root_5273774 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273774_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5273774_left_fuel : Nat := 1
def small_5273774_left_count : Nat := 1
def small_5273774_left_encoded : String := "00000003"
theorem small_5273774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5273774_left_root small_5273774_left_fuel small_5273774_left_count small_5273774_left_encoded = true := by
  decide +kernel
theorem small_5273774_left_covered : CoveredBy scale carrier boxes small_5273774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5273774_left_root small_5273774_left_fuel small_5273774_left_count small_5273774_left_encoded small_5273774_left_checked

theorem cover_5273774 : CoveredBy scale carrier boxes root_5273774 := by
  apply coveredBy_split_literal root_5273774 small_5273774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5273780 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5273774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5273780
#print axioms cover_5273774

def root_5272940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272940_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272940_left_fuel : Nat := 24
def small_5272940_left_count : Nat := 389
def small_5272940_left_encoded : String := "1151E8FD0A0001081151E9090000000408A912F712073D0008A912F912073CF800000001050000FA135D80FB0000000205000106135D44FD0000000A00000003135D80FD0000000305000108135D4509000000040CFD9BF70F350D000CFD9BF90000000600000006000000000F34D100000000000000000A135D81090CFD9BF70F350D000CFD9BF90000000A0F34D0F80000000700000001000000000F34D100000000000CFD9BF90000000A0000000A00000004135D44FB050001060000000A135D80FD0000000305000108135D450900000004000000060000000A00000002120700F8050000FA135D80FB00000002050001060000000A135D80FD000000030500010800000007000000070000000A0000000100000000120701000000000008A912F912073CF800000001050000FA135D80FB00000002050001060000000A135D80FD0000000305000108135D450900000004045489F70000000A13867100000000000000000A135D8109045489F71386AD000CFD9BF90000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90000000A0F34D0F80000000A00000001000000040000000A120700F8050000FA0000000A0000000A000000011152250908A912F712073D0008A912F912073CF80000000108A913091207010800000004050000FA135D80FB000000020500010600000008000000050000000512073D08050000FA135D80FB0000000205000106135D44FD0CFD9BF70F350D000CFD9BF90000000A0000000A000000000F34D100000000000CFD9BF90000000A0F34D0F80000000A0000000100000003135D80FD000000030CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C09000000050F350D080C9A87000F8750F700000005000000000000000A000000040F34D0F80000000700000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350D080C9A86F80000000A0F8750F90000000500000001000000040F34D0F80CFD9C09000000070000000A00000001135D44FB05000106135D44FD0CFD9BF70000000A0F34D100000000000000000A00000003135D80FD000000030CFD9BF70F350D0000000007000000000F34D100000000000CFD9BF9000000050F34D0F800000007000000010000000200000004120700F808A913090000000712073D08050000FA135D80FB00000002050001060000000A0000000700000007000000040000000100000000120701000000000008A912F912073CF80000000108A913091207010800000004050000FA000000090000000812073D08050000FA135D80FB0000000205000106135D44FD045489F71386AD000CFD9BF90F350CF8000000010CFD9C09000000080000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF800000001000000090000000900000003135D80FD00000003045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000050F350D080C9A86F80000000A0F8750F90C9A87080F875109000000040000000A0000000500000001000000040F34D0F80CFD9C090F34D10800000004000000070000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C09000000090F350D080C9A86F80F878CF9000000010000000900000009000000040F34D0F80CFD9C09000000090F350D080C9A870800000009000000090000000400000001135D44FB05000106135D44FD045489F70000000A13867100000000000000000900000003135D80FD00000003045489F71386AD000CFD9BF90F350CF800000001000000050F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF800000001000000090F34D0F80000000A000000010000000200000004120700F808A9130912070108000000040000000912073D08050000FA135D80FB0000000205000106135D44FD0000000A00000003135D80FD00000003045489F71386AD00045489F90000000A00000007000000001386710000000000045489F91386ACF8000000010CFD9C09000000090000000A00000009135D44FB050001060000000A135D80FD00000003000000070000000200000004000000010000000400000003"
theorem small_5272940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5272940_left_root small_5272940_left_fuel small_5272940_left_count small_5272940_left_encoded = true := by
  decide +kernel
theorem small_5272940_left_covered : CoveredBy scale carrier boxes small_5272940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5272940_left_root small_5272940_left_fuel small_5272940_left_count small_5272940_left_encoded small_5272940_left_checked

theorem cover_5272940 : CoveredBy scale carrier boxes root_5272940 := by
  apply coveredBy_split_literal root_5272940 small_5272940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5273774 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5272940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5273774
#print axioms cover_5272940

def root_5272935 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272935_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5272935_right_fuel : Nat := 1
def small_5272935_right_count : Nat := 1
def small_5272935_right_encoded : String := "00000002"
theorem small_5272935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5272935_right_root small_5272935_right_fuel small_5272935_right_count small_5272935_right_encoded = true := by
  decide +kernel
theorem small_5272935_right_covered : CoveredBy scale carrier boxes small_5272935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5272935_right_root small_5272935_right_fuel small_5272935_right_count small_5272935_right_encoded small_5272935_right_checked

theorem cover_5272935 : CoveredBy scale carrier boxes root_5272935 := by
  apply coveredBy_split_literal root_5272935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5272940 small_5272935_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5272940
  · exact small_5272935_right_covered
#print axioms cover_5272935

def root_5243125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243125 : CoveredBy scale carrier boxes root_5243125 := by
  apply coveredBy_split_literal root_5243125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5243126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5272935 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5243126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5272935
#print axioms cover_5243125

def root_5243119 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243119_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243119_left_fuel : Nat := 1
def small_5243119_left_count : Nat := 1
def small_5243119_left_encoded : String := "00000001"
theorem small_5243119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243119_left_root small_5243119_left_fuel small_5243119_left_count small_5243119_left_encoded = true := by
  decide +kernel
theorem small_5243119_left_covered : CoveredBy scale carrier boxes small_5243119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243119_left_root small_5243119_left_fuel small_5243119_left_count small_5243119_left_encoded small_5243119_left_checked

theorem cover_5243119 : CoveredBy scale carrier boxes root_5243119 := by
  apply coveredBy_split_literal root_5243119 small_5243119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.root_5243125 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5243119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372.cover_5243125
#print axioms cover_5243119

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0372

import TaoBundleAssembly0382
import TaoBundleChunkBatch0507
import TaoBundleChunkBatch0508
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383
def root_5403938 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403938_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403938_right_fuel : Nat := 18
def small_5403938_right_count : Nat := 191
def small_5403938_right_encoded : String := "120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05138670FA045489FD1386ACFC000000030CFD9BFF000000090F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80000000900000009000000040F34D108000000040000000900000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80000000900000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D1080000000400000009000000030F34D0F804548A05000000091386ACFA00000002045489FD00000009138670FC00000009000000030000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA045489FD1386ACFC000000030CFD9BFF000000090F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80000000900000009000000040F34D108000000040000000900000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80000000900000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D1080000000400000009000000030F34D0F804548A05000000091386ACFA00000002045489FD00000009138670FC00000009000000030000000100000004120701080000000405000100135D44F70CFD9BF90F350CF80000000104548A050000000A1386ACFA00000002045489FD1386ACFC00000003045489FF0000000900000005000000050000000A00000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA045489FD0000000900000007000000021386ACFA00000002045489FD1386ACFC00000003045489FF0000000900000005000000050F34D0F8000000090000000100000003"
theorem small_5403938_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403938_right_root small_5403938_right_fuel small_5403938_right_count small_5403938_right_encoded = true := by
  decide +kernel
theorem small_5403938_right_covered : CoveredBy scale carrier boxes small_5403938_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403938_right_root small_5403938_right_fuel small_5403938_right_count small_5403938_right_encoded small_5403938_right_checked

theorem cover_5403938 : CoveredBy scale carrier boxes root_5403938 := by
  apply coveredBy_split_literal root_5403938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.root_5403939 small_5403938_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0382.cover_5403939
  · exact small_5403938_right_covered
#print axioms cover_5403938

def root_5403933 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403933_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403933_right_fuel : Nat := 1
def small_5403933_right_count : Nat := 1
def small_5403933_right_encoded : String := "00000002"
theorem small_5403933_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403933_right_root small_5403933_right_fuel small_5403933_right_count small_5403933_right_encoded = true := by
  decide +kernel
theorem small_5403933_right_covered : CoveredBy scale carrier boxes small_5403933_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403933_right_root small_5403933_right_fuel small_5403933_right_count small_5403933_right_encoded small_5403933_right_checked

theorem cover_5403933 : CoveredBy scale carrier boxes root_5403933 := by
  apply coveredBy_split_literal root_5403933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403938 small_5403933_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403938
  · exact small_5403933_right_covered
#print axioms cover_5403933

def root_5413208 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413208_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413208_right_fuel : Nat := 18
def small_5413208_right_count : Nat := 195
def small_5413208_right_encoded : String := "120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D108000000040C9A86F80000000900000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040F34D108000000040C9A86F8000000090000000500000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A86FA0F878D0500000009000000020000000800000001000000040F34D1080000000400000005138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000050F8750F900000008000000010000000400000005000000030F34D0F80CFD9C050F34D0FA045489FD1386ACFC000000030CFD9BFF000000090F34D1080000000400000009138670FC0CFD9BFF000000090000000900000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350D08000000060000000400000005000000050000000100000000135D80F7000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80000000900000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90C9A87080F8750FF00000009000000040000000900000001000000040000000500000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F800000009000000090000000400000005000000050F34D0F80CFD9C050F34D0FA045489FD00000009138670FC0000000900000003000000020F350CFA00000002000000050000000100000004120701080000000405000100135D44F70CFD9BF90F350CF8000000010000000500000005000000000000000500000003"
theorem small_5413208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5413208_right_root small_5413208_right_fuel small_5413208_right_count small_5413208_right_encoded = true := by
  decide +kernel
theorem small_5413208_right_covered : CoveredBy scale carrier boxes small_5413208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5413208_right_root small_5413208_right_fuel small_5413208_right_count small_5413208_right_encoded small_5413208_right_checked

theorem cover_5413208 : CoveredBy scale carrier boxes root_5413208 := by
  apply coveredBy_split_literal root_5413208 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2026.root small_5413208_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2026.covered
  · exact small_5413208_right_covered
#print axioms cover_5413208

def root_5413202 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413202_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5413202_left_fuel : Nat := 1
def small_5413202_left_count : Nat := 1
def small_5413202_left_encoded : String := "00000002"
theorem small_5413202_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5413202_left_root small_5413202_left_fuel small_5413202_left_count small_5413202_left_encoded = true := by
  decide +kernel
theorem small_5413202_left_covered : CoveredBy scale carrier boxes small_5413202_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5413202_left_root small_5413202_left_fuel small_5413202_left_count small_5413202_left_encoded small_5413202_left_checked

theorem cover_5413202 : CoveredBy scale carrier boxes root_5413202 := by
  apply coveredBy_split_literal root_5413202 small_5413202_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5413208 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5413202_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5413208
#print axioms cover_5413202

def root_5403932 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403932 : CoveredBy scale carrier boxes root_5403932 := by
  apply coveredBy_split_literal root_5403932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5413202 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5413202
#print axioms cover_5403932

def root_5403926 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403926_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403926_left_fuel : Nat := 1
def small_5403926_left_count : Nat := 1
def small_5403926_left_encoded : String := "00000001"
theorem small_5403926_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403926_left_root small_5403926_left_fuel small_5403926_left_count small_5403926_left_encoded = true := by
  decide +kernel
theorem small_5403926_left_covered : CoveredBy scale carrier boxes small_5403926_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403926_left_root small_5403926_left_fuel small_5403926_left_count small_5403926_left_encoded small_5403926_left_checked

theorem cover_5403926 : CoveredBy scale carrier boxes root_5403926 := by
  apply coveredBy_split_literal root_5403926 small_5403926_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403932 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5403926_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403932
#print axioms cover_5403926

def root_5403925 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403925_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403925_right_fuel : Nat := 19
def small_5403925_right_count : Nat := 187
def small_5403925_right_encoded : String := "120700F808A91305120700FA08A912FD12073CFC0000000308A912FF12073D0805000100135D44F7045489F91386ACF80000000104548A05138670FA0CFD9BFD0000000700000009000000021386ACFA000000020CFD9BFD000000060F34D0FC0000000600000003138670F804548A0500000007000000060000000100000000135D80F700000000045489F91386ACF80000000104548A0500000009000000060000000600000004120701080000000405000100135D44F7045489F91386ACF80000000104548A050000000A1386ACFA000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC000000060000000600000004000000050000000A0000000A00000000135D80F700000000045489F91386ACF80000000104548A05138670FA0CFD9BFD0F350CFC00000003045489FF000000060000000A0000000A000000021386ACFA000000020CFD9BFD0F350CFC000000030000000600000005138670F804548A050000000A0000000500000001120700FC08A912FF0000000912070108000000040000000A000000030000000212073CFA0000000208A912FD12073CFC0000000308A912FF12073D0805000100135D44F7045489F91386ACF8000000010CFD9C050F34D0FA0CFD9BFD000000060F34D0FC0000000600000003000000020F350CFA000000020CFD9BFD000000060F34D0FC0000000600000003138670F80000000600000001000000000000000600000004120701080000000405000100135D44F7045489F91386ACF8000000010CFD9C050F34D0FA0CFD9BFD0F350CFC0000000300000005000000050000000200000005000000050000000000000005120700FC08A912FF12073D0805000100135D44F7045489F91386ACF8000000010CFD9C050F34D0FA00000009000000020F350CFA0000000200000005138670F80CFD9C0500000009000000050000000100000000135D80F700000000045489F91386ACF8000000010CFD9C0500000009000000050000000500000004000000050000000300000001"
theorem small_5403925_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403925_right_root small_5403925_right_fuel small_5403925_right_count small_5403925_right_encoded = true := by
  decide +kernel
theorem small_5403925_right_covered : CoveredBy scale carrier boxes small_5403925_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403925_right_root small_5403925_right_fuel small_5403925_right_count small_5403925_right_encoded small_5403925_right_checked

theorem cover_5403925 : CoveredBy scale carrier boxes root_5403925 := by
  apply coveredBy_split_literal root_5403925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403926 small_5403925_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403926
  · exact small_5403925_right_covered
#print axioms cover_5403925

def root_5403919 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403919_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403919_left_fuel : Nat := 1
def small_5403919_left_count : Nat := 1
def small_5403919_left_encoded : String := "00000004"
theorem small_5403919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403919_left_root small_5403919_left_fuel small_5403919_left_count small_5403919_left_encoded = true := by
  decide +kernel
theorem small_5403919_left_covered : CoveredBy scale carrier boxes small_5403919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403919_left_root small_5403919_left_fuel small_5403919_left_count small_5403919_left_encoded small_5403919_left_checked

theorem cover_5403919 : CoveredBy scale carrier boxes root_5403919 := by
  apply coveredBy_split_literal root_5403919 small_5403919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403925 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5403919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403925
#print axioms cover_5403919

def root_5403147 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403147_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403147_left_fuel : Nat := 26
def small_5403147_left_count : Nat := 367
def small_5403147_left_encoded : String := "1151E8FF08A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000305000100135D44F70500010800000007135D80FF000000040CFD9BF9000000050000000700000000135D80F7000000000500010800000006135D80FF000000040CFD9BF90F350CF80000000104548A05000000050000000600000006120700FC05000100135D44F705000108135D44FF0CFD9BF90F350CF80000000104548A05000000051386ACFA00000002045489FD00000005138670FC0C9A86F80F878CF900000001000000060F8750F902800100000000050000000600000001000000030F34D0F804548A0500000007000000060000000100000004135D80FF000000040CFD9BF90F350CF80000000104548A05138670FA045489FD00000005138670FC0C9A86F80F878CF900000001000000090F8750F9000000050000000100000003000000021386ACFA00000002045489FD1386ACFC000000030C9A86F80F878CF900000001000000090F8750F90000000500000001138670FC0C9A86F80F878CF9000000010280010000000009000000090F8750F90280010013D7B0F707800108128A40FF067ECE850000000512EA94FA000000020000000900000004000000090000000013D7ECF70000000007800108128A40FF067ECE850000000500000006000000040000000900000001000000030F34D0F804548A0500000009000000090000000100000000135D80F70000000005000108135D44FF0CFD9BF90F350CF80000000104548A05138670FA045489FD00000005138670FC0C9A86F8000000060F8750F900000005000000010000000300000002000000060000000600000004135D80FF000000040CFD9BF90F350CF80000000104548A05138670FA045489FD1386ACFC000000030C9A86F8000000060F8750F90000000500000001138670FC0C9A86F80F878CF9000000010780010000000009000000060F8750F907800100128A40F707800108000000050000000900000000128A7CF70000000007800108128A40FF0000000600000004000000090000000100000003000000021386ACFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F907800100128A40F707800108128A40FF000000060000000400000009000000000000000600000001000000030F34D0F80000000600000001000000030000000212073CFA0000000208A912FD12073CFC0000000305000100135D44F705000108135D44FF0000000600000004135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9BFD000000050F34D0FC0000000600000003000000020F350CFA000000020CFD9BFD000000060000000A0F34D0F800000006000000010000000000000006120700FC05000100135D44F705000108135D44FF0CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD00000006138670FC000000060000000300000002000000060000000600000004135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D0FA045489FD1386ACFC000000030C9A86F8000000060F8750F90280010013D7B0F7078001080000000600000009000000000000000600000001138670FC0C9A86F80F878CF9000000010280010000000009000000060F8750F90280010013D7B0F707800108128A40FF0AD35785000000090000000600000004000000090000000013D7ECF70000000007800108128A40FF0000000600000004000000090000000100000003000000020F350CFA00000002045489FD00000006138670FC0C9A86F80F878CF9000000010C9A86FA00000006000000090F8750F90000000800000001000000030F34D0F80CFD9C0500000009000000060000000100000000135D80F7000000000500010800000006135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D0FA0000000600000002000000060000000600000003120700F808A91305120700FA08A912FD00000006120700FC000000060000000300000002000000060000000100000004"
theorem small_5403147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403147_left_root small_5403147_left_fuel small_5403147_left_count small_5403147_left_encoded = true := by
  decide +kernel
theorem small_5403147_left_covered : CoveredBy scale carrier boxes small_5403147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403147_left_root small_5403147_left_fuel small_5403147_left_count small_5403147_left_encoded small_5403147_left_checked

theorem cover_5403147 : CoveredBy scale carrier boxes root_5403147 := by
  apply coveredBy_split_literal root_5403147 small_5403147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403919 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5403147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403919
#print axioms cover_5403147

def root_5403141 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403141_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403141_left_fuel : Nat := 1
def small_5403141_left_count : Nat := 1
def small_5403141_left_encoded : String := "00000003"
theorem small_5403141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403141_left_root small_5403141_left_fuel small_5403141_left_count small_5403141_left_encoded = true := by
  decide +kernel
theorem small_5403141_left_covered : CoveredBy scale carrier boxes small_5403141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403141_left_root small_5403141_left_fuel small_5403141_left_count small_5403141_left_encoded small_5403141_left_checked

theorem cover_5403141 : CoveredBy scale carrier boxes root_5403141 := by
  apply coveredBy_split_literal root_5403141 small_5403141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403147 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5403141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403147
#print axioms cover_5403141

def root_5416934 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5416934 : CoveredBy scale carrier boxes root_5416934 := by
  apply coveredBy_split_literal root_5416934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2027.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2028.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2027.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2028.covered
#print axioms cover_5416934

def root_5416928 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416928_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416928_left_fuel : Nat := 1
def small_5416928_left_count : Nat := 1
def small_5416928_left_encoded : String := "00000001"
theorem small_5416928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416928_left_root small_5416928_left_fuel small_5416928_left_count small_5416928_left_encoded = true := by
  decide +kernel
theorem small_5416928_left_covered : CoveredBy scale carrier boxes small_5416928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416928_left_root small_5416928_left_fuel small_5416928_left_count small_5416928_left_encoded small_5416928_left_checked

theorem cover_5416928 : CoveredBy scale carrier boxes root_5416928 := by
  apply coveredBy_split_literal root_5416928 small_5416928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5416934 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5416928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5416934
#print axioms cover_5416928

def root_5416927 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416927_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416927_right_fuel : Nat := 14
def small_5416927_right_count : Nat := 79
def small_5416927_right_encoded : String := "120700F808A91305120700FA08A912FF12073D080500010000000007000000060000000412070108000000040500010000000007135D80F700000000050000FC135D80FD00000003045489F90000000600000006000000070000000212073CFA0000000208A912FF12073D0805000100135D44F7050000FC0000000600000006000000000000000600000004120701080000000405000100135D44F7050000FC135D80FD00000003045489F91386ACF8000000010CFD9C050F34D0FA00000005000000020000000500000005135D44FD045489F91386ACF8000000010CFD9C050000000700000005000000050000000300000000135D80F700000000050000FC135D80FD00000003045489F91386ACF8000000010CFD9C05000000060000000500000005135D44FD045489F900000006000000050000000300000001"
theorem small_5416927_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416927_right_root small_5416927_right_fuel small_5416927_right_count small_5416927_right_encoded = true := by
  decide +kernel
theorem small_5416927_right_covered : CoveredBy scale carrier boxes small_5416927_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416927_right_root small_5416927_right_fuel small_5416927_right_count small_5416927_right_encoded small_5416927_right_checked

theorem cover_5416927 : CoveredBy scale carrier boxes root_5416927 := by
  apply coveredBy_split_literal root_5416927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5416928 small_5416927_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5416928
  · exact small_5416927_right_covered
#print axioms cover_5416927

def root_5416921 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416921_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416921_left_fuel : Nat := 1
def small_5416921_left_count : Nat := 1
def small_5416921_left_encoded : String := "00000004"
theorem small_5416921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416921_left_root small_5416921_left_fuel small_5416921_left_count small_5416921_left_encoded = true := by
  decide +kernel
theorem small_5416921_left_covered : CoveredBy scale carrier boxes small_5416921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416921_left_root small_5416921_left_fuel small_5416921_left_count small_5416921_left_encoded small_5416921_left_checked

theorem cover_5416921 : CoveredBy scale carrier boxes root_5416921 := by
  apply coveredBy_split_literal root_5416921 small_5416921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5416927 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5416921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5416927
#print axioms cover_5416921

def root_5416889 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416889_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416889_left_fuel : Nat := 7
def small_5416889_left_count : Nat := 15
def small_5416889_left_encoded : String := "1151E8FF08A912F912073CF80000000108A913050000000512073CFA00000002050001000000000A00000006120700F8000000060000000100000004"
theorem small_5416889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416889_left_root small_5416889_left_fuel small_5416889_left_count small_5416889_left_encoded = true := by
  decide +kernel
theorem small_5416889_left_covered : CoveredBy scale carrier boxes small_5416889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416889_left_root small_5416889_left_fuel small_5416889_left_count small_5416889_left_encoded small_5416889_left_checked

theorem cover_5416889 : CoveredBy scale carrier boxes root_5416889 := by
  apply coveredBy_split_literal root_5416889 small_5416889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5416921 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5416889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5416921
#print axioms cover_5416889

def root_5416884 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416884_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5416884_right_fuel : Nat := 1
def small_5416884_right_count : Nat := 1
def small_5416884_right_encoded : String := "00000003"
theorem small_5416884_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5416884_right_root small_5416884_right_fuel small_5416884_right_count small_5416884_right_encoded = true := by
  decide +kernel
theorem small_5416884_right_covered : CoveredBy scale carrier boxes small_5416884_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5416884_right_root small_5416884_right_fuel small_5416884_right_count small_5416884_right_encoded small_5416884_right_checked

theorem cover_5416884 : CoveredBy scale carrier boxes root_5416884 := by
  apply coveredBy_split_literal root_5416884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5416889 small_5416884_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5416889
  · exact small_5416884_right_covered
#print axioms cover_5416884

def root_5403140 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403140 : CoveredBy scale carrier boxes root_5403140 := by
  apply coveredBy_split_literal root_5403140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5416884 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5416884
#print axioms cover_5403140

def root_5403135 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403135_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403135_right_fuel : Nat := 1
def small_5403135_right_count : Nat := 1
def small_5403135_right_encoded : String := "00000002"
theorem small_5403135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403135_right_root small_5403135_right_fuel small_5403135_right_count small_5403135_right_encoded = true := by
  decide +kernel
theorem small_5403135_right_covered : CoveredBy scale carrier boxes small_5403135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403135_right_root small_5403135_right_fuel small_5403135_right_count small_5403135_right_encoded small_5403135_right_checked

theorem cover_5403135 : CoveredBy scale carrier boxes root_5403135 := by
  apply coveredBy_split_literal root_5403135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403140 small_5403135_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403140
  · exact small_5403135_right_covered
#print axioms cover_5403135

def root_5403134 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403134 : CoveredBy scale carrier boxes root_5403134 := by
  apply coveredBy_split_literal root_5403134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2029.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403135
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2029.covered
#print axioms cover_5403134

def root_5403128 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403128_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403128_left_fuel : Nat := 1
def small_5403128_left_count : Nat := 1
def small_5403128_left_encoded : String := "00000001"
theorem small_5403128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403128_left_root small_5403128_left_fuel small_5403128_left_count small_5403128_left_encoded = true := by
  decide +kernel
theorem small_5403128_left_covered : CoveredBy scale carrier boxes small_5403128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403128_left_root small_5403128_left_fuel small_5403128_left_count small_5403128_left_encoded small_5403128_left_checked

theorem cover_5403128 : CoveredBy scale carrier boxes root_5403128 := by
  apply coveredBy_split_literal root_5403128 small_5403128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403134 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5403128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403134
#print axioms cover_5403128

def root_5423242 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5423242 : CoveredBy scale carrier boxes root_5423242 := by
  apply coveredBy_split_literal root_5423242 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2030.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2031.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2030.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2031.covered
#print axioms cover_5423242

def root_5423236 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423236_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423236_left_fuel : Nat := 1
def small_5423236_left_count : Nat := 1
def small_5423236_left_encoded : String := "00000004"
theorem small_5423236_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5423236_left_root small_5423236_left_fuel small_5423236_left_count small_5423236_left_encoded = true := by
  decide +kernel
theorem small_5423236_left_covered : CoveredBy scale carrier boxes small_5423236_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5423236_left_root small_5423236_left_fuel small_5423236_left_count small_5423236_left_encoded small_5423236_left_checked

theorem cover_5423236 : CoveredBy scale carrier boxes root_5423236 := by
  apply coveredBy_split_literal root_5423236 small_5423236_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5423242 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5423236_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5423242
#print axioms cover_5423236

def root_5423006 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423006_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423006_left_fuel : Nat := 15
def small_5423006_left_count : Nat := 109
def small_5423006_left_encoded : String := "12073D0805000100135D44F7050000F8135D80F90000000104548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040280010013D7B0F7078000F80000000900000008000000000000000900000003135D44F904548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D1080000000400000008000000030000000100000000135D80F700000000050000F8135D80F90000000104548A05138670FA0CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D108000000040000000900000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86FC0F878CFD000000030780010000000009000000090F8750FD00000005000000030F34D0FC0CFD9BFF0F350D080C9A87080F8750FF00000005000000040F878CFF0000000400000009000000040F34D108000000040000000900000003135D44F904548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D10800000004078001000000000900000009000000030000000100000004"
theorem small_5423006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5423006_left_root small_5423006_left_fuel small_5423006_left_count small_5423006_left_encoded = true := by
  decide +kernel
theorem small_5423006_left_covered : CoveredBy scale carrier boxes small_5423006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5423006_left_root small_5423006_left_fuel small_5423006_left_count small_5423006_left_encoded small_5423006_left_checked

theorem cover_5423006 : CoveredBy scale carrier boxes root_5423006 := by
  apply coveredBy_split_literal root_5423006 small_5423006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5423236 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5423006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5423236
#print axioms cover_5423006

def root_5423000 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423000_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5423000_left_fuel : Nat := 1
def small_5423000_left_count : Nat := 1
def small_5423000_left_encoded : String := "00000003"
theorem small_5423000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5423000_left_root small_5423000_left_fuel small_5423000_left_count small_5423000_left_encoded = true := by
  decide +kernel
theorem small_5423000_left_covered : CoveredBy scale carrier boxes small_5423000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5423000_left_root small_5423000_left_fuel small_5423000_left_count small_5423000_left_encoded small_5423000_left_checked

theorem cover_5423000 : CoveredBy scale carrier boxes root_5423000 := by
  apply coveredBy_split_literal root_5423000 small_5423000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5423006 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5423000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5423006
#print axioms cover_5423000

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383

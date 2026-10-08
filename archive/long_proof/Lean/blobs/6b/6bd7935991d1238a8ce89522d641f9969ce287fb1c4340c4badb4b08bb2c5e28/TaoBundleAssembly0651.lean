import TaoBundleAssembly0650
import TaoBundleChunkBatch0889
import TaoBundleChunkBatch0892
import TaoBundleChunkBatch0893
import TaoBundleChunkBatch0894
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651
def root_9505750 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505750_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505750_left_fuel : Nat := 19
def small_9505750_left_count : Nat := 141
def small_9505750_left_encoded : String := "120701060000000305000102135D44F905000108135D44FF0CFD9C010F34D100000000000CFD9C050F34D0FA0000000600000002000000080F350D000CFD9C050F34D0FA00000006000000020F350CFA0000000204548A07000000061386AD060C9A87000F875101000000000C9A86FA00000006000000070F878D010C9A86FA000000060F8751050000000202800102000000060000000700000000000000030000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000006000000020F350CFA0000000204548A07000000061386AD060C9A87000F87510100000000000000060F878D010C9A86FA000000060F8751050000000202800102000000060000000800000000000000030000000000000001135D80F90000000105000108135D44FF0CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07000000071386AD060C9A8700000000070F878D010C9A86FA000000070000000700000000000000030000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000008000000020F350CFA0000000204548A071386710600000003000000081386AD060C9A87000F875101000000000C9A86FA000000080F8751050000000207800102128A40F907800108000000070000000600000001128A7CF900000001000000070F878D0100000008000000000000000300000000"
theorem small_9505750_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505750_left_root small_9505750_left_fuel small_9505750_left_count small_9505750_left_encoded = true := by
  decide +kernel
theorem small_9505750_left_covered : CoveredBy scale carrier boxes small_9505750_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505750_left_root small_9505750_left_fuel small_9505750_left_count small_9505750_left_encoded small_9505750_left_checked

theorem cover_9505750 : CoveredBy scale carrier boxes root_9505750 := by
  apply coveredBy_split_literal root_9505750 small_9505750_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0650.root_9506056 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9505750_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0650.cover_9506056
#print axioms cover_9505750

def root_9505744 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505744_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505744_left_fuel : Nat := 1
def small_9505744_left_count : Nat := 1
def small_9505744_left_encoded : String := "00000002"
theorem small_9505744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505744_left_root small_9505744_left_fuel small_9505744_left_count small_9505744_left_encoded = true := by
  decide +kernel
theorem small_9505744_left_covered : CoveredBy scale carrier boxes small_9505744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505744_left_root small_9505744_left_fuel small_9505744_left_count small_9505744_left_encoded small_9505744_left_checked

theorem cover_9505744 : CoveredBy scale carrier boxes root_9505744 := by
  apply coveredBy_split_literal root_9505744 small_9505744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9505750 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9505744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9505750
#print axioms cover_9505744

def root_9505308 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505308_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505308_left_fuel : Nat := 19
def small_9505308_left_count : Nat := 199
def small_9505308_left_encoded : String := "120700FA08A91307120701060000000305000102135D44F905000108135D44FF0CFD9C010000000800000006000000040000000600000001135D80F9000000010000000812073D0605000102135D44F905000108135D44FF0CFD9C010F34D1000000000004548A05138670FA0CFD9C070F34D106000000030000000600000009000000021386ACFA000000020CFD9C070F34D1060000000300000008000000090F350D00000000050000000000000004135D80FF000000040CFD9C010F34D1000000000004548A05138670FA0CFD9C07000000080F350D060C9A87060F87510700000003000000050F878D07000000080000000300000003000000021386ACFA000000020CFD9C07000000080F350D060C9A87060F875107000000030000000500000008000000030F350D0004548A05138670FA0CFD9C07000000060F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000060F350D0600000005000000030000000000000001135D80F90000000105000108135D44FF0CFD9C010F34D1000000000004548A05138670FA00000009000000021386ACFA000000020CFD9C0700000008000000090F350D0004548A05138670FA0CFD9C070F34D106000000030C9A87000F87510100000000000000050F878D0100000008000000000F350D060000000500000003000000021386ACFA000000020CFD9C070F34D106000000030C9A87000F8751010000000000000005000000080F350D0600000005000000030000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D0004548A05138670FA0CFD9C07000000080F350D060C9A87000F875101000000000C9A8706000000050F878D0700000008000000030F878D010C9A870600000008000000080000000000000003000000021386ACFA000000020CFD9C070F34D10600000003000000080F350D060C9A87000F875101000000000C9A8706000000050F878D07078001020000000500000008000000030F878D010C9A87060F87510700000003078001020000000500000008000000080000000000000003000000000000000300000002"
theorem small_9505308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505308_left_root small_9505308_left_fuel small_9505308_left_count small_9505308_left_encoded = true := by
  decide +kernel
theorem small_9505308_left_covered : CoveredBy scale carrier boxes small_9505308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505308_left_root small_9505308_left_fuel small_9505308_left_count small_9505308_left_encoded small_9505308_left_checked

theorem cover_9505308 : CoveredBy scale carrier boxes root_9505308 := by
  apply coveredBy_split_literal root_9505308 small_9505308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9505744 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9505308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9505744
#print axioms cover_9505308

def root_9505303 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505303_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9505303_right_fuel : Nat := 1
def small_9505303_right_count : Nat := 1
def small_9505303_right_encoded : String := "00000000"
theorem small_9505303_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9505303_right_root small_9505303_right_fuel small_9505303_right_count small_9505303_right_encoded = true := by
  decide +kernel
theorem small_9505303_right_covered : CoveredBy scale carrier boxes small_9505303_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9505303_right_root small_9505303_right_fuel small_9505303_right_count small_9505303_right_encoded small_9505303_right_checked

theorem cover_9505303 : CoveredBy scale carrier boxes root_9505303 := by
  apply coveredBy_split_literal root_9505303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9505308 small_9505303_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9505308
  · exact small_9505303_right_covered
#print axioms cover_9505303

def root_9504887 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504887_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504887_left_fuel : Nat := 23
def small_9504887_left_count : Nat := 191
def small_9504887_left_encoded : String := "120701000000000008A91305120700FA08A913070000000812073D0605000102135D44F905000108135D44FF04548A01000000081386AD000000000900000000000000040000000800000001135D80F90000000100000008000000030000000212073CFA0000000208A9130712070106000000030000000812073D0605000102135D44F905000108135D44FF04548A0113867100000000000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C0700000008000000091386AD000CFD9C050F34D0FA0CFD9C070000000800000009000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA0F878D0500000009000000020F875105000000020C9A87060000000A0F878D0702800102000000090000000900000003000000030000000000000004135D80FF0000000404548A0113867100000000000CFD9C05000000080F350CFA000000020CFD9C0700000008000000081386AD000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA0F878D050000000A000000020000000A000000030000000000000001135D80F90000000105000108135D44FF04548A0113867100000000000CFD9C05000000080F350CFA000000020CFD9C0700000008000000081386AD000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA000000090F875105000000020C9A87060F87510700000003000000090F878D0707800102000000080000000800000003000000030000000000000004135D80FF0000000404548A011386710000000000000000081386AD000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D10600000003000000080F350D060C9A86FA0F878D0500000008000000020F875105000000020C9A87060F87510700000003078001020000000A128A7CF9000000010780010800000008000000050F878D070000000800000003000000030000000000000003"
theorem small_9504887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9504887_left_root small_9504887_left_fuel small_9504887_left_count small_9504887_left_encoded = true := by
  decide +kernel
theorem small_9504887_left_covered : CoveredBy scale carrier boxes small_9504887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9504887_left_root small_9504887_left_fuel small_9504887_left_count small_9504887_left_encoded small_9504887_left_checked

theorem cover_9504887 : CoveredBy scale carrier boxes root_9504887 := by
  apply coveredBy_split_literal root_9504887 small_9504887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9505303 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9504887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9505303
#print axioms cover_9504887

def root_9504882 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504882_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504882_right_fuel : Nat := 1
def small_9504882_right_count : Nat := 1
def small_9504882_right_encoded : String := "00000004"
theorem small_9504882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9504882_right_root small_9504882_right_fuel small_9504882_right_count small_9504882_right_encoded = true := by
  decide +kernel
theorem small_9504882_right_covered : CoveredBy scale carrier boxes small_9504882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9504882_right_root small_9504882_right_fuel small_9504882_right_count small_9504882_right_encoded small_9504882_right_checked

theorem cover_9504882 : CoveredBy scale carrier boxes root_9504882 := by
  apply coveredBy_split_literal root_9504882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9504887 small_9504882_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9504887
  · exact small_9504882_right_covered
#print axioms cover_9504882

def root_9504881 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9504881 : CoveredBy scale carrier boxes root_9504881 := by
  apply coveredBy_split_literal root_9504881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9504882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3567.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9504882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3567.covered
#print axioms cover_9504881

def root_9504876 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504876_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9504876_right_fuel : Nat := 1
def small_9504876_right_count : Nat := 1
def small_9504876_right_encoded : String := "00000003"
theorem small_9504876_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9504876_right_root small_9504876_right_fuel small_9504876_right_count small_9504876_right_encoded = true := by
  decide +kernel
theorem small_9504876_right_covered : CoveredBy scale carrier boxes small_9504876_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9504876_right_root small_9504876_right_fuel small_9504876_right_count small_9504876_right_encoded small_9504876_right_checked

theorem cover_9504876 : CoveredBy scale carrier boxes root_9504876 := by
  apply coveredBy_split_literal root_9504876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9504881 small_9504876_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9504881
  · exact small_9504876_right_covered
#print axioms cover_9504876

def root_9502746 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9502746 : CoveredBy scale carrier boxes root_9502746 := by
  apply coveredBy_split_literal root_9502746 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3554.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9504876 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3554.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9504876
#print axioms cover_9502746

def root_9502741 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502741_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9502741_right_fuel : Nat := 1
def small_9502741_right_count : Nat := 1
def small_9502741_right_encoded : String := "00000002"
theorem small_9502741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9502741_right_root small_9502741_right_fuel small_9502741_right_count small_9502741_right_encoded = true := by
  decide +kernel
theorem small_9502741_right_covered : CoveredBy scale carrier boxes small_9502741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9502741_right_root small_9502741_right_fuel small_9502741_right_count small_9502741_right_encoded small_9502741_right_checked

theorem cover_9502741 : CoveredBy scale carrier boxes root_9502741 := by
  apply coveredBy_split_literal root_9502741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9502746 small_9502741_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9502746
  · exact small_9502741_right_covered
#print axioms cover_9502741

def root_9543465 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543465 : CoveredBy scale carrier boxes root_9543465 := by
  apply coveredBy_split_literal root_9543465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3568.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3569.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3568.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3569.covered
#print axioms cover_9543465

def root_9543459 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543459_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543459_left_fuel : Nat := 1
def small_9543459_left_count : Nat := 1
def small_9543459_left_encoded : String := "00000003"
theorem small_9543459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543459_left_root small_9543459_left_fuel small_9543459_left_count small_9543459_left_encoded = true := by
  decide +kernel
theorem small_9543459_left_covered : CoveredBy scale carrier boxes small_9543459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543459_left_root small_9543459_left_fuel small_9543459_left_count small_9543459_left_encoded small_9543459_left_checked

theorem cover_9543459 : CoveredBy scale carrier boxes root_9543459 := by
  apply coveredBy_split_literal root_9543459 small_9543459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9543465 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9543459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9543465
#print axioms cover_9543459

def root_9548004 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9548004_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9548004_left_fuel : Nat := 19
def small_9548004_left_count : Nat := 131
def small_9548004_left_encoded : String := "13D7B0F9078000FA128A7D050280010813D7B0FF0AD3578110D10100000000000DE7CA060000000A0E6015070000000A0000000310D13D000DE7CA06000000050E601507014001020000000513F614F90000000108C000FA0000000511FBE90500000002014001080000000513F614FF000000040BE879C10000000A1011AD00000000080000000000000003000000000000000413D7ECFF000000040AD3578110D10100000000000000000A10D13D000DE7CA060E5FD907000000030000000A0E601507014001020000000A13F614F90000000108C000FA11FC250503C0010813A510FF0BE879C10000000A1011AD000DAED8870000000A0000000A00000000000000040000000A0000000211FBE9050000000203C0010813A510FF0BE879C10000000A1011AD000000000A00000000000000040000000A000000030000000000000002128A4105000000020280010813D7B0FF0AD3578110D10100000000000000000A10D13D000DE7CA06000000080E601507014001020000000813F614F900000001064000FA12FFAD05014001080000000813F614FF000000040BE879C10000000A00000008000000020000000800000003000000000000000413D7ECFF000000040AD357810000000A10D13D000DE7CA060000000A0E601507014001020000000A13F614F900000001064000FA12FFAD050000000A000000020000000A000000030000000000000001"
theorem small_9548004_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9548004_left_root small_9548004_left_fuel small_9548004_left_count small_9548004_left_encoded = true := by
  decide +kernel
theorem small_9548004_left_covered : CoveredBy scale carrier boxes small_9548004_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9548004_left_root small_9548004_left_fuel small_9548004_left_count small_9548004_left_encoded small_9548004_left_checked

theorem cover_9548004 : CoveredBy scale carrier boxes root_9548004 := by
  apply coveredBy_split_literal root_9548004 small_9548004_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3570.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9548004_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3570.covered
#print axioms cover_9548004

def root_9547999 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547999_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547999_right_fuel : Nat := 1
def small_9547999_right_count : Nat := 1
def small_9547999_right_encoded : String := "00000003"
theorem small_9547999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9547999_right_root small_9547999_right_fuel small_9547999_right_count small_9547999_right_encoded = true := by
  decide +kernel
theorem small_9547999_right_covered : CoveredBy scale carrier boxes small_9547999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9547999_right_root small_9547999_right_fuel small_9547999_right_count small_9547999_right_encoded small_9547999_right_checked

theorem cover_9547999 : CoveredBy scale carrier boxes root_9547999 := by
  apply coveredBy_split_literal root_9547999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9548004 small_9547999_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9548004
  · exact small_9547999_right_covered
#print axioms cover_9547999

def root_9547801 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547801_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547801_left_fuel : Nat := 22
def small_9547801_left_count : Nat := 93
def small_9547801_left_encoded : String := "0F875107000000030280010213D7B0F9078000FA128A7D050280010813D7B0FF0AD357810000000500000008000000040000000A000000020000000A0000000113D7ECF900000001078000FA128A7D050280010813D7B0FF0AD3578110D10100000000000000000910D13D000B4D440610801107000000030000000810804D0703C001020000000513A54CF90000000108C000FA000000050000000800000003000000000000000413D7ECFF000000040AD357810000000A10D13D000B4D440610801107000000030000000A10804D0703C001020000000A13A54CF90000000108C000FA11FC250503C0010813A510FF0BE879C1000000091011AD000BF3E58600000005100929070000000A0000000300000000000000040000000A000000020000000A000000030000000000000002128A4105000000020280010813D7B0FF0AD3578110D10100000000000000000A000000080000000413D7ECFF000000040AD357810000000A10D13D000000000800000000"
theorem small_9547801_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9547801_left_root small_9547801_left_fuel small_9547801_left_count small_9547801_left_encoded = true := by
  decide +kernel
theorem small_9547801_left_covered : CoveredBy scale carrier boxes small_9547801_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9547801_left_root small_9547801_left_fuel small_9547801_left_count small_9547801_left_encoded small_9547801_left_checked

theorem cover_9547801 : CoveredBy scale carrier boxes root_9547801 := by
  apply coveredBy_split_literal root_9547801 small_9547801_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9547999 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9547801_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9547999
#print axioms cover_9547801

def root_9547796 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547796_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9547796_right_fuel : Nat := 1
def small_9547796_right_count : Nat := 1
def small_9547796_right_encoded : String := "00000003"
theorem small_9547796_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9547796_right_root small_9547796_right_fuel small_9547796_right_count small_9547796_right_encoded = true := by
  decide +kernel
theorem small_9547796_right_covered : CoveredBy scale carrier boxes small_9547796_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9547796_right_root small_9547796_right_fuel small_9547796_right_count small_9547796_right_encoded small_9547796_right_checked

theorem cover_9547796 : CoveredBy scale carrier boxes root_9547796 := by
  apply coveredBy_split_literal root_9547796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9547801 small_9547796_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9547801
  · exact small_9547796_right_covered
#print axioms cover_9547796

def root_9543458 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543458 : CoveredBy scale carrier boxes root_9543458 := by
  apply coveredBy_split_literal root_9543458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9543459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9547796 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9543459
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9547796
#print axioms cover_9543458

def root_9543452 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543452_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543452_left_fuel : Nat := 1
def small_9543452_left_count : Nat := 1
def small_9543452_left_encoded : String := "00000000"
theorem small_9543452_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543452_left_root small_9543452_left_fuel small_9543452_left_count small_9543452_left_encoded = true := by
  decide +kernel
theorem small_9543452_left_covered : CoveredBy scale carrier boxes small_9543452_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543452_left_root small_9543452_left_fuel small_9543452_left_count small_9543452_left_encoded small_9543452_left_checked

theorem cover_9543452 : CoveredBy scale carrier boxes root_9543452 := by
  apply coveredBy_split_literal root_9543452 small_9543452_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9543458 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9543452_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9543458
#print axioms cover_9543452

def root_9551576 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551576_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551576_left_fuel : Nat := 27
def small_9551576_left_count : Nat := 411
def small_9551576_left_encoded : String := "13D7B0F9078000FA128A7D050280010813D7B0FF0AD3578710D10106000000030DE7CA00000000070E601501000000070000000010D13D060DE7CA00000000050E601501014001020000000513F614F90000000108C000FA0000000511FBE90500000002014001080000000513F614FF000000040BE879C7000000071011AD06000000080000000300000000000000030000000413D7ECFF000000040AD3578710D10106000000030DE7CA000E5FD90100000000000000060000000610D13D060DE7CA000E5FD901000000000140010213F5D8F908C000FA0000000511FBE9050000000203C0010800000005000000060000000113F614F90000000108C000FA11FC250503C0010800000005000000060000000211FBE9050000000203C0010813A510FF0BE879C700000007000000080000000413A54CFF000000040BE879C71011710600000003000000061011AD0600000008000000030E6015010140010213F5D8F908C000FA11FC2505000000060000000211FBE9050000000203C0010813A510FF0BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000413A54CFF000000040BE879C7000000061011AD0600000006000000030000000113F614F90000000108C000FA11FC250503C0010813A510FF0BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000413A54CFF000000040BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000211FBE9050000000203C0010813A510FF0BE879C71011710600000003000000061011AD060DAED8810E9625000000000001E0010213E958F9082000FA00000006000000080000000113E994F900000001082000FA124699050320010800000006000000060000000212465D0500000002032001080000000813C144FF000000040C730AE700000006000000080E9661000000000800000000000000030000000413A54CFF000000040BE879C71011710600000003000000061011AD060DAED8810E9625000000000001E0010213E958F9082000FA000000060000000A0000000113E994F900000001082000FA12469905000000060000000212465D0500000002046001081383DCFF0C730AE7000000060000000A000000040000000A0E96610001E001020000000613E994F900000001082000FA0000000612465D05000000020460010800000008000000060000000000000003000000000000000300000002128A4105000000020280010813D7B0FF0AD3578710D10106000000030000000710D13D060DE7CA00000000080E601501014001020000000813F614F900000001064000FA12FFAD05014001080000000713F614FF000000040BE879C70000000700000008000000020000000800000000000000030000000413D7ECFF000000040AD3578710D10106000000030DE7CA000E5FD901000000000140010213F5D8F9064000FA000000060000000700000001000000070E6015010140010213F5D8F9064000FA0000000612FF71050000000203C0010800000007000000060000000113F614F900000001064000FA12FFAD0503C0010800000007000000060000000212FF71050000000203C0010800000007000000050000000010D13D060DE7CA000E5FD90100000000000000080E6015010140010213F5D8F9064000FA12FFAD0503C0010813A510FF0BE879C7101171060000000300000006000000080000000413A54CFF000000040BE879C71011710600000003000000061011AD06000000080000000300000002000000080000000113F614F900000001064000FA12FFAD0503C0010813A510FF0BE879C710117106000000030DAED8810E9625000000000001E0010200000006000000070E9661000000000700000000000000080000000413A54CFF000000040BE879C710117106000000030DAED8810E9625000000000001E001020000000613E994F90000000106E000FA00000006000000050E96610001E001020000000613E994F90000000106E000FA0000000600000007000000001011AD060DAED8810E9625000000000001E001020000000A13E994F90000000106E000FA12C8210504600108000000080000000A000000020000000800000008000000030000000212FF71050000000203C001080000000813A54CFF000000040BE879C710117106000000030DAED8810E96250000000000000000050000000800000008000000000000000300000001"
theorem small_9551576_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551576_left_root small_9551576_left_fuel small_9551576_left_count small_9551576_left_encoded = true := by
  decide +kernel
theorem small_9551576_left_covered : CoveredBy scale carrier boxes small_9551576_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551576_left_root small_9551576_left_fuel small_9551576_left_count small_9551576_left_encoded small_9551576_left_checked

theorem cover_9551576 : CoveredBy scale carrier boxes root_9551576 := by
  apply coveredBy_split_literal root_9551576 small_9551576_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3571.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9551576_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3571.covered
#print axioms cover_9551576

def root_9551571 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551571_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551571_right_fuel : Nat := 1
def small_9551571_right_count : Nat := 1
def small_9551571_right_encoded : String := "00000000"
theorem small_9551571_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551571_right_root small_9551571_right_fuel small_9551571_right_count small_9551571_right_encoded = true := by
  decide +kernel
theorem small_9551571_right_covered : CoveredBy scale carrier boxes small_9551571_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551571_right_root small_9551571_right_fuel small_9551571_right_count small_9551571_right_encoded small_9551571_right_checked

theorem cover_9551571 : CoveredBy scale carrier boxes root_9551571 := by
  apply coveredBy_split_literal root_9551571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9551576 small_9551571_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9551576
  · exact small_9551571_right_covered
#print axioms cover_9551571

def root_9551337 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551337_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551337_left_fuel : Nat := 22
def small_9551337_left_count : Nat := 109
def small_9551337_left_encoded : String := "0F875101000000000280010213D7B0F9078000FA128A7D050280010813D7B0FF0AD3578700000005000000080000000413D7ECFF000000040AD3578710D10106000000030000000610D13D060B4D440010801101000000000000000810804D01014001020000000513F614F90000000108C000FA0000000500000008000000000000000300000002128A410500000002028001080000000813D7ECFF000000040AD3578710D101060000000300000007000000080000000113D7ECF900000001078000FA128A7D05028001080000000713D7ECFF000000040AD357870000000710D13D060B4D440010801101000000000000000710804D0103C0010213A510F908C000FA11FC250503C001080000000513A54CFF000000040BE879C7000000061011AD060BF3E58000000005100929010000000700000000000000030000000211FBE9050000000203C001080000000713A54CFF00000004000000070000000113A54CF90000000108C000FA11FC2505000000070000000200000007000000000000000300000002128A410500000002028001080000000713D7ECFF000000040AD357870000000710D13D060000000800000003"
theorem small_9551337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551337_left_root small_9551337_left_fuel small_9551337_left_count small_9551337_left_encoded = true := by
  decide +kernel
theorem small_9551337_left_covered : CoveredBy scale carrier boxes small_9551337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551337_left_root small_9551337_left_fuel small_9551337_left_count small_9551337_left_encoded small_9551337_left_checked

theorem cover_9551337 : CoveredBy scale carrier boxes root_9551337 := by
  apply coveredBy_split_literal root_9551337 small_9551337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9551571 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9551337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9551571
#print axioms cover_9551337

def root_9551331 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551331_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551331_left_fuel : Nat := 1
def small_9551331_left_count : Nat := 1
def small_9551331_left_encoded : String := "00000003"
theorem small_9551331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551331_left_root small_9551331_left_fuel small_9551331_left_count small_9551331_left_encoded = true := by
  decide +kernel
theorem small_9551331_left_covered : CoveredBy scale carrier boxes small_9551331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551331_left_root small_9551331_left_fuel small_9551331_left_count small_9551331_left_encoded small_9551331_left_checked

theorem cover_9551331 : CoveredBy scale carrier boxes root_9551331 := by
  apply coveredBy_split_literal root_9551331 small_9551331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9551337 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9551331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9551337
#print axioms cover_9551331

def root_9551330 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9551330 : CoveredBy scale carrier boxes root_9551330 := by
  apply coveredBy_split_literal root_9551330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9551331 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3572.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9551331
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3572.covered
#print axioms cover_9551330

def root_9551325 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551325_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9551325_right_fuel : Nat := 1
def small_9551325_right_count : Nat := 1
def small_9551325_right_encoded : String := "00000000"
theorem small_9551325_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9551325_right_root small_9551325_right_fuel small_9551325_right_count small_9551325_right_encoded = true := by
  decide +kernel
theorem small_9551325_right_covered : CoveredBy scale carrier boxes small_9551325_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9551325_right_root small_9551325_right_fuel small_9551325_right_count small_9551325_right_encoded small_9551325_right_checked

theorem cover_9551325 : CoveredBy scale carrier boxes root_9551325 := by
  apply coveredBy_split_literal root_9551325 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9551330 small_9551325_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9551330
  · exact small_9551325_right_covered
#print axioms cover_9551325

def root_9543451 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9543451 : CoveredBy scale carrier boxes root_9543451 := by
  apply coveredBy_split_literal root_9543451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9543452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9551325 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9543452
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9551325
#print axioms cover_9543451

def root_9543446 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543446_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9543446_right_fuel : Nat := 1
def small_9543446_right_count : Nat := 1
def small_9543446_right_encoded : String := "00000004"
theorem small_9543446_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9543446_right_root small_9543446_right_fuel small_9543446_right_count small_9543446_right_encoded = true := by
  decide +kernel
theorem small_9543446_right_covered : CoveredBy scale carrier boxes small_9543446_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9543446_right_root small_9543446_right_fuel small_9543446_right_count small_9543446_right_encoded small_9543446_right_checked

theorem cover_9543446 : CoveredBy scale carrier boxes root_9543446 := by
  apply coveredBy_split_literal root_9543446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9543451 small_9543446_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9543451
  · exact small_9543446_right_covered
#print axioms cover_9543446

def root_9558722 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9558722 : CoveredBy scale carrier boxes root_9558722 := by
  apply coveredBy_split_literal root_9558722 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3573.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3574.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3573.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3574.covered
#print axioms cover_9558722

def root_9558717 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558717_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9558717_right_fuel : Nat := 1
def small_9558717_right_count : Nat := 1
def small_9558717_right_encoded : String := "00000000"
theorem small_9558717_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9558717_right_root small_9558717_right_fuel small_9558717_right_count small_9558717_right_encoded = true := by
  decide +kernel
theorem small_9558717_right_covered : CoveredBy scale carrier boxes small_9558717_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9558717_right_root small_9558717_right_fuel small_9558717_right_count small_9558717_right_encoded small_9558717_right_checked

theorem cover_9558717 : CoveredBy scale carrier boxes root_9558717 := by
  apply coveredBy_split_literal root_9558717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.root_9558722 small_9558717_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651.cover_9558722
  · exact small_9558717_right_covered
#print axioms cover_9558717

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0651

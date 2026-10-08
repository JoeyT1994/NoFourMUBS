import TaoBundleAssembly0195
import TaoBundleChunkBatch0760
import TaoBundleChunkBatch0761
import TaoBundleChunkBatch0762
import TaoBundleChunkBatch0763
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196
def root_8096008 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096008_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096008_right_fuel : Nat := 26
def small_8096008_right_count : Nat := 153
def small_8096008_right_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073D080000000800000004120701080000000405000100135D4501000000000CFD9BF90F350CF800000001045489FB1386AD040CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86F8000000080F8750F9000000080000000100000008000000021386710400000002000000080F34D0F80000000500000001135D81010CFD9BF90F350CF800000001045489FB1386AD040CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F8000000080F8750F900000008000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030780010000000008128A7D01067ECE7B0000000700000007000000000F8750FD00000007000000030F8750F90C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D01067ECE7B12EA9504022A457F0000000713E1C508000000040000000700000002000000070000000000000003000000010F34D0FC00000008000000030000000213867104000000020CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD0000000300000008000000070F8750F90C9A86FC000000080F8750FD0780010000000007000000070000000300000001000000080F34D0F8045489FB1386AD040CFD9BFD0F350CFC00000003000000070F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC00000003000000070F34D0FC00000005000000030000000100000000120700FC0000000800000003"
theorem small_8096008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096008_right_root small_8096008_right_fuel small_8096008_right_count small_8096008_right_encoded = true := by
  decide +kernel
theorem small_8096008_right_covered : CoveredBy scale carrier boxes small_8096008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096008_right_root small_8096008_right_fuel small_8096008_right_count small_8096008_right_encoded small_8096008_right_checked

theorem cover_8096008 : CoveredBy scale carrier boxes root_8096008 := by
  apply coveredBy_split_literal root_8096008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8096009 small_8096008_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8096009
  · exact small_8096008_right_covered
#print axioms cover_8096008

def root_8096002 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096002_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096002_left_fuel : Nat := 1
def small_8096002_left_count : Nat := 1
def small_8096002_left_encoded : String := "00000001"
theorem small_8096002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096002_left_root small_8096002_left_fuel small_8096002_left_count small_8096002_left_encoded = true := by
  decide +kernel
theorem small_8096002_left_covered : CoveredBy scale carrier boxes small_8096002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096002_left_root small_8096002_left_fuel small_8096002_left_count small_8096002_left_encoded small_8096002_left_checked

theorem cover_8096002 : CoveredBy scale carrier boxes root_8096002 := by
  apply coveredBy_split_literal root_8096002 small_8096002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8096008 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8096002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8096008
#print axioms cover_8096002

def root_8096001 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096001_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096001_right_fuel : Nat := 19
def small_8096001_right_count : Nat := 115
def small_8096001_right_encoded : String := "120700F808A912FB12073D0408A912FD12073CFC0000000308A912FF12073D0805000100135D450100000000045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030000000700000005000000020F34D1040000000200000007138670F80000000500000001135D8101045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030000000700000007000000020F34D1040000000200000007138670F800000007000000010000000000000004120701080000000405000100135D45010000000000000005135D8101045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040000000500000007000000040000000500000005000000020F34D104000000020CFD9BFD0F350CFC000000030000000700000005138670F80CFD9BFB0F350D040000000500000002000000050000000100000000120700FC000000050000000300000002120701040000000208A912FD12073CFC0000000308A912FF0000000712070108000000040500010000000005135D8101045489F91386ACF800000001045489FB00000007000000050000000500000000120700FC000000050000000300000001"
theorem small_8096001_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096001_right_root small_8096001_right_fuel small_8096001_right_count small_8096001_right_encoded = true := by
  decide +kernel
theorem small_8096001_right_covered : CoveredBy scale carrier boxes small_8096001_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096001_right_root small_8096001_right_fuel small_8096001_right_count small_8096001_right_encoded small_8096001_right_checked

theorem cover_8096001 : CoveredBy scale carrier boxes root_8096001 := by
  apply coveredBy_split_literal root_8096001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8096002 small_8096001_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8096002
  · exact small_8096001_right_covered
#print axioms cover_8096001

def root_8095995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095995_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095995_left_fuel : Nat := 1
def small_8095995_left_count : Nat := 1
def small_8095995_left_encoded : String := "00000004"
theorem small_8095995_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095995_left_root small_8095995_left_fuel small_8095995_left_count small_8095995_left_encoded = true := by
  decide +kernel
theorem small_8095995_left_covered : CoveredBy scale carrier boxes small_8095995_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095995_left_root small_8095995_left_fuel small_8095995_left_count small_8095995_left_encoded small_8095995_left_checked

theorem cover_8095995 : CoveredBy scale carrier boxes root_8095995 := by
  apply coveredBy_split_literal root_8095995 small_8095995_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8096001 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8095995_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8096001
#print axioms cover_8095995

def root_8095979 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095979_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095979_left_fuel : Nat := 4
def small_8095979_left_count : Nat := 7
def small_8095979_left_encoded : String := "1151E8FF08A912F900000008120700F8000000080000000100000004"
theorem small_8095979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095979_left_root small_8095979_left_fuel small_8095979_left_count small_8095979_left_encoded = true := by
  decide +kernel
theorem small_8095979_left_covered : CoveredBy scale carrier boxes small_8095979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095979_left_root small_8095979_left_fuel small_8095979_left_count small_8095979_left_encoded small_8095979_left_checked

theorem cover_8095979 : CoveredBy scale carrier boxes root_8095979 := by
  apply coveredBy_split_literal root_8095979 small_8095979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8095995 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8095979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8095995
#print axioms cover_8095979

def root_8095973 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095973_left_fuel : Nat := 1
def small_8095973_left_count : Nat := 1
def small_8095973_left_encoded : String := "00000003"
theorem small_8095973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095973_left_root small_8095973_left_fuel small_8095973_left_count small_8095973_left_encoded = true := by
  decide +kernel
theorem small_8095973_left_covered : CoveredBy scale carrier boxes small_8095973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095973_left_root small_8095973_left_fuel small_8095973_left_count small_8095973_left_encoded small_8095973_left_checked

theorem cover_8095973 : CoveredBy scale carrier boxes root_8095973 := by
  apply coveredBy_split_literal root_8095973 small_8095973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8095979 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8095973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8095979
#print axioms cover_8095973

def root_8111014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111014_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111014_left_fuel : Nat := 1
def small_8111014_left_count : Nat := 1
def small_8111014_left_encoded : String := "00000001"
theorem small_8111014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8111014_left_root small_8111014_left_fuel small_8111014_left_count small_8111014_left_encoded = true := by
  decide +kernel
theorem small_8111014_left_covered : CoveredBy scale carrier boxes small_8111014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8111014_left_root small_8111014_left_fuel small_8111014_left_count small_8111014_left_encoded small_8111014_left_checked

theorem cover_8111014 : CoveredBy scale carrier boxes root_8111014 := by
  apply coveredBy_split_literal root_8111014 small_8111014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3044.root coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8111014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3044.covered
#print axioms cover_8111014

def root_8111013 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111013_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111013_right_fuel : Nat := 15
def small_8111013_right_count : Nat := 43
def small_8111013_right_encoded : String := "120700F808A912FB12073D0408A912FF00000007120701080000000405000100135D450100000000050000FC135D80FD00000003045489F91386ACF8000000010CFD9BFB0F350D04045489FF000000060000000500000002000000070000000700000007135D8101050000FC135D80FD00000003045489F91386ACF8000000010CFD9BFB00000007000000070000000700000007000000000000000212070104000000020000000700000001"
theorem small_8111013_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8111013_right_root small_8111013_right_fuel small_8111013_right_count small_8111013_right_encoded = true := by
  decide +kernel
theorem small_8111013_right_covered : CoveredBy scale carrier boxes small_8111013_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8111013_right_root small_8111013_right_fuel small_8111013_right_count small_8111013_right_encoded small_8111013_right_checked

theorem cover_8111013 : CoveredBy scale carrier boxes root_8111013 := by
  apply coveredBy_split_literal root_8111013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8111014 small_8111013_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8111014
  · exact small_8111013_right_covered
#print axioms cover_8111013

def root_8111007 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111007_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111007_left_fuel : Nat := 1
def small_8111007_left_count : Nat := 1
def small_8111007_left_encoded : String := "00000004"
theorem small_8111007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8111007_left_root small_8111007_left_fuel small_8111007_left_count small_8111007_left_encoded = true := by
  decide +kernel
theorem small_8111007_left_covered : CoveredBy scale carrier boxes small_8111007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8111007_left_root small_8111007_left_fuel small_8111007_left_count small_8111007_left_encoded small_8111007_left_checked

theorem cover_8111007 : CoveredBy scale carrier boxes root_8111007 := by
  apply coveredBy_split_literal root_8111007 small_8111007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8111013 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8111007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8111013
#print axioms cover_8111007

def root_8110953 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110953_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110953_left_fuel : Nat := 8
def small_8110953_left_count : Nat := 25
def small_8110953_left_encoded : String := "1151E8FF08A912F912073CF80000000108A912FB12073D0405000100135D45010000000000000008000000070000000200000007120700F808A912FB12073D0405000100135D4501000000000000000A0000000700000002000000070000000100000004"
theorem small_8110953_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8110953_left_root small_8110953_left_fuel small_8110953_left_count small_8110953_left_encoded = true := by
  decide +kernel
theorem small_8110953_left_covered : CoveredBy scale carrier boxes small_8110953_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8110953_left_root small_8110953_left_fuel small_8110953_left_count small_8110953_left_encoded small_8110953_left_checked

theorem cover_8110953 : CoveredBy scale carrier boxes root_8110953 := by
  apply coveredBy_split_literal root_8110953 small_8110953_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8111007 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8110953_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8111007
#print axioms cover_8110953

def root_8110948 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110948_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110948_right_fuel : Nat := 1
def small_8110948_right_count : Nat := 1
def small_8110948_right_encoded : String := "00000003"
theorem small_8110948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8110948_right_root small_8110948_right_fuel small_8110948_right_count small_8110948_right_encoded = true := by
  decide +kernel
theorem small_8110948_right_covered : CoveredBy scale carrier boxes small_8110948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8110948_right_root small_8110948_right_fuel small_8110948_right_count small_8110948_right_encoded small_8110948_right_checked

theorem cover_8110948 : CoveredBy scale carrier boxes root_8110948 := by
  apply coveredBy_split_literal root_8110948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8110953 small_8110948_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8110953
  · exact small_8110948_right_covered
#print axioms cover_8110948

def root_8095972 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8095972 : CoveredBy scale carrier boxes root_8095972 := by
  apply coveredBy_split_literal root_8095972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8095973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8110948 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8095973
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8110948
#print axioms cover_8095972

def root_8095966 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095966_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095966_left_fuel : Nat := 1
def small_8095966_left_count : Nat := 1
def small_8095966_left_encoded : String := "00000002"
theorem small_8095966_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095966_left_root small_8095966_left_fuel small_8095966_left_count small_8095966_left_encoded = true := by
  decide +kernel
theorem small_8095966_left_covered : CoveredBy scale carrier boxes small_8095966_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095966_left_root small_8095966_left_fuel small_8095966_left_count small_8095966_left_encoded small_8095966_left_checked

theorem cover_8095966 : CoveredBy scale carrier boxes root_8095966 := by
  apply coveredBy_split_literal root_8095966 small_8095966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8095972 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8095966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8095972
#print axioms cover_8095966

def root_8093076 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093076 : CoveredBy scale carrier boxes root_8093076 := by
  apply coveredBy_split_literal root_8093076 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3038.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8095966 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3038.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8095966
#print axioms cover_8093076

def root_8093070 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093070_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093070_left_fuel : Nat := 1
def small_8093070_left_count : Nat := 1
def small_8093070_left_encoded : String := "00000001"
theorem small_8093070_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8093070_left_root small_8093070_left_fuel small_8093070_left_count small_8093070_left_encoded = true := by
  decide +kernel
theorem small_8093070_left_covered : CoveredBy scale carrier boxes small_8093070_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8093070_left_root small_8093070_left_fuel small_8093070_left_count small_8093070_left_encoded small_8093070_left_checked

theorem cover_8093070 : CoveredBy scale carrier boxes root_8093070 := by
  apply coveredBy_split_literal root_8093070 small_8093070_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8093076 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8093070_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8093076
#print axioms cover_8093070

def root_8118745 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118745_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118745_left_fuel : Nat := 19
def small_8118745_left_count : Nat := 223
def small_8118745_left_encoded : String := "1386AD080C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A410100000000078000F8128A7CF900000001067ECE7F0000000812EA5908000000040B4D4404108010FB0DE7C9FC0E6014FD0000000300000008000000090000000200000008128A40F9067ECE7F0000000812EA5908000000040B4D4404000000090000000800000001128A7D01078000F8128A7CF900000001067ECE7F12EA95080B4D440400000009000000080000000412EA5908000000040B4D44040000000910804CFB000000020DE7C9FC0E6014FD000000030000000900000009128A40F9067ECE7F000000090000000900000001000000000F8750FD07800100128A410100000000078000F8128A7CF900000001067ECE7F12EA95080B4D44040000000A10804CFB000000020000000A0000000412EA5908000000040B4D4404108010FB0B4D43FC10804CFD0000000300000009000000090000000210804CFB000000020B4D43FC10804CFD000000030640010012FF71010000000008C000F8000000080000000812FFAD010000000900000000108010FD064001000000000A0000000500000003128A40F9067ECE7F0000000512EA5908000000040B4D4404000000090000000500000001128A7D01078000F8128A7CF900000001067ECE7F0000000512EA5908000000040B4D44040000000900000005000000050000000000000003000000020F878CFB000000020C9A86FC0F878CFD0000000307800100128A41010000000000000008128A7D01078000F8128A7CF900000001067ECE7F0000000812EA5908000000040DE7CA040E5FD8FB0DE7C9FC0E6014FD00000003000000080E5FD8FD08C001000000000800000009000000030000000200000008128A40F9067ECE7F0000000812EA5908000000040DE7CA040E5FD8FB00000009000000020000000800000001000000000F8750FD07800100128A410100000000078000F8128A7CF900000001067ECE7F0000000812EA5908000000040DE7CA040E5FD8FB0B4D43FC10804CFD0000000300000008108010FD064001000000000A00000005000000030000000200000008128A40F9067ECE7F0000000512EA5908000000040DE7CA040E5FD8FB00000005000000020000000500000001128A7D01078000F8128A7CF900000001067ECE7F0000000512EA5908000000040DE7CA040E5FD8FB00000005000000020000000500000005000000000000000300000004"
theorem small_8118745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118745_left_root small_8118745_left_fuel small_8118745_left_count small_8118745_left_encoded = true := by
  decide +kernel
theorem small_8118745_left_covered : CoveredBy scale carrier boxes small_8118745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118745_left_root small_8118745_left_fuel small_8118745_left_count small_8118745_left_encoded small_8118745_left_checked

theorem cover_8118745 : CoveredBy scale carrier boxes root_8118745 := by
  apply coveredBy_split_literal root_8118745 small_8118745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3047.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8118745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3047.covered
#print axioms cover_8118745

def root_8118739 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118739_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118739_left_fuel : Nat := 1
def small_8118739_left_count : Nat := 1
def small_8118739_left_encoded : String := "00000003"
theorem small_8118739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118739_left_root small_8118739_left_fuel small_8118739_left_count small_8118739_left_encoded = true := by
  decide +kernel
theorem small_8118739_left_covered : CoveredBy scale carrier boxes small_8118739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118739_left_root small_8118739_left_fuel small_8118739_left_count small_8118739_left_encoded small_8118739_left_checked

theorem cover_8118739 : CoveredBy scale carrier boxes root_8118739 := by
  apply coveredBy_split_literal root_8118739 small_8118739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118745 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8118739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118745
#print axioms cover_8118739

def root_8118738 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118738_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118738_right_fuel : Nat := 15
def small_8118738_right_count : Nat := 89
def small_8118738_right_encoded : String := "0F34D0FC045489FF1386AD080C9A87040F8750FB0780010000000008128A7D01078000F800000008128A40F90AD3577D0000000800000008000000010000000000000002000000080000000413867108000000040C9A87040F8750FB07800100128A410100000000078000F8128A7CF9000000010AD3577D10D13CFC00000003022A457F0000000813E1C508000000040B4D4404000000050000000600000008128A40F90AD3577D10D13CFC00000003022A457F00000008000000060000000600000001128A7D01078000F8128A7CF9000000010AD3577D10D13CFC00000003022A457F13E2010800000009000000040000000910D100FC0000000600000003128A40F9000000090000000100000000000000020F878CFB0000000207800100128A410100000000078000F80000000800000006128A7D01078000F8128A7CF9000000010AD3577D10D13CFC000000030000000600000006000000060000000000000003"
theorem small_8118738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118738_right_root small_8118738_right_fuel small_8118738_right_count small_8118738_right_encoded = true := by
  decide +kernel
theorem small_8118738_right_covered : CoveredBy scale carrier boxes small_8118738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118738_right_root small_8118738_right_fuel small_8118738_right_count small_8118738_right_encoded small_8118738_right_checked

theorem cover_8118738 : CoveredBy scale carrier boxes root_8118738 := by
  apply coveredBy_split_literal root_8118738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118739 small_8118738_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118739
  · exact small_8118738_right_covered
#print axioms cover_8118738

def root_8118733 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118733_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118733_right_fuel : Nat := 1
def small_8118733_right_count : Nat := 1
def small_8118733_right_encoded : String := "00000002"
theorem small_8118733_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118733_right_root small_8118733_right_fuel small_8118733_right_count small_8118733_right_encoded = true := by
  decide +kernel
theorem small_8118733_right_covered : CoveredBy scale carrier boxes small_8118733_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118733_right_root small_8118733_right_fuel small_8118733_right_count small_8118733_right_encoded small_8118733_right_checked

theorem cover_8118733 : CoveredBy scale carrier boxes root_8118733 := by
  apply coveredBy_split_literal root_8118733 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118738 small_8118733_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118738
  · exact small_8118733_right_covered
#print axioms cover_8118733

def root_8118732 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118732_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118732_right_fuel : Nat := 31
def small_8118732_right_count : Nat := 265
def small_8118732_right_encoded : String := "0F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D01078000F8128A7CF9000000010AD3577B10D13D04067ECE7F0000000512EA5908000000040B4D43FC10804CFD0000000300000008000000050000000210D101040000000200000008128A40F9000000050000000100000000000000030000000413867108000000040C9A86FC0F878CFD0000000307800100128A410100000000078000F80000000800000006128A7D01078000F8128A7CF9000000010AD3577B10D13D04022A457F13E201080DE7C9FC000000060E5FD8FD000000080000000300000004000000060000000210D10104000000020000000600000006000000000F8750FD07800100128A410100000000078000F8128A7CF9000000010AD3577B10D13D04022A457F13E201080B4D43FC00000008108010FD064001000000000812FFAD0108C000F8000000080000000500000000000000030000000413E1C508000000040B4D43FC10804CFD00000003064001000000000612FFAD010000000600000000108010FD0640010012FF71010000000008C000F811FC24F9000000010BE879BB1011AD040115233F0000000813F85908000000040AA6A27C0000000610ED70FD05A001001331350100000000096000F80000000800000006133171010000000600000000000000030000000210117104000000020000000611FBE8F90BE879BB00000006000000060000000112FFAD0108C000F811FC24F9000000010BE879BB1011AD040115233F13F895080AA6A27C10EDACFD0000000306E001000000000600000005000000050000000413F85908000000040AA6A27C0000000610ED70FD00000005000000030000000210117104000000020000000611FBE8F90BE879BB00000005000000060000000100000000000000030000000210D1010400000002022A457F0000000800000006128A40F90AD3577B10D13D04022A457F13E201080B4D43FC000000080000000500000004000000060000000210D10104000000020000000600000001128A7D01078000F8128A7CF9000000010AD3577B10D13D04022A457F13E201080B4D43FC10804CFD0000000308C0010011FBE9010000000008C000F8000000080000000500000005000000050000000413E1C508000000040B4D43FC10804CFD0000000308C001000000000611FC25010000000600000000108010FD08C0010011FBE9010000000008C000F811FC24F9000000010BE879BB000000051011710400000002000000050000000500000005000000030000000210D1010400000002022A457F13E201080B4D43FC10804CFD0000000300000006000000050000000400000006128A40F90AD3577B0000000510D1010400000002000000050000000100000000000000030F34D0FC0000000800000003"
theorem small_8118732_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118732_right_root small_8118732_right_fuel small_8118732_right_count small_8118732_right_encoded = true := by
  decide +kernel
theorem small_8118732_right_covered : CoveredBy scale carrier boxes small_8118732_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118732_right_root small_8118732_right_fuel small_8118732_right_count small_8118732_right_encoded small_8118732_right_checked

theorem cover_8118732 : CoveredBy scale carrier boxes root_8118732 := by
  apply coveredBy_split_literal root_8118732 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118733 small_8118732_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118733
  · exact small_8118732_right_covered
#print axioms cover_8118732

def root_8118726 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118726_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118726_left_fuel : Nat := 1
def small_8118726_left_count : Nat := 1
def small_8118726_left_encoded : String := "00000001"
theorem small_8118726_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118726_left_root small_8118726_left_fuel small_8118726_left_count small_8118726_left_encoded = true := by
  decide +kernel
theorem small_8118726_left_covered : CoveredBy scale carrier boxes small_8118726_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118726_left_root small_8118726_left_fuel small_8118726_left_count small_8118726_left_encoded small_8118726_left_checked

theorem cover_8118726 : CoveredBy scale carrier boxes root_8118726 := by
  apply coveredBy_split_literal root_8118726 small_8118726_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118732 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8118726_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118732
#print axioms cover_8118726

def root_8118725 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118725_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118725_right_fuel : Nat := 18
def small_8118725_right_count : Nat := 139
def small_8118725_right_encoded : String := "135D44F90CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A410100000000028000F813D7ECF900000001067ECE7F000000080000000900000009128A7D01028000F80000000900000005000000000F8750FD0000000500000003000000020F878CFB000000020C9A86FC0F878CFD0000000307800100128A41010000000000000008128A7D0100000005000000000F8750FD00000005000000030000000413867108000000040C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A41010000000000000007000000090F8750FD07800100128A410100000000028000F800000009000000050000000500000003000000020F878CFB000000020C9A86FC0F878CFD00000003000000060F8750FD07800100128A410100000000028000F813D7ECF900000001022A457F0000000513E1C50800000004000000050000000500000005000000030F34D0FC045489FF1386AD080C9A87040F8750FB07800100128A41010000000000000008128A7D01028000F80000000900000006000000000000000200000008000000040000000600000003000000020F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003000000080F8750FD00000005000000030000000413867108000000040C9A86FC000000060F8750FD078001000000000600000005000000030F34D0FC000000060000000300000001"
theorem small_8118725_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118725_right_root small_8118725_right_fuel small_8118725_right_count small_8118725_right_encoded = true := by
  decide +kernel
theorem small_8118725_right_covered : CoveredBy scale carrier boxes small_8118725_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118725_right_root small_8118725_right_fuel small_8118725_right_count small_8118725_right_encoded small_8118725_right_checked

theorem cover_8118725 : CoveredBy scale carrier boxes root_8118725 := by
  apply coveredBy_split_literal root_8118725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118726 small_8118725_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118726
  · exact small_8118725_right_covered
#print axioms cover_8118725

def root_8118720 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118720_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118720_right_fuel : Nat := 1
def small_8118720_right_count : Nat := 1
def small_8118720_right_encoded : String := "00000000"
theorem small_8118720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118720_right_root small_8118720_right_fuel small_8118720_right_count small_8118720_right_encoded = true := by
  decide +kernel
theorem small_8118720_right_covered : CoveredBy scale carrier boxes small_8118720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118720_right_root small_8118720_right_fuel small_8118720_right_count small_8118720_right_encoded small_8118720_right_checked

theorem cover_8118720 : CoveredBy scale carrier boxes root_8118720 := by
  apply coveredBy_split_literal root_8118720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118725 small_8118720_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118725
  · exact small_8118720_right_covered
#print axioms cover_8118720

def root_8116444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8116444 : CoveredBy scale carrier boxes root_8116444 := by
  apply coveredBy_split_literal root_8116444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3046.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8118720 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3046.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8118720
#print axioms cover_8116444

def root_8116438 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116438_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116438_left_fuel : Nat := 1
def small_8116438_left_count : Nat := 1
def small_8116438_left_encoded : String := "00000004"
theorem small_8116438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116438_left_root small_8116438_left_fuel small_8116438_left_count small_8116438_left_encoded = true := by
  decide +kernel
theorem small_8116438_left_covered : CoveredBy scale carrier boxes small_8116438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116438_left_root small_8116438_left_fuel small_8116438_left_count small_8116438_left_encoded small_8116438_left_checked

theorem cover_8116438 : CoveredBy scale carrier boxes root_8116438 := by
  apply coveredBy_split_literal root_8116438 small_8116438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116444 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8116438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116444
#print axioms cover_8116438

def root_8116244 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116244_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116244_left_fuel : Nat := 21
def small_8116244_left_count : Nat := 93
def small_8116244_left_encoded : String := "12073D0805000100135D450100000000050000F800000008135D44F90000000800000001135D8101050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000080F34D108000000040C9A87040F8750FB0C9A86FC0F878CFD000000030780010000000008128A7D01078000F800000008128A40F90000000800000001000000000F8750FD078001000000000A128A7D01078000F8128A7CF9000000010AD3577F0000000500000009000000050000000000000003000000020F878CFB000000020C9A86FC000000080F8750FD0780010000000008128A7D01078000F80000000800000005000000000000000300000008000000020F34D1040000000200000008135D44F90CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000080F34D108000000040C9A87040000000A0F878CFB000000020C9A86FC000000080000000500000008000000020F34D1040000000200000008000000010000000000000004"
theorem small_8116244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116244_left_root small_8116244_left_fuel small_8116244_left_count small_8116244_left_encoded = true := by
  decide +kernel
theorem small_8116244_left_covered : CoveredBy scale carrier boxes small_8116244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116244_left_root small_8116244_left_fuel small_8116244_left_count small_8116244_left_encoded small_8116244_left_checked

theorem cover_8116244 : CoveredBy scale carrier boxes root_8116244 := by
  apply coveredBy_split_literal root_8116244 small_8116244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116438 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8116244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116438
#print axioms cover_8116244

def root_8116238 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116238_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116238_left_fuel : Nat := 1
def small_8116238_left_count : Nat := 1
def small_8116238_left_encoded : String := "00000003"
theorem small_8116238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116238_left_root small_8116238_left_fuel small_8116238_left_count small_8116238_left_encoded = true := by
  decide +kernel
theorem small_8116238_left_covered : CoveredBy scale carrier boxes small_8116238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116238_left_root small_8116238_left_fuel small_8116238_left_count small_8116238_left_encoded small_8116238_left_checked

theorem cover_8116238 : CoveredBy scale carrier boxes root_8116238 := by
  apply coveredBy_split_literal root_8116238 small_8116238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116244 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8116238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116244
#print axioms cover_8116238

def root_8116237 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116237_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116237_right_fuel : Nat := 7
def small_8116237_right_count : Nat := 13
def small_8116237_right_encoded : String := "120700FC08A912FF0000000812070108000000040500010000000008135D8101050000F800000008000000060000000000000003"
theorem small_8116237_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116237_right_root small_8116237_right_fuel small_8116237_right_count small_8116237_right_encoded = true := by
  decide +kernel
theorem small_8116237_right_covered : CoveredBy scale carrier boxes small_8116237_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116237_right_root small_8116237_right_fuel small_8116237_right_count small_8116237_right_encoded small_8116237_right_checked

theorem cover_8116237 : CoveredBy scale carrier boxes root_8116237 := by
  apply coveredBy_split_literal root_8116237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116238 small_8116237_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116238
  · exact small_8116237_right_covered
#print axioms cover_8116237

def root_8116232 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116232_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116232_right_fuel : Nat := 1
def small_8116232_right_count : Nat := 1
def small_8116232_right_encoded : String := "00000002"
theorem small_8116232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116232_right_root small_8116232_right_fuel small_8116232_right_count small_8116232_right_encoded = true := by
  decide +kernel
theorem small_8116232_right_covered : CoveredBy scale carrier boxes small_8116232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116232_right_root small_8116232_right_fuel small_8116232_right_count small_8116232_right_encoded small_8116232_right_checked

theorem cover_8116232 : CoveredBy scale carrier boxes root_8116232 := by
  apply coveredBy_split_literal root_8116232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116237 small_8116232_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116237
  · exact small_8116232_right_covered
#print axioms cover_8116232

def root_8116231 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116231_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116231_right_fuel : Nat := 25
def small_8116231_right_count : Nat := 99
def small_8116231_right_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF00000008120701080000000405000100135D450100000000050000F800000008135D44F90000000800000001135D8101050000F8135D80F900000001045489FB1386AD040CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86FC0F878CFD00000003000000060F8750FD07800100128A410100000000078000F80000000800000006128A7D01078000F8128A7CF900000001067ECE7B12EA9504022A457F00000008000000060000000212EA59040000000200000006000000060000000000000003000000080000000213867104000000020CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86FC000000060F8750FD0780010000000006128A7D0100000006000000000000000300000008135D44F9045489FB1386AD040CFD9BFD0F350CFC00000003045489FF0000000800000006000000060000000213867104000000020CFD9BFD0F350CFC000000030000000600000006000000010000000000000008"
theorem small_8116231_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116231_right_root small_8116231_right_fuel small_8116231_right_count small_8116231_right_encoded = true := by
  decide +kernel
theorem small_8116231_right_covered : CoveredBy scale carrier boxes small_8116231_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116231_right_root small_8116231_right_fuel small_8116231_right_count small_8116231_right_encoded small_8116231_right_checked

theorem cover_8116231 : CoveredBy scale carrier boxes root_8116231 := by
  apply coveredBy_split_literal root_8116231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116232 small_8116231_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116232
  · exact small_8116231_right_covered
#print axioms cover_8116231

def root_8116225 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116225_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116225_left_fuel : Nat := 1
def small_8116225_left_count : Nat := 1
def small_8116225_left_encoded : String := "00000004"
theorem small_8116225_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116225_left_root small_8116225_left_fuel small_8116225_left_count small_8116225_left_encoded = true := by
  decide +kernel
theorem small_8116225_left_covered : CoveredBy scale carrier boxes small_8116225_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116225_left_root small_8116225_left_fuel small_8116225_left_count small_8116225_left_encoded small_8116225_left_checked

theorem cover_8116225 : CoveredBy scale carrier boxes root_8116225 := by
  apply coveredBy_split_literal root_8116225 small_8116225_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116231 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8116225_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116231
#print axioms cover_8116225

def root_8116217 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116217_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116217_left_fuel : Nat := 2
def small_8116217_left_count : Nat := 3
def small_8116217_left_encoded : String := "1151E8FF0000000800000004"
theorem small_8116217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116217_left_root small_8116217_left_fuel small_8116217_left_count small_8116217_left_encoded = true := by
  decide +kernel
theorem small_8116217_left_covered : CoveredBy scale carrier boxes small_8116217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116217_left_root small_8116217_left_fuel small_8116217_left_count small_8116217_left_encoded small_8116217_left_checked

theorem cover_8116217 : CoveredBy scale carrier boxes root_8116217 := by
  apply coveredBy_split_literal root_8116217 small_8116217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116225 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8116217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116225
#print axioms cover_8116217

def root_8116211 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116211_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116211_left_fuel : Nat := 1
def small_8116211_left_count : Nat := 1
def small_8116211_left_encoded : String := "00000003"
theorem small_8116211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116211_left_root small_8116211_left_fuel small_8116211_left_count small_8116211_left_encoded = true := by
  decide +kernel
theorem small_8116211_left_covered : CoveredBy scale carrier boxes small_8116211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116211_left_root small_8116211_left_fuel small_8116211_left_count small_8116211_left_encoded small_8116211_left_checked

theorem cover_8116211 : CoveredBy scale carrier boxes root_8116211 := by
  apply coveredBy_split_literal root_8116211 small_8116211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116217 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8116211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116217
#print axioms cover_8116211

def root_8116210 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8116210 : CoveredBy scale carrier boxes root_8116210 := by
  apply coveredBy_split_literal root_8116210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116211 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3048.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116211
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3048.covered
#print axioms cover_8116210

def root_8116204 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116204_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116204_left_fuel : Nat := 1
def small_8116204_left_count : Nat := 1
def small_8116204_left_encoded : String := "00000002"
theorem small_8116204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116204_left_root small_8116204_left_fuel small_8116204_left_count small_8116204_left_encoded = true := by
  decide +kernel
theorem small_8116204_left_covered : CoveredBy scale carrier boxes small_8116204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116204_left_root small_8116204_left_fuel small_8116204_left_count small_8116204_left_encoded small_8116204_left_checked

theorem cover_8116204 : CoveredBy scale carrier boxes root_8116204 := by
  apply coveredBy_split_literal root_8116204 small_8116204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116210 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8116204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116210
#print axioms cover_8116204

def root_8114276 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8114276 : CoveredBy scale carrier boxes root_8114276 := by
  apply coveredBy_split_literal root_8114276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3045.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8116204 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3045.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8116204
#print axioms cover_8114276

def root_8114271 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8114271_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8114271_right_fuel : Nat := 1
def small_8114271_right_count : Nat := 1
def small_8114271_right_encoded : String := "00000001"
theorem small_8114271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8114271_right_root small_8114271_right_fuel small_8114271_right_count small_8114271_right_encoded = true := by
  decide +kernel
theorem small_8114271_right_covered : CoveredBy scale carrier boxes small_8114271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8114271_right_root small_8114271_right_fuel small_8114271_right_count small_8114271_right_encoded small_8114271_right_checked

theorem cover_8114271 : CoveredBy scale carrier boxes root_8114271 := by
  apply coveredBy_split_literal root_8114271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8114276 small_8114271_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8114276
  · exact small_8114271_right_covered
#print axioms cover_8114271

def root_8093069 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093069 : CoveredBy scale carrier boxes root_8093069 := by
  apply coveredBy_split_literal root_8093069 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8093070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8114271 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8093070
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8114271
#print axioms cover_8093069

def root_8093063 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093063_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093063_left_fuel : Nat := 1
def small_8093063_left_count : Nat := 1
def small_8093063_left_encoded : String := "00000000"
theorem small_8093063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8093063_left_root small_8093063_left_fuel small_8093063_left_count small_8093063_left_encoded = true := by
  decide +kernel
theorem small_8093063_left_covered : CoveredBy scale carrier boxes small_8093063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8093063_left_root small_8093063_left_fuel small_8093063_left_count small_8093063_left_encoded small_8093063_left_checked

theorem cover_8093063 : CoveredBy scale carrier boxes root_8093063 := by
  apply coveredBy_split_literal root_8093063 small_8093063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8093069 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8093063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8093069
#print axioms cover_8093063

def root_8127751 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127751_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127751_right_fuel : Nat := 24
def small_8127751_right_count : Nat := 433
def small_8127751_right_encoded : String := "120700FC08A912FF12073D0805000104135D44FB0CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F8000000090F8750F900000009000000010000000400000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F90C9A87080000000900000009000000010000000400000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A8708000000090F878CFF00000004000000090000000400000009138670FC0CFD9BFF0F350D080C9A8708000000090F878CFF0000000400000009000000040000000900000003000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86F8000000080F8750F900000008000000010F878D010000000900000000000000040F34D108000000040C9A87000F875101000000000C9A86F800000009000000090F878D010000000900000000138670FC0CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000000000900000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F87510100000000000000050F878D010C9A87080F8750FF00000009000000040F878CFF00000004028001040000000513D7ECFB000000020AD35779000000090000000500000000000000040000000500000005000000010000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000090F878CFF00000004000000090F8750F90000000900000001000000040F34D108000000040C9A86F80000000900000009138670FC0CFD9BFF0F350D08000000080000000400000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080000000700000007000000040F34D1080000000407800104128A40FB0000000A000000020000000A138670FC0CFD9BFF0F350D080C9A8708000000070F878CFF00000004078001040000000900000007000000040F34D108000000040000000A00000003000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F875101000000000C9A86F8000000080F8750F900000008000000010F878D010C9A86F80F878CF9000000010780010400000009128A7CFB00000002067ECE7D12EA94FC000000030AD3577F0000000800000009000000080F8750F9000000090000000100000000138670FC00000008000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A8700000000080F878D010C9A8708000000070F878CFF0000000407800104128A40FB0AD357790000000800000005000000020000000700000000000000040F34D108000000040C9A87000F87510100000000000000050F878D0107800104128A40FB0AD3577910D13CF800000001067ECE7D12EA94FC000000030AD3577F10D13D08000000050000000400000005000000050000000500000002128A7CFB000000020AD3577910D13CF800000001067ECE7D12EA94FC000000030AD3577F0000000700000005000000050000000500000000138670FC0CFD9BFF000000080000000500000003000000010000000000000004120701080000000405000104135D44FB0CFD9C010F34D100000000000CFD9BF9000000090F34D0F80000000A000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A870000000009000000090000000400000009138670FC00000005000000030F34D0F800000005000000010000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD08000000090000000400000009000000090F34D0F80000000A000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A87000F875101000000000C9A86F80F878CF900000001000000050F8750F90780010400000009128A7CFB0000000200000009000000010F878D010C9A86F80F878CF90000000107800104000000090000000A0F8750F90000000900000001000000000000000413867108000000040C9A87000F87510100000000000000050F878D010000000A00000000138670FC045489FF1386AD080C9A87000F87510100000000000000050F878D010C9A86F80000000900000009000000000000000400000005000000030F34D0F800000005000000010000000000000003"
theorem small_8127751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127751_right_root small_8127751_right_fuel small_8127751_right_count small_8127751_right_encoded = true := by
  decide +kernel
theorem small_8127751_right_covered : CoveredBy scale carrier boxes small_8127751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127751_right_root small_8127751_right_fuel small_8127751_right_count small_8127751_right_encoded small_8127751_right_checked

theorem cover_8127751 : CoveredBy scale carrier boxes root_8127751 := by
  apply coveredBy_split_literal root_8127751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3049.root small_8127751_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3049.covered
  · exact small_8127751_right_covered
#print axioms cover_8127751

def root_8127745 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127745_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127745_left_fuel : Nat := 1
def small_8127745_left_count : Nat := 1
def small_8127745_left_encoded : String := "00000001"
theorem small_8127745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127745_left_root small_8127745_left_fuel small_8127745_left_count small_8127745_left_encoded = true := by
  decide +kernel
theorem small_8127745_left_covered : CoveredBy scale carrier boxes small_8127745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127745_left_root small_8127745_left_fuel small_8127745_left_count small_8127745_left_encoded small_8127745_left_checked

theorem cover_8127745 : CoveredBy scale carrier boxes root_8127745 := by
  apply coveredBy_split_literal root_8127745 small_8127745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8127751 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8127745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8127751
#print axioms cover_8127745

def root_8127744 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127744_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127744_right_fuel : Nat := 21
def small_8127744_right_count : Nat := 293
def small_8127744_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB0CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000060F34D0FC0CFD9BFF000000060F34D10800000004028001040000000613D7ECFB000000020AD35781000000070000000600000003138670F80CFD9BFD0000000600000007000000010F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000060F34D0FC0CFD9BFF000000060000000500000003138670F80CFD9BFD000000060F34D0FC0000000500000003000000010000000000000002135D80FB000000020CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030000000700000007000000070F350D00045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF000000070F34D10800000004000000070F34D0FC0CFD9BFF000000070F34D108000000040C9A87000F87510100000000000000050F878D01000000070000000000000003138670F80CFD9BFD0F350CFC000000030000000700000007000000010000000000000004120701080000000405000104135D44FB0CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000080F34D0FC0000000A00000003138670F80CFD9BFD000000080000000A000000010F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF000000061386710800000004000000060F34D0FC0000000500000003138670F800000005000000010000000000000002135D80FB000000020CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0000000A00000007000000040000000A0F34D0FC0000000A00000003138670F80CFD9BFD0000000A0000000A000000010F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F875101000000000C9A86FC00000006000000060F878D010C9A86FC0F878CFD0000000307800104000000060000000700000006000000000000000413867108000000040C9A87000F87510100000000000000050F878D010000000A000000000F34D0FC0000000500000003138670F80CFD9BFD0F350CFC00000003045489FF1386AD08000000070000000400000005000000050000000100000000120700FC08A912FF12073D0805000104135D44FB0CFD9C010F34D10000000000045489F91386ACF800000001045489FD1386ACFC000000030CFD9BFF0F350D0800000007000000040000000500000005000000050000000500000002135D80FB000000020CFD9C010F34D10000000000045489F91386ACF800000001045489FD1386ACFC000000030CFD9BFF000000070F34D108000000040000000A138670FC0CFD9BFF000000070000000500000003000000070F350D00045489F91386ACF800000001045489FD1386ACFC000000030CFD9BFF0F350D080000000500000004000000050000000500000005000000000000000412070108000000040500010400000005135D80FB00000002000000050000000300000001"
theorem small_8127744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127744_right_root small_8127744_right_fuel small_8127744_right_count small_8127744_right_encoded = true := by
  decide +kernel
theorem small_8127744_right_covered : CoveredBy scale carrier boxes small_8127744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127744_right_root small_8127744_right_fuel small_8127744_right_count small_8127744_right_encoded small_8127744_right_checked

theorem cover_8127744 : CoveredBy scale carrier boxes root_8127744 := by
  apply coveredBy_split_literal root_8127744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8127745 small_8127744_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8127745
  · exact small_8127744_right_covered
#print axioms cover_8127744

def root_8127739 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127739_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127739_right_fuel : Nat := 1
def small_8127739_right_count : Nat := 1
def small_8127739_right_encoded : String := "00000000"
theorem small_8127739_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127739_right_root small_8127739_right_fuel small_8127739_right_count small_8127739_right_encoded = true := by
  decide +kernel
theorem small_8127739_right_covered : CoveredBy scale carrier boxes small_8127739_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127739_right_root small_8127739_right_fuel small_8127739_right_count small_8127739_right_encoded small_8127739_right_checked

theorem cover_8127739 : CoveredBy scale carrier boxes root_8127739 := by
  apply coveredBy_split_literal root_8127739 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8127744 small_8127739_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8127744
  · exact small_8127739_right_covered
#print axioms cover_8127739

def root_8127151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127151_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127151_left_fuel : Nat := 20
def small_8127151_left_count : Nat := 275
def small_8127151_left_encoded : String := "120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A01000000091386AD000CFD9BF9000000090F34D0F80CFD9BFD0F350CFC000000030000000900000009000000010000000000000002135D80FB0000000204548A0113867100000000000CFD9BF9000000090F34D0F800000007000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000300000009000000090F34D0F80CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000070000000900000003000000010000000000000004120701080000000405000104135D44FB04548A01000000091386AD000CFD9BF9000000090F34D0F800000009000000010000000000000002135D80FB0000000204548A0113867100000000000CFD9BF9000000090F34D0F800000009000000011386AD000CFD9BF90F350CF800000001000000090F34D0F80000000A0000000100000000120700FC08A912FF12073D0805000104135D44FB04548A0113867100000000000CFD9BF90F350CF800000001045489FD00000009138670FC0CFD9BFF0F350D08000000090000000400000009000000030F34D0F800000009000000011386AD000CFD9BF90F350CF800000001045489FD1386ACFC0000000300000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F900000009000000010000000400000009000000030F34D0F8045489FD00000009138670FC0CFD9BFF0F350D0800000009000000040000000900000003000000010000000000000002135D80FB0000000204548A0113867100000000000CFD9BF9000000090F34D0F800000009000000011386AD000CFD9BF90F350CF800000001045489FD1386ACFC0000000300000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F900000009000000010000000400000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0000000700000009138670FC0CFD9BFF0F350D0800000007000000040000000900000003000000010000000000000004120701080000000405000104000000090000000A00000003120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A01000000071386AD00045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF0000000700000009000000030000000700000000000000020000000700000004120701080000000405000104135D44FB04548A01000000081386AD00045489F90000000A0000000800000000000000020000000A120700FC08A912FF12073D0805000104135D44FB04548A010000000A1386AD00045489F91386ACF800000001045489FD0000000A0000000A138670F80000000A000000010000000000000002135D80FB0000000204548A01000000071386AD00045489F91386ACF800000001045489FD00000007000000070000000700000000000000040000000A0000000300000001"
theorem small_8127151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127151_left_root small_8127151_left_fuel small_8127151_left_count small_8127151_left_encoded = true := by
  decide +kernel
theorem small_8127151_left_covered : CoveredBy scale carrier boxes small_8127151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127151_left_root small_8127151_left_fuel small_8127151_left_count small_8127151_left_encoded small_8127151_left_checked

theorem cover_8127151 : CoveredBy scale carrier boxes root_8127151 := by
  apply coveredBy_split_literal root_8127151 small_8127151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8127739 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8127151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8127739
#print axioms cover_8127151

def root_8127145 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127145_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127145_left_fuel : Nat := 1
def small_8127145_left_count : Nat := 1
def small_8127145_left_encoded : String := "00000004"
theorem small_8127145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127145_left_root small_8127145_left_fuel small_8127145_left_count small_8127145_left_encoded = true := by
  decide +kernel
theorem small_8127145_left_covered : CoveredBy scale carrier boxes small_8127145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127145_left_root small_8127145_left_fuel small_8127145_left_count small_8127145_left_encoded small_8127145_left_checked

theorem cover_8127145 : CoveredBy scale carrier boxes root_8127145 := by
  apply coveredBy_split_literal root_8127145 small_8127145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8127151 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8127145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8127151
#print axioms cover_8127145

def root_8126529 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126529_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126529_left_fuel : Nat := 23
def small_8126529_left_count : Nat := 287
def small_8126529_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF80000000108A912FD12073CFC0000000305000104135D44FB05000108135D44FF0000000700000004135D80FF0000000404548A01000000051386AD000CFD9BF900000005000000070000000000000002135D80FB0000000200000007120700FC05000104135D44FB05000108135D44FF04548A01000000071386AD00000000070000000000000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF800000001045489FD0000000500000007000000071386AD000CFD9BF90F350CF800000001045489FD1386ACFC000000030C9A86F8000000090F8750F90000000500000001138670FC0C9A86F80F878CF900000001000000070F8750F90280010413D7B0FB078001080000000800000009000000020000000700000001000000030F34D0F800000007000000010000000000000002135D80FB0000000205000108000000070000000700000003120700F8000000070000000112073D0008A912F912073CF80000000108A912FD12073CFC0000000305000104135D44FB05000108135D44FF0CFD9C010F34D100000000000CFD9BF9000000090F34D0F800000007000000010F350D000CFD9BF9000000090F34D0F800000009000000010000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF9000000090F34D0F800000007000000010F350D000CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000300000009000000090F34D0F80CFD9BFD000000060F34D0FC0000000600000003000000010000000000000002135D80FB0000000205000108135D44FF0CFD9C010F34D10000000000000000070F350D000CFD9BF9000000080F34D0F800000007000000010000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000100000009000000070F350D000CFD9BF90F350CF8000000010CFD9BFD0F350CFC000000030C9A87000F875101000000000C9A86F800000007000000090F878D0100000007000000000F34D0FC00000008000000030F34D0F8000000070000000100000000120700FC05000104135D44FB05000108135D44FF0CFD9C010F34D100000000000CFD9BF9000000080F34D0F800000007000000010000000800000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC000000030C9A86F8000000090F8750F90000000900000001000000080F34D0F8045489FD0000000700000007000000010F350D000CFD9BF9000000080F34D0F800000008000000010000000000000002135D80FB000000020500010800000008135D80FF000000040CFD9C010F34D100000000000CFD9BF900000008000000070000000800000003120700F808A912FD12073CFC0000000305000104135D44FB0500010800000007135D80FF000000040CFD9C0100000007000000060000000200000007120700FC05000104135D44FB0500010800000007135D80FF000000040CFD9C010000000700000005000000020000000700000003000000010000000000000004"
theorem small_8126529_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8126529_left_root small_8126529_left_fuel small_8126529_left_count small_8126529_left_encoded = true := by
  decide +kernel
theorem small_8126529_left_covered : CoveredBy scale carrier boxes small_8126529_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8126529_left_root small_8126529_left_fuel small_8126529_left_count small_8126529_left_encoded small_8126529_left_checked

theorem cover_8126529 : CoveredBy scale carrier boxes root_8126529 := by
  apply coveredBy_split_literal root_8126529 small_8126529_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8127145 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8126529_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8127145
#print axioms cover_8126529

def root_8126523 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126523_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126523_left_fuel : Nat := 1
def small_8126523_left_count : Nat := 1
def small_8126523_left_encoded : String := "00000003"
theorem small_8126523_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8126523_left_root small_8126523_left_fuel small_8126523_left_count small_8126523_left_encoded = true := by
  decide +kernel
theorem small_8126523_left_covered : CoveredBy scale carrier boxes small_8126523_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8126523_left_root small_8126523_left_fuel small_8126523_left_count small_8126523_left_encoded small_8126523_left_checked

theorem cover_8126523 : CoveredBy scale carrier boxes root_8126523 := by
  apply coveredBy_split_literal root_8126523 small_8126523_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8126529 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8126523_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8126529
#print axioms cover_8126523

def root_8126522 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126522_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126522_right_fuel : Nat := 23
def small_8126522_right_count : Nat := 293
def small_8126522_right_encoded : String := "1151E8FD0A0001081151E8FF08A913010000000712073D0008A912F912073CF80000000105000104135D44FB050000FC135D80FD000000030500010800000009135D80FF000000040CFD9C0100000005000000060000000900000002135D80FB00000002050000FC135D80FD0000000305000108000000070000000700000007120700F800000007000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FF12073D080500010400000009000000050000000412070108000000040500010400000008135D80FB00000002050000FC0000000800000005120700F808A912FF000000071207010800000004000000080000000112073D0008A912F912073CF80000000108A912FF12073D0805000104135D44FB050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF9000000090F34D0F800000006000000010F350D000CFD9BF9000000060F34D0F8000000060000000100000000135D44FD0CFD9C010F34D1000000000000000006000000060000000300000002135D80FB00000002050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF800000001000000050F34D0F800000007000000010F350D000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A87000F87510100000000000000060F878D010000000500000000000000040F34D108000000040C9A87000F87510100000000000000060F878D0100000005000000000F34D0F80CFD9BFF000000060F34D10800000004000000060000000100000000135D44FD0CFD9C010F34D10000000000000000050F350D000CFD9BF90F350CF8000000010CFD9BFF000000050F34D10800000004000000050F34D0F80000000600000001000000000000000300000004120701080000000405000104135D44FB050000FC135D80FD000000030CFD9C010F34D10000000000000000080F350D000CFD9BF9000000060F34D0F8000000060000000100000000135D44FD0CFD9C0100000008000000060000000300000002135D80FB00000002050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF80000000100000008000000080F350D000CFD9BF90F350CF800000001045489FF1386AD080C9A87000F87510100000000000000060F878D010C9A86F80000000600000005000000000000000413867108000000040C9A87000F875101000000000C9A86F80000000600000008000000080F34D0F8045489FF0000000613867108000000040C9A870000000008000000060000000100000000135D44FD0CFD9C010F34D100000000000CFD9BF900000005000000080F350D000CFD9BF9000000060F34D0F800000006000000010000000000000003120700F808A912FF12073D0805000104135D44FB00000006000000020000000700000004120701080000000405000104135D44FB050000FC000000060000000600000002135D80FB00000002050000FC135D80FD000000030CFD9C010F34D10000000000000000070F350D00045489F900000006138670F8000000060000000100000000135D44FD0000000700000003000000010000000000000003"
theorem small_8126522_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8126522_right_root small_8126522_right_fuel small_8126522_right_count small_8126522_right_encoded = true := by
  decide +kernel
theorem small_8126522_right_covered : CoveredBy scale carrier boxes small_8126522_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8126522_right_root small_8126522_right_fuel small_8126522_right_count small_8126522_right_encoded small_8126522_right_checked

theorem cover_8126522 : CoveredBy scale carrier boxes root_8126522 := by
  apply coveredBy_split_literal root_8126522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8126523 small_8126522_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8126523
  · exact small_8126522_right_covered
#print axioms cover_8126522

def root_8126517 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126517_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126517_right_fuel : Nat := 1
def small_8126517_right_count : Nat := 1
def small_8126517_right_encoded : String := "00000002"
theorem small_8126517_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8126517_right_root small_8126517_right_fuel small_8126517_right_count small_8126517_right_encoded = true := by
  decide +kernel
theorem small_8126517_right_covered : CoveredBy scale carrier boxes small_8126517_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8126517_right_root small_8126517_right_fuel small_8126517_right_count small_8126517_right_encoded small_8126517_right_checked

theorem cover_8126517 : CoveredBy scale carrier boxes root_8126517 := by
  apply coveredBy_split_literal root_8126517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8126522 small_8126517_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8126522
  · exact small_8126517_right_covered
#print axioms cover_8126517

def root_8135060 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8135060_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8135060_right_fuel : Nat := 1
def small_8135060_right_count : Nat := 1
def small_8135060_right_encoded : String := "00000000"
theorem small_8135060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8135060_right_root small_8135060_right_fuel small_8135060_right_count small_8135060_right_encoded = true := by
  decide +kernel
theorem small_8135060_right_covered : CoveredBy scale carrier boxes small_8135060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8135060_right_root small_8135060_right_fuel small_8135060_right_count small_8135060_right_encoded small_8135060_right_checked

theorem cover_8135060 : CoveredBy scale carrier boxes root_8135060 := by
  apply coveredBy_split_literal root_8135060 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3050.root small_8135060_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3050.covered
  · exact small_8135060_right_covered
#print axioms cover_8135060

def root_8134818 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134818_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134818_left_fuel : Nat := 15
def small_8134818_left_count : Nat := 113
def small_8134818_left_encoded : String := "0F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A87040F8750FB0C9A86FC0000000A00000009000000020F878CFB000000020C9A86FC0000000A000000070F8750F90C9A87040000000900000005000000010000000413867108000000040C9A86F80000000A0F8750F90000000A000000010F34D0FC045489FF1386AD080C9A86F80F878CF9000000010000000A0F8750F90C9A8704000000090000000A00000001000000040000000A00000003000000020F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF900000001000000070F8750F90000000500000001000000040000000A0F34D0FC045489FF1386AD080C9A86F80000000A0F8750F90000000A00000001000000040000000A000000030F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040F8750FB0C9A86FC0000000A000000070000000200000007000000040000000A0F34D0FC0000000A00000003000000020F34D104000000020CFD9BFD0F350CFC00000003000000070F34D0FC0000000A0000000300000001"
theorem small_8134818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8134818_left_root small_8134818_left_fuel small_8134818_left_count small_8134818_left_encoded = true := by
  decide +kernel
theorem small_8134818_left_covered : CoveredBy scale carrier boxes small_8134818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8134818_left_root small_8134818_left_fuel small_8134818_left_count small_8134818_left_encoded small_8134818_left_checked

theorem cover_8134818 : CoveredBy scale carrier boxes root_8134818 := by
  apply coveredBy_split_literal root_8134818 small_8134818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8135060 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8134818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8135060
#print axioms cover_8134818

def root_8134812 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134812_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134812_left_fuel : Nat := 1
def small_8134812_left_count : Nat := 1
def small_8134812_left_encoded : String := "00000004"
theorem small_8134812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8134812_left_root small_8134812_left_fuel small_8134812_left_count small_8134812_left_encoded = true := by
  decide +kernel
theorem small_8134812_left_covered : CoveredBy scale carrier boxes small_8134812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8134812_left_root small_8134812_left_fuel small_8134812_left_count small_8134812_left_encoded small_8134812_left_checked

theorem cover_8134812 : CoveredBy scale carrier boxes root_8134812 := by
  apply coveredBy_split_literal root_8134812 small_8134812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8134818 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8134812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8134818
#print axioms cover_8134812

def root_8134006 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134006_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134006_left_fuel : Nat := 25
def small_8134006_left_count : Nat := 373
def small_8134006_left_encoded : String := "12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000007000000040F34D108000000040C9A86F80F878CF9000000010C9A87040F8750FB0000000700000002000000070F8750F900000005000000010F34D0FC0CFD9BFF0F350D080C9A86F80F878CF900000001000000070F8750F90C9A8704000000090000000700000001000000040F34D108000000040C9A86F80F878CF9000000010C9A87040F8750FB0AD357810000000910D13D000AD3577D10D13CFC00000003000000070000000900000000000000020F878CFB00000002000000070F8750F90C9A8704000000090F878CFB000000020AD357810000000910D13D0000000009000000000000000100000003000000020F34D104000000020CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000070F34D108000000040C9A86F8000000070F8750F90AD357810000000710D13D00000000070000000000000001000000030F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000070F34D108000000040000000700000003000000020F34D1040000000200000007000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86F8000000070F8750F900000008000000010F878D010C9A86F8000000070F8750F90C9A87040F8750FB0000000700000002000000070000000100000000000000040F34D108000000040C9A87000F875101000000000C9A86F80F878CF9000000010C9A87040F8750FB0C9A86FC0F878CFD000000030AD3577F0000000710D10108000000040B4D440000000007000000070000000700000002000000070F8750F90C9A87040F8750FB0C9A86FC0F878CFD000000030AD3577F10D13D08000000080000000410D10108000000040B4D440010801101000000000B4D43F8000000080000000910804D0100000009000000000F8750FD0AD3577F0000000510D10108000000040000000500000003000000020F878CFB000000020C9A86FC0F878CFD000000030000000800000007000000010F878D010C9A86F80F878CF9000000010C9A87040F8750FB0C9A86FC0F878CFD00000003000000070000000700000002000000070F8750F90C9A87040F8750FB0C9A86FC0F878CFD000000030AD3577F000000050000000900000005000000020F878CFB000000020C9A86FC0F878CFD000000030AD3577F0000000510D1010800000004000000070000000500000001000000000F34D0FC0CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F875101000000000C9A86F8000000080F8750F900000008000000010F878D010C9A86F80F878CF9000000010C9A87040F8750FB0AD3577D10D13CFC000000030AD3577F0000000710D10108000000040DE7CA00000000070E601501000000070000000010D100FC0AD3577F0000000710D10108000000040DE7CA00000000080E601501000000090000000000000003000000020F878CFB000000020AD3577D00000007000000070F8750F90C9A87040F8750FB0AD3577D10D13CFC000000030AD3577F000000090000000910D100FC00000008000000030000000200000008000000010000000000000003000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A8700000000070F878D0100000007000000000F34D0FC00000008000000030F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A870000000007000000070F34D0FC0CFD9BFF0F350D0800000007000000040F34D108000000040C9A87000F875101000000000C9A87040F8750FB0000000700000002000000070F878D010C9A87040F8750FB0000000700000002000000070000000000000003000000020F34D104000000020CFD9BFD0000000700000007000000010000000000000004"
theorem small_8134006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8134006_left_root small_8134006_left_fuel small_8134006_left_count small_8134006_left_encoded = true := by
  decide +kernel
theorem small_8134006_left_covered : CoveredBy scale carrier boxes small_8134006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8134006_left_root small_8134006_left_fuel small_8134006_left_count small_8134006_left_encoded small_8134006_left_checked

theorem cover_8134006 : CoveredBy scale carrier boxes root_8134006 := by
  apply coveredBy_split_literal root_8134006 small_8134006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8134812 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8134006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8134812
#print axioms cover_8134006

def root_8134000 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134000_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8134000_left_fuel : Nat := 1
def small_8134000_left_count : Nat := 1
def small_8134000_left_encoded : String := "00000003"
theorem small_8134000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8134000_left_root small_8134000_left_fuel small_8134000_left_count small_8134000_left_encoded = true := by
  decide +kernel
theorem small_8134000_left_covered : CoveredBy scale carrier boxes small_8134000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8134000_left_root small_8134000_left_fuel small_8134000_left_count small_8134000_left_encoded small_8134000_left_checked

theorem cover_8134000 : CoveredBy scale carrier boxes root_8134000 := by
  apply coveredBy_split_literal root_8134000 small_8134000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8134006 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8134000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8134006
#print axioms cover_8134000

def root_8133999 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8133999_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8133999_right_fuel : Nat := 20
def small_8133999_right_count : Nat := 275
def small_8133999_right_encoded : String := "120700FC08A912FF12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A86F80F878CF9000000010C9A87040F8750FB0AD357810000000910D13D000000000900000000000000020F878CFB000000020AD3578100000007000000080F8750F90C9A8704000000090000000800000001138670FC0000000800000003000000020F34D10400000002000000080F34D0F80CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF000000070F34D108000000040C9A87040F8750FB0000000A0000000200000007138670FC0CFD9BFF000000080F34D108000000040C9A87040F8750FB0000000A000000020000000700000003000000020F34D10400000002045489FD0000000700000007000000010F350D000CFD9BF9000000080F34D0F80CFD9BFB0F350D04045489FD1386ACFC000000030CFD9BFF000000080F34D108000000040C9A8700000000080F878D010C9A87040F8750FB0AD35779000000080000000700000002000000070000000000000008000000020F34D104000000020000000800000001000000000000000412070108000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FD1386ACFC00000003045489FF1386AD080C9A86F80000000A0F8750F90000000A00000001000000040000000A138670FC045489FF1386AD080C9A86F80000000A00000006000000040000000600000003000000020F34D10400000002045489FD0000000A000000060F34D0F80CFD9BFB0000000A0F34D104000000020000000A000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FD1386ACFC00000003045489FF1386AD080C9A87000F875101000000000C9A86F8000000080F8750F900000008000000010F878D010C9A86F80F878CF9000000010C9A87040F8750FB0000000A00000002000000080F8750F90C9A87040F8750FB00000009000000020000000800000001000000000000000413867108000000040C9A87000F875101000000000C9A86F80F878CF900000001000000050F8750F90C9A87040F8750FB000000060000000200000006000000010F878D010C9A86F80000000A0F8750F90000000A0000000100000000138670FC045489FF0000000813867108000000040C9A8700000000050F878D01000000060000000000000003000000020F34D10400000002045489FD1386ACFC00000003045489FF0000000813867108000000040C9A8700000000060F878D010000000600000000000000080F34D0F80CFD9BFB0F350D04045489FD1386ACFC00000003045489FF1386AD080C9A8700000000050F878D010C9A8704000000050000000A00000000000000040000000500000005000000020F34D10400000002045489FD1386ACFC00000003045489FF000000080000000500000005000000010000000000000003"
theorem small_8133999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8133999_right_root small_8133999_right_fuel small_8133999_right_count small_8133999_right_encoded = true := by
  decide +kernel
theorem small_8133999_right_covered : CoveredBy scale carrier boxes small_8133999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8133999_right_root small_8133999_right_fuel small_8133999_right_count small_8133999_right_encoded small_8133999_right_checked

theorem cover_8133999 : CoveredBy scale carrier boxes root_8133999 := by
  apply coveredBy_split_literal root_8133999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8134000 small_8133999_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8134000
  · exact small_8133999_right_covered
#print axioms cover_8133999

def root_8133994 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8133994_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8133994_right_fuel : Nat := 1
def small_8133994_right_count : Nat := 1
def small_8133994_right_encoded : String := "00000002"
theorem small_8133994_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8133994_right_root small_8133994_right_fuel small_8133994_right_count small_8133994_right_encoded = true := by
  decide +kernel
theorem small_8133994_right_covered : CoveredBy scale carrier boxes small_8133994_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8133994_right_root small_8133994_right_fuel small_8133994_right_count small_8133994_right_encoded small_8133994_right_checked

theorem cover_8133994 : CoveredBy scale carrier boxes root_8133994 := by
  apply coveredBy_split_literal root_8133994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.root_8133999 small_8133994_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196.cover_8133999
  · exact small_8133994_right_covered
#print axioms cover_8133994

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0196

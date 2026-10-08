import TaoBundleAssembly0259
import TaoBundleChunkBatch0348
import TaoBundleChunkBatch0349
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260
def root_3665983 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665983_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665983_left_fuel : Nat := 16
def small_3665983_left_count : Nat := 73
def small_3665983_left_encoded : String := "120700F808A91305120701040000000208A91307120700FC08A913090000000812073CFE0000000404548A01138670F604548A03000000081386ACF80000000104548A051386710400000002000000081386AD0404548A07138670FC000000080000000300000007000000020000000000000008000000030000000812073D0408A91307120700FC08A91309120700FE000000080000000412073CFE0000000404548A01138670F604548A03000000071386ACF8000000010CFD9C050F34D104000000020000000700000007000000001386ACF60000000004548A03000000071386ACF8000000010CFD9C050F34D1040000000200000007000000070000000312073CFC0000000308A913090000000812073CFE00000004000000070000000200000001"
theorem small_3665983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665983_left_root small_3665983_left_fuel small_3665983_left_count small_3665983_left_encoded = true := by
  decide +kernel
theorem small_3665983_left_covered : CoveredBy scale carrier boxes small_3665983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665983_left_root small_3665983_left_fuel small_3665983_left_count small_3665983_left_encoded small_3665983_left_checked

theorem cover_3665983 : CoveredBy scale carrier boxes root_3665983 := by
  apply coveredBy_split_literal root_3665983 small_3665983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0259.root_3666141 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3665983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0259.cover_3666141
#print axioms cover_3665983

def root_3665978 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665978_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665978_right_fuel : Nat := 1
def small_3665978_right_count : Nat := 1
def small_3665978_right_encoded : String := "00000000"
theorem small_3665978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665978_right_root small_3665978_right_fuel small_3665978_right_count small_3665978_right_encoded = true := by
  decide +kernel
theorem small_3665978_right_covered : CoveredBy scale carrier boxes small_3665978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665978_right_root small_3665978_right_fuel small_3665978_right_count small_3665978_right_encoded small_3665978_right_checked

theorem cover_3665978 : CoveredBy scale carrier boxes root_3665978 := by
  apply coveredBy_split_literal root_3665978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665983 small_3665978_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665983
  · exact small_3665978_right_covered
#print axioms cover_3665978

def root_3665977 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3665977 : CoveredBy scale carrier boxes root_3665977 := by
  apply coveredBy_split_literal root_3665977 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665978 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1392.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665978
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1392.covered
#print axioms cover_3665977

def root_3665972 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665972_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665972_right_fuel : Nat := 1
def small_3665972_right_count : Nat := 1
def small_3665972_right_encoded : String := "00000004"
theorem small_3665972_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665972_right_root small_3665972_right_fuel small_3665972_right_count small_3665972_right_encoded = true := by
  decide +kernel
theorem small_3665972_right_covered : CoveredBy scale carrier boxes small_3665972_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665972_right_root small_3665972_right_fuel small_3665972_right_count small_3665972_right_encoded small_3665972_right_checked

theorem cover_3665972 : CoveredBy scale carrier boxes root_3665972 := by
  apply coveredBy_split_literal root_3665972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665977 small_3665972_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665977
  · exact small_3665972_right_covered
#print axioms cover_3665972

def root_3681960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681960_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681960_right_fuel : Nat := 22
def small_3681960_right_count : Nat := 135
def small_3681960_right_encoded : String := "12073CFC00000003050000FE135D810904548A01138670F60CFD9C030F34D0F800000007000000010F350CF80000000104548A0513867104000000020CFD9C070F34D0FC0C9A86F8000000070F87510300000001078000FE128A7D09022A45810000000713E200F600000000022A458513E1C504000000020AD3578710D100FC000000070000000300000007000000070000000400000007000000030F350CFC00000003000000071386AD040CFD9C070F34D0FC00000007000000030000000700000002000000001386ACF6000000000CFD9C030F34D0F800000007000000010F350CF80000000104548A0513867104000000020CFD9C070F34D0FC0C9A86F80F878D0300000007000000010F87510300000001078000FE128A7D09067ECE8112EA58F6022A458513E1C504000000020AD3578710D100FC00000007000000030000000500000005000000000000000500000004128A410900000004067ECE810000000700000005000000030F350CFC000000030C9A86F8000000070F87510300000001000000051386AD040CFD9C070F34D0FC0000000700000003000000050000000200000004135D45090000000404548A01138670F60CFD9C03000000070F350CF80000000104548A0513867104000000020000000700000007000000001386ACF6000000000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9C070F34D0FC00000007000000030000000500000005"
theorem small_3681960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681960_right_root small_3681960_right_fuel small_3681960_right_count small_3681960_right_encoded = true := by
  decide +kernel
theorem small_3681960_right_covered : CoveredBy scale carrier boxes small_3681960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681960_right_root small_3681960_right_fuel small_3681960_right_count small_3681960_right_encoded small_3681960_right_checked

theorem cover_3681960 : CoveredBy scale carrier boxes root_3681960 := by
  apply coveredBy_split_literal root_3681960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1393.root small_3681960_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1393.covered
  · exact small_3681960_right_covered
#print axioms cover_3681960

def root_3681954 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681954_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681954_left_fuel : Nat := 1
def small_3681954_left_count : Nat := 1
def small_3681954_left_encoded : String := "00000002"
theorem small_3681954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681954_left_root small_3681954_left_fuel small_3681954_left_count small_3681954_left_encoded = true := by
  decide +kernel
theorem small_3681954_left_covered : CoveredBy scale carrier boxes small_3681954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681954_left_root small_3681954_left_fuel small_3681954_left_count small_3681954_left_encoded small_3681954_left_checked

theorem cover_3681954 : CoveredBy scale carrier boxes root_3681954 := by
  apply coveredBy_split_literal root_3681954 small_3681954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681960 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3681954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681960
#print axioms cover_3681954

def root_3681953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681953_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681953_right_fuel : Nat := 20
def small_3681953_right_count : Nat := 91
def small_3681953_right_encoded : String := "12073D0408A91307120700FC050000FE135D810904548A01138670F60CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D1040000000204548A07138670FC0C9A86F8000000070F87510300000001078000FE128A7D09022A458100000007000000070000000400000007000000030000000700000007000000001386ACF6000000000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D1040000000204548A07138670FC0C9A86F8000000090F87510300000001078000FE128A7D09067ECE8112EA58F6000000050000000000000005000000040000000900000003000000050000000500000004135D45090000000404548A01000000071386ACF6000000000CFD9C03000000070F350CF8000000010CFD9C050F34D1040000000200000007000000050000000312073CFC00000003050000FE135D810904548A01000000071386ACF60000000000000007000000040000000700000002"
theorem small_3681953_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681953_right_root small_3681953_right_fuel small_3681953_right_count small_3681953_right_encoded = true := by
  decide +kernel
theorem small_3681953_right_covered : CoveredBy scale carrier boxes small_3681953_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681953_right_root small_3681953_right_fuel small_3681953_right_count small_3681953_right_encoded small_3681953_right_checked

theorem cover_3681953 : CoveredBy scale carrier boxes root_3681953 := by
  apply coveredBy_split_literal root_3681953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681954 small_3681953_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681954
  · exact small_3681953_right_covered
#print axioms cover_3681953

def root_3681947 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681947_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681947_left_fuel : Nat := 1
def small_3681947_left_count : Nat := 1
def small_3681947_left_encoded : String := "00000001"
theorem small_3681947_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681947_left_root small_3681947_left_fuel small_3681947_left_count small_3681947_left_encoded = true := by
  decide +kernel
theorem small_3681947_left_covered : CoveredBy scale carrier boxes small_3681947_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681947_left_root small_3681947_left_fuel small_3681947_left_count small_3681947_left_encoded small_3681947_left_checked

theorem cover_3681947 : CoveredBy scale carrier boxes root_3681947 := by
  apply coveredBy_split_literal root_3681947 small_3681947_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681953 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3681947_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681953
#print axioms cover_3681947

def root_3681901 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681901_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681901_left_fuel : Nat := 10
def small_3681901_left_count : Nat := 21
def small_3681901_left_encoded : String := "120700F808A91305120701040000000208A91307120700FC050000FE135D810904548A01000000071386ACF600000000000000070000000400000007000000030000000712073D04000000070000000200000001"
theorem small_3681901_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681901_left_root small_3681901_left_fuel small_3681901_left_count small_3681901_left_encoded = true := by
  decide +kernel
theorem small_3681901_left_covered : CoveredBy scale carrier boxes small_3681901_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681901_left_root small_3681901_left_fuel small_3681901_left_count small_3681901_left_encoded small_3681901_left_checked

theorem cover_3681901 : CoveredBy scale carrier boxes root_3681901 := by
  apply coveredBy_split_literal root_3681901 small_3681901_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681947 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3681901_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681947
#print axioms cover_3681901

def root_3681896 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681896_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681896_right_fuel : Nat := 1
def small_3681896_right_count : Nat := 1
def small_3681896_right_encoded : String := "00000000"
theorem small_3681896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681896_right_root small_3681896_right_fuel small_3681896_right_count small_3681896_right_encoded = true := by
  decide +kernel
theorem small_3681896_right_covered : CoveredBy scale carrier boxes small_3681896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681896_right_root small_3681896_right_fuel small_3681896_right_count small_3681896_right_encoded small_3681896_right_checked

theorem cover_3681896 : CoveredBy scale carrier boxes root_3681896 := by
  apply coveredBy_split_literal root_3681896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681901 small_3681896_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681901
  · exact small_3681896_right_covered
#print axioms cover_3681896

def root_3681895 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681895_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681895_right_fuel : Nat := 32
def small_3681895_right_count : Nat := 447
def small_3681895_right_encoded : String := "12073CF60000000008A91303120700F808A91305120701040000000208A91307120700FC050000FE135D81090CFD9C010F34D0F60000000600000000000000060000000400000006000000030000000712073D0408A91307120700FC050000FE135D81090CFD9C01000000070F350CF60000000004548A03138670F80CFD9C050000000600000007000000011386ACF8000000010CFD9C05000000070000000500000004135D4509000000040CFD9C010F34D0F60000000700000000000000060000000312073CFC00000003050000FE0000000700000007000000020000000112073CF80000000108A91305120701040000000208A91307120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F804548A05000000061386AD0404548A07138670FC078000FE128A7D09000000070000000400000006000000030000000700000002000000010F350CF80000000104548A05138671040000000204548A07138670FC0C9A86F80F878D03078000FE128A7D090AD3578110D100F60000000600000000000000060000000400000006000000010F87510300000001078000FE128A7D090AD3578110D100F6022A458513E1C50400000002022A45870000000613E200FC000000030B4D43F800000006108011030000000108C000FE11FC250900000006000000040000000613E20104022A45870000000913E200FC000000030B4D43F800000009108011030000000100000009000000020000000010D13CF600000000022A45850000000613E20104022A458700000009000000050000000200000004128A41090000000400000009000000031386ACFC000000030C9A86F80F878D03078000FE128A7D090AD3578110D100F60000000600000000000000060000000400000006000000010F87510300000001078000FE128A7D090AD3578110D100F6022A458513E1C50400000002067ECE8712EA58FC0B4D43F800000006108011030000000108C000FE0000000500000006000000030000000500000005000000000000000500000004128A4109000000040AD3578110D100F6022A4585000000060000000500000000000000051386AD0404548A07138670FC0C9A86F80F878D03078000FE128A7D090AD3578110D100F60000000900000000000000090000000400000009000000010F87510300000001078000FE128A7D090AD3578110D100F6067ECE8512EA590400000002000000090000000500000000000000050000000400000009000000031386ACFC000000030C9A86F80F878D0300000007000000010F875103000000010000000500000002000000000F350CF6000000000CFD9C030F34D0F804548A05000000061386AD0404548A07000000060000000600000002000000010F350CF80000000104548A05138671040000000204548A07138670FC0C9A86F60F878D010C9A86F8000000060F87510300000001078000FE128A7D09022A45850000000613E20104022A45870000000600000005000000020000000400000006000000000F875101000000000C9A86F80000000600000006000000031386ACFC000000030C9A86F60F878D010C9A86F8000000060F8751030000000100000005000000000F87510100000000000000051386AD0404548A07138670FC0C9A86F60F878D010C9A86F80F878D03078000FE0000000500000006000000010F8751030000000100000005000000000F875101000000000000000500000003000000050000000200000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F800000006000000010F350CF80000000104548A05138671040000000204548A0700000006000000061386AD0404548A07000000090000000500000002000000000F350CF6000000000CFD9C030F34D0F800000006000000010F350CF80000000104548A0500000006000000050000000312073CFC00000003050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F800000007000000010F350CF80000000104548A0513867104000000020CFD9C070F34D0FC0C9A86F80F878D03078000FE0000000800000006000000010F8751030000000100000005000000030000000500000005000000000F350CF6000000000CFD9C030F34D0F800000007000000010000000500000004135D4509000000040CFD9C010F34D0F60CFD9C030000000700000005000000000000000512073D0408A91307120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D1040000000204548A07138670FC00000005000000030000000500000005000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D104000000020000000700000005000000010000000500000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F80000000700000001000000050000000000000005000000030000000500000002"
theorem small_3681895_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681895_right_root small_3681895_right_fuel small_3681895_right_count small_3681895_right_encoded = true := by
  decide +kernel
theorem small_3681895_right_covered : CoveredBy scale carrier boxes small_3681895_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681895_right_root small_3681895_right_fuel small_3681895_right_count small_3681895_right_encoded small_3681895_right_checked

theorem cover_3681895 : CoveredBy scale carrier boxes root_3681895 := by
  apply coveredBy_split_literal root_3681895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681896 small_3681895_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681896
  · exact small_3681895_right_covered
#print axioms cover_3681895

def root_3681889 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681889_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3681889_left_fuel : Nat := 1
def small_3681889_left_count : Nat := 1
def small_3681889_left_encoded : String := "00000004"
theorem small_3681889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3681889_left_root small_3681889_left_fuel small_3681889_left_count small_3681889_left_encoded = true := by
  decide +kernel
theorem small_3681889_left_covered : CoveredBy scale carrier boxes small_3681889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3681889_left_root small_3681889_left_fuel small_3681889_left_count small_3681889_left_encoded small_3681889_left_checked

theorem cover_3681889 : CoveredBy scale carrier boxes root_3681889 := by
  apply coveredBy_split_literal root_3681889 small_3681889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681895 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3681889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681895
#print axioms cover_3681889

def root_3665971 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3665971 : CoveredBy scale carrier boxes root_3665971 := by
  apply coveredBy_split_literal root_3665971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3681889 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665972
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3681889
#print axioms cover_3665971

def root_3665966 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665966_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665966_right_fuel : Nat := 1
def small_3665966_right_count : Nat := 1
def small_3665966_right_encoded : String := "00000003"
theorem small_3665966_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665966_right_root small_3665966_right_fuel small_3665966_right_count small_3665966_right_encoded = true := by
  decide +kernel
theorem small_3665966_right_covered : CoveredBy scale carrier boxes small_3665966_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665966_right_root small_3665966_right_fuel small_3665966_right_count small_3665966_right_encoded small_3665966_right_checked

theorem cover_3665966 : CoveredBy scale carrier boxes root_3665966 := by
  apply coveredBy_split_literal root_3665966 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665971 small_3665966_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665971
  · exact small_3665966_right_covered
#print axioms cover_3665966

def root_3665965 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665965_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665965_right_fuel : Nat := 27
def small_3665965_right_count : Nat := 271
def small_3665965_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120700F608A91303120700F808A9130512070104000000020000000812073D0408A913090000000800000007000000020000000112073CF80000000108A91305120701040000000208A913090000000812073CFE00000004050000FC135D810704548A01138670F60CFD9C03000000080F350CF80000000104548A0513867104000000020CFD9C09000000080F350CFE000000040C9A86F8000000080F875103000000010C9A86FE000000080F87510900000004078000FC00000007000000071386AD040CFD9C09000000080F350CFE000000040C9A86F8000000070F875103000000010000000500000002000000001386ACF6000000000CFD9C03000000080F350CF80000000104548A05000000081386AD040CFD9C0900000008000000050000000200000003135D45070000000304548A01138670F60CFD9C030F34D0F800000008000000010F350CF80000000104548A0513867104000000020CFD9C09000000080F350CFE000000040C9A86F8000000080F875103000000010C9A86FE000000080F87510900000004000000051386AD040CFD9C090F34D0FE00000008000000040000000500000002000000001386ACF6000000000CFD9C03000000080F350CF80000000104548A05000000080000000512073D0408A91309120700FE050000FC135D810704548A01138670F60CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080000000A000000000000000800000003135D45070000000304548A01138670F60CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080000000A00000000000000080000000412073CFE00000004050000FC135D810704548A01138670F60CFD9C03000000070F350CF8000000010CFD9C050F34D104000000020CFD9C09000000070000000500000005000000001386ACF6000000000CFD9C03000000070000000500000003135D45070000000304548A01138670F60CFD9C0300000007000000050000000000000005000000020000000012073CF60000000008A91303120700F8000000080000000112073CF80000000108A91305120701040000000208A913090000000812073CFE00000004050000FC135D81070CFD9C010F34D0F600000008000000000000000800000003135D4507000000030CFD9C010F34D0F600000008000000000000000512073D0408A91309120700FE00000008000000040000000500000002000000041151E9090000000408A91301120700F608A91303120700F8000000070000000112073CF80000000108A913051207010400000002050000FC135D8107050000FE135D810904548A010000000700000007000000040000000700000003135D450700000003050000FE135D810904548A0100000007000000050000000400000007000000050000000012073CF60000000008A91303120700F8000000070000000100000005"
theorem small_3665965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665965_right_root small_3665965_right_fuel small_3665965_right_count small_3665965_right_encoded = true := by
  decide +kernel
theorem small_3665965_right_covered : CoveredBy scale carrier boxes small_3665965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665965_right_root small_3665965_right_fuel small_3665965_right_count small_3665965_right_encoded small_3665965_right_checked

theorem cover_3665965 : CoveredBy scale carrier boxes root_3665965 := by
  apply coveredBy_split_literal root_3665965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665966 small_3665965_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665966
  · exact small_3665965_right_covered
#print axioms cover_3665965

def root_3665960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665960_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665960_right_fuel : Nat := 1
def small_3665960_right_count : Nat := 1
def small_3665960_right_encoded : String := "00000002"
theorem small_3665960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665960_right_root small_3665960_right_fuel small_3665960_right_count small_3665960_right_encoded = true := by
  decide +kernel
theorem small_3665960_right_covered : CoveredBy scale carrier boxes small_3665960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665960_right_root small_3665960_right_fuel small_3665960_right_count small_3665960_right_encoded small_3665960_right_checked

theorem cover_3665960 : CoveredBy scale carrier boxes root_3665960 := by
  apply coveredBy_split_literal root_3665960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665965 small_3665960_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665965
  · exact small_3665960_right_covered
#print axioms cover_3665960

def root_3665574 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665574_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665574_left_fuel : Nat := 21
def small_3665574_left_count : Nat := 185
def small_3665574_left_encoded : String := "1151E905000000020A0000FC115225070A0000FE1152250908A91301120700F608A91303120700F808A91307120700FC0000000700000003000000070000000112073CF80000000108A91307120700FC08A91309120700FE0000000A0000000412073CFE0000000405000104135D45050000000204548A010000000700000005135D810504548A01138670F60CFD9C03000000070F350CF80000000104548A070000000A00000005000000001386ACF6000000000000000A000000020000000312073CFC0000000308A91309120700FE0500010400000007000000070000000412073CFE000000040500010400000005000000070000000012073CF60000000008A91303120700F808A91307120700FC08A913090000000712073CFE00000004050001040000000A0000000A0000000312073CFC0000000308A913090000000712073CFE000000040500010400000005000000070000000112073CF80000000108A91307120700FC08A913090000000A12073CFE0000000405000104000000050000000A0000000312073CFC0000000308A91309120700FE0500010400000005000000070000000400000005000000041151E9090000000408A91301120700F608A91303120700F808A9130700000007000000070000000112073CF80000000108A91307120700FC05000104135D450500000002000000050000000700000003000000050000000012073CF60000000008A91303120700F808A91307120700FC05000104135D45050000000200000005135D8105050000FE135D81090CFD9C01000000070000000500000004135D4509000000040CFD9C010F34D0F60000000500000000000000050000000200000003000000050000000100000005000000031151E907000000030A0000FE1152250908A91301120700F608A913030000000712073CF80000000108A91309120700FE0000000700000004000000050000000012073CF60000000008A913030000000700000005000000041151E9090000000400000005"
theorem small_3665574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665574_left_root small_3665574_left_fuel small_3665574_left_count small_3665574_left_encoded = true := by
  decide +kernel
theorem small_3665574_left_covered : CoveredBy scale carrier boxes small_3665574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665574_left_root small_3665574_left_fuel small_3665574_left_count small_3665574_left_encoded small_3665574_left_checked

theorem cover_3665574 : CoveredBy scale carrier boxes root_3665574 := by
  apply coveredBy_split_literal root_3665574 small_3665574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665960 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3665574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665960
#print axioms cover_3665574

def root_3665569 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665569_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665569_right_fuel : Nat := 1
def small_3665569_right_count : Nat := 1
def small_3665569_right_encoded : String := "00000001"
theorem small_3665569_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665569_right_root small_3665569_right_fuel small_3665569_right_count small_3665569_right_encoded = true := by
  decide +kernel
theorem small_3665569_right_covered : CoveredBy scale carrier boxes small_3665569_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665569_right_root small_3665569_right_fuel small_3665569_right_count small_3665569_right_encoded small_3665569_right_checked

theorem cover_3665569 : CoveredBy scale carrier boxes root_3665569 := by
  apply coveredBy_split_literal root_3665569 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665574 small_3665569_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665574
  · exact small_3665569_right_covered
#print axioms cover_3665569

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260

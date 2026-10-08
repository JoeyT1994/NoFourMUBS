import TaoBundleAssembly0553
import TaoBundleChunkBatch0753
import TaoBundleChunkBatch0754
import TaoBundleChunkBatch0755
import TaoBundleChunkBatch0756
import TaoBundleChunkBatch0757
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554
def root_8031551 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031551_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031551_right_fuel : Nat := 24
def small_8031551_right_count : Nat := 417
def small_8031551_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000108A91305120700FA08A9130700000005000000070000000212073CFA0000000208A91307120700FC000000070000000300000007120700F808A91305120700FA08A91307120700FC050000FE135D810904548A01000000080000000700000004000000070000000312073CFC00000003050000FE135D810904548A011386710000000000045489F900000007138670F804548A05138670FA0CFD9C070F34D0FC000000070000000300000007000000021386ACFA000000020CFD9C070F34D0FC000000070000000300000007000000011386AD00045489F900000007138670F804548A05138670FA0CFD9C070F34D0FC000000070000000300000007000000021386ACFA000000020CFD9C070000000700000007000000010000000000000004135D450900000004000000070000000212073CFA0000000208A91307120700FC050000FE135D810904548A01000000081386AD00045489F900000007000000080000000000000004000000080000000312073CFC00000003050000FE135D810904548A011386710000000000045489F91386ACF8000000010CFD9C050F34D0FA000000070000000200000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C07000000080F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070F8751070000000300000007000000011386AD00045489F91386ACF8000000010CFD9C050F34D0FA000000070000000200000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FA000000070F8751050000000200000007000000010000000000000004135D45090000000404548A011386710000000000045489F900000007138670F80CFD9C050F34D0FA00000007000000020000000700000001000000070000000112073D0008A912F912073CF80000000108A91305120700FA08A91307120700FC0000000700000003000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D1000000000000000007000000070000000400000007120700F808A91305120700FA08A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000070000000700000004000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F900000007138670F804548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C070000000700000007000000010F350D00045489F900000007138670F804548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C070F34D0FC000000070000000300000007000000010000000000000004135D4509000000040CFD9C010F34D1000000000000000007000000070000000212073CFA0000000208A91307120700FC050000FE135D81090CFD9C010F34D10000000000045489F900000007138670F80CFD9C050000000900000008000000010F350D00045489F900000007138670F80CFD9C05000000090F350CFA0000000204548A070000000800000007000000010000000000000004135D4509000000040CFD9C010F34D1000000000000000007000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050F34D0FA000000070000000200000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FA000000070F8751050000000200000005000000010F350D00045489F91386ACF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070000000A00000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000005000000020F350CFA000000020CFD9C070000000A00000005000000010000000000000004135D4509000000040CFD9C010F34D10000000000045489F900000007138670F80CFD9C050F34D0FA000000070000000200000007000000010F350D00045489F900000007138670F80CFD9C050F34D0FA00000007000000020000000500000001000000000000000100000000"
theorem small_8031551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031551_right_root small_8031551_right_fuel small_8031551_right_count small_8031551_right_encoded = true := by
  decide +kernel
theorem small_8031551_right_covered : CoveredBy scale carrier boxes small_8031551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031551_right_root small_8031551_right_fuel small_8031551_right_count small_8031551_right_encoded small_8031551_right_checked

theorem cover_8031551 : CoveredBy scale carrier boxes root_8031551 := by
  apply coveredBy_split_literal root_8031551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8031552 small_8031551_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8031552
  · exact small_8031551_right_covered
#print axioms cover_8031551

def root_8031546 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031546_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031546_right_fuel : Nat := 1
def small_8031546_right_count : Nat := 1
def small_8031546_right_encoded : String := "00000003"
theorem small_8031546_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031546_right_root small_8031546_right_fuel small_8031546_right_count small_8031546_right_encoded = true := by
  decide +kernel
theorem small_8031546_right_covered : CoveredBy scale carrier boxes small_8031546_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031546_right_root small_8031546_right_fuel small_8031546_right_count small_8031546_right_encoded small_8031546_right_checked

theorem cover_8031546 : CoveredBy scale carrier boxes root_8031546 := by
  apply coveredBy_split_literal root_8031546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031551 small_8031546_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031551
  · exact small_8031546_right_covered
#print axioms cover_8031546

def root_8031545 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031545 : CoveredBy scale carrier boxes root_8031545 := by
  apply coveredBy_split_literal root_8031545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031546 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3014.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031546
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3014.covered
#print axioms cover_8031545

def root_8031540 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031540_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031540_right_fuel : Nat := 1
def small_8031540_right_count : Nat := 1
def small_8031540_right_encoded : String := "00000002"
theorem small_8031540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031540_right_root small_8031540_right_fuel small_8031540_right_count small_8031540_right_encoded = true := by
  decide +kernel
theorem small_8031540_right_covered : CoveredBy scale carrier boxes small_8031540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031540_right_root small_8031540_right_fuel small_8031540_right_count small_8031540_right_encoded small_8031540_right_checked

theorem cover_8031540 : CoveredBy scale carrier boxes root_8031540 := by
  apply coveredBy_split_literal root_8031540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031545 small_8031540_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031545
  · exact small_8031540_right_covered
#print axioms cover_8031540

def root_8039009 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8039009 : CoveredBy scale carrier boxes root_8039009 := by
  apply coveredBy_split_literal root_8039009 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3015.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3016.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3015.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3016.covered
#print axioms cover_8039009

def root_8039004 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8039004_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8039004_right_fuel : Nat := 1
def small_8039004_right_count : Nat := 1
def small_8039004_right_encoded : String := "00000004"
theorem small_8039004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8039004_right_root small_8039004_right_fuel small_8039004_right_count small_8039004_right_encoded = true := by
  decide +kernel
theorem small_8039004_right_covered : CoveredBy scale carrier boxes small_8039004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8039004_right_root small_8039004_right_fuel small_8039004_right_count small_8039004_right_encoded small_8039004_right_checked

theorem cover_8039004 : CoveredBy scale carrier boxes root_8039004 := by
  apply coveredBy_split_literal root_8039004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8039009 small_8039004_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8039009
  · exact small_8039004_right_covered
#print axioms cover_8039004

def root_8039003 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8039003 : CoveredBy scale carrier boxes root_8039003 := by
  apply coveredBy_split_literal root_8039003 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8039004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3017.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8039004
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3017.covered
#print axioms cover_8039003

def root_8038998 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038998_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038998_right_fuel : Nat := 1
def small_8038998_right_count : Nat := 1
def small_8038998_right_encoded : String := "00000003"
theorem small_8038998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8038998_right_root small_8038998_right_fuel small_8038998_right_count small_8038998_right_encoded = true := by
  decide +kernel
theorem small_8038998_right_covered : CoveredBy scale carrier boxes small_8038998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8038998_right_root small_8038998_right_fuel small_8038998_right_count small_8038998_right_encoded small_8038998_right_checked

theorem cover_8038998 : CoveredBy scale carrier boxes root_8038998 := by
  apply coveredBy_split_literal root_8038998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8039003 small_8038998_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8039003
  · exact small_8038998_right_covered
#print axioms cover_8038998

def root_8038997 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038997_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038997_right_fuel : Nat := 27
def small_8038997_right_count : Nat := 343
def small_8038997_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000108A91309120700FE050000FA0000000A135D450500000002050000FC0000000A0000000A0000000412073CFE00000004050000FA135D8105050000FC135D810704548A0113867100000000000CFD9BF90F350CF8000000010000000A0000000A1386AD000000000A00000000000000030000000A00000002135D450500000002050000FC135D810704548A0113867100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350CFE000000040C9A86F8000000090000000A0F34D0F80CFD9C090000000A0F350CFE000000040000000A000000011386AD000CFD9BF90F350CF8000000010CFD9C090000000A0F350CFE000000040C9A86F80000000A0000000A0F34D0F80000000A000000010000000000000003135D45070000000304548A0113867100000000000CFD9BF9000000090000000A1386AD000000000A00000000120700F808A913090000000A12073CFE00000004050000FA135D8105050000FC135D81070000000A000000030000000A00000002135D450500000002050000FC135D810704548A011386710000000000045489F90000000A0000000A0000000A000000030000000A0000000112073D0008A912F912073CF80000000108A91309120700FE050000FA0000000A135D450500000002050000FC0000000A0000000A0000000412073CFE00000004050000FA135D8105050000FC135D81070CFD9C010000000A0000000A000000030000000A00000002135D450500000002050000FC135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C090000000A0F350CFE00000004000000060000000A0F350D000CFD9BF90F350CF8000000010000000A0000000A0000000000000003135D4507000000030CFD9C010000000A0000000A120700F80000000A0000000100000000000000041151E9090000000408A91301120701000000000008A912F912073CF800000001050000FA135D8105050000FC000000070000000600000002135D450500000002050000FC135D8107050000FE135D810904548A0113867100000000000CFD9BF9000000070F34D0F8028000FA0000000713D7B10500000002078000FC00000007000000060000000100000007000000040000000600000003135D45070000000300000006120700F8050000FA135D8105050000FC135D8107050000FE135D810904548A011386710000000000045489F91386ACF800000001078000FA00000007128A4105000000020000000A138670F8078000FA128A7D05078000FC128A7D070000000A000000030000000A00000002128A410500000002078000FC128A7D070000000A000000030000000A000000011386AD00045489F90000000A000000050000000000000004135D45090000000404548A011386710000000000045489F900000006000000050000000500000003135D450700000003050000FE0000000A0000000600000002135D450500000002050000FC135D8107050000FE135D810904548A011386710000000000045489F91386ACF800000001028000FA13D7ED05078000FC128A7D07078000FE0000000A00000007000000030000000A0000000213D7B10500000002078000FC128A7D07078000FE128A7D09022A458113E1C50000000000067ECE79000000070000000A0000000A0000000400000007000000030000000A000000050000000500000004135D45090000000404548A011386710000000000045489F900000006000000050000000500000003135D450700000003050000FE0000000A000000060000000112073D0008A912F912073CF800000001050000FA00000006000000060000000500000000"
theorem small_8038997_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8038997_right_root small_8038997_right_fuel small_8038997_right_count small_8038997_right_encoded = true := by
  decide +kernel
theorem small_8038997_right_covered : CoveredBy scale carrier boxes small_8038997_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8038997_right_root small_8038997_right_fuel small_8038997_right_count small_8038997_right_encoded small_8038997_right_checked

theorem cover_8038997 : CoveredBy scale carrier boxes root_8038997 := by
  apply coveredBy_split_literal root_8038997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8038998 small_8038997_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8038998
  · exact small_8038997_right_covered
#print axioms cover_8038997

def root_8038991 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038991_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038991_left_fuel : Nat := 1
def small_8038991_left_count : Nat := 1
def small_8038991_left_encoded : String := "00000002"
theorem small_8038991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8038991_left_root small_8038991_left_fuel small_8038991_left_count small_8038991_left_encoded = true := by
  decide +kernel
theorem small_8038991_left_covered : CoveredBy scale carrier boxes small_8038991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8038991_left_root small_8038991_left_fuel small_8038991_left_count small_8038991_left_encoded small_8038991_left_checked

theorem cover_8038991 : CoveredBy scale carrier boxes root_8038991 := by
  apply coveredBy_split_literal root_8038991 small_8038991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8038997 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8038991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8038997
#print axioms cover_8038991

def root_8031539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031539 : CoveredBy scale carrier boxes root_8031539 := by
  apply coveredBy_split_literal root_8031539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8038991 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031540
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8038991
#print axioms cover_8031539

def root_8031533 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031533_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031533_left_fuel : Nat := 1
def small_8031533_left_count : Nat := 1
def small_8031533_left_encoded : String := "00000001"
theorem small_8031533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031533_left_root small_8031533_left_fuel small_8031533_left_count small_8031533_left_encoded = true := by
  decide +kernel
theorem small_8031533_left_covered : CoveredBy scale carrier boxes small_8031533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031533_left_root small_8031533_left_fuel small_8031533_left_count small_8031533_left_encoded small_8031533_left_checked

theorem cover_8031533 : CoveredBy scale carrier boxes root_8031533 := by
  apply coveredBy_split_literal root_8031533 small_8031533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031539 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8031533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031539
#print axioms cover_8031533

def root_8031532 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031532 : CoveredBy scale carrier boxes root_8031532 := by
  apply coveredBy_split_literal root_8031532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031533 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3018.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031533
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3018.covered
#print axioms cover_8031532

def root_8031527 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031527_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031527_right_fuel : Nat := 1
def small_8031527_right_count : Nat := 1
def small_8031527_right_encoded : String := "00000000"
theorem small_8031527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031527_right_root small_8031527_right_fuel small_8031527_right_count small_8031527_right_encoded = true := by
  decide +kernel
theorem small_8031527_right_covered : CoveredBy scale carrier boxes small_8031527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031527_right_root small_8031527_right_fuel small_8031527_right_count small_8031527_right_encoded small_8031527_right_checked

theorem cover_8031527 : CoveredBy scale carrier boxes root_8031527 := by
  apply coveredBy_split_literal root_8031527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031532 small_8031527_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031532
  · exact small_8031527_right_covered
#print axioms cover_8031527

def root_8029521 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8029521 : CoveredBy scale carrier boxes root_8029521 := by
  apply coveredBy_split_literal root_8029521 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3011.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8031527 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3011.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8031527
#print axioms cover_8029521

def root_8028213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8028213 : CoveredBy scale carrier boxes root_8028213 := by
  apply coveredBy_split_literal root_8028213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3010.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8029521 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3010.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8029521
#print axioms cover_8028213

def root_8046750 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8046750 : CoveredBy scale carrier boxes root_8046750 := by
  apply coveredBy_split_literal root_8046750 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3019.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3020.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3019.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3020.covered
#print axioms cover_8046750

def root_8028212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8028212 : CoveredBy scale carrier boxes root_8028212 := by
  apply coveredBy_split_literal root_8028212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8028213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8046750 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8028213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8046750
#print axioms cover_8028212

def root_8013994 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013994 : CoveredBy scale carrier boxes root_8013994 := by
  apply coveredBy_split_literal root_8013994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8013995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8028212 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8013995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8028212
#print axioms cover_8013994

def root_8053174 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8053174 : CoveredBy scale carrier boxes root_8053174 := by
  apply coveredBy_split_literal root_8053174 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3022.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3023.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3022.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3023.covered
#print axioms cover_8053174

def root_8050288 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8050288 : CoveredBy scale carrier boxes root_8050288 := by
  apply coveredBy_split_literal root_8050288 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3021.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8053174 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3021.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8053174
#print axioms cover_8050288

def root_8058408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8058408 : CoveredBy scale carrier boxes root_8058408 := by
  apply coveredBy_split_literal root_8058408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3024.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3025.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3024.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3025.covered
#print axioms cover_8058408

def root_8058403 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8058403_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8058403_right_fuel : Nat := 1
def small_8058403_right_count : Nat := 1
def small_8058403_right_encoded : String := "00000000"
theorem small_8058403_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8058403_right_root small_8058403_right_fuel small_8058403_right_count small_8058403_right_encoded = true := by
  decide +kernel
theorem small_8058403_right_covered : CoveredBy scale carrier boxes small_8058403_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8058403_right_root small_8058403_right_fuel small_8058403_right_count small_8058403_right_encoded small_8058403_right_checked

theorem cover_8058403 : CoveredBy scale carrier boxes root_8058403 := by
  apply coveredBy_split_literal root_8058403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8058408 small_8058403_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8058408
  · exact small_8058403_right_covered
#print axioms cover_8058403

def root_8057639 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8057639_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8057639_left_fuel : Nat := 22
def small_8057639_left_count : Nat := 355
def small_8057639_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF12073CFE0000000400000005120700FE05000100135D450100000000000000080000000A000000040000000212073CFA0000000208A912FF12073CFE000000040500010000000008135D81010000000500000000120700FE05000100135D45010000000000000008135D810105000106135D45070000000300000008135D81070CFD9BF90000000800000007000000030000000000000004120700F808A91305120700FA08A912FF12073CFE000000040500010000000007135D810105000106000000080000000500000000120700FE00000008000000040000000212073CFA0000000208A912FF12073CFE0000000405000100135D45010000000000000008135D810105000106135D45070000000300000008135D8107045489F900000008138670F800000008000000010000000300000000120700FE05000100000000070000000A00000004000000011151E8FF08A912F900000005120700F808A913050000000512073CFA00000002000000050000000100000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A913050000000512073CFA0000000208A913070000000512073D0608A912FF00000005120700FE0500010000000007135D81010CFD9BF90000000500000007000000000000000400000003120700F808A91305120700FA08A9130700000005000000070000000212073CFA0000000208A913070000000712073D0608A912FF12073CFE000000040500010000000007135D8101045489F9000000050000000700000000120700FE000000070000000400000003000000011151E8FF000000050000000400000003000000021151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FF00000008120700FE0000000800000004120700F808A912FF00000008120700FE0000000800000004000000011151E8FF0000000800000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000712073D0608A912FF00000005120700FE000000070000000400000003120700F808A913070000000712073D0608A912FF12073CFE000000040500010000000007135D8101050000FA135D8105045489F9000000050000000700000002135D450500000002045489F9000000050000000700000000120700FE000000070000000400000003000000011151E8FF08A912F912073CF80000000108A913070000000512073D060500010000000005135D8101000000050000000000000003120700F808A913070000000512073D060500010000000005135D8101050000FA00000005135D450500000002050000FE000000050000000900000000000000030000000100000004000000031151E8F90A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A913050000000512073CFA00000002000000051151E8FF0000000500000004115225070A0000FE000000051151E8FF000000050000000400000003000000021151E905000000020A0001061151E907000000030A0000FE000000081151E8FF0000000500000004115225070A0000FE115224FF0000000408A9130712070106000000030000000712073D0608A912FF12073CFE000000040500010000000005135D81010000000500000000120700FE0000000700000004000000031151E8FF08A9130712070106000000030500010000000005135D8101050000F800000005000000070000000012073D060500010000000005135D8101050000F800000005135D44F900000008000000010000000000000003000000040000000300000001"
theorem small_8057639_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8057639_left_root small_8057639_left_fuel small_8057639_left_count small_8057639_left_encoded = true := by
  decide +kernel
theorem small_8057639_left_covered : CoveredBy scale carrier boxes small_8057639_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8057639_left_root small_8057639_left_fuel small_8057639_left_count small_8057639_left_encoded small_8057639_left_checked

theorem cover_8057639 : CoveredBy scale carrier boxes root_8057639 := by
  apply coveredBy_split_literal root_8057639 small_8057639_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8058403 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8057639_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8058403
#print axioms cover_8057639

def root_8057638 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8057638 : CoveredBy scale carrier boxes root_8057638 := by
  apply coveredBy_split_literal root_8057638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8057639 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3026.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8057639
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3026.covered
#print axioms cover_8057638

def root_8065207 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8065207 : CoveredBy scale carrier boxes root_8065207 := by
  apply coveredBy_split_literal root_8065207 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3027.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3028.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3027.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3028.covered
#print axioms cover_8065207

def root_8065201 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8065201_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8065201_left_fuel : Nat := 1
def small_8065201_left_count : Nat := 1
def small_8065201_left_encoded : String := "00000000"
theorem small_8065201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8065201_left_root small_8065201_left_fuel small_8065201_left_count small_8065201_left_encoded = true := by
  decide +kernel
theorem small_8065201_left_covered : CoveredBy scale carrier boxes small_8065201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8065201_left_root small_8065201_left_fuel small_8065201_left_count small_8065201_left_encoded small_8065201_left_checked

theorem cover_8065201 : CoveredBy scale carrier boxes root_8065201 := by
  apply coveredBy_split_literal root_8065201 small_8065201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.root_8065207 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8065201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554.cover_8065207
#print axioms cover_8065201

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0554

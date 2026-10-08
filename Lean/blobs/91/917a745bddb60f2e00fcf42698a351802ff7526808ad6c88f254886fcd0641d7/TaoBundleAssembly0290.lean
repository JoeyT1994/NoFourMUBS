import TaoBundleAssembly0289
import TaoBundleChunkBatch0378
import TaoBundleChunkBatch0379
import TaoBundleChunkBatch0380
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290
def root_4018577 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018577_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018577_left_fuel : Nat := 21
def small_4018577_left_count : Nat := 295
def small_4018577_left_encoded : String := "12073D0208A91305120700FA08A91307120700FC08A91309120700FE0000000700000004000000070000000312073CFC0000000308A91309120700FE04548A01138670F60CFD9BF90F350D0200000006000000010F34D1020000000104548A05000000060000000600000000000000060000000412073CFE0000000404548A01138670F60CFD9BF90F350D0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC000000030CFD9C090000000600000007000000010F34D1020000000100000007000000001386ACF6000000000CFD9BF9000000070F34D10200000001000000070000000212073CFA0000000208A91307120700FC08A91309120700FE04548A010000000A1386ACF6000000000CFD9BF90F350D020000000A000000010F34D102000000010CFD9C050000000700000007000000040000000A0000000312073CFC0000000308A91309120700FE04548A01138670F60CFD9BF90F350D020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C070000000A0F350CFC0000000304548A09138670FE0C9A87020000000600000005000000040000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC04548A090000000500000007000000030F350CFC0000000304548A09000000051386ACFE000000040C9A86FC0F878D07000000060000000300000006000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D05000000050000000200000005000000041386ACFE000000040C9A86FA0F878D050C9A86FC0000000A00000009000000020000000A000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC0000000300000006000000010F34D102000000010CFD9C050F34D0FA0CFD9C070000000600000006000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D050000000A0000000200000008000000040000000A000000030F350CFC0000000304548A09138670FE0C9A86FA000000060F875105000000020C9A86FC0000000800000005000000041386ACFE000000040C9A86FA0F878D0500000006000000020F875105000000020C9A86FC0000000A000000060000000412073CFE0000000404548A01138670F60CFD9BF90F350D020CFD9C050F34D0FA0CFD9C070000000A0F350CFC000000030000000A000000020000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000070F87510700000003000000090000000400000007000000020F350CFA000000020CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE0000000A000000040000000A000000001386ACF6000000000CFD9BF90F350D020CFD9C050000000A0000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C070000000700000007000000020F350CFA000000020CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE0000000A000000040000000A00000001"
theorem small_4018577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018577_left_root small_4018577_left_fuel small_4018577_left_count small_4018577_left_encoded = true := by
  decide +kernel
theorem small_4018577_left_covered : CoveredBy scale carrier boxes small_4018577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018577_left_root small_4018577_left_fuel small_4018577_left_count small_4018577_left_encoded small_4018577_left_checked

theorem cover_4018577 : CoveredBy scale carrier boxes root_4018577 := by
  apply coveredBy_split_literal root_4018577 small_4018577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019205 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4018577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019205
#print axioms cover_4018577

def root_4018572 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018572_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018572_right_fuel : Nat := 1
def small_4018572_right_count : Nat := 1
def small_4018572_right_encoded : String := "00000000"
theorem small_4018572_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018572_right_root small_4018572_right_fuel small_4018572_right_count small_4018572_right_encoded = true := by
  decide +kernel
theorem small_4018572_right_covered : CoveredBy scale carrier boxes small_4018572_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018572_right_root small_4018572_right_fuel small_4018572_right_count small_4018572_right_encoded small_4018572_right_checked

theorem cover_4018572 : CoveredBy scale carrier boxes root_4018572 := by
  apply coveredBy_split_literal root_4018572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018577 small_4018572_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018577
  · exact small_4018572_right_covered
#print axioms cover_4018572

def root_4018571 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4018571 : CoveredBy scale carrier boxes root_4018571 := by
  apply coveredBy_split_literal root_4018571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1511.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018572
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1511.covered
#print axioms cover_4018571

def root_4018566 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018566_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018566_right_fuel : Nat := 1
def small_4018566_right_count : Nat := 1
def small_4018566_right_encoded : String := "00000004"
theorem small_4018566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018566_right_root small_4018566_right_fuel small_4018566_right_count small_4018566_right_encoded = true := by
  decide +kernel
theorem small_4018566_right_covered : CoveredBy scale carrier boxes small_4018566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018566_right_root small_4018566_right_fuel small_4018566_right_count small_4018566_right_encoded small_4018566_right_checked

theorem cover_4018566 : CoveredBy scale carrier boxes root_4018566 := by
  apply coveredBy_split_literal root_4018566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018571 small_4018566_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018571
  · exact small_4018566_right_covered
#print axioms cover_4018566

def root_4018565 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018565_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018565_right_fuel : Nat := 23
def small_4018565_right_count : Nat := 187
def small_4018565_right_encoded : String := "1151E9090000000408A91301120700F608A912F912073D0208A91305120700FA08A9130700000007000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC00000003050000FE135D810904548A01138670F60CFD9BF90F350D020000000A000000010F34D102000000010CFD9C05000000070F350CFA000000020000000A000000001386ACF6000000000CFD9BF90000000A0F34D102000000010000000700000004135D45090000000404548A01138670F60CFD9BF90F350D020CFD9C050000000A0000000A000000010F34D102000000010CFD9C05000000070F350CFA000000020000000A000000001386ACF6000000000CFD9BF9000000070F34D102000000010000000700000001120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC00000003050000FE135D810904548A01138670F6045489F91386AD020CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070000000A0000000113867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070000000A000000000000000700000004135D45090000000404548A01138670F6045489F91386AD020CFD9C0500000007000000070000000113867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070000000700000000000000070000000012073CF60000000008A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A913070000000A12073CFC00000003050000FE135D81090CFD9C010F34D0F60CFD9BF9000000070F34D1020000000100000007000000000000000700000004135D4509000000040CFD9C010F34D0F600000007000000000000000700000001120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC00000003050000FE0000000700000007"
theorem small_4018565_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018565_right_root small_4018565_right_fuel small_4018565_right_count small_4018565_right_encoded = true := by
  decide +kernel
theorem small_4018565_right_covered : CoveredBy scale carrier boxes small_4018565_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018565_right_root small_4018565_right_fuel small_4018565_right_count small_4018565_right_encoded small_4018565_right_checked

theorem cover_4018565 : CoveredBy scale carrier boxes root_4018565 := by
  apply coveredBy_split_literal root_4018565 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018566 small_4018565_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018566
  · exact small_4018565_right_covered
#print axioms cover_4018565

def root_4018560 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018560_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018560_right_fuel : Nat := 1
def small_4018560_right_count : Nat := 1
def small_4018560_right_encoded : String := "00000003"
theorem small_4018560_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018560_right_root small_4018560_right_fuel small_4018560_right_count small_4018560_right_encoded = true := by
  decide +kernel
theorem small_4018560_right_covered : CoveredBy scale carrier boxes small_4018560_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018560_right_root small_4018560_right_fuel small_4018560_right_count small_4018560_right_encoded small_4018560_right_checked

theorem cover_4018560 : CoveredBy scale carrier boxes root_4018560 := by
  apply coveredBy_split_literal root_4018560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018565 small_4018560_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018565
  · exact small_4018560_right_covered
#print axioms cover_4018560

def root_4027951 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4027951 : CoveredBy scale carrier boxes root_4027951 := by
  apply coveredBy_split_literal root_4027951 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1512.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1513.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1512.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1513.covered
#print axioms cover_4027951

def root_4027945 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027945_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027945_left_fuel : Nat := 1
def small_4027945_left_count : Nat := 1
def small_4027945_left_encoded : String := "00000002"
theorem small_4027945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027945_left_root small_4027945_left_fuel small_4027945_left_count small_4027945_left_encoded = true := by
  decide +kernel
theorem small_4027945_left_covered : CoveredBy scale carrier boxes small_4027945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027945_left_root small_4027945_left_fuel small_4027945_left_count small_4027945_left_encoded small_4027945_left_checked

theorem cover_4027945 : CoveredBy scale carrier boxes root_4027945 := by
  apply coveredBy_split_literal root_4027945 small_4027945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027951 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4027945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027951
#print axioms cover_4027945

def root_4027849 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027849_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027849_left_fuel : Nat := 14
def small_4027849_left_count : Nat := 47
def small_4027849_left_encoded : String := "120700FA08A91309120700FE050000FC135D810704548A01138670F6045489F900000005138671020000000104548A050000000500000006000000000000000600000003000000060000000412073CFE00000004050000FC135D810704548A01138670F6045489F91386AD0204548A05000000071386ACFA000000020CFD9C090F34D0FE0000000700000004000000070000000100000008000000000000000700000003135D45070000000304548A01000000080000000800000002"
theorem small_4027849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027849_left_root small_4027849_left_fuel small_4027849_left_count small_4027849_left_encoded = true := by
  decide +kernel
theorem small_4027849_left_covered : CoveredBy scale carrier boxes small_4027849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027849_left_root small_4027849_left_fuel small_4027849_left_count small_4027849_left_encoded small_4027849_left_checked

theorem cover_4027849 : CoveredBy scale carrier boxes root_4027849 := by
  apply coveredBy_split_literal root_4027849 small_4027849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027945 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4027849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027945
#print axioms cover_4027849

def root_4027843 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027843_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027843_left_fuel : Nat := 1
def small_4027843_left_count : Nat := 1
def small_4027843_left_encoded : String := "00000001"
theorem small_4027843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027843_left_root small_4027843_left_fuel small_4027843_left_count small_4027843_left_encoded = true := by
  decide +kernel
theorem small_4027843_left_covered : CoveredBy scale carrier boxes small_4027843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027843_left_root small_4027843_left_fuel small_4027843_left_count small_4027843_left_encoded small_4027843_left_checked

theorem cover_4027843 : CoveredBy scale carrier boxes root_4027843 := by
  apply coveredBy_split_literal root_4027843 small_4027843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027849 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4027843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027849
#print axioms cover_4027843

def root_4027273 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027273_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027273_left_fuel : Nat := 20
def small_4027273_left_count : Nat := 265
def small_4027273_left_encoded : String := "12073D0208A91305120700FA08A91309120700FE050000FC135D81070000000600000003000000060000000412073CFE00000004050000FC135D810704548A01138670F60CFD9BF90F350D0204548A05138670FA000000090000000200000009000000010F34D1020000000104548A05000000071386ACFA000000020CFD9C090000000500000007000000001386ACF6000000000CFD9BF90F350D0204548A050000000600000006000000010F34D102000000010000000700000003135D45070000000304548A01138670F60CFD9BF9000000090F34D1020000000100000009000000001386ACF6000000000CFD9BF90F350D0204548A050000000600000006000000010F34D1020000000104548A0500000007000000060000000212073CFA0000000208A91309120700FE050000FC135D810704548A01138670F60CFD9BF90F350D020CFD9C050F34D0FA000000060000000200000009000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A090000000500000009000000001386ACF6000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A09000000061386ACFE000000040C9A86FA000000060F875105000000020000000600000003135D45070000000304548A01138670F60CFD9BF9000000090F34D1020000000100000009000000001386ACF6000000000CFD9BF900000006000000060000000412073CFE00000004050000FC135D810704548A01138670F60CFD9BF90F350D020CFD9C050F34D0FA000000090000000200000009000000010F34D102000000010CFD9C050F34D0FA0CFD9C090F34D0FE000000090000000400000009000000020F350CFA000000020CFD9C090F34D0FE000000090000000400000009000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9C090000000600000009000000020F350CFA000000020CFD9C090F34D0FE00000006000000040000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C09000000060F350CFE0000000400000007000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878D0500000006000000020F87510500000002078000FC0000000A00000009000000040F350CFE000000040C9A86FA0F878D050C9A86FE0000000A0F8751090000000400000007000000020000000A00000003135D45070000000304548A01138670F60CFD9BF9000000090F34D102000000010CFD9C050F34D0FA000000090000000200000009000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D0FA000000060000000200000009000000010F34D102000000010CFD9C050F34D0FA0CFD9C090000000600000009000000020F350CFA000000020CFD9C090F34D0FE00000009000000040000000900000001"
theorem small_4027273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027273_left_root small_4027273_left_fuel small_4027273_left_count small_4027273_left_encoded = true := by
  decide +kernel
theorem small_4027273_left_covered : CoveredBy scale carrier boxes small_4027273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027273_left_root small_4027273_left_fuel small_4027273_left_count small_4027273_left_encoded small_4027273_left_checked

theorem cover_4027273 : CoveredBy scale carrier boxes root_4027273 := by
  apply coveredBy_split_literal root_4027273 small_4027273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027843 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4027273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027843
#print axioms cover_4027273

def root_4027268 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027268_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027268_right_fuel : Nat := 1
def small_4027268_right_count : Nat := 1
def small_4027268_right_encoded : String := "00000000"
theorem small_4027268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027268_right_root small_4027268_right_fuel small_4027268_right_count small_4027268_right_encoded = true := by
  decide +kernel
theorem small_4027268_right_covered : CoveredBy scale carrier boxes small_4027268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027268_right_root small_4027268_right_fuel small_4027268_right_count small_4027268_right_encoded small_4027268_right_checked

theorem cover_4027268 : CoveredBy scale carrier boxes root_4027268 := by
  apply coveredBy_split_literal root_4027268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027273 small_4027268_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027273
  · exact small_4027268_right_covered
#print axioms cover_4027268

def root_4027267 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027267_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027267_right_fuel : Nat := 26
def small_4027267_right_count : Nat := 335
def small_4027267_right_encoded : String := "12073CF60000000008A912F912073D0208A91305120700FA08A913090000000612073CFE00000004050000FC135D81070CFD9C010F34D0F60CFD9BF90F350D02000000060000000100000006000000000000000600000003135D4507000000030CFD9C010F34D0F60CFD9BF9000000060000000600000000000000060000000212073CFA0000000208A91309120700FE050000FC00000006000000060000000412073CFE00000004050000FC135D81070CFD9C010F34D0F60CFD9BF90F350D020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C09000000060000000A000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C09000000060F350CFE000000040C9A86FA000000060000000A000000000F350CF6000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9C05000000060000000600000003135D4507000000030CFD9C010F34D0F60CFD9BF90F350D020CFD9C050F34D0FA000000060000000200000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C09000000060F350CFE0000000400000006000000000F350CF6000000000CFD9BF9000000060000000600000001120701020000000108A91305120700FA08A913090000000612073CFE00000004050000FC00000007135D4507000000030CFD9C0100000008000000060000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D0F6045489F91386AD02000000060000000113867102000000010CFD9C05000000060F350CFA0000000204548A09138670FE0C9A86FA000000060F87510500000002078000FC128A7D07000000060000000300000006000000041386ACFE000000040C9A86FA000000060F87510500000002078000FC128A7D070AD3578110D100F6022A45790000000613E1C502000000010000000600000000000000060000000300000006000000000F350CF600000000045489F90000000613867102000000010CFD9C05000000060F350CFA0000000204548A09000000060000000600000003135D4507000000030CFD9C010F34D0F60000000600000000000000060000000412073CFE00000004050000FC135D81070CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA000000060F8751050000000200000006000000040F350CFE000000040C9A86FA000000070F875105000000020C9A86FE00000007000000060000000113867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA000000060F87510500000002078000FC128A7D070AD3578110D100F60000000700000000000000060000000300000006000000040F350CFE000000040C9A86FA000000070F8751050000000200000005000000000F350CF600000000045489F91386AD020CFD9C0500000006000000060000000113867102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C09000000060000000500000003135D4507000000030CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C09000000060F350CFE000000040C9A86FA000000060F87510500000002000000060000000113867102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C090000000600000005000000000F350CF600000000045489F91386AD02000000060000000113867102000000010CFD9C050000000600000005"
theorem small_4027267_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027267_right_root small_4027267_right_fuel small_4027267_right_count small_4027267_right_encoded = true := by
  decide +kernel
theorem small_4027267_right_covered : CoveredBy scale carrier boxes small_4027267_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027267_right_root small_4027267_right_fuel small_4027267_right_count small_4027267_right_encoded small_4027267_right_checked

theorem cover_4027267 : CoveredBy scale carrier boxes root_4027267 := by
  apply coveredBy_split_literal root_4027267 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027268 small_4027267_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027268
  · exact small_4027267_right_covered
#print axioms cover_4027267

def root_4027262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027262_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027262_right_fuel : Nat := 1
def small_4027262_right_count : Nat := 1
def small_4027262_right_encoded : String := "00000004"
theorem small_4027262_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027262_right_root small_4027262_right_fuel small_4027262_right_count small_4027262_right_encoded = true := by
  decide +kernel
theorem small_4027262_right_covered : CoveredBy scale carrier boxes small_4027262_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027262_right_root small_4027262_right_fuel small_4027262_right_count small_4027262_right_encoded small_4027262_right_checked

theorem cover_4027262 : CoveredBy scale carrier boxes root_4027262 := by
  apply coveredBy_split_literal root_4027262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027267 small_4027262_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027267
  · exact small_4027262_right_covered
#print axioms cover_4027262

def root_4027261 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4027261 : CoveredBy scale carrier boxes root_4027261 := by
  apply coveredBy_split_literal root_4027261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027262 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1514.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027262
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1514.covered
#print axioms cover_4027261

def root_4027255 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027255_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027255_left_fuel : Nat := 1
def small_4027255_left_count : Nat := 1
def small_4027255_left_encoded : String := "00000003"
theorem small_4027255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027255_left_root small_4027255_left_fuel small_4027255_left_count small_4027255_left_encoded = true := by
  decide +kernel
theorem small_4027255_left_covered : CoveredBy scale carrier boxes small_4027255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027255_left_root small_4027255_left_fuel small_4027255_left_count small_4027255_left_encoded small_4027255_left_checked

theorem cover_4027255 : CoveredBy scale carrier boxes root_4027255 := by
  apply coveredBy_split_literal root_4027255 small_4027255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027261 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4027255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027261
#print axioms cover_4027255

def root_4018559 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4018559 : CoveredBy scale carrier boxes root_4018559 := by
  apply coveredBy_split_literal root_4018559 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4027255 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018560
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4027255
#print axioms cover_4018559

def root_4018554 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018554_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018554_right_fuel : Nat := 1
def small_4018554_right_count : Nat := 1
def small_4018554_right_encoded : String := "00000002"
theorem small_4018554_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018554_right_root small_4018554_right_fuel small_4018554_right_count small_4018554_right_encoded = true := by
  decide +kernel
theorem small_4018554_right_covered : CoveredBy scale carrier boxes small_4018554_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018554_right_root small_4018554_right_fuel small_4018554_right_count small_4018554_right_encoded small_4018554_right_checked

theorem cover_4018554 : CoveredBy scale carrier boxes root_4018554 := by
  apply coveredBy_split_literal root_4018554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018559 small_4018554_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018559
  · exact small_4018554_right_covered
#print axioms cover_4018554

def root_4033961 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4033961 : CoveredBy scale carrier boxes root_4033961 := by
  apply coveredBy_split_literal root_4033961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1515.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1516.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1515.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1516.covered
#print axioms cover_4033961

def root_4033956 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033956_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033956_right_fuel : Nat := 1
def small_4033956_right_count : Nat := 1
def small_4033956_right_encoded : String := "00000004"
theorem small_4033956_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4033956_right_root small_4033956_right_fuel small_4033956_right_count small_4033956_right_encoded = true := by
  decide +kernel
theorem small_4033956_right_covered : CoveredBy scale carrier boxes small_4033956_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4033956_right_root small_4033956_right_fuel small_4033956_right_count small_4033956_right_encoded small_4033956_right_checked

theorem cover_4033956 : CoveredBy scale carrier boxes root_4033956 := by
  apply coveredBy_split_literal root_4033956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4033961 small_4033956_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4033961
  · exact small_4033956_right_covered
#print axioms cover_4033956

def root_4033955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033955_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033955_right_fuel : Nat := 18
def small_4033955_right_count : Nat := 63
def small_4033955_right_encoded : String := "1151E9090000000408A91301120700F608A912F90000000A120701020000000108A913070000000A12073CFC00000003050000FA135D8105050000FE135D810904548A010000000A0000000A00000004135D45090000000404548A01138670F6045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030000000A000000001386ACF6000000000000000A000000020000000A0000000012073CF60000000008A912F912073D0208A913070000000A0000000A00000001120701020000000108A913070000000A12073CFC00000003050000FA135D8105050000FE0000000A135D4509000000040000000A000000020000000A"
theorem small_4033955_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4033955_right_root small_4033955_right_fuel small_4033955_right_count small_4033955_right_encoded = true := by
  decide +kernel
theorem small_4033955_right_covered : CoveredBy scale carrier boxes small_4033955_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4033955_right_root small_4033955_right_fuel small_4033955_right_count small_4033955_right_encoded small_4033955_right_checked

theorem cover_4033955 : CoveredBy scale carrier boxes root_4033955 := by
  apply coveredBy_split_literal root_4033955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4033956 small_4033955_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4033956
  · exact small_4033955_right_covered
#print axioms cover_4033955

def root_4033950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033950_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033950_right_fuel : Nat := 1
def small_4033950_right_count : Nat := 1
def small_4033950_right_encoded : String := "00000003"
theorem small_4033950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4033950_right_root small_4033950_right_fuel small_4033950_right_count small_4033950_right_encoded = true := by
  decide +kernel
theorem small_4033950_right_covered : CoveredBy scale carrier boxes small_4033950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4033950_right_root small_4033950_right_fuel small_4033950_right_count small_4033950_right_encoded small_4033950_right_checked

theorem cover_4033950 : CoveredBy scale carrier boxes root_4033950 := by
  apply coveredBy_split_literal root_4033950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4033955 small_4033950_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4033955
  · exact small_4033950_right_covered
#print axioms cover_4033950

def root_4041313 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4041313 : CoveredBy scale carrier boxes root_4041313 := by
  apply coveredBy_split_literal root_4041313 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1517.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1518.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1517.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1518.covered
#print axioms cover_4041313

def root_4041308 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041308_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041308_right_fuel : Nat := 1
def small_4041308_right_count : Nat := 1
def small_4041308_right_encoded : String := "00000003"
theorem small_4041308_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4041308_right_root small_4041308_right_fuel small_4041308_right_count small_4041308_right_encoded = true := by
  decide +kernel
theorem small_4041308_right_covered : CoveredBy scale carrier boxes small_4041308_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4041308_right_root small_4041308_right_fuel small_4041308_right_count small_4041308_right_encoded small_4041308_right_checked

theorem cover_4041308 : CoveredBy scale carrier boxes root_4041308 := by
  apply coveredBy_split_literal root_4041308 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4041313 small_4041308_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4041313
  · exact small_4041308_right_covered
#print axioms cover_4041308

def root_4041307 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041307_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041307_right_fuel : Nat := 23
def small_4041307_right_count : Nat := 241
def small_4041307_right_encoded : String := "128A410700000003067ECE8112EA58F6022A457913E20102067ECE8912EA58FE08C000FA0000000911FBE90500000002000000070000000412EA94FE0000000408C000FA0000000911FBE90500000002000000090000000113E1C50200000001067ECE8912EA58FE08C000FA11FC2505064000FC12FFAD070569AC4100000007134110F6000000000115233913F895020569AC4900000006000000090000000113F85902000000010569AC4900000007134110FE0000000400000007000000030000000700000002000000070000000412EA94FE0000000408C000FA11FC2505064000FC12FFAD070569AC411340D4F6011523390000000913F85902000000010793F0C9000000070000000800000000134110F6000000000115233913F895020793F0C900000009000000090000000113F85902000000010793F0C9128220FE096000FA0000000911AA81050000000206E000FC12C8210705F43D610000000700000005000000030000000700000004000000050000000312FF710700000003000000090000000211FBE90500000002064000FC12FFAD070569AC4100000007134110F6000000000115233913F895020793F0C90000000712825CFE00000004082000FA0000000912465D0500000002000000070000000113F85902000000010793F0C900000007000000050000000312FF710700000003000000070000000012EA94F600000000022A457913E20102067ECE8912EA58FE08C000FA00000006000000060000000412EA94FE0000000408C000FA0000000611FBE90500000002064000FC12FFAD070793F0C1128220F6033F67B90000000613BBF502000000010793F0C90000000612825CFE0000000400000006000000000000000600000003000000060000000113E1C50200000001067ECE8912EA58FE08C000FA11FC2505000000060000000211FBE90500000002064000FC12FFAD070793F0C10000000712825CF600000000011523390000000613F85902000000010569AC4900000006000000050000000312FF710700000003000000070000000412EA94FE0000000408C000FA11FC2505064000FC12FFAD070793F0C1128220F6011523390000000600000005000000000000000500000003000000060000000211FBE90500000002064000FC12FFAD070793F0C1128220F60115233913F895020793F0C9128220FE082000FA0000000612465D0500000002000000070000000400000005000000010000000500000000000000050000000312FF7107000000030793F0C1128220F60115233913F895020793F0C9000000060000000500000001000000050000000000000005"
theorem small_4041307_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4041307_right_root small_4041307_right_fuel small_4041307_right_count small_4041307_right_encoded = true := by
  decide +kernel
theorem small_4041307_right_covered : CoveredBy scale carrier boxes small_4041307_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4041307_right_root small_4041307_right_fuel small_4041307_right_count small_4041307_right_encoded small_4041307_right_checked

theorem cover_4041307 : CoveredBy scale carrier boxes root_4041307 := by
  apply coveredBy_split_literal root_4041307 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4041308 small_4041307_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4041308
  · exact small_4041307_right_covered
#print axioms cover_4041307

def root_4041302 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041302_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4041302_right_fuel : Nat := 1
def small_4041302_right_count : Nat := 1
def small_4041302_right_encoded : String := "00000002"
theorem small_4041302_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4041302_right_root small_4041302_right_fuel small_4041302_right_count small_4041302_right_encoded = true := by
  decide +kernel
theorem small_4041302_right_covered : CoveredBy scale carrier boxes small_4041302_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4041302_right_root small_4041302_right_fuel small_4041302_right_count small_4041302_right_encoded small_4041302_right_checked

theorem cover_4041302 : CoveredBy scale carrier boxes root_4041302 := by
  apply coveredBy_split_literal root_4041302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4041307 small_4041302_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4041307
  · exact small_4041302_right_covered
#print axioms cover_4041302

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290

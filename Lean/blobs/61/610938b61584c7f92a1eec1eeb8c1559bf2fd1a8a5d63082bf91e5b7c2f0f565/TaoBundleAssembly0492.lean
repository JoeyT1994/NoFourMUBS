import TaoBundleAssembly0488
import TaoBundleAssembly0491
import TaoBundleChunkBatch0676
import TaoBundleChunkBatch0677
import TaoBundleChunkBatch0678
import TaoBundleChunkBatch0679
import TaoBundleChunkBatch0680
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492
def root_7182478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7182478_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7182478_left_fuel : Nat := 18
def small_7182478_left_count : Nat := 135
def small_7182478_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115224FB000000020A0000FC0000000A1151E907000000030000000A1151E8FB0000000A00000002115225030A0000FA115224FB000000020A0000FC115225070A0001081151E9090000000408A91303120701020000000108A912FB00000005120700FA000000050000000212073D0208A912FB00000005120700FA0000000500000002000000011152250908A91303120701020000000108A912FB12073CFA0000000208A91307120700FC0000000A000000030000000A120700FA08A91307120700FC00000005000000030000000A0000000212073D0208A912FB0000000A120700FA0000000A000000020000000100000004000000031151E907000000030A0001081151E9090000000408A91303120701020000000108A912FB12073CFA000000020500010000000008135D80F700000000050000FC00000008135D4507000000030000000A120700FA0500010000000005135D80F700000000050000FC00000005135D450700000003000000080000000212073D0208A912FB0000000A120700FA0000000A00000002000000010000000A1151E8FB0A0000FC115225070A0001081151E9090000000408A91303120701020000000108A91307120700FC00000005000000030000000812073D0208A91307120700FC00000005000000030000000A000000010000000A000000031151E907000000030000000A000000020000000100000000"
theorem small_7182478_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7182478_left_root small_7182478_left_fuel small_7182478_left_count small_7182478_left_encoded = true := by
  decide +kernel
theorem small_7182478_left_covered : CoveredBy scale carrier boxes small_7182478_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7182478_left_root small_7182478_left_fuel small_7182478_left_count small_7182478_left_encoded small_7182478_left_checked

theorem cover_7182478 : CoveredBy scale carrier boxes root_7182478 := by
  apply coveredBy_split_literal root_7182478 small_7182478_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0491.root_7182774 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7182478_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0491.cover_7182774
#print axioms cover_7182478

def root_7180088 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7180088 : CoveredBy scale carrier boxes root_7180088 := by
  apply coveredBy_split_literal root_7180088 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2703.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7182478 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2703.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7182478
#print axioms cover_7180088

def root_7142872 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7142872 : CoveredBy scale carrier boxes root_7142872 := by
  apply coveredBy_split_literal root_7142872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0491.root_7142873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7180088 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0491.cover_7142873
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7180088
#print axioms cover_7142872

def root_7075996 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075996 : CoveredBy scale carrier boxes root_7075996 := by
  apply coveredBy_split_literal root_7075996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7075997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7142872 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7075997
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7142872
#print axioms cover_7075996

def root_7188548 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7188548 : CoveredBy scale carrier boxes root_7188548 := by
  apply coveredBy_split_literal root_7188548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2706.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2707.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2706.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2707.covered
#print axioms cover_7188548

def root_7188542 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188542_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188542_left_fuel : Nat := 1
def small_7188542_left_count : Nat := 1
def small_7188542_left_encoded : String := "00000003"
theorem small_7188542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7188542_left_root small_7188542_left_fuel small_7188542_left_count small_7188542_left_encoded = true := by
  decide +kernel
theorem small_7188542_left_covered : CoveredBy scale carrier boxes small_7188542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7188542_left_root small_7188542_left_fuel small_7188542_left_count small_7188542_left_encoded small_7188542_left_checked

theorem cover_7188542 : CoveredBy scale carrier boxes root_7188542 := by
  apply coveredBy_split_literal root_7188542 small_7188542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188548 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7188542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188548
#print axioms cover_7188542

def root_7188306 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188306_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188306_left_fuel : Nat := 18
def small_7188306_left_count : Nat := 111
def small_7188306_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D44F705000102135D4503000000010500010600000006135D80FD000000030CFD9BFB0F350CFA000000020000000900000006135D810305000106135D44FD0CFD9BFB0F350CFA00000002000000090000000600000003135D80FD000000030CFD9BFB0F350CFA000000020CFD9BFF000000070F34D0FE00000007000000040F34D0FA0CFD9BFF000000060F34D0FE0000000600000004000000020000000100000000135D80F7000000000500010200000006135D81030500010600000006135D80FD000000030CFD9BFB0F350CFA000000020CFD9BFF000000060F34D0FE00000006000000040000000600000001120700FE05000100135D44F705000102135D45030000000105000106135D44FD0000000A0000000300000005135D810305000106135D44FD0000000700000003000000070000000100000000135D80F700000000050001020000000A0000000A00000004120700FA08A912FF0000000600000005000000021151E8FF08A912FB12073CFA00000002050001000000000900000006000000060000000400000003"
theorem small_7188306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7188306_left_root small_7188306_left_fuel small_7188306_left_count small_7188306_left_encoded = true := by
  decide +kernel
theorem small_7188306_left_covered : CoveredBy scale carrier boxes small_7188306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7188306_left_root small_7188306_left_fuel small_7188306_left_count small_7188306_left_encoded small_7188306_left_checked

theorem cover_7188306 : CoveredBy scale carrier boxes root_7188306 := by
  apply coveredBy_split_literal root_7188306 small_7188306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188542 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7188306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188542
#print axioms cover_7188306

def root_7188300 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188300_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188300_left_fuel : Nat := 1
def small_7188300_left_count : Nat := 1
def small_7188300_left_encoded : String := "00000002"
theorem small_7188300_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7188300_left_root small_7188300_left_fuel small_7188300_left_count small_7188300_left_encoded = true := by
  decide +kernel
theorem small_7188300_left_covered : CoveredBy scale carrier boxes small_7188300_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7188300_left_root small_7188300_left_fuel small_7188300_left_count small_7188300_left_encoded small_7188300_left_checked

theorem cover_7188300 : CoveredBy scale carrier boxes root_7188300 := by
  apply coveredBy_split_literal root_7188300 small_7188300_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188306 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7188300_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188306
#print axioms cover_7188300

def root_7188299 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188299_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188299_right_fuel : Nat := 25
def small_7188299_right_count : Nat := 255
def small_7188299_right_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912FF12073CFE000000040500010000000009135D80F70000000000000009120700FE0500010000000007135D80F700000000050001020000000900000007000000040000000900000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF12073CFE0000000405000100135D44F705000102135D450300000001000000070000000700000000135D80F70000000005000102135D450300000001050000FA135D80FB000000020CFD9BFD0F350D060CFD9BFF0000000700000007000000030F34D106000000030000000700000007135D8103050000FA135D80FB000000020CFD9BFD0F350D060CFD9BFF000000070F34D0FE0000000700000004000000030F34D106000000030CFD9BFF0000000700000007135D44FB000000070000000200000001120700FE0500010000000007135D80F700000000050001020000000A000000070000000400000003120701060000000308A912FF12073CFE000000040500010000000007135D80F70000000005000102135D450300000001050000FA135D80FB00000002045489FD0000000713867106000000030000000700000007135D8103050000FA135D80FB00000002045489FD1386AD060CFD9BFF000000070F34D0FE00000007000000040000000313867106000000030CFD9BFF000000070F34D0FE00000007000000040000000700000001120700FE0500010000000007135D80F70000000005000102135D4503000000010000000700000007000000041151E8FF08A912FD12073D060500010000000009135D80F7000000000500010200000009135D8103050000FA135D80FB0000000200000009000000090000000100000003120701060000000305000100135D44F705000102135D450300000001050000FA135D80FB00000002050000FE000000070000000900000007135D8103050000FA135D80FB00000002050000FE0000000700000008000000070000000100000000135D80F70000000005000102135D450300000001050000FA135D80FB00000002050000FE135D80FF00000004045489FD000000071386710600000003000000070000000900000009135D8103050000FA135D80FB00000002050000FE135D80FF00000004045489FD1386AD060780010000000007128A7CF70000000007800102128A41030000000100000007000000050000000313867106000000030780010000000007128A7CF70000000007800102128A410300000001078000FA128A7CFB00000002078000FE000000070000000800000007128A7D030000000800000001135D44FF045489FD000000050000000800000004135D44FB050000FE000000070000000500000002000000010000000400000002"
theorem small_7188299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7188299_right_root small_7188299_right_fuel small_7188299_right_count small_7188299_right_encoded = true := by
  decide +kernel
theorem small_7188299_right_covered : CoveredBy scale carrier boxes small_7188299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7188299_right_root small_7188299_right_fuel small_7188299_right_count small_7188299_right_encoded small_7188299_right_checked

theorem cover_7188299 : CoveredBy scale carrier boxes root_7188299 := by
  apply coveredBy_split_literal root_7188299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188300 small_7188299_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188300
  · exact small_7188299_right_covered
#print axioms cover_7188299

def root_7188293 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188293_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188293_left_fuel : Nat := 1
def small_7188293_left_count : Nat := 1
def small_7188293_left_encoded : String := "00000001"
theorem small_7188293_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7188293_left_root small_7188293_left_fuel small_7188293_left_count small_7188293_left_encoded = true := by
  decide +kernel
theorem small_7188293_left_covered : CoveredBy scale carrier boxes small_7188293_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7188293_left_root small_7188293_left_fuel small_7188293_left_count small_7188293_left_encoded small_7188293_left_checked

theorem cover_7188293 : CoveredBy scale carrier boxes root_7188293 := by
  apply coveredBy_split_literal root_7188293 small_7188293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188299 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7188293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188299
#print axioms cover_7188293

def root_7194857 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7194857 : CoveredBy scale carrier boxes root_7194857 := by
  apply coveredBy_split_literal root_7194857 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2709.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2710.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2709.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2710.covered
#print axioms cover_7194857

def root_7194851 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194851_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194851_left_fuel : Nat := 1
def small_7194851_left_count : Nat := 1
def small_7194851_left_encoded : String := "00000002"
theorem small_7194851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7194851_left_root small_7194851_left_fuel small_7194851_left_count small_7194851_left_encoded = true := by
  decide +kernel
theorem small_7194851_left_covered : CoveredBy scale carrier boxes small_7194851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7194851_left_root small_7194851_left_fuel small_7194851_left_count small_7194851_left_encoded small_7194851_left_checked

theorem cover_7194851 : CoveredBy scale carrier boxes root_7194851 := by
  apply coveredBy_split_literal root_7194851 small_7194851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194857 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7194851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194857
#print axioms cover_7194851

def root_7194850 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7194850 : CoveredBy scale carrier boxes root_7194850 := by
  apply coveredBy_split_literal root_7194850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194851 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2711.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2711.covered
#print axioms cover_7194850

def root_7194845 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194845_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194845_right_fuel : Nat := 1
def small_7194845_right_count : Nat := 1
def small_7194845_right_encoded : String := "00000001"
theorem small_7194845_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7194845_right_root small_7194845_right_fuel small_7194845_right_count small_7194845_right_encoded = true := by
  decide +kernel
theorem small_7194845_right_covered : CoveredBy scale carrier boxes small_7194845_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7194845_right_root small_7194845_right_fuel small_7194845_right_count small_7194845_right_encoded small_7194845_right_checked

theorem cover_7194845 : CoveredBy scale carrier boxes root_7194845 := by
  apply coveredBy_split_literal root_7194845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194850 small_7194845_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194850
  · exact small_7194845_right_covered
#print axioms cover_7194845

def root_7194189 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194189_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194189_left_fuel : Nat := 19
def small_7194189_left_count : Nat := 311
def small_7194189_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE0000000405000100135D44F704548A03000000081386AD020CFD9BFB0F350CFA000000020CFD9BFD00000008000000080F34D0FA0CFD9BFD0F350D06000000080000000300000008000000020000000100000000135D80F70000000004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD00000005000000080F34D0FA0CFD9BFD0000000800000008000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF000000050F34D0FE00000008000000040F34D0FA0CFD9BFD0F350D060CFD9BFF000000080000000A000000030F34D106000000030CFD9BFF000000080F34D0FE00000008000000040000000200000001120700FE05000100135D44F704548A030000000A1386AD020CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0000000A0F34D10600000003000000090000000200000001000000000000000A0000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F704548A03000000081386AD020CFD9BFB00000006000000080000000100000000135D80F70000000004548A0313867102000000010CFD9BFB00000006000000081386AD020CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF000000080000000600000003000000060F34D0FA000000090000000200000001120700FE05000100135D44F704548A03000000061386AD020CFD9BFB000000060000000900000001000000000000000900000004120700FA08A912FD12073D0608A912FF12073CFE0000000405000100135D44F704548A031386710200000001045489FB1386ACFA000000020CFD9BFD0F350D06000000080000000300000008138670FA0CFD9BFD0F350D060CFD9BFF000000080F34D0FE00000008000000040000000300000008000000021386AD02045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF000000080F34D0FE00000008000000040000000300000008138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A870600000008000000080F34D0FE0000000800000004000000030F34D1060000000300000008000000020000000100000000135D80F70000000004548A031386710200000001045489FB1386ACFA000000020CFD9BFD0F350D06000000080000000300000008138670FA0CFD9BFD0F350D060CFD9BFF000000080000000A0000000300000008000000021386AD02045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF000000080000000A000000030F34D106000000030CFD9BFF000000080F34D0FE0000000800000004138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A870600000008000000080F34D0FE0000000800000004000000030F34D106000000030CFD9BFF00000008000000090000000200000001120700FE05000100135D44F704548A03000000091386AD02045489FB1386ACFA000000020CFD9BFD0000000A00000009138670FA00000009000000020000000100000000135D80F70000000004548A03000000091386AD02045489FB0000000A0000000A000000010000000400000003120701060000000308A912FF12073CFE00000004050001000000000800000009120700FE000000090000000400000002"
theorem small_7194189_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7194189_left_root small_7194189_left_fuel small_7194189_left_count small_7194189_left_encoded = true := by
  decide +kernel
theorem small_7194189_left_covered : CoveredBy scale carrier boxes small_7194189_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7194189_left_root small_7194189_left_fuel small_7194189_left_count small_7194189_left_encoded small_7194189_left_checked

theorem cover_7194189 : CoveredBy scale carrier boxes root_7194189 := by
  apply coveredBy_split_literal root_7194189 small_7194189_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194845 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7194189_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194845
#print axioms cover_7194189

def root_7194183 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194183_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194183_left_fuel : Nat := 1
def small_7194183_left_count : Nat := 1
def small_7194183_left_encoded : String := "00000004"
theorem small_7194183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7194183_left_root small_7194183_left_fuel small_7194183_left_count small_7194183_left_encoded = true := by
  decide +kernel
theorem small_7194183_left_covered : CoveredBy scale carrier boxes small_7194183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7194183_left_root small_7194183_left_fuel small_7194183_left_count small_7194183_left_encoded small_7194183_left_checked

theorem cover_7194183 : CoveredBy scale carrier boxes root_7194183 := by
  apply coveredBy_split_literal root_7194183 small_7194183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194189 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7194183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194189
#print axioms cover_7194183

def root_7194182 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7194182 : CoveredBy scale carrier boxes root_7194182 := by
  apply coveredBy_split_literal root_7194182 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194183 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2712.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194183
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2712.covered
#print axioms cover_7194182

def root_7194176 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194176_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7194176_left_fuel : Nat := 1
def small_7194176_left_count : Nat := 1
def small_7194176_left_encoded : String := "00000003"
theorem small_7194176_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7194176_left_root small_7194176_left_fuel small_7194176_left_count small_7194176_left_encoded = true := by
  decide +kernel
theorem small_7194176_left_covered : CoveredBy scale carrier boxes small_7194176_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7194176_left_root small_7194176_left_fuel small_7194176_left_count small_7194176_left_encoded small_7194176_left_checked

theorem cover_7194176 : CoveredBy scale carrier boxes root_7194176 := by
  apply coveredBy_split_literal root_7194176 small_7194176_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194182 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7194176_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194182
#print axioms cover_7194176

def root_7193074 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7193074 : CoveredBy scale carrier boxes root_7193074 := by
  apply coveredBy_split_literal root_7193074 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2708.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7194176 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2708.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7194176
#print axioms cover_7193074

def root_7193068 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7193068_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7193068_left_fuel : Nat := 1
def small_7193068_left_count : Nat := 1
def small_7193068_left_encoded : String := "00000002"
theorem small_7193068_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7193068_left_root small_7193068_left_fuel small_7193068_left_count small_7193068_left_encoded = true := by
  decide +kernel
theorem small_7193068_left_covered : CoveredBy scale carrier boxes small_7193068_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7193068_left_root small_7193068_left_fuel small_7193068_left_count small_7193068_left_encoded small_7193068_left_checked

theorem cover_7193068 : CoveredBy scale carrier boxes root_7193068 := by
  apply coveredBy_split_literal root_7193068 small_7193068_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7193074 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7193068_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7193074
#print axioms cover_7193068

def root_7193067 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7193067_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7193067_right_fuel : Nat := 25
def small_7193067_right_count : Nat := 339
def small_7193067_right_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A913030000000A12073D0208A912FF12073CFE0000000405000100135D44F7050000FA135D80FB000000020500010600000008135D80FD000000030CFD9C0300000005000000070000000800000000135D80F700000000050000FA135D80FB00000002050001060000000A0000000A0000000A120700FE0000000A00000004000000011151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A912FD12073D0608A912FF12073CFE000000040500010000000008000000050000000A00000003120701060000000308A912FF12073CFE000000040500010000000006135D80F700000000050000FA00000006000000050000000612073D0208A912FD12073D0608A912FF12073CFE0000000405000100135D44F7050000FA135D80FB000000020CFD9C030F34D102000000010CFD9BFD00000007000000080F350D020CFD9BFD000000070F34D106000000030000000700000001135D44FB0CFD9C030F34D1020000000100000007000000070000000200000000135D80F700000000050000FA135D80FB000000020CFD9C030F34D102000000010CFD9BFD0000000A0F34D106000000030CFD9BFF000000050000000A0F350D020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87020F87510300000001000000070F878D0300000005000000010000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87020F87510300000001000000070F878D0300000005000000010F34D0FE000000070000000400000001135D44FB0CFD9C030F34D10200000001000000050F350D020CFD9BFD000000070F34D10600000003000000070000000100000002120700FE05000100135D44F700000007000000000000000A0000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F7050000FA135D80FB000000020CFD9C030F34D10200000001000000060F350D02045489FD0000000713867106000000030000000600000001135D44FB0CFD9C0300000006000000070000000200000000135D80F700000000050000FA135D80FB000000020CFD9C030F34D10200000001045489FD1386AD060CFD9BFF000000050000000600000003000000060F350D02045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F87510300000001000000070F878D030C9A86FE0000000700000005000000010F34D0FE00000007000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE0000000700000006000000060F34D0FE0C9A870200000006000000060000000400000001135D44FB0CFD9C030F34D10200000001045489FD00000005000000060F350D02045489FD0000000713867106000000030CFD9BFF00000007000000060000000100000002120700FE05000100135D44F7050000FA000000070000000700000000135D80F700000000050000FA135D80FB000000020CFD9C030F34D102000000010000000A0F350D02045489FD000000071386710600000003045489FF000000070000000600000001135D44FB0000000A0000000200000004000000011151E8FF08A9130312070102000000010000000512073D0208A912FD12073D0605000100135D44F700000005000000000000000500000003120701060000000305000100135D44F70000000800000000135D80F700000000050000FA135D80FB00000002050000FE135D80FF000000040CFD9C03000000050F350D02045489FD0000000500000006000000010000000500000005000000010000000400000002"
theorem small_7193067_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7193067_right_root small_7193067_right_fuel small_7193067_right_count small_7193067_right_encoded = true := by
  decide +kernel
theorem small_7193067_right_covered : CoveredBy scale carrier boxes small_7193067_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7193067_right_root small_7193067_right_fuel small_7193067_right_count small_7193067_right_encoded small_7193067_right_checked

theorem cover_7193067 : CoveredBy scale carrier boxes root_7193067 := by
  apply coveredBy_split_literal root_7193067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7193068 small_7193067_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7193068
  · exact small_7193067_right_covered
#print axioms cover_7193067

def root_7193062 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7193062_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7193062_right_fuel : Nat := 1
def small_7193062_right_count : Nat := 1
def small_7193062_right_encoded : String := "00000001"
theorem small_7193062_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7193062_right_root small_7193062_right_fuel small_7193062_right_count small_7193062_right_encoded = true := by
  decide +kernel
theorem small_7193062_right_covered : CoveredBy scale carrier boxes small_7193062_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7193062_right_root small_7193062_right_fuel small_7193062_right_count small_7193062_right_encoded small_7193062_right_checked

theorem cover_7193062 : CoveredBy scale carrier boxes root_7193062 := by
  apply coveredBy_split_literal root_7193062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7193067 small_7193062_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7193067
  · exact small_7193062_right_covered
#print axioms cover_7193062

def root_7188292 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7188292 : CoveredBy scale carrier boxes root_7188292 := by
  apply coveredBy_split_literal root_7188292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7193062 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188293
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7193062
#print axioms cover_7188292

def root_7188287 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188287_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7188287_right_fuel : Nat := 1
def small_7188287_right_count : Nat := 1
def small_7188287_right_encoded : String := "00000000"
theorem small_7188287_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7188287_right_root small_7188287_right_fuel small_7188287_right_count small_7188287_right_encoded = true := by
  decide +kernel
theorem small_7188287_right_covered : CoveredBy scale carrier boxes small_7188287_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7188287_right_root small_7188287_right_fuel small_7188287_right_count small_7188287_right_encoded small_7188287_right_checked

theorem cover_7188287 : CoveredBy scale carrier boxes root_7188287 := by
  apply coveredBy_split_literal root_7188287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188292 small_7188287_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188292
  · exact small_7188287_right_covered
#print axioms cover_7188287

def root_7209565 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7209565 : CoveredBy scale carrier boxes root_7209565 := by
  apply coveredBy_split_literal root_7209565 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2716.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2717.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2716.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2717.covered
#print axioms cover_7209565

def root_7209559 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7209559_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7209559_left_fuel : Nat := 1
def small_7209559_left_count : Nat := 1
def small_7209559_left_encoded : String := "00000003"
theorem small_7209559_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7209559_left_root small_7209559_left_fuel small_7209559_left_count small_7209559_left_encoded = true := by
  decide +kernel
theorem small_7209559_left_covered : CoveredBy scale carrier boxes small_7209559_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7209559_left_root small_7209559_left_fuel small_7209559_left_count small_7209559_left_encoded small_7209559_left_checked

theorem cover_7209559 : CoveredBy scale carrier boxes root_7209559 := by
  apply coveredBy_split_literal root_7209559 small_7209559_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7209565 coord3 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_7209559_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7209565
#print axioms cover_7209559

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492

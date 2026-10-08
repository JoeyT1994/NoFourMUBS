import TaoBundleAssembly0135
import TaoBundleChunkBatch0506
import TaoBundleChunkBatch0512
import TaoBundleChunkBatch0513
import TaoBundleChunkBatch0514
import TaoBundleChunkBatch0515
import TaoBundleChunkBatch0516
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136
def root_5466729 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466729_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466729_left_fuel : Nat := 22
def small_5466729_left_count : Nat := 139
def small_5466729_left_encoded : String := "115224FD000000030A0001081151E90900000004000000051152250908A912F712073D0008A91305120700FA08A912FD12073CFC0000000308A913091207010800000004050000F8135D80F9000000010CFD9BF70F350D0004548A05138670FA0000000700000002000000070000000000000007135D44F9000000070000000112073D08050000F8135D80F9000000010CFD9BF70F350D0004548A05138670FA0CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000007000000050000000500000002000000050000000000000005135D44F90CFD9BF70F350D0004548A05138670FA00000007000000020000000500000000000000070000000100000004120700FC00000007000000030000000212073CFA0000000208A912FD12073CFC0000000308A913091207010800000004050000F8135D80F9000000010CFD9BF70F350D000CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFD0F350CFC0000000304548A091386710800000004000000070000000500000005000000000F34D1000000000000000007135D44F90CFD9BF70F350D000CFD9C050F34D0FA00000007000000020000000700000000000000070000000112073D08050000F800000005135D44F90CFD9BF70F350D000CFD9C050F34D0FA00000005000000020000000500000000000000050000000100000004120700FC000000050000000300000000120701000000000008A91305120700FA00000007000000020000000700000004"
theorem small_5466729_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5466729_left_root small_5466729_left_fuel small_5466729_left_count small_5466729_left_encoded = true := by
  decide +kernel
theorem small_5466729_left_covered : CoveredBy scale carrier boxes small_5466729_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5466729_left_root small_5466729_left_fuel small_5466729_left_count small_5466729_left_encoded small_5466729_left_checked

theorem cover_5466729 : CoveredBy scale carrier boxes root_5466729 := by
  apply coveredBy_split_literal root_5466729 small_5466729_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2046.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5466729_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2046.covered
#print axioms cover_5466729

def root_5466724 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466724_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466724_right_fuel : Nat := 1
def small_5466724_right_count : Nat := 1
def small_5466724_right_encoded : String := "00000002"
theorem small_5466724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5466724_right_root small_5466724_right_fuel small_5466724_right_count small_5466724_right_encoded = true := by
  decide +kernel
theorem small_5466724_right_covered : CoveredBy scale carrier boxes small_5466724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5466724_right_root small_5466724_right_fuel small_5466724_right_count small_5466724_right_encoded small_5466724_right_checked

theorem cover_5466724 : CoveredBy scale carrier boxes root_5466724 := by
  apply coveredBy_split_literal root_5466724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5466729 small_5466724_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5466729
  · exact small_5466724_right_covered
#print axioms cover_5466724

def root_5470067 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470067_left_fuel : Nat := 31
def small_5470067_left_count : Nat := 239
def small_5470067_left_encoded : String := "115224FD000000030A0001081151E90900000004000000051152250908A912F712073D0008A912FD12073CFC0000000308A913091207010800000004050000F8135D80F900000001050000FA135D81050CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87000F8750F70C9A86FC000000050F8750FD078000F800000005128A40F9078000FA00000005128A41050000000200000005000000010000000300000000000000070000000500000005000000000F34D100000000000000000700000002135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87000F8750F70C9A86FC0F878CFD00000003000000050F8750FD078000F8128A7CF900000001000000050000000800000003000000000F878CF7000000000C9A86FC000000070F8750FD078000F8128A7CF900000001028000FA0000000513D7B10500000002022A458913E1C508000000040DE7CA00000000050000000700000005128A40F9028000FA0000000713D7B10500000002022A458913E1C50800000004000000070000000700000001000000031386AD080C9A8700000000050F878CF70000000000000005000000040F34D0FC0000000500000003000000000F34D1000000000000000007135D44F9050000FA135D81050CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A091386710800000004000000070000000700000007000000000000000700000002135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000080F878CF700000000000000071386AD080C9A87000F8750F70C9A86FC00000007000000060000000000000007000000040F34D0FC0000000700000003000000000F34D10000000000000000070000000112073D08050000F8135D80F900000001050000FA00000005135D45050000000200000005135D44F9050000FA135D81050CFD9BF70F350D0000000005000000000000000500000002135D4505000000020CFD9BF70F350D000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A8700000000050F878CF700000000000000070000000500000005000000000F34D100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000700000007000000070000000100000004120700FC08A91309120701080000000400000007000000050000000300000000120701000000000008A912FD12073CFC0000000308A91309120701080000000400000007000000070000000700000004"
theorem small_5470067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5470067_left_root small_5470067_left_fuel small_5470067_left_count small_5470067_left_encoded = true := by
  decide +kernel
theorem small_5470067_left_covered : CoveredBy scale carrier boxes small_5470067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5470067_left_root small_5470067_left_fuel small_5470067_left_count small_5470067_left_encoded small_5470067_left_checked

theorem cover_5470067 : CoveredBy scale carrier boxes root_5470067 := by
  apply coveredBy_split_literal root_5470067 small_5470067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2047.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5470067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2047.covered
#print axioms cover_5470067

def root_5470061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470061_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5470061_left_fuel : Nat := 1
def small_5470061_left_count : Nat := 1
def small_5470061_left_encoded : String := "00000002"
theorem small_5470061_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5470061_left_root small_5470061_left_fuel small_5470061_left_count small_5470061_left_encoded = true := by
  decide +kernel
theorem small_5470061_left_covered : CoveredBy scale carrier boxes small_5470061_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5470061_left_root small_5470061_left_fuel small_5470061_left_count small_5470061_left_encoded small_5470061_left_checked

theorem cover_5470061 : CoveredBy scale carrier boxes root_5470061 := by
  apply coveredBy_split_literal root_5470061 small_5470061_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5470067 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5470061_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5470067
#print axioms cover_5470061

def root_5466723 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5466723 : CoveredBy scale carrier boxes root_5466723 := by
  apply coveredBy_split_literal root_5466723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5466724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5470061 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5466724
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5470061
#print axioms cover_5466723

def root_5466718 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466718_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5466718_right_fuel : Nat := 1
def small_5466718_right_count : Nat := 1
def small_5466718_right_encoded : String := "00000001"
theorem small_5466718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5466718_right_root small_5466718_right_fuel small_5466718_right_count small_5466718_right_encoded = true := by
  decide +kernel
theorem small_5466718_right_covered : CoveredBy scale carrier boxes small_5466718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5466718_right_root small_5466718_right_fuel small_5466718_right_count small_5466718_right_encoded small_5466718_right_checked

theorem cover_5466718 : CoveredBy scale carrier boxes root_5466718 := by
  apply coveredBy_split_literal root_5466718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5466723 small_5466718_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5466723
  · exact small_5466718_right_covered
#print axioms cover_5466718

def root_5463556 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5463556 : CoveredBy scale carrier boxes root_5463556 := by
  apply coveredBy_split_literal root_5463556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2045.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5466718 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2045.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5466718
#print axioms cover_5463556

def root_5463550 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5463550_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5463550_left_fuel : Nat := 1
def small_5463550_left_count : Nat := 1
def small_5463550_left_encoded : String := "00000000"
theorem small_5463550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5463550_left_root small_5463550_left_fuel small_5463550_left_count small_5463550_left_encoded = true := by
  decide +kernel
theorem small_5463550_left_covered : CoveredBy scale carrier boxes small_5463550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5463550_left_root small_5463550_left_fuel small_5463550_left_count small_5463550_left_encoded small_5463550_left_checked

theorem cover_5463550 : CoveredBy scale carrier boxes root_5463550 := by
  apply coveredBy_split_literal root_5463550 small_5463550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5463556 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5463550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5463556
#print axioms cover_5463550

def root_5439566 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5439566 : CoveredBy scale carrier boxes root_5439566 := by
  apply coveredBy_split_literal root_5439566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5439567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5463550 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5439567
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5463550
#print axioms cover_5439566

def root_5403120 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403120 : CoveredBy scale carrier boxes root_5403120 := by
  apply coveredBy_split_literal root_5403120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5403121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5439566 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5403121
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5439566
#print axioms cover_5403120

def root_5400064 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5400064 : CoveredBy scale carrier boxes root_5400064 := by
  apply coveredBy_split_literal root_5400064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2022.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5403120 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2022.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5403120
#print axioms cover_5400064

def root_5474890 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5474890 : CoveredBy scale carrier boxes root_5474890 := by
  apply coveredBy_split_literal root_5474890 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2049.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2050.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2049.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2050.covered
#print axioms cover_5474890

def root_5474884 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474884_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474884_left_fuel : Nat := 1
def small_5474884_left_count : Nat := 1
def small_5474884_left_encoded : String := "00000001"
theorem small_5474884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5474884_left_root small_5474884_left_fuel small_5474884_left_count small_5474884_left_encoded = true := by
  decide +kernel
theorem small_5474884_left_covered : CoveredBy scale carrier boxes small_5474884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5474884_left_root small_5474884_left_fuel small_5474884_left_count small_5474884_left_encoded small_5474884_left_checked

theorem cover_5474884 : CoveredBy scale carrier boxes root_5474884 := by
  apply coveredBy_split_literal root_5474884 small_5474884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5474890 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5474884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5474890
#print axioms cover_5474884

def root_5474883 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474883_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474883_right_fuel : Nat := 23
def small_5474883_right_count : Nat := 225
def small_5474883_right_encoded : String := "120700F808A91305120700FA08A91307120700FC05000100135D44F7050000FE00000006135D44FF045489F91386ACF80000000104548A050000000700000006000000060000000400000000000000060000000312073CFC0000000305000100135D44F7050000FE135D80FF00000004045489F91386ACF80000000104548A05138670FA0CFD9C07000000070F350CFC0000000300000008000000021386ACFA000000020CFD9C070F34D0FC028001000000000700000006000000030F350CFC000000030C9A86FC0F878D070280010000000007000000080000000300000008138670F804548A05000000071386ACFA000000020CFD9C07000000060000000800000001135D44FF045489F91386ACF80000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D0FC0280010013D7B0F70000000A0000000000000006000000030F350CFC000000030C9A86FC0000000A00000005138670F80000000A000000010000000400000000135D80F700000000050000FE135D80FF00000004045489F91386ACF80000000104548A05138670FA00000008000000021386ACFA000000020CFD9C07000000060F350CFC000000030000000800000008135D44FF045489F91386ACF80000000104548A05138670FA00000008000000021386ACFA000000020CFD9C07000000060000000500000008000000040000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000305000100135D44F7050000FE135D80FF00000004045489F91386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D070280010013D7B0F7078000FE128A7CFF00000004067ECE7900000009000000050000000500000000000000050000000300000005000000020F350CFA000000020CFD9C070000000600000005138670F80CFD9C050F34D0FA0CFD9C07000000060F350CFC0000000300000005000000020000000600000001135D44FF045489F91386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC0000000600000003000000050000000200000005138670F80CFD9C050F34D0FA0CFD9C0700000006000000050000000200000005000000010000000400000000135D80F700000000050000FE135D80FF00000004045489F91386ACF8000000010CFD9C050F34D0FA000000060000000200000005000000050000000500000001"
theorem small_5474883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5474883_right_root small_5474883_right_fuel small_5474883_right_count small_5474883_right_encoded = true := by
  decide +kernel
theorem small_5474883_right_covered : CoveredBy scale carrier boxes small_5474883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5474883_right_root small_5474883_right_fuel small_5474883_right_count small_5474883_right_encoded small_5474883_right_checked

theorem cover_5474883 : CoveredBy scale carrier boxes root_5474883 := by
  apply coveredBy_split_literal root_5474883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5474884 small_5474883_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5474884
  · exact small_5474883_right_covered
#print axioms cover_5474883

def root_5474878 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474878_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5474878_right_fuel : Nat := 1
def small_5474878_right_count : Nat := 1
def small_5474878_right_encoded : String := "00000004"
theorem small_5474878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5474878_right_root small_5474878_right_fuel small_5474878_right_count small_5474878_right_encoded = true := by
  decide +kernel
theorem small_5474878_right_covered : CoveredBy scale carrier boxes small_5474878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5474878_right_root small_5474878_right_fuel small_5474878_right_count small_5474878_right_encoded small_5474878_right_checked

theorem cover_5474878 : CoveredBy scale carrier boxes root_5474878 := by
  apply coveredBy_split_literal root_5474878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5474883 small_5474878_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5474883
  · exact small_5474878_right_covered
#print axioms cover_5474878

def root_5473408 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473408 : CoveredBy scale carrier boxes root_5473408 := by
  apply coveredBy_split_literal root_5473408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2048.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5474878 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2048.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5474878
#print axioms cover_5473408

def root_5473403 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473403_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473403_right_fuel : Nat := 1
def small_5473403_right_count : Nat := 1
def small_5473403_right_encoded : String := "00000003"
theorem small_5473403_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473403_right_root small_5473403_right_fuel small_5473403_right_count small_5473403_right_encoded = true := by
  decide +kernel
theorem small_5473403_right_covered : CoveredBy scale carrier boxes small_5473403_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473403_right_root small_5473403_right_fuel small_5473403_right_count small_5473403_right_encoded small_5473403_right_checked

theorem cover_5473403 : CoveredBy scale carrier boxes root_5473403 := by
  apply coveredBy_split_literal root_5473403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473408 small_5473403_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473408
  · exact small_5473403_right_covered
#print axioms cover_5473403

def root_5473402 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473402_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473402_right_fuel : Nat := 18
def small_5473402_right_count : Nat := 157
def small_5473402_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF00000009000000090000000212073CFA0000000208A912FF12073CFE0000000405000100135D44F7050000FC135D81070CFD9BF9000000090F34D0F8000000090000000100000003000000050000000000000005120700FE0000000900000004120700F808A91305120700FA08A912FF12073CFE0000000405000100135D44F7050000FC135D8107045489F900000009138670F804548A05000000070000000900000001000000030000000900000000135D80F700000000050000FC135D8107045489F900000009138670F804548A05138670FA000000090000000200000005000000010000000300000005120700FE00000009000000040000000212073CFA0000000208A912FF12073CFE0000000405000100135D44F7050000FC135D8107045489F91386ACF8000000010CFD9C050F34D0FA0000000900000002000000050000000500000003000000050000000000000005120700FE0000000900000004000000011151E8FF08A912F912073CF80000000108A91305120700FA05000100135D44F7050000FC135D8107050000FE00000009135D44FF0CFD9BF900000009000000050000000400000003135D4507000000030000000900000000135D80F700000000050000FC135D8107050000FE000000090000000500000003000000050000000212073CFA0000000200000005120700F808A91305120700FA05000100135D44F7050000FC135D8107050000FE135D80FF00000004045489F90000000800000005000000050000000300000005000000000000000500000002000000050000000100000004"
theorem small_5473402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473402_right_root small_5473402_right_fuel small_5473402_right_count small_5473402_right_encoded = true := by
  decide +kernel
theorem small_5473402_right_covered : CoveredBy scale carrier boxes small_5473402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473402_right_root small_5473402_right_fuel small_5473402_right_count small_5473402_right_encoded small_5473402_right_checked

theorem cover_5473402 : CoveredBy scale carrier boxes root_5473402 := by
  apply coveredBy_split_literal root_5473402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473403 small_5473402_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473403
  · exact small_5473402_right_covered
#print axioms cover_5473402

def root_5473397 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473397_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473397_right_fuel : Nat := 1
def small_5473397_right_count : Nat := 1
def small_5473397_right_encoded : String := "00000002"
theorem small_5473397_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473397_right_root small_5473397_right_fuel small_5473397_right_count small_5473397_right_encoded = true := by
  decide +kernel
theorem small_5473397_right_covered : CoveredBy scale carrier boxes small_5473397_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473397_right_root small_5473397_right_fuel small_5473397_right_count small_5473397_right_encoded small_5473397_right_checked

theorem cover_5473397 : CoveredBy scale carrier boxes root_5473397 := by
  apply coveredBy_split_literal root_5473397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473402 small_5473397_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473402
  · exact small_5473397_right_covered
#print axioms cover_5473397

def root_5473396 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473396_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473396_right_fuel : Nat := 20
def small_5473396_right_count : Nat := 181
def small_5473396_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F912073CF80000000108A91307120700FC08A912FF12073CFE0000000405000100135D44F7050000FA135D81050CFD9BF90000000A0000000A00000002135D4505000000020CFD9BF90000000A0000000A00000000135D80F700000000050000FA135D81050CFD9BF90000000A0000000600000002135D4505000000020CFD9BF90000000A00000005120700FE05000100135D44F70000000700000000135D80F700000000050000FA135D81050CFD9BF90F350CF8000000010000000A000000060000000200000005000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F7050000FA135D81050CFD9BF90000000A0F34D0F80CFD9C070000000A000000050000000100000002000000050000000000000005120700FE05000100135D44F7050000FA0000000900000005000000000000000500000004120700F808A91307120700FC08A912FF00000006120700FE00000006000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F7050000FA135D8105045489F91386ACF8000000010CFD9C070F34D0FC0000000600000003000000050000000500000002000000050000000000000005120700FE05000100135D44F7050000FA135D8105045489F900000009138670F80CFD9C070000000600000006000000010000000200000005000000000000000500000004000000011151E8FF08A912F912073CF80000000108A91307120700FC05000100135D44F7050000FA135D8105050000FE0000000A135D44FF0CFD9BF90000000A000000050000000400000002135D450500000002050000FE0000000A0000000500000000135D80F700000000050000FA00000006000000050000000312073CFC0000000300000005120700F808A9130700000006000000050000000100000004000000031151E9070000000300000005"
theorem small_5473396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473396_right_root small_5473396_right_fuel small_5473396_right_count small_5473396_right_encoded = true := by
  decide +kernel
theorem small_5473396_right_covered : CoveredBy scale carrier boxes small_5473396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473396_right_root small_5473396_right_fuel small_5473396_right_count small_5473396_right_encoded small_5473396_right_checked

theorem cover_5473396 : CoveredBy scale carrier boxes root_5473396 := by
  apply coveredBy_split_literal root_5473396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473397 small_5473396_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473397
  · exact small_5473396_right_covered
#print axioms cover_5473396

def root_5473390 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473390_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473390_left_fuel : Nat := 1
def small_5473390_left_count : Nat := 1
def small_5473390_left_encoded : String := "00000001"
theorem small_5473390_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473390_left_root small_5473390_left_fuel small_5473390_left_count small_5473390_left_encoded = true := by
  decide +kernel
theorem small_5473390_left_covered : CoveredBy scale carrier boxes small_5473390_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473390_left_root small_5473390_left_fuel small_5473390_left_count small_5473390_left_encoded small_5473390_left_checked

theorem cover_5473390 : CoveredBy scale carrier boxes root_5473390 := by
  apply coveredBy_split_literal root_5473390 small_5473390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473396 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5473390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473396
#print axioms cover_5473390

def root_5473389 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473389_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473389_right_fuel : Nat := 30
def small_5473389_right_count : Nat := 435
def small_5473389_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91305120700FA08A91307120700FC08A912FF12073CFE0000000405000100135D44F7050000F8135D80F900000001000000070000000A00000000135D80F700000000050000F8135D80F90000000104548A05138670FA00000009000000020000000A0000000A120700FE00000009000000040000000312073CFC0000000308A912FF00000009000000090000000212073CFA0000000208A91307120700FC08A912FF12073CFE00000004050001000000000A0000000A120700FE050001000000000A135D80F7000000000000000A000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F70000000A000000000000000A120700FE00000009000000041151E8FF08A91305120700FA08A91307120700FC05000100135D44F7050000F8135D80F900000001050000FE135D80FF0000000404548A05000000070000000A135D44FF04548A05138670FA04548A07000000051386ACFC00000003028001000000000713D7ECF700000000078000F8128A7CF9000000010000000700000007000000021386ACFA0000000204548A070000000A1386ACFC000000030280010013D7B0F7078000F8128A7CF900000001028000FE0000000713D7B0FF067ECE850000000712EA94FA000000020000000700000004000000070000000013D7ECF700000000078000F8128A7CF900000001028000FE0000000913D7B0FF067ECE8512EA58FA00000009000000020000000A000000040000000A00000004135D44F9050000FE00000007135D44FF04548A05000000070000000A000000040000000100000000135D80F700000000050000F8135D80F900000001050000FE135D80FF0000000404548A05138670FA04548A070000000700000009000000020000000A135D44FF04548A05138670FA04548A07138670FC07800100128A40F70000000500000000128A7CF700000000078000F8128A7CF900000001028000FE0000000513D7B0FF0000000A000000040000000A000000031386ACFC0000000307800100128A40F7078000F8128A7CF900000001028000FE0000000713D7B0FF022A45850000000900000009000000040000000900000000128A7CF700000000078000F8128A7CF900000001028000FE0000000913D7B0FF000000090000000400000009000000021386ACFA0000000204548A070000000A1386ACFC0000000307800100128A40F7078000F8128A7CF9000000010000000A0000000A000000000000000A00000004135D44F9050000FE0000000A135D44FF04548A05138670FA04548A070000000A00000009000000020000000A00000004000000010000000312073CFC0000000305000100135D44F7050000F8135D80F900000001050000FE00000009135D44FF04548A05138670FA00000009000000021386ACFA000000020CFD9C070F34D0FC028001000000000900000009000000030000000900000004135D44F9000000090000000100000000135D80F700000000050000F8135D80F900000001050000FE00000009135D44FF04548A05000000090000000900000004000000090000000212073CFA0000000208A91307120700FC05000100135D44F7050000F8135D80F900000001050000FE0000000A135D44FF0CFD9C050F34D0FA0000000A000000020000000A000000040000000A00000000135D80F700000000050000F8135D80F900000001050000FE0000000A135D44FF0000000A000000040000000A0000000312073CFC0000000305000100135D44F7050000F8135D80F900000001050000FE135D80FF000000040CFD9C050F34D0FA00000009000000020000000A135D44FF0CFD9C050F34D0FA0CFD9C070F34D0FC0280010013D7B0F7078000F800000009000000090000000013D7ECF7000000000000000A0000000300000005000000020000000500000004135D44F9050000FE135D80FF000000040CFD9C050000000900000005135D44FF0CFD9C050F34D0FA000000090000000200000005000000040000000100000000135D80F700000000050000F8135D80F900000001050000FE0000000A00000005135D44F9050000FE0000000A000000050000000100000004000000031151E907000000030A0000FE115224FF0000000408A9130500000009000000091151E8FF08A91305120700FA00000009000000020000000500000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF0000000A120700FE0000000A000000040000000312073CFC0000000308A912FF0000000A000000051151E8FF08A913070000000A0000000500000004000000031151E907000000030000000500000001"
theorem small_5473389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473389_right_root small_5473389_right_fuel small_5473389_right_count small_5473389_right_encoded = true := by
  decide +kernel
theorem small_5473389_right_covered : CoveredBy scale carrier boxes small_5473389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473389_right_root small_5473389_right_fuel small_5473389_right_count small_5473389_right_encoded small_5473389_right_checked

theorem cover_5473389 : CoveredBy scale carrier boxes root_5473389 := by
  apply coveredBy_split_literal root_5473389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473390 small_5473389_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473390
  · exact small_5473389_right_covered
#print axioms cover_5473389

def root_5473384 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473384_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5473384_right_fuel : Nat := 1
def small_5473384_right_count : Nat := 1
def small_5473384_right_encoded : String := "00000000"
theorem small_5473384_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5473384_right_root small_5473384_right_fuel small_5473384_right_count small_5473384_right_encoded = true := by
  decide +kernel
theorem small_5473384_right_covered : CoveredBy scale carrier boxes small_5473384_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5473384_right_root small_5473384_right_fuel small_5473384_right_count small_5473384_right_encoded small_5473384_right_checked

theorem cover_5473384 : CoveredBy scale carrier boxes root_5473384 := by
  apply coveredBy_split_literal root_5473384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473389 small_5473384_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473389
  · exact small_5473384_right_covered
#print axioms cover_5473384

def root_5473383 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473383 : CoveredBy scale carrier boxes root_5473383 := by
  apply coveredBy_split_literal root_5473383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473384 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2051.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473384
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2051.covered
#print axioms cover_5473383

def root_5483999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5483999 : CoveredBy scale carrier boxes root_5483999 := by
  apply coveredBy_split_literal root_5483999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2052.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2053.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2052.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2053.covered
#print axioms cover_5483999

def root_5483994 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483994_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483994_right_fuel : Nat := 1
def small_5483994_right_count : Nat := 1
def small_5483994_right_encoded : String := "00000002"
theorem small_5483994_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483994_right_root small_5483994_right_fuel small_5483994_right_count small_5483994_right_encoded = true := by
  decide +kernel
theorem small_5483994_right_covered : CoveredBy scale carrier boxes small_5483994_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483994_right_root small_5483994_right_fuel small_5483994_right_count small_5483994_right_encoded small_5483994_right_checked

theorem cover_5483994 : CoveredBy scale carrier boxes root_5483994 := by
  apply coveredBy_split_literal root_5483994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483999 small_5483994_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483999
  · exact small_5483994_right_covered
#print axioms cover_5483994

def root_5483993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5483993 : CoveredBy scale carrier boxes root_5483993 := by
  apply coveredBy_split_literal root_5483993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2054.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2054.covered
#print axioms cover_5483993

def root_5483987 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483987_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483987_left_fuel : Nat := 1
def small_5483987_left_count : Nat := 1
def small_5483987_left_encoded : String := "00000001"
theorem small_5483987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483987_left_root small_5483987_left_fuel small_5483987_left_count small_5483987_left_encoded = true := by
  decide +kernel
theorem small_5483987_left_covered : CoveredBy scale carrier boxes small_5483987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483987_left_root small_5483987_left_fuel small_5483987_left_count small_5483987_left_encoded small_5483987_left_checked

theorem cover_5483987 : CoveredBy scale carrier boxes root_5483987 := by
  apply coveredBy_split_literal root_5483987 small_5483987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483993 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5483987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483993
#print axioms cover_5483987

def root_5483986 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483986_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483986_right_fuel : Nat := 14
def small_5483986_right_count : Nat := 91
def small_5483986_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A912F712073D0008A91305120700FA08A91307120700FC000000080000000312073CFC00000003000000050000000212073CFA0000000200000005000000001207010000000000000000050000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A912F700000005120701000000000008A913050000000500000007000000021151E905000000020A0000FC115225070A0000FE1152250900000005000000041151E9090000000408A912F700000005120701000000000008A913070000000500000007000000031151E907000000030A0000FE1152250908A912F700000005120701000000000008A913090000000512073CFE00000004050000F80000000500000009000000041151E9090000000408A912F7000000081207010000000000050000F800000009135D44F9000000090000000100000001"
theorem small_5483986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483986_right_root small_5483986_right_fuel small_5483986_right_count small_5483986_right_encoded = true := by
  decide +kernel
theorem small_5483986_right_covered : CoveredBy scale carrier boxes small_5483986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483986_right_root small_5483986_right_fuel small_5483986_right_count small_5483986_right_encoded small_5483986_right_checked

theorem cover_5483986 : CoveredBy scale carrier boxes root_5483986 := by
  apply coveredBy_split_literal root_5483986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483987 small_5483986_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483987
  · exact small_5483986_right_covered
#print axioms cover_5483986

def root_5483980 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483980_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483980_left_fuel : Nat := 1
def small_5483980_left_count : Nat := 1
def small_5483980_left_encoded : String := "00000000"
theorem small_5483980_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483980_left_root small_5483980_left_fuel small_5483980_left_count small_5483980_left_encoded = true := by
  decide +kernel
theorem small_5483980_left_covered : CoveredBy scale carrier boxes small_5483980_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483980_left_root small_5483980_left_fuel small_5483980_left_count small_5483980_left_encoded small_5483980_left_checked

theorem cover_5483980 : CoveredBy scale carrier boxes root_5483980 := by
  apply coveredBy_split_literal root_5483980 small_5483980_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483986 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5483980_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483986
#print axioms cover_5483980

def root_5483338 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483338_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5483338_left_fuel : Nat := 23
def small_5483338_left_count : Nat := 297
def small_5483338_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115225050A0000FC115225070A0000FE1152250908A912F912073CF80000000108A91305120700FA08A91307120700FC000000080000000312073CFC0000000308A91309120700FE0000000900000004000000090000000212073CFA0000000208A91307120700FC08A91309120700FE05000100135D44F70000000900000000135D80F7000000000CFD9BF900000009000000080000000412073CFE000000040500010000000009000000080000000312073CFC0000000308A91309120700FE000000090000000400000009120700F808A91305120700FA08A91307120700FC000000080000000312073CFC0000000308A91309120700FE000000070000000412073CFE000000040500010000000008135D80F700000000045489F900000008000000080000000212073CFA0000000208A91307120700FC000000080000000312073CFC0000000308A91309120700FE05000100135D44F7045489F9000000090000000700000000135D80F700000000045489F900000009138670F80CFD9C050000000700000008000000010000000412073CFE0000000405000100000000080000000800000001000000041151E9090000000408A912F912073CF80000000108A91305000000080000000900000008000000031151E907000000030A0000FE1152250908A912F912073CF80000000108A91305120700FA000000090000000200000009120700F808A91305120700FA08A9130900000009000000090000000212073CFA0000000208A91309120700FE00000009000000040000000900000001000000041151E9090000000408A912F900000009120700F80000000900000001000000021151E905000000020A0000FC115225070A0000FE1152250908A912F912073CF80000000108A91307120700FC08A91309120700FE05000100000000070000000500000004000000090000000312073CFC0000000308A91309120700FE000000090000000400000009120700F808A91307120700FC08A91309120700FE0000000700000004000000080000000312073CFC0000000308A91309120700FE05000100135D44F70000000900000000135D80F700000000050000FA135D8105045489F900000009138670F8000000090000000100000002000000050000000412073CFE000000040500010000000009135D80F700000000050000FA00000008135D4505000000020000000900000001000000041151E9090000000408A912F900000009120700F80000000800000001000000031151E907000000030A0000FE1152250908A912F900000009120700F80000000900000001000000041151E90900000004000000091151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A91305120700FA08A91307120700FC08A91309120700FE0000000800000004000000080000000312073CFC00000003000000090000000212073CFA0000000208A91307120700FC08A91309120700FE0000000900000004000000090000000312073CFC0000000308A913090000000900000009000000041151E9090000000400000005000000031151E9070000000300000005000000021151E90500000002000000050000000100000000"
theorem small_5483338_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5483338_left_root small_5483338_left_fuel small_5483338_left_count small_5483338_left_encoded = true := by
  decide +kernel
theorem small_5483338_left_covered : CoveredBy scale carrier boxes small_5483338_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5483338_left_root small_5483338_left_fuel small_5483338_left_count small_5483338_left_encoded small_5483338_left_checked

theorem cover_5483338 : CoveredBy scale carrier boxes root_5483338 := by
  apply coveredBy_split_literal root_5483338 small_5483338_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483980 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5483338_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483980
#print axioms cover_5483338

def root_5473382 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473382 : CoveredBy scale carrier boxes root_5473382 := by
  apply coveredBy_split_literal root_5473382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5483338 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473383
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5483338
#print axioms cover_5473382

def root_5495462 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5495462 : CoveredBy scale carrier boxes root_5495462 := by
  apply coveredBy_split_literal root_5495462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2056.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2057.root coord2 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2056.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2057.covered
#print axioms cover_5495462

def root_5495456 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5495456_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5495456_left_fuel : Nat := 1
def small_5495456_left_count : Nat := 1
def small_5495456_left_encoded : String := "00000004"
theorem small_5495456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5495456_left_root small_5495456_left_fuel small_5495456_left_count small_5495456_left_encoded = true := by
  decide +kernel
theorem small_5495456_left_covered : CoveredBy scale carrier boxes small_5495456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5495456_left_root small_5495456_left_fuel small_5495456_left_count small_5495456_left_encoded small_5495456_left_checked

theorem cover_5495456 : CoveredBy scale carrier boxes root_5495456 := by
  apply coveredBy_split_literal root_5495456 small_5495456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5495462 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5495456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5495462
#print axioms cover_5495456

def root_5494774 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5494774_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5494774_left_fuel : Nat := 23
def small_5494774_left_count : Nat := 329
def small_5494774_left_encoded : String := "13D7B0FF067ECE8512EA58FA067ECE8712EA58FC0B4D43F810804CF90000000103C001000000000713A54CF700000000014001080000000713F614FF000000040569AC450000000700000006108010F903C001000000000713A54CF700000000014001080000000713F614FF000000040569AC4500000007134110FA000000020569AC4700000007134110FC000000030AA6A27810EDACF9000000010000000700000007000000010000000312EA94FC000000030B4D43F810804CF90000000103C0010013A510F7014001080000000713F614FF000000040569AC4500000007134110FA000000020793F0C70000000712825CFC000000030BF3E578100928F90000000100000007000000070000000013A54CF7000000000140010813F5D8FF0569AC4500000007000000090000000413F614FF000000040569AC451340D4FA0793F0C7128220FC000000070000000312825CFC000000030000000900000002134110FA000000020793F0C7128220FC0BF3E578100928F9000000010460010000000007000000061008ECF9046001000000000700000009000000010000000312825CFC000000030BF3E5780000000900000009108010F903C0010013A510F7014001080000000713F614FF000000040569AC4500000007134110FA000000020793F0C700000007000000090000000013A54CF700000000014001080000000913F614FF000000040569AC450000000900000009000000010000000212EA94FA00000002067ECE8712EA58FC0B4D43F810804CF90000000103C0010013A510F7014001080000000713F614FF000000040793F0C500000007000000060000000000000006108010F903C0010013A510F7014001080000000713F614FF000000040793F0C5000000070000000A0000000013A54CF7000000000000000A000000010000000312EA94FC000000030B4D43F810804CF90000000103C0010013A510F70140010813F5D8FF0793F0C5128220FA0793F0C700000007000000090000000212825CFA000000020793F0C700000007000000090000000413F614FF000000040793F0C5128220FA0793F0C7128220FC0BF3E578100928F90000000100000007000000070000000312825CFC000000030BF3E578100928F9000000010320010000000007000000091008ECF900000009000000010000000212825CFA000000020793F0C7128220FC0BF3E578100928F9000000010320010000000007000000061008ECF90320010013C108F7000000070000000013C144F70000000001E0010800000006000000050000000100000003000000050000000013A54CF7000000000140010813F5D8FF0793F0C5128220FA0793F0C700000006000000090000000212825CFA000000020793F0C700000006000000050000000413F614FF000000040793F0C5128220FA0793F0C7128220FC0BF3E578100928F900000001000000061008ECF9046001001383DCF701E001080000000713E994FF0000000407095FA500000009000000050000000000000006000000010000000312825CFC00000003000000050000000212825CFA0000000200000005108010F903C0010013A510F7014001080000000913F614FF000000040793F0C5128220FA0793F0C7128220FC0AA6A278000000090000000900000003000000090000000212825CFA000000020793F0C70000000A000000050000000013A54CF700000000014001080000000913F614FF000000040793F0C5128220FA0793F0C7128220FC0AA6A278000000090000000900000003000000090000000212825CFA00000002000000050000000100000004"
theorem small_5494774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5494774_left_root small_5494774_left_fuel small_5494774_left_count small_5494774_left_encoded = true := by
  decide +kernel
theorem small_5494774_left_covered : CoveredBy scale carrier boxes small_5494774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5494774_left_root small_5494774_left_fuel small_5494774_left_count small_5494774_left_encoded small_5494774_left_checked

theorem cover_5494774 : CoveredBy scale carrier boxes root_5494774 := by
  apply coveredBy_split_literal root_5494774 small_5494774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5495456 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5494774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5495456
#print axioms cover_5494774

def root_5494768 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5494768_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5494768_left_fuel : Nat := 1
def small_5494768_left_count : Nat := 1
def small_5494768_left_encoded : String := "00000000"
theorem small_5494768_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5494768_left_root small_5494768_left_fuel small_5494768_left_count small_5494768_left_encoded = true := by
  decide +kernel
theorem small_5494768_left_covered : CoveredBy scale carrier boxes small_5494768_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5494768_left_root small_5494768_left_fuel small_5494768_left_count small_5494768_left_encoded small_5494768_left_checked

theorem cover_5494768 : CoveredBy scale carrier boxes root_5494768 := by
  apply coveredBy_split_literal root_5494768 small_5494768_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5494774 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5494768_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5494774
#print axioms cover_5494768

def root_5493852 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5493852_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5493852_left_fuel : Nat := 25
def small_5493852_left_count : Nat := 435
def small_5493852_left_encoded : String := "13D7B0F70280010813D7B0FF067ECE8512EA58FA067ECE870000000712EA94FC000000030B4D43F810804CF90000000100000007000000070000000212EA94FA00000002067ECE8712EA58FC0B4D43F810804CF90000000100000007000000070000000312EA94FC000000030B4D43F810804CF900000001014001000000000713F614F700000000014001080000000713F614FF000000040793F0C5128220FA0793F0C70000000712825CFC00000003000000070000000212825CFA000000020793F0C70000000712825CFC000000030BF3E578100928F90000000101E0010000000007000000051008ECF90000000800000001108010F9014001000000000713F614F700000000014001080000000713F614FF000000040793F0C5128220FA0793F0C700000007000000090000000212825CFA000000020793F0C70000000700000008000000010000000413D7ECFF00000004067ECE8512EA58FA067ECE8712EA58FC0B4D43F810804CF900000001014001000000000713F614F70000000003C001080000000713A54CFF000000040569AC4500000007134110FA000000020569AC47000000070000000A108010F9014001000000000713F614F70000000003C001080000000713A54CFF000000040569AC4500000007134110FA000000020569AC4700000007134110FC000000030AA6A27810EDACF9000000010000000700000007000000010000000312EA94FC000000030B4D43F810804CF9000000010140010013F5D8F70000000A0000000013F614F70000000003C0010813A510FF0569AC4500000007134110FA000000020793F0C7000000070000000A000000040000000A108010F9014001000000000613F614F70000000003C0010813A510FF0569AC4500000006134110FA000000020793F0C700000007000000060000000413A54CFF0000000400000006000000010000000212EA94FA00000002067ECE8712EA58FC0B4D43F810804CF9000000010140010013F5D8F703C001080000000713A54CFF000000040793F0C500000007000000080000000013F614F70000000003C0010813A510FF0793F0C50000000712825CFA000000020569AC4700000007134110FC000000030BF3E578100928F90000000100000007000000070000000413A54CFF000000040793F0C5128220FA0569AC471340D4FC0000000700000003134110FC000000030BF3E578100928F90000000101E001000000000713E994F70000000004600108000000070000000A1008ECF901E001000000000713E994F700000000046001080000000700000008000000010000000212825CFA000000020569AC471340D4FC0000000800000003134110FC000000030BF3E5780000000800000008108010F90140010013F5D8F7000000080000000013F614F70000000003C0010813A510FF0793F0C500000007000000080000000413A54CFF000000040793F0C5128220FA0569AC4700000008000000080000000200000008000000010000000312EA94FC000000030B4D43F810804CF9000000010140010013F5D8F703C0010813A510FF0793F0C5128220FA0793F0C70000000712825CFC00000003000000070000000212825CFA000000020793F0C700000007000000080000000413A54CFF000000040793F0C5128220FA0000000A0000000212825CFA00000002000000080000000013F614F70000000003C0010813A510FF0793F0C5128220FA0793F0C7128220FC0BF3E578100928F90000000100000007000000070000000312825CFC000000030BF3E578100928F90000000101E001000000000713E994F700000000000000051008ECF901E001000000000613E994F700000000032001080000000900000005000000010000000212825CFA000000020793F0C7128220FC0BF3E578100928F90000000101E001000000000713E994F700000000000000051008ECF9000000080000000100000003000000050000000413A54CFF000000040793F0C5128220FA0793F0C7128220FC0BF3E578100928F9000000010000000A1008ECF901E001000000000813E994F700000000046001081383DCFF07095FA50000000A00000005000000040000000A00000001000000030000000A0000000212825CFA0000000200000005108010F90140010013F5D8F703C0010813A510FF0000000800000004000000080000000013F614F70000000003C0010813A510FF0793F0C5128220FA0793F0C7128220FC0AA6A27800000008000000080000000312825CFC00000003000000060000000212825CFA000000020793F0C700000008000000050000000413A54CFF000000040793F0C5128220FA0793F0C7128220FC0AA6A278000000080000000600000003000000060000000212825CFA00000002000000050000000100000000"
theorem small_5493852_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5493852_left_root small_5493852_left_fuel small_5493852_left_count small_5493852_left_encoded = true := by
  decide +kernel
theorem small_5493852_left_covered : CoveredBy scale carrier boxes small_5493852_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5493852_left_root small_5493852_left_fuel small_5493852_left_count small_5493852_left_encoded small_5493852_left_checked

theorem cover_5493852 : CoveredBy scale carrier boxes root_5493852 := by
  apply coveredBy_split_literal root_5493852 small_5493852_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5494768 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5493852_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5494768
#print axioms cover_5493852

def root_5493847 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5493847_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5493847_right_fuel : Nat := 1
def small_5493847_right_count : Nat := 1
def small_5493847_right_encoded : String := "00000001"
theorem small_5493847_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5493847_right_root small_5493847_right_fuel small_5493847_right_count small_5493847_right_encoded = true := by
  decide +kernel
theorem small_5493847_right_covered : CoveredBy scale carrier boxes small_5493847_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5493847_right_root small_5493847_right_fuel small_5493847_right_count small_5493847_right_encoded small_5493847_right_checked

theorem cover_5493847 : CoveredBy scale carrier boxes root_5493847 := by
  apply coveredBy_split_literal root_5493847 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5493852 small_5493847_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5493852
  · exact small_5493847_right_covered
#print axioms cover_5493847

def root_5492501 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5492501 : CoveredBy scale carrier boxes root_5492501 := by
  apply coveredBy_split_literal root_5492501 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2055.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5493847 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2055.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5493847
#print axioms cover_5492501

def root_5492495 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5492495_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5492495_left_fuel : Nat := 1
def small_5492495_left_count : Nat := 1
def small_5492495_left_encoded : String := "00000003"
theorem small_5492495_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5492495_left_root small_5492495_left_fuel small_5492495_left_count small_5492495_left_encoded = true := by
  decide +kernel
theorem small_5492495_left_covered : CoveredBy scale carrier boxes small_5492495_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5492495_left_root small_5492495_left_fuel small_5492495_left_count small_5492495_left_encoded small_5492495_left_checked

theorem cover_5492495 : CoveredBy scale carrier boxes root_5492495 := by
  apply coveredBy_split_literal root_5492495 small_5492495_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5492501 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5492495_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5492501
#print axioms cover_5492495

def root_5491969 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491969_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491969_left_fuel : Nat := 31
def small_5491969_left_count : Nat := 253
def small_5491969_left_encoded : String := "138670FC0C9A86F80F878CF9000000010280010013D7B0F7028001080000000713D7ECFF00000004067ECE850000000712EA94FA00000002022A45870000000613E200FC000000030DE7C9F80E6014F900000001000000060E5FD8F9014001000000000700000006000000010000000013D7ECF700000000028001080000000613D7ECFF00000004067ECE8512EA58FA022A45870000000613E200FC000000030DE7C9F8000000060E5FD8F9000000060000000100000002000000060F8750F90280010013D7B0F7028001080000000713D7ECFF00000004067ECE850000000712EA94FA00000002022A45870000000713E200FC000000030B4D43F810804CF900000001014001000000000713F614F70000000003C001080000000713A54CFF000000040793F0C50000000712825CFA0000000200000007108010F9014001000000000713F614F70000000003C001080000000700000008000000010000000013D7ECF7000000000280010813D7B0FF067ECE8500000007000000060000000413D7ECFF00000004067ECE8512EA58FA022A45870000000513E200FC000000030B4D43F810804CF90000000103C0010013A510F703C001080000000513A54CFF000000040569AC4500000005134110FA00000002000000070000000013A54CF70000000003C001080000000613A54CFF000000040569AC451340D4FA000000060000000200000006108010F903C0010013A510F703C001080000000513A54CFF000000040569AC4500000005134110FA00000002000000070000000013A54CF70000000003C0010813A510FF0569AC4500000005000000060000000413A54CFF000000040569AC4500000005134110FA00000002033F67C70000000513BC30FC000000030AA6A27810EDACF9000000010000000610ED70F9046001001383DCF70460010800000005138418FF0000000405F43D65000000051317F8FA0000000203C9F8E700000005000000C5000000000000000600000001000000010000000212EA94FA00000002022A45870000000613E200FC000000030B4D43F810804CF90000000103C0010013A510F703C001080000000613A54CFF000000040793F0C5128220FA0000000600000002000000060000000000000006108010F903C0010013A510F703C0010813A510FF0793F0C500000007000000060000000413A54CFF000000040793F0C5128220FA033F67C70000000713BC30FC000000030AA6A27810EDACF90000000103200100000000070000000610ED70F900000008000000010000000212825CFA00000002033F67C700000006000000080000000013A54CF70000000003C001080000000613A54CFF000000040793F0C5128220FA000000060000000200000006000000010000000100000003"
theorem small_5491969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491969_left_root small_5491969_left_fuel small_5491969_left_count small_5491969_left_encoded = true := by
  decide +kernel
theorem small_5491969_left_covered : CoveredBy scale carrier boxes small_5491969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491969_left_root small_5491969_left_fuel small_5491969_left_count small_5491969_left_encoded small_5491969_left_checked

theorem cover_5491969 : CoveredBy scale carrier boxes root_5491969 := by
  apply coveredBy_split_literal root_5491969 small_5491969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5492495 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5491969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5492495
#print axioms cover_5491969

def root_5491963 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491963_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491963_left_fuel : Nat := 1
def small_5491963_left_count : Nat := 1
def small_5491963_left_encoded : String := "00000002"
theorem small_5491963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491963_left_root small_5491963_left_fuel small_5491963_left_count small_5491963_left_encoded = true := by
  decide +kernel
theorem small_5491963_left_covered : CoveredBy scale carrier boxes small_5491963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491963_left_root small_5491963_left_fuel small_5491963_left_count small_5491963_left_encoded small_5491963_left_checked

theorem cover_5491963 : CoveredBy scale carrier boxes root_5491963 := by
  apply coveredBy_split_literal root_5491963 small_5491963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491969 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5491963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491969
#print axioms cover_5491963

def root_5491283 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491283_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491283_left_fuel : Nat := 31
def small_5491283_left_count : Nat := 327
def small_5491283_left_encoded : String := "138670FA04548A07138670FC0C9A86F80F878CF900000001028001000000000513D7ECF700000000028001080000000513D7ECFF00000004022A45850000000513E200FA00000002022A45870000000513E200FC000000030DE7C9F80E6014F90000000100000006000000070F8750F90000000500000001000000031386ACFC000000030C9A86F80F878CF9000000010280010013D7B0F702800108000000070000000A0000000013D7ECF7000000000280010813D7B0FF022A45850000000713E200FA00000002067ECE870000000712EA94FC000000030DE7C9F80E6014F900000001000000070E5FD8F903C001000000000713A54CF700000000014001080000000700000008000000010000000413D7ECFF00000004022A45850000000A13E200FA00000002067ECE8712EA58FC0DE7C9F80000000A0E5FD8F90000000A00000001000000030000000A0F8750F90280010013D7B0F7028001080000000713D7ECFF00000004022A45850000000713E200FA00000002067ECE87000000070000000A0000000013D7ECF7000000000280010813D7B0FF022A45850000000713E200FA00000002067ECE870000000712EA94FC000000030B4D43F810804CF90000000103C001000000000713A54CF700000000014001080000000713F614FF00000004033F67C50000000713BC30FA000000020793F0C70000000700000009108010F903C001000000000713A54CF700000000014001080000000713F614FF0000000400000009000000010000000413D7ECFF00000004022A458513E1C4FA067ECE8712EA58FC00000005000000030000000A0000000213E200FA00000002067ECE8712EA58FC0B4D43F810804CF90000000103C0010013A510F703C00108000000050000000A0000000013A54CF70000000003C0010813A510FF033F67C50000000513BC30FA00000002000000070000000413A54CFF00000004033F67C50000000A13BC30FA000000020569AC471340D4FC0000000A000000030000000A108010F903C0010013A510F703C001080000000513A54CFF00000004033F67C50000000513BC30FA000000020569AC47000000050000000A0000000013A54CF70000000003C0010813A510FF033F67C50000000513BC30FA000000020569AC4700000005134110FC00000003000000070000000413A54CFF00000004033F67C50000000513BC30FA000000020569AC4700000005134110FC000000030AA6A27810EDACF9000000010000000A10ED70F9046001001383DCF704600108000000050000000A00000000138418F700000000046001081383DCFF03C9F8E500000005000000C5000000040000000A00000001000000010000000312EA94FC000000030B4D43F810804CF90000000103C001000000000A13A54CF70000000003C0010813A510FF033F67C50000000A13BC30FA000000020793F0C7128220FC0000000A000000030000000A000000040000000A108010F903C0010013A510F703C0010813A510FF033F67C50000000613BC30FA000000020793F0C70000000700000006000000040000000A0000000013A54CF70000000003C0010813A510FF033F67C513BBF4FA0793F0C700000007000000060000000213BC30FA000000020793F0C7128220FC0AA6A27810EDACF9000000010460010000000007138418F70000000003200108000000070000000A10ED70F9000000090000000100000003000000090000000413A54CFF00000004033F67C50000000A13BC30FA000000020793F0C7128220FC0000000A0000000300000006000000010000000100000002"
theorem small_5491283_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491283_left_root small_5491283_left_fuel small_5491283_left_count small_5491283_left_encoded = true := by
  decide +kernel
theorem small_5491283_left_covered : CoveredBy scale carrier boxes small_5491283_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491283_left_root small_5491283_left_fuel small_5491283_left_count small_5491283_left_encoded small_5491283_left_checked

theorem cover_5491283 : CoveredBy scale carrier boxes root_5491283 := by
  apply coveredBy_split_literal root_5491283 small_5491283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491963 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5491283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491963
#print axioms cover_5491283

def root_5491277 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491277_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491277_left_fuel : Nat := 1
def small_5491277_left_count : Nat := 1
def small_5491277_left_encoded : String := "00000001"
theorem small_5491277_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491277_left_root small_5491277_left_fuel small_5491277_left_count small_5491277_left_encoded = true := by
  decide +kernel
theorem small_5491277_left_covered : CoveredBy scale carrier boxes small_5491277_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491277_left_root small_5491277_left_fuel small_5491277_left_count small_5491277_left_encoded small_5491277_left_checked

theorem cover_5491277 : CoveredBy scale carrier boxes root_5491277 := by
  apply coveredBy_split_literal root_5491277 small_5491277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491283 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5491277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491283
#print axioms cover_5491277

def root_5491276 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491276_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491276_right_fuel : Nat := 17
def small_5491276_right_count : Nat := 55
def small_5491276_right_encoded : String := "0F34D0F804548A05138670FA04548A07000000070000000A000000021386ACFA0000000204548A07138670FC00000006000000031386ACFC000000030280010013D7B0F70280010813D7B0FF0AD3577910D13CF800000001067ECE850000000712EA94FA00000002067ECE870000000612EA94FC0000000301400100000000070000000610D100F80000000600000001000000040000000A0000000013D7ECF7000000000280010813D7B0FF000000060000000413D7ECFF000000040AD3577910D13CF800000001067ECE850000000A000000060000000600000001"
theorem small_5491276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491276_right_root small_5491276_right_fuel small_5491276_right_count small_5491276_right_encoded = true := by
  decide +kernel
theorem small_5491276_right_covered : CoveredBy scale carrier boxes small_5491276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491276_right_root small_5491276_right_fuel small_5491276_right_count small_5491276_right_encoded small_5491276_right_checked

theorem cover_5491276 : CoveredBy scale carrier boxes root_5491276 := by
  apply coveredBy_split_literal root_5491276 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491277 small_5491276_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491277
  · exact small_5491276_right_covered
#print axioms cover_5491276

def root_5491271 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491271_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491271_right_fuel : Nat := 1
def small_5491271_right_count : Nat := 1
def small_5491271_right_encoded : String := "00000004"
theorem small_5491271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491271_right_root small_5491271_right_fuel small_5491271_right_count small_5491271_right_encoded = true := by
  decide +kernel
theorem small_5491271_right_covered : CoveredBy scale carrier boxes small_5491271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491271_right_root small_5491271_right_fuel small_5491271_right_count small_5491271_right_encoded small_5491271_right_checked

theorem cover_5491271 : CoveredBy scale carrier boxes root_5491271 := by
  apply coveredBy_split_literal root_5491271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491276 small_5491271_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491276
  · exact small_5491271_right_covered
#print axioms cover_5491271

def root_5500769 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500769_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500769_left_fuel : Nat := 29
def small_5500769_left_count : Nat := 475
def small_5500769_left_encoded : String := "138670FC0C9A86F80F878CF9000000010280010013D7B0F707800108128A40FF067ECE850000000912EA94FA00000002022A45870000000913E200FC000000030DE7C9F8000000090000000900000004000000090000000013D7ECF70000000007800108128A40FF067ECE8512EA58FA022A45870000000613E200FC000000030DE7C9F800000009000000090000000212EA94FA00000002022A45870000000613E200FC000000030DE7C9F8000000060000000900000004128A7CFF00000004000000090F8750F90280010013D7B0F707800108128A40FF067ECE8512EA58FA022A458713E1C4FC000000050000000313E200FC000000030B4D43F810804CF900000001014001000000000913F614F7000000000640010812FF70FF000000090000000400000009108010F90140010013F5D8F70640010800000007000000090000000013F614F7000000000640010812FF70FF0569AC4500000005134110FA00000002033F67C70000000513BC30FC00000003000000070000000412FFACFF000000040569AC450000000900000009000000010000000212EA94FA00000002022A458713E1C4FC0B4D43F800000009108010F9014001000000000800000009000000010000000313E200FC000000030B4D43F810804CF9000000010140010013F5D8F70640010812FF70FF0000000800000004000000080000000013F614F7000000000640010812FF70FF000000090000000400000009108010F9014001000000000813F614F7000000000640010812FF70FF0000000800000004000000080000000100000004128A7CFF00000004067ECE8512EA58FA022A45870000000913E200FC000000030B4D43F800000009000000090000000212EA94FA00000002022A45870000000913E200FC000000030B4D43F800000009000000090000000013D7ECF70000000007800108128A40FF067ECE8512EA58FA022A458713E1C4FC0B4D43F810804CF90000000100000009108010F903C001000000000513A54CF70000000000000009000000010000000313E200FC000000030B4D43F810804CF90000000103C0010013A510F70640010812FF70FF0569AC45000000090000000900000004000000090000000013A54CF7000000000640010812FF70FF0569AC4500000009000000090000000400000009108010F903C0010013A510F70640010812FF70FF0569AC4500000005134110FA00000002033F67C70000000513BC30FC000000030AA6A27810EDACF9000000010000000910ED70F90320010013C108F705A0010800000007000000080000000013C144F70000000005A00108133134FF05F43D6500000005000000080000000400000009000000010000000412FFACFF000000040569AC4500000009000000090000000013A54CF7000000000640010812FF70FF0569AC451340D4FA033F67C70000000513BC30FC000000030AA6A27810EDACF90000000104600100000000090000000910ED70F90460010000000005138418F70000000005A0010800000005000000090000000100000002134110FA00000002033F67C713BBF4FC000000090000000313BC30FC000000030AA6A27810EDACF90000000104600100000000090000000910ED70F9046001001383DCF705A00108133134FF05F43D650000000900000009000000040000000900000000138418F70000000005A00108133134FF05F43D6500000009000000060000000400000009000000010000000412FFACFF000000040569AC4500000009134110FA0000000200000009000000010000000212EA94FA00000002022A458713E1C4FC0B4D43F810804CF90000000100000006108010F903C001000000000913A54CF70000000000000009000000010000000313E200FC000000030B4D43F810804CF90000000103C0010013A510F70640010812FF70FF0793F0C5000000090000000900000004000000090000000013A54CF7000000000640010812FF70FF000000060000000400000009108010F903C0010013A510F70640010812FF70FF0793F0C5128220FA033F67C70000000913BC30FC000000030AA6A27810EDACF9000000010000000910ED70F900000008000000010000000212825CFA00000002000000080000000412FFACFF000000040793F0C500000009000000080000000013A54CF7000000000640010812FF70FF0793F0C5128220FA033F67C70000000613BC30FC000000030AA6A27810EDACF9000000010000000910ED70F9046001001383DCF705A00108133134FF00000008000000040000000800000000138418F70000000005A001080000000600000009000000010000000212825CFA00000002033F67C70000000613BC30FC000000030AA6A2780000000610ED70F900000008000000010000000412FFACFF000000040793F0C500000009000000090000000100000004128A7CFF00000004067ECE8512EA58FA022A45870000000913E200FC000000030B4D43F810804CF90000000100000009108010F903C001000000000900000009000000010000000212EA94FA00000002022A45870000000913E200FC000000030B4D43F810804CF90000000100000009108010F903C001000000000900000009000000010000000100000003"
theorem small_5500769_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500769_left_root small_5500769_left_fuel small_5500769_left_count small_5500769_left_encoded = true := by
  decide +kernel
theorem small_5500769_left_covered : CoveredBy scale carrier boxes small_5500769_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500769_left_root small_5500769_left_fuel small_5500769_left_count small_5500769_left_encoded small_5500769_left_checked

theorem cover_5500769 : CoveredBy scale carrier boxes root_5500769 := by
  apply coveredBy_split_literal root_5500769 small_5500769_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2058.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5500769_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2058.covered
#print axioms cover_5500769

def root_5500763 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500763_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500763_left_fuel : Nat := 1
def small_5500763_left_count : Nat := 1
def small_5500763_left_encoded : String := "00000002"
theorem small_5500763_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500763_left_root small_5500763_left_fuel small_5500763_left_count small_5500763_left_encoded = true := by
  decide +kernel
theorem small_5500763_left_covered : CoveredBy scale carrier boxes small_5500763_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500763_left_root small_5500763_left_fuel small_5500763_left_count small_5500763_left_encoded small_5500763_left_checked

theorem cover_5500763 : CoveredBy scale carrier boxes root_5500763 := by
  apply coveredBy_split_literal root_5500763 small_5500763_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5500769 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5500763_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5500769
#print axioms cover_5500763

def root_5500495 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500495_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500495_left_fuel : Nat := 27
def small_5500495_left_count : Nat := 131
def small_5500495_left_encoded : String := "138670FA04548A07138670FC0C9A86F80F878CF900000001028001000000000A13D7ECF70000000007800108128A40FF022A45850000000913E200FA00000002022A4587000000090000000A00000004000000090F8750F90280010013D7B0F707800108128A40FF00000005000000040000000A0000000013D7ECF70000000007800108128A40FF022A45850000000513E200FA00000002022A45870000000513E200FC000000030B4D43F810804CF90000000103C001000000000A13A54CF7000000000640010812FF70FF000000050000000400000009108010F903C001000000000513A54CF700000000064001080000000512FFACFF00000004033F67C50000000513BC30FA00000002000000090000000100000004128A7CFF00000004022A45850000000A13E200FA00000002022A4587000000090000000A00000001000000031386ACFC000000030C9A86F80000000A0F8750F9028001000000000A13D7ECF70000000007800108128A40FF022A45850000000A13E200FA00000002067ECE8712EA58FC0B4D43F80000000A108010F903C001000000000A13A54CF7000000000640010812FF70FF033F67C50000000A13BC30FA000000020569AC471340D4FC0AA6A2780000000A10ED70F904600100000000050000000A00000001000000030000000A000000040000000A00000001000000030000000A000000040000000A0000000100000002"
theorem small_5500495_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500495_left_root small_5500495_left_fuel small_5500495_left_count small_5500495_left_encoded = true := by
  decide +kernel
theorem small_5500495_left_covered : CoveredBy scale carrier boxes small_5500495_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500495_left_root small_5500495_left_fuel small_5500495_left_count small_5500495_left_encoded small_5500495_left_checked

theorem cover_5500495 : CoveredBy scale carrier boxes root_5500495 := by
  apply coveredBy_split_literal root_5500495 small_5500495_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5500763 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5500495_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5500763
#print axioms cover_5500495

def root_5500489 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500489_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500489_left_fuel : Nat := 1
def small_5500489_left_count : Nat := 1
def small_5500489_left_encoded : String := "00000001"
theorem small_5500489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500489_left_root small_5500489_left_fuel small_5500489_left_count small_5500489_left_encoded = true := by
  decide +kernel
theorem small_5500489_left_covered : CoveredBy scale carrier boxes small_5500489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500489_left_root small_5500489_left_fuel small_5500489_left_count small_5500489_left_encoded small_5500489_left_checked

theorem cover_5500489 : CoveredBy scale carrier boxes root_5500489 := by
  apply coveredBy_split_literal root_5500489 small_5500489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5500495 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5500489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5500495
#print axioms cover_5500489

def root_5500488 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500488_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500488_right_fuel : Nat := 7
def small_5500488_right_count : Nat := 13
def small_5500488_right_encoded : String := "0F34D0F804548A050000000A1386ACFA0000000204548A07138670FC028001000000000900000009000000030000000A00000001"
theorem small_5500488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500488_right_root small_5500488_right_fuel small_5500488_right_count small_5500488_right_encoded = true := by
  decide +kernel
theorem small_5500488_right_covered : CoveredBy scale carrier boxes small_5500488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500488_right_root small_5500488_right_fuel small_5500488_right_count small_5500488_right_encoded small_5500488_right_checked

theorem cover_5500488 : CoveredBy scale carrier boxes root_5500488 := by
  apply coveredBy_split_literal root_5500488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5500489 small_5500488_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5500489
  · exact small_5500488_right_covered
#print axioms cover_5500488

def root_5500482 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500482_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500482_left_fuel : Nat := 1
def small_5500482_left_count : Nat := 1
def small_5500482_left_encoded : String := "00000004"
theorem small_5500482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500482_left_root small_5500482_left_fuel small_5500482_left_count small_5500482_left_encoded = true := by
  decide +kernel
theorem small_5500482_left_covered : CoveredBy scale carrier boxes small_5500482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500482_left_root small_5500482_left_fuel small_5500482_left_count small_5500482_left_encoded small_5500482_left_checked

theorem cover_5500482 : CoveredBy scale carrier boxes root_5500482 := by
  apply coveredBy_split_literal root_5500482 small_5500482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5500488 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5500482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5500488
#print axioms cover_5500482

def root_5491270 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491270 : CoveredBy scale carrier boxes root_5491270 := by
  apply coveredBy_split_literal root_5491270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5500482 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491271
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5500482
#print axioms cover_5491270

def root_5491265 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491265_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491265_right_fuel : Nat := 1
def small_5491265_right_count : Nat := 1
def small_5491265_right_encoded : String := "00000000"
theorem small_5491265_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491265_right_root small_5491265_right_fuel small_5491265_right_count small_5491265_right_encoded = true := by
  decide +kernel
theorem small_5491265_right_covered : CoveredBy scale carrier boxes small_5491265_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491265_right_root small_5491265_right_fuel small_5491265_right_count small_5491265_right_encoded small_5491265_right_checked

theorem cover_5491265 : CoveredBy scale carrier boxes root_5491265 := by
  apply coveredBy_split_literal root_5491265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491270 small_5491265_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491270
  · exact small_5491265_right_covered
#print axioms cover_5491265

def root_5503967 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5503967 : CoveredBy scale carrier boxes root_5503967 := by
  apply coveredBy_split_literal root_5503967 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2059.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2060.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2059.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2060.covered
#print axioms cover_5503967

def root_5503961 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503961_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503961_left_fuel : Nat := 1
def small_5503961_left_count : Nat := 1
def small_5503961_left_encoded : String := "00000001"
theorem small_5503961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503961_left_root small_5503961_left_fuel small_5503961_left_count small_5503961_left_encoded = true := by
  decide +kernel
theorem small_5503961_left_covered : CoveredBy scale carrier boxes small_5503961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503961_left_root small_5503961_left_fuel small_5503961_left_count small_5503961_left_encoded small_5503961_left_checked

theorem cover_5503961 : CoveredBy scale carrier boxes root_5503961 := by
  apply coveredBy_split_literal root_5503961 small_5503961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5503967 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5503961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5503967
#print axioms cover_5503961

def root_5503960 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503960_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503960_right_fuel : Nat := 8
def small_5503960_right_count : Nat := 15
def small_5503960_right_encoded : String := "0F34D0F804548A05138670FA04548A07000000061386ACFC0000000307800100128A40F7000000080000000000000006000000020000000600000001"
theorem small_5503960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503960_right_root small_5503960_right_fuel small_5503960_right_count small_5503960_right_encoded = true := by
  decide +kernel
theorem small_5503960_right_covered : CoveredBy scale carrier boxes small_5503960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503960_right_root small_5503960_right_fuel small_5503960_right_count small_5503960_right_encoded small_5503960_right_checked

theorem cover_5503960 : CoveredBy scale carrier boxes root_5503960 := by
  apply coveredBy_split_literal root_5503960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5503961 small_5503960_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5503961
  · exact small_5503960_right_covered
#print axioms cover_5503960

def root_5503955 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503955_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503955_right_fuel : Nat := 1
def small_5503955_right_count : Nat := 1
def small_5503955_right_encoded : String := "00000004"
theorem small_5503955_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503955_right_root small_5503955_right_fuel small_5503955_right_count small_5503955_right_encoded = true := by
  decide +kernel
theorem small_5503955_right_covered : CoveredBy scale carrier boxes small_5503955_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503955_right_root small_5503955_right_fuel small_5503955_right_count small_5503955_right_encoded small_5503955_right_checked

theorem cover_5503955 : CoveredBy scale carrier boxes root_5503955 := by
  apply coveredBy_split_literal root_5503955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5503960 small_5503955_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5503960
  · exact small_5503955_right_covered
#print axioms cover_5503955

def root_5503954 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5503954 : CoveredBy scale carrier boxes root_5503954 := by
  apply coveredBy_split_literal root_5503954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5503955 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2061.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5503955
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2061.covered
#print axioms cover_5503954

def root_5503948 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503948_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503948_left_fuel : Nat := 1
def small_5503948_left_count : Nat := 1
def small_5503948_left_encoded : String := "00000000"
theorem small_5503948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503948_left_root small_5503948_left_fuel small_5503948_left_count small_5503948_left_encoded = true := by
  decide +kernel
theorem small_5503948_left_covered : CoveredBy scale carrier boxes small_5503948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503948_left_root small_5503948_left_fuel small_5503948_left_count small_5503948_left_encoded small_5503948_left_checked

theorem cover_5503948 : CoveredBy scale carrier boxes root_5503948 := by
  apply coveredBy_split_literal root_5503948 small_5503948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5503954 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5503948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5503954
#print axioms cover_5503948

def root_5491264 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491264 : CoveredBy scale carrier boxes root_5491264 := by
  apply coveredBy_split_literal root_5491264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5503948 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491265
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5503948
#print axioms cover_5491264

def root_5491259 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491259_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491259_right_fuel : Nat := 1
def small_5491259_right_count : Nat := 1
def small_5491259_right_encoded : String := "00000003"
theorem small_5491259_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491259_right_root small_5491259_right_fuel small_5491259_right_count small_5491259_right_encoded = true := by
  decide +kernel
theorem small_5491259_right_covered : CoveredBy scale carrier boxes small_5491259_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491259_right_root small_5491259_right_fuel small_5491259_right_count small_5491259_right_encoded small_5491259_right_checked

theorem cover_5491259 : CoveredBy scale carrier boxes root_5491259 := by
  apply coveredBy_split_literal root_5491259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491264 small_5491259_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491264
  · exact small_5491259_right_covered
#print axioms cover_5491259

def root_5491258 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491258 : CoveredBy scale carrier boxes root_5491258 := by
  apply coveredBy_split_literal root_5491258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2062.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491259
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2062.covered
#print axioms cover_5491258

def root_5491253 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491253_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491253_right_fuel : Nat := 1
def small_5491253_right_count : Nat := 1
def small_5491253_right_encoded : String := "00000002"
theorem small_5491253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491253_right_root small_5491253_right_fuel small_5491253_right_count small_5491253_right_encoded = true := by
  decide +kernel
theorem small_5491253_right_covered : CoveredBy scale carrier boxes small_5491253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491253_right_root small_5491253_right_fuel small_5491253_right_count small_5491253_right_encoded small_5491253_right_checked

theorem cover_5491253 : CoveredBy scale carrier boxes root_5491253 := by
  apply coveredBy_split_literal root_5491253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491258 small_5491253_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491258
  · exact small_5491253_right_covered
#print axioms cover_5491253

def root_5491252 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491252 : CoveredBy scale carrier boxes root_5491252 := by
  apply coveredBy_split_literal root_5491252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2063.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491253
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2063.covered
#print axioms cover_5491252

def root_5491246 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491246_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491246_left_fuel : Nat := 1
def small_5491246_left_count : Nat := 1
def small_5491246_left_encoded : String := "00000001"
theorem small_5491246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491246_left_root small_5491246_left_fuel small_5491246_left_count small_5491246_left_encoded = true := by
  decide +kernel
theorem small_5491246_left_covered : CoveredBy scale carrier boxes small_5491246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491246_left_root small_5491246_left_fuel small_5491246_left_count small_5491246_left_encoded small_5491246_left_checked

theorem cover_5491246 : CoveredBy scale carrier boxes root_5491246 := by
  apply coveredBy_split_literal root_5491246 small_5491246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491252 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5491246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491252
#print axioms cover_5491246

def root_5491245 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491245_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491245_right_fuel : Nat := 13
def small_5491245_right_count : Nat := 79
def small_5491245_right_encoded : String := "120700F808A91305120700FA08A91307120700FC05000100135D44F705000108135D44FF045489F91386ACF80000000104548A050000000A0000000600000006000000040000000A00000000135D80F7000000000500010800000006135D80FF00000004045489F91386ACF80000000104548A050000000800000006000000060000000312073CFC0000000305000100135D44F70000000A00000000135D80F70000000005000108135D44FF045489F91386ACF80000000104548A050000000A000000050000000500000004000000050000000212073CFA0000000208A91307120700FC05000100135D44F705000108135D44FF0000000600000004135D80FF00000004045489F91386ACF8000000010CFD9C0500000009000000050000000500000000000000060000000312073CFC000000030000000500000001"
theorem small_5491245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491245_right_root small_5491245_right_fuel small_5491245_right_count small_5491245_right_encoded = true := by
  decide +kernel
theorem small_5491245_right_covered : CoveredBy scale carrier boxes small_5491245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491245_right_root small_5491245_right_fuel small_5491245_right_count small_5491245_right_encoded small_5491245_right_checked

theorem cover_5491245 : CoveredBy scale carrier boxes root_5491245 := by
  apply coveredBy_split_literal root_5491245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491246 small_5491245_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491246
  · exact small_5491245_right_covered
#print axioms cover_5491245

def root_5491240 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491240_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491240_right_fuel : Nat := 1
def small_5491240_right_count : Nat := 1
def small_5491240_right_encoded : String := "00000004"
theorem small_5491240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491240_right_root small_5491240_right_fuel small_5491240_right_count small_5491240_right_encoded = true := by
  decide +kernel
theorem small_5491240_right_covered : CoveredBy scale carrier boxes small_5491240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491240_right_root small_5491240_right_fuel small_5491240_right_count small_5491240_right_encoded small_5491240_right_checked

theorem cover_5491240 : CoveredBy scale carrier boxes root_5491240 := by
  apply coveredBy_split_literal root_5491240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491245 small_5491240_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491245
  · exact small_5491240_right_covered
#print axioms cover_5491240

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136

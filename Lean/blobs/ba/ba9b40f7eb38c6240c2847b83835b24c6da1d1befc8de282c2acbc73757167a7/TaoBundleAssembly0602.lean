import TaoBundleAssembly0601
import TaoBundleChunkBatch0824
import TaoBundleChunkBatch0825
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602
def root_8795335 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795335_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795335_left_fuel : Nat := 25
def small_8795335_left_count : Nat := 245
def small_8795335_left_encoded : String := "120701000000000008A91303120700F808A912FB0000000A12070104000000020000000A0000000112073CF80000000108A912FB12073D0405000106135D44FD050000FE135D810904548A010000000A1386AD000CFD9C030000000A0F350CF8000000010CFD9BFB000000090F34D104000000020000000A0000000000000004135D45090000000404548A010000000A1386AD000CFD9C030000000A0F350CF8000000010CFD9BFB0000000A0F34D104000000020000000A0000000000000003135D80FD00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D10400000002000000091386AD000CFD9C030F34D0F80000000800000001000000080000000000000004135D45090000000404548A0113867100000000000CFD9C030000000A0F350CF8000000010CFD9BFB000000080F34D104000000020000000A1386AD000CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9BFB000000080F34D104000000020C9A86F80000000A000000060000000000000002120701040000000205000106135D44FD0000000A00000003135D80FD00000003050000FE135D810904548A0113867100000000000CFD9C030000000A0F350CF800000001045489FB0000000A13867104000000020C9A86F80000000A0F87510300000001078001060000000A128A7CFD00000003078000FE128A7D09022A4581000000070000000700000004000000071386AD000CFD9C030F34D0F80000000A000000010F350CF800000001045489FB1386AD040C9A86F80F878D030000000A000000010F8751030000000107800106128A40FD0000000A00000003128A7CFD00000003078000FE00000008128A410900000004000000080000000213867104000000020C9A86F80F878D03078001060000000A128A7CFD0000000300000007000000010F8751030000000107800106128A40FD078000FE128A7D09067ECE810000000A12EA9500022A457B0000000A000000070000000000000004128A4109000000040000000A00000003128A7CFD00000003078000FE128A7D09067ECE8112EA590000000000022A457B000000080000000712EA9500022A457B00000008000000070000000000000004128A410900000004067ECE8100000007000000070000000000000004135D45090000000404548A0113867100000000000000000A1386AD000CFD9C030F34D0F800000007000000010F350CF800000001045489FB1386AD040C9A86F80000000A0F87510300000001078001060000000A000000060000000213867104000000020000000700000000"
theorem small_8795335_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8795335_left_root small_8795335_left_fuel small_8795335_left_count small_8795335_left_encoded = true := by
  decide +kernel
theorem small_8795335_left_covered : CoveredBy scale carrier boxes small_8795335_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8795335_left_root small_8795335_left_fuel small_8795335_left_count small_8795335_left_encoded small_8795335_left_checked

theorem cover_8795335 : CoveredBy scale carrier boxes root_8795335 := by
  apply coveredBy_split_literal root_8795335 small_8795335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0601.root_8795861 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8795335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0601.cover_8795861
#print axioms cover_8795335

def root_8795329 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795329_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795329_left_fuel : Nat := 1
def small_8795329_left_count : Nat := 1
def small_8795329_left_encoded : String := "00000004"
theorem small_8795329_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8795329_left_root small_8795329_left_fuel small_8795329_left_count small_8795329_left_encoded = true := by
  decide +kernel
theorem small_8795329_left_covered : CoveredBy scale carrier boxes small_8795329_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8795329_left_root small_8795329_left_fuel small_8795329_left_count small_8795329_left_encoded small_8795329_left_checked

theorem cover_8795329 : CoveredBy scale carrier boxes root_8795329 := by
  apply coveredBy_split_literal root_8795329 small_8795329_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8795335 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8795329_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8795335
#print axioms cover_8795329

def root_8791829 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8791829 : CoveredBy scale carrier boxes root_8791829 := by
  apply coveredBy_split_literal root_8791829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0601.root_8791830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8795329 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0601.cover_8791830
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8795329
#print axioms cover_8791829

def root_8791824 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791824_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791824_right_fuel : Nat := 1
def small_8791824_right_count : Nat := 1
def small_8791824_right_encoded : String := "00000003"
theorem small_8791824_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791824_right_root small_8791824_right_fuel small_8791824_right_count small_8791824_right_encoded = true := by
  decide +kernel
theorem small_8791824_right_covered : CoveredBy scale carrier boxes small_8791824_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791824_right_root small_8791824_right_fuel small_8791824_right_count small_8791824_right_encoded small_8791824_right_checked

theorem cover_8791824 : CoveredBy scale carrier boxes root_8791824 := by
  apply coveredBy_split_literal root_8791824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8791829 small_8791824_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8791829
  · exact small_8791824_right_covered
#print axioms cover_8791824

def root_8791823 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8791823 : CoveredBy scale carrier boxes root_8791823 := by
  apply coveredBy_split_literal root_8791823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8791824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3294.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8791824
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3294.covered
#print axioms cover_8791823

def root_8791817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791817_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791817_left_fuel : Nat := 1
def small_8791817_left_count : Nat := 1
def small_8791817_left_encoded : String := "00000002"
theorem small_8791817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791817_left_root small_8791817_left_fuel small_8791817_left_count small_8791817_left_encoded = true := by
  decide +kernel
theorem small_8791817_left_covered : CoveredBy scale carrier boxes small_8791817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791817_left_root small_8791817_left_fuel small_8791817_left_count small_8791817_left_encoded small_8791817_left_checked

theorem cover_8791817 : CoveredBy scale carrier boxes root_8791817 := by
  apply coveredBy_split_literal root_8791817 small_8791817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8791823 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8791817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8791823
#print axioms cover_8791817

def root_8791601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791601_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791601_left_fuel : Nat := 18
def small_8791601_left_count : Nat := 99
def small_8791601_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A91301120701000000000008A91303120700F808A913090000000900000005000000010000000912073D0008A91303120700F800000005000000010000000500000000000000041151E9090000000408A91301120701000000000008A91303120700F8000000050000000112073CF8000000010500010400000005135D80FB000000020500010600000005135D80FD000000030000000812073D0008A91303120700F8000000050000000112073CF8000000010500010400000005135D80FB000000020500010600000005135D80FD00000003050000FE00000005135D4509000000040CFD9C010F34D1000000000000000008000000080000000000000003115224FD000000030A0000FE1152250908A9130112070100000000000000000812073D0008A91303120700F800000008000000010000000800000000000000041151E9090000000408A9130112070100000000000000000812073D0008A91303120700F80000000800000001000000080000000000000002"
theorem small_8791601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791601_left_root small_8791601_left_fuel small_8791601_left_count small_8791601_left_encoded = true := by
  decide +kernel
theorem small_8791601_left_covered : CoveredBy scale carrier boxes small_8791601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791601_left_root small_8791601_left_fuel small_8791601_left_count small_8791601_left_encoded small_8791601_left_checked

theorem cover_8791601 : CoveredBy scale carrier boxes root_8791601 := by
  apply coveredBy_split_literal root_8791601 small_8791601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8791817 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8791601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8791817
#print axioms cover_8791601

def root_8791596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791596_right_fuel : Nat := 1
def small_8791596_right_count : Nat := 1
def small_8791596_right_encoded : String := "00000001"
theorem small_8791596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791596_right_root small_8791596_right_fuel small_8791596_right_count small_8791596_right_encoded = true := by
  decide +kernel
theorem small_8791596_right_covered : CoveredBy scale carrier boxes small_8791596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791596_right_root small_8791596_right_fuel small_8791596_right_count small_8791596_right_encoded small_8791596_right_checked

theorem cover_8791596 : CoveredBy scale carrier boxes root_8791596 := by
  apply coveredBy_split_literal root_8791596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8791601 small_8791596_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8791601
  · exact small_8791596_right_covered
#print axioms cover_8791596

def root_8804972 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804972_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804972_left_fuel : Nat := 18
def small_8804972_left_count : Nat := 105
def small_8804972_left_encoded : String := "12073D0408A91309120700FE050000F800000005135D4503000000010500010600000005000000090000000412073CFE00000004050000F8135D810305000106135D44FD0CFD9C010F34D100000000000CFD9BFB00000009000000090F350D000CFD9BFB000000050F34D104000000020CFD9C09000000050F350CFE000000040C9A8700000000050F878D010C9A86FE000000050F8751090000000400000007000000000000000000000003135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350D040CFD9C090000000900000007000000020F34D104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F87510100000000000000070F878D0100000009000000000000000000000001135D45030000000105000106135D44FD0CFD9C010F34D10000000000000000090F350D000CFD9BFB000000070F34D10400000002000000070000000000000003135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9BFB000000070F34D104000000020CFD9C0900000007000000070000000000000002"
theorem small_8804972_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804972_left_root small_8804972_left_fuel small_8804972_left_count small_8804972_left_encoded = true := by
  decide +kernel
theorem small_8804972_left_covered : CoveredBy scale carrier boxes small_8804972_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804972_left_root small_8804972_left_fuel small_8804972_left_count small_8804972_left_encoded small_8804972_left_checked

theorem cover_8804972 : CoveredBy scale carrier boxes root_8804972 := by
  apply coveredBy_split_literal root_8804972 small_8804972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3295.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8804972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3295.covered
#print axioms cover_8804972

def root_8804967 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804967_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804967_right_fuel : Nat := 1
def small_8804967_right_count : Nat := 1
def small_8804967_right_encoded : String := "00000000"
theorem small_8804967_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804967_right_root small_8804967_right_fuel small_8804967_right_count small_8804967_right_encoded = true := by
  decide +kernel
theorem small_8804967_right_covered : CoveredBy scale carrier boxes small_8804967_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804967_right_root small_8804967_right_fuel small_8804967_right_count small_8804967_right_encoded small_8804967_right_checked

theorem cover_8804967 : CoveredBy scale carrier boxes root_8804967 := by
  apply coveredBy_split_literal root_8804967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8804972 small_8804967_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8804972
  · exact small_8804967_right_covered
#print axioms cover_8804967

def root_8804889 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804889_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804889_left_fuel : Nat := 14
def small_8804889_left_count : Nat := 37
def small_8804889_left_encoded : String := "120701000000000008A912FB12073D0408A91309000000090000000900000002120701040000000208A913090000000912073CFE00000004050000F8135D810305000106135D44FD04548A01000000090000000900000003135D80FD0000000304548A011386710000000000000000091386AD00045489FB00000009138671040000000200000009000000000000000100000009"
theorem small_8804889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804889_left_root small_8804889_left_fuel small_8804889_left_count small_8804889_left_encoded = true := by
  decide +kernel
theorem small_8804889_left_covered : CoveredBy scale carrier boxes small_8804889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804889_left_root small_8804889_left_fuel small_8804889_left_count small_8804889_left_encoded small_8804889_left_checked

theorem cover_8804889 : CoveredBy scale carrier boxes root_8804889 := by
  apply coveredBy_split_literal root_8804889 small_8804889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8804967 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8804889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8804967
#print axioms cover_8804889

def root_8804884 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804884_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804884_right_fuel : Nat := 1
def small_8804884_right_count : Nat := 1
def small_8804884_right_encoded : String := "00000004"
theorem small_8804884_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804884_right_root small_8804884_right_fuel small_8804884_right_count small_8804884_right_encoded = true := by
  decide +kernel
theorem small_8804884_right_covered : CoveredBy scale carrier boxes small_8804884_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804884_right_root small_8804884_right_fuel small_8804884_right_count small_8804884_right_encoded small_8804884_right_checked

theorem cover_8804884 : CoveredBy scale carrier boxes root_8804884 := by
  apply coveredBy_split_literal root_8804884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8804889 small_8804884_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8804889
  · exact small_8804884_right_covered
#print axioms cover_8804884

def root_8813140 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813140_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813140_left_fuel : Nat := 20
def small_8813140_left_count : Nat := 197
def small_8813140_left_encoded : String := "13E201040DE7CA000E5FD9010000000008C000F811FC250303C0010613A510FD08C000FE000000070000000600000003000000060000000111FBE9030000000103C0010600000007000000060E60150108C000F811FC250303C0010613A510FD08C000FE11FC2509033F67BB13BC31040DAED8810E9625000000000000000009000000070000000213BBF504000000020DAED8810E96250000000000096000F811AABD03032001060000000513C144FD00000003096000FE0000000511AA8109000000040000000A00000001000000090E966100096000F811AABD03032001060000000513C144FD00000003096000FE0000000511AA810900000004000000060000000100000007000000000000000411FBE90900000004033F67BB0000000613BBF504000000020DAED8810E96250000000000096000F811AABD030000000A0000000111AA8103000000010320010613C108FD0000000A00000003000000060E96610000000006000000000000000313A54CFD0000000308C000FE11FC2509033F67BB13BC31040DAED8810E96250000000000000000090E96610000000006000000000000000213BBF504000000020DAED8810E96250000000000096000F811AABD03046001061383DCFD096000FE0000000911AA8109000000040000000600000003138418FD00000003096000FE000000090000000600000001000000090E966100096000F811AABD03000000060000000100000007000000000000000411FBE90900000004000000060000000111FBE9030000000103C0010613A510FD08C000FE11FC2509033F67BB0000000713BBF50400000002000000070000000411FBE90900000004033F67BB0000000613BBF504000000020DAED8810E96250000000000082000F8124699030320010613C108FD082000FE0000000712465D0900000004000000060000000313C144FD000000030000000600000001000000070E96610000000007000000000000000313A54CFD0000000308C000FE11FC2509033F67BB0000000713BBF504000000020DAED88100000007000000070000000411FBE90900000004000000060000000000000002"
theorem small_8813140_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813140_left_root small_8813140_left_fuel small_8813140_left_count small_8813140_left_encoded = true := by
  decide +kernel
theorem small_8813140_left_covered : CoveredBy scale carrier boxes small_8813140_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813140_left_root small_8813140_left_fuel small_8813140_left_count small_8813140_left_encoded small_8813140_left_checked

theorem cover_8813140 : CoveredBy scale carrier boxes root_8813140 := by
  apply coveredBy_split_literal root_8813140 small_8813140_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3297.root coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_8813140_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3297.covered
#print axioms cover_8813140

def root_8813135 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813135_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813135_right_fuel : Nat := 1
def small_8813135_right_count : Nat := 1
def small_8813135_right_encoded : String := "00000004"
theorem small_8813135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813135_right_root small_8813135_right_fuel small_8813135_right_count small_8813135_right_encoded = true := by
  decide +kernel
theorem small_8813135_right_covered : CoveredBy scale carrier boxes small_8813135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813135_right_root small_8813135_right_fuel small_8813135_right_count small_8813135_right_encoded small_8813135_right_checked

theorem cover_8813135 : CoveredBy scale carrier boxes root_8813135 := by
  apply coveredBy_split_literal root_8813135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8813140 small_8813135_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8813140
  · exact small_8813135_right_covered
#print axioms cover_8813135

def root_8813134 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813134_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813134_right_fuel : Nat := 18
def small_8813134_right_count : Nat := 75
def small_8813134_right_encoded : String := "128A410900000004022A457B13E201040DE7CA00000000060E60150108C000F811FC2503000000060000000100000006000000000000000213E1C504000000020DE7CA000E5FD9010000000008C000F80000000911FBE9030000000103C0010600000008000000050E60150108C000F811FC250303C0010613A510FD064000FE12FFAD090115233B13F895040DAED8810E96250000000000096000F811AABD030000000A00000001000000080E9661000000000600000000000000020000000800000004000000080000000313A54CFD00000003064000FE12FFAD090115233B0000000613F85904000000020000000500000004000000050000000111FBE9030000000103C0010613A510FD064000FE12FFAD09000000080000000400000005000000030000000500000000"
theorem small_8813134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813134_right_root small_8813134_right_fuel small_8813134_right_count small_8813134_right_encoded = true := by
  decide +kernel
theorem small_8813134_right_covered : CoveredBy scale carrier boxes small_8813134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813134_right_root small_8813134_right_fuel small_8813134_right_count small_8813134_right_encoded small_8813134_right_checked

theorem cover_8813134 : CoveredBy scale carrier boxes root_8813134 := by
  apply coveredBy_split_literal root_8813134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8813135 small_8813134_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8813135
  · exact small_8813134_right_covered
#print axioms cover_8813134

def root_8813128 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813128_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813128_left_fuel : Nat := 1
def small_8813128_left_count : Nat := 1
def small_8813128_left_encoded : String := "00000003"
theorem small_8813128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813128_left_root small_8813128_left_fuel small_8813128_left_count small_8813128_left_encoded = true := by
  decide +kernel
theorem small_8813128_left_covered : CoveredBy scale carrier boxes small_8813128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813128_left_root small_8813128_left_fuel small_8813128_left_count small_8813128_left_encoded small_8813128_left_checked

theorem cover_8813128 : CoveredBy scale carrier boxes root_8813128 := by
  apply coveredBy_split_literal root_8813128 small_8813128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8813134 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_8813128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8813134
#print axioms cover_8813128

def root_8812342 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812342_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812342_left_fuel : Nat := 23
def small_8812342_left_count : Nat := 373
def small_8812342_left_encoded : String := "13D7B0FD078000FE128A7D09022A457B13E201040DE7CA000E5FD9010000000008C000F811FC25030140010613F5D8FD08C000FE0000000511FBE90900000004000000070000000313F614FD0000000308C000FE0000000711FBE90900000004033F67BB0000000613BBF504000000020D412880000000060EFA4D0100000007000000000000000111FBE90300000001000000070E60150108C000F811FC25030140010613F5D8FD08C000FE0000000511FBE909000000040000000A0000000313F614FD0000000308C000FE11FC2509033F67BB0000000513BBF504000000020DAED881000000050E96610000000005000000000000000411FBE90900000004033F67BB13BC31040DAED8810E962500000000000000000A0E96610000000006000000000000000213BBF504000000020DAED8810E962500000000000000000A0E966100096000F80000000A11AA81030000000101E001060000000700000007000000000000000111FBE903000000010140010613F5D8FD08C000FE0000000711FBE90900000004033F67BB00000007000000080000000313F614FD0000000308C000FE11FC2509000000070000000411FBE90900000004033F67BB0000000713BBF504000000020DAED8810E96250000000000082000F81246990301E001060000000813E994FD00000003082000FE000000070000000800000001000000070E9661000000000700000000000000000000000213E1C504000000020DE7CA000E5FD9010000000008C000F811FC25030140010613F5D8FD08C000FE11FC25090115233B000000050000000800000004000000080000000313F614FD0000000308C000FE11FC25090115233B13F895040D412880000000050EFA4D01096000F80000000500000007000000000000000213F85904000000020D412880000000080EFA4D0100000008000000000000000411FBE909000000040115233B13F895040D412880000000080EFA4D01000000080000000000000002000000080000000111FBE90300000001014001060000000813F614FD0000000308C000FE11FC25090115233B000000070000000800000004000000080E60150108C000F811FC25030140010613F5D8FD08C000FE11FC25090115233B000000050000000800000004000000080000000313F614FD0000000308C000FE11FC25090115233B13F895040DAED8810E96250000000000096000F80000000511AA81030000000101E00106000000050000000A0E966100096000F80000000511AA81030000000101E001060000000513E994FD00000003096000FE0000000500000008000000000000000213F85904000000020DAED8810E96250000000000096000F80000000A000000080E966100096000F811AABD03000000080000000100000008000000000000000411FBE909000000040115233B13F895040DAED8810E962500000000000000000A0E966100096000F811AABD030000000A00000001000000080000000000000002000000080000000111FBE90300000001014001060000000813F614FD0000000308C000FE11FC25090115233B13F895040DAED8810E96250000000000082000F81246990301E001060000000813E994FD00000003096000FE000000070000000800000001000000080E9661000000000700000000000000020000000800000004000000080000000000000004128A410900000004022A457B13E201040DE7CA000E5FD9010000000008C000F811FC25030000000600000001000000060E60150108C000F811FC2503014001060000000A13F614FD00000003064000FE12FFAD09033F67BB0000000613BBF504000000020DAED8810000000A0E966100000000060000000000000004000000060000000111FBE903000000010140010613F5D8FD064000FE12FFAD090000000800000004000000080000000313F614FD00000003064000FE12FFAD09033F67BB00000006000000080000000400000006000000000000000213E1C504000000020DE7CA00000000080E60150108C000F811FC25030000000800000001000000080000000000000003"
theorem small_8812342_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812342_left_root small_8812342_left_fuel small_8812342_left_count small_8812342_left_encoded = true := by
  decide +kernel
theorem small_8812342_left_covered : CoveredBy scale carrier boxes small_8812342_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812342_left_root small_8812342_left_fuel small_8812342_left_count small_8812342_left_encoded small_8812342_left_checked

theorem cover_8812342 : CoveredBy scale carrier boxes root_8812342 := by
  apply coveredBy_split_literal root_8812342 small_8812342_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8813128 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8812342_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8813128
#print axioms cover_8812342

def root_8812337 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812337_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812337_right_fuel : Nat := 1
def small_8812337_right_count : Nat := 1
def small_8812337_right_encoded : String := "00000001"
theorem small_8812337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812337_right_root small_8812337_right_fuel small_8812337_right_count small_8812337_right_encoded = true := by
  decide +kernel
theorem small_8812337_right_covered : CoveredBy scale carrier boxes small_8812337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812337_right_root small_8812337_right_fuel small_8812337_right_count small_8812337_right_encoded small_8812337_right_checked

theorem cover_8812337 : CoveredBy scale carrier boxes root_8812337 := by
  apply coveredBy_split_literal root_8812337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8812342 small_8812337_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8812342
  · exact small_8812337_right_covered
#print axioms cover_8812337

def root_8812336 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812336_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812336_right_fuel : Nat := 18
def small_8812336_right_count : Nat := 165
def small_8812336_right_encoded : String := "128A4103000000010280010613D7B0FD078000FE128A7D09022A457B13E201040DE7CA00000000070E601501064000F812FFAD030140010600000007000000070000000100000007000000000000000213E1C504000000020DE7CA00000000080E601501064000F812FFAD0301400106000000080000000800000001000000080000000000000004128A410900000004022A457B13E201040DE7CA000E5FD90100000000000000070E601501064000F812FFAD03014001060000000813F614FD00000003064000FE12FFAD09033F67BB0000000600000008000000040000000600000001000000080000000000000002000000080000000313D7ECFD00000003078000FE128A7D09022A457B13E201040DE7CA00000000070E601501064000F812FFAD0303C0010613A510FD000000070000000313A54CFD0000000308C000FE0000000711FBE90900000004000000070000000100000007000000000000000213E1C504000000020DE7CA000E5FD90100000000064000F812FFAD0303C0010613A510FD08C000FE00000007000000080000000313A54CFD0000000308C000FE000000070000000500000001000000070E601501064000F812FFAD0303C0010613A510FD08C000FE11FC25090115233B000000070000000800000004000000080000000313A54CFD0000000308C000FE11FC25090115233B0000000713F85904000000020000000500000004000000050000000112FF71030000000103C0010613A510FD08C000FE000000070000000500000003000000050000000000000004128A410900000004022A457B13E201040DE7CA00000000060E601501064000F812FFAD03000000060000000100000005000000000000000213E1C504000000020DE7CA000E5FD901000000000000000500000005"
theorem small_8812336_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812336_right_root small_8812336_right_fuel small_8812336_right_count small_8812336_right_encoded = true := by
  decide +kernel
theorem small_8812336_right_covered : CoveredBy scale carrier boxes small_8812336_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812336_right_root small_8812336_right_fuel small_8812336_right_count small_8812336_right_encoded small_8812336_right_checked

theorem cover_8812336 : CoveredBy scale carrier boxes root_8812336 := by
  apply coveredBy_split_literal root_8812336 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8812337 small_8812336_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8812337
  · exact small_8812336_right_covered
#print axioms cover_8812336

def root_8812331 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812331_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812331_right_fuel : Nat := 1
def small_8812331_right_count : Nat := 1
def small_8812331_right_encoded : String := "00000000"
theorem small_8812331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812331_right_root small_8812331_right_fuel small_8812331_right_count small_8812331_right_encoded = true := by
  decide +kernel
theorem small_8812331_right_covered : CoveredBy scale carrier boxes small_8812331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812331_right_root small_8812331_right_fuel small_8812331_right_count small_8812331_right_encoded small_8812331_right_checked

theorem cover_8812331 : CoveredBy scale carrier boxes root_8812331 := by
  apply coveredBy_split_literal root_8812331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8812336 small_8812331_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8812336
  · exact small_8812331_right_covered
#print axioms cover_8812331

def root_8812133 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812133_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812133_left_fuel : Nat := 19
def small_8812133_left_count : Nat := 93
def small_8812133_left_encoded : String := "0F87510100000000078000F8128A7D030280010613D7B0FD078000FE128A7D09022A457B0000000713E1C504000000020B4D44000000000910804D0108C000F80000000911FBE903000000010140010600000007000000070000000000000004128A410900000004000000090000000313D7ECFD00000003078000FE128A7D09022A457B0000000613E1C504000000020B4D440010801101000000000000000910804D0108C000F811FC250303C0010613A510FD08C000FE11FC25090000000700000004000000090000000313A54CFD0000000308C000FE11FC25090115233B000000060000000900000004000000060000000111FBE9030000000103C0010613A510FD0000000700000003000000070000000000000004128A4109000000040000000600000001128A4103000000010280010613D7B0FD078000FE00000007128A410900000004022A457B00000006000000080000000313D7ECFD00000003078000FE00000007128A41090000000400000006"
theorem small_8812133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812133_left_root small_8812133_left_fuel small_8812133_left_count small_8812133_left_encoded = true := by
  decide +kernel
theorem small_8812133_left_covered : CoveredBy scale carrier boxes small_8812133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812133_left_root small_8812133_left_fuel small_8812133_left_count small_8812133_left_encoded small_8812133_left_checked

theorem cover_8812133 : CoveredBy scale carrier boxes root_8812133 := by
  apply coveredBy_split_literal root_8812133 small_8812133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8812331 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8812133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8812331
#print axioms cover_8812133

def root_8812127 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812127_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812127_left_fuel : Nat := 1
def small_8812127_left_count : Nat := 1
def small_8812127_left_encoded : String := "00000002"
theorem small_8812127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812127_left_root small_8812127_left_fuel small_8812127_left_count small_8812127_left_encoded = true := by
  decide +kernel
theorem small_8812127_left_covered : CoveredBy scale carrier boxes small_8812127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812127_left_root small_8812127_left_fuel small_8812127_left_count small_8812127_left_encoded small_8812127_left_checked

theorem cover_8812127 : CoveredBy scale carrier boxes root_8812127 := by
  apply coveredBy_split_literal root_8812127 small_8812127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.root_8812133 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8812127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602.cover_8812133
#print axioms cover_8812127

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0602

import TaoBundleAssembly0607
import TaoBundleChunkBatch0827
import TaoBundleChunkBatch0830
import TaoBundleChunkBatch0831
import TaoBundleChunkBatch0832
import TaoBundleChunkBatch0833
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608
def root_8840347 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8840347_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8840347_left_fuel : Nat := 23
def small_8840347_left_count : Nat := 191
def small_8840347_left_encoded : String := "120701000000000008A91303120700F808A913090000000712073D0805000104135D44FB05000106135D44FD04548A01000000071386AD000000000A00000000000000030000000700000002135D80FB0000000200000007000000040000000112073CF80000000108A9130912070108000000040000000712073D0805000104135D44FB05000106135D44FD04548A0113867100000000000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C09000000070000000A1386AD000CFD9C030F34D0F80CFD9C09000000070000000A000000010F350CF8000000010CFD9C090F34D10800000004000000070F350D080C9A86F80F878D030000000A000000010F875103000000010C9A8708000000090F878D0902800104000000090000000A00000004000000040000000000000003135D80FD0000000304548A0113867100000000000CFD9C03000000070F350CF8000000010CFD9C0900000007000000071386AD000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C090F34D10800000004000000070F350D080C9A86F80F878D03000000090000000100000009000000040000000000000002135D80FB0000000205000106135D44FD04548A0113867100000000000CFD9C03000000070F350CF8000000010CFD9C0900000007000000071386AD000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C090F34D10800000004000000070F350D080C9A86F80000000A0F875103000000010C9A87080F875109000000040000000A0F878D0907800104000000070000000700000004000000040000000000000003135D80FD0000000304548A011386710000000000000000071386AD000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C090F34D10800000004000000070F350D080C9A86F80F878D0300000007000000010F875103000000010C9A87080F875109000000040780010400000009128A7CFB000000020780010600000007000000050F878D090000000700000004000000040000000000000004"
theorem small_8840347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8840347_left_root small_8840347_left_fuel small_8840347_left_count small_8840347_left_encoded = true := by
  decide +kernel
theorem small_8840347_left_covered : CoveredBy scale carrier boxes small_8840347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8840347_left_root small_8840347_left_fuel small_8840347_left_count small_8840347_left_encoded small_8840347_left_checked

theorem cover_8840347 : CoveredBy scale carrier boxes root_8840347 := by
  apply coveredBy_split_literal root_8840347 small_8840347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0607.root_8840763 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8840347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0607.cover_8840763
#print axioms cover_8840347

def root_8840342 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8840342_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8840342_right_fuel : Nat := 1
def small_8840342_right_count : Nat := 1
def small_8840342_right_encoded : String := "00000004"
theorem small_8840342_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8840342_right_root small_8840342_right_fuel small_8840342_right_count small_8840342_right_encoded = true := by
  decide +kernel
theorem small_8840342_right_covered : CoveredBy scale carrier boxes small_8840342_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8840342_right_root small_8840342_right_fuel small_8840342_right_count small_8840342_right_encoded small_8840342_right_checked

theorem cover_8840342 : CoveredBy scale carrier boxes root_8840342 := by
  apply coveredBy_split_literal root_8840342 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8840347 small_8840342_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8840347
  · exact small_8840342_right_covered
#print axioms cover_8840342

def root_8838614 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8838614 : CoveredBy scale carrier boxes root_8838614 := by
  apply coveredBy_split_literal root_8838614 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3305.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8840342 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3305.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8840342
#print axioms cover_8838614

def root_8838609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838609_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838609_right_fuel : Nat := 1
def small_8838609_right_count : Nat := 1
def small_8838609_right_encoded : String := "00000003"
theorem small_8838609_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8838609_right_root small_8838609_right_fuel small_8838609_right_count small_8838609_right_encoded = true := by
  decide +kernel
theorem small_8838609_right_covered : CoveredBy scale carrier boxes small_8838609_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8838609_right_root small_8838609_right_fuel small_8838609_right_count small_8838609_right_encoded small_8838609_right_checked

theorem cover_8838609 : CoveredBy scale carrier boxes root_8838609 := by
  apply coveredBy_split_literal root_8838609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8838614 small_8838609_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8838614
  · exact small_8838609_right_covered
#print axioms cover_8838609

def root_8838608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8838608 : CoveredBy scale carrier boxes root_8838608 := by
  apply coveredBy_split_literal root_8838608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8838609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3318.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8838609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3318.covered
#print axioms cover_8838608

def root_8838603 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838603_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838603_right_fuel : Nat := 1
def small_8838603_right_count : Nat := 1
def small_8838603_right_encoded : String := "00000002"
theorem small_8838603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8838603_right_root small_8838603_right_fuel small_8838603_right_count small_8838603_right_encoded = true := by
  decide +kernel
theorem small_8838603_right_covered : CoveredBy scale carrier boxes small_8838603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8838603_right_root small_8838603_right_fuel small_8838603_right_count small_8838603_right_encoded small_8838603_right_checked

theorem cover_8838603 : CoveredBy scale carrier boxes root_8838603 := by
  apply coveredBy_split_literal root_8838603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8838608 small_8838603_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8838608
  · exact small_8838603_right_covered
#print axioms cover_8838603

def root_8876806 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8876806 : CoveredBy scale carrier boxes root_8876806 := by
  apply coveredBy_split_literal root_8876806 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3319.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3320.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3319.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3320.covered
#print axioms cover_8876806

def root_8876801 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8876801_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8876801_right_fuel : Nat := 1
def small_8876801_right_count : Nat := 1
def small_8876801_right_encoded : String := "00000003"
theorem small_8876801_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8876801_right_root small_8876801_right_fuel small_8876801_right_count small_8876801_right_encoded = true := by
  decide +kernel
theorem small_8876801_right_covered : CoveredBy scale carrier boxes small_8876801_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8876801_right_root small_8876801_right_fuel small_8876801_right_count small_8876801_right_encoded small_8876801_right_checked

theorem cover_8876801 : CoveredBy scale carrier boxes root_8876801 := by
  apply coveredBy_split_literal root_8876801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8876806 small_8876801_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8876806
  · exact small_8876801_right_covered
#print axioms cover_8876801

def root_8876800 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8876800 : CoveredBy scale carrier boxes root_8876800 := by
  apply coveredBy_split_literal root_8876800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8876801 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3321.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8876801
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3321.covered
#print axioms cover_8876800

def root_8876794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8876794_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8876794_left_fuel : Nat := 1
def small_8876794_left_count : Nat := 1
def small_8876794_left_encoded : String := "00000002"
theorem small_8876794_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8876794_left_root small_8876794_left_fuel small_8876794_left_count small_8876794_left_encoded = true := by
  decide +kernel
theorem small_8876794_left_covered : CoveredBy scale carrier boxes small_8876794_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8876794_left_root small_8876794_left_fuel small_8876794_left_count small_8876794_left_encoded small_8876794_left_checked

theorem cover_8876794 : CoveredBy scale carrier boxes root_8876794 := by
  apply coveredBy_split_literal root_8876794 small_8876794_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8876800 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8876794_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8876800
#print axioms cover_8876794

def root_8838602 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8838602 : CoveredBy scale carrier boxes root_8838602 := by
  apply coveredBy_split_literal root_8838602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8838603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8876794 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8838603
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8876794
#print axioms cover_8838602

def root_8838597 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838597_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838597_right_fuel : Nat := 1
def small_8838597_right_count : Nat := 1
def small_8838597_right_encoded : String := "00000001"
theorem small_8838597_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8838597_right_root small_8838597_right_fuel small_8838597_right_count small_8838597_right_encoded = true := by
  decide +kernel
theorem small_8838597_right_covered : CoveredBy scale carrier boxes small_8838597_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8838597_right_root small_8838597_right_fuel small_8838597_right_count small_8838597_right_encoded small_8838597_right_checked

theorem cover_8838597 : CoveredBy scale carrier boxes root_8838597 := by
  apply coveredBy_split_literal root_8838597 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8838602 small_8838597_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8838602
  · exact small_8838597_right_covered
#print axioms cover_8838597

def root_8886267 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8886267 : CoveredBy scale carrier boxes root_8886267 := by
  apply coveredBy_split_literal root_8886267 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3322.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3323.root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3322.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3323.covered
#print axioms cover_8886267

def root_8886261 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886261_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886261_left_fuel : Nat := 1
def small_8886261_left_count : Nat := 1
def small_8886261_left_encoded : String := "00000004"
theorem small_8886261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8886261_left_root small_8886261_left_fuel small_8886261_left_count small_8886261_left_encoded = true := by
  decide +kernel
theorem small_8886261_left_covered : CoveredBy scale carrier boxes small_8886261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8886261_left_root small_8886261_left_fuel small_8886261_left_count small_8886261_left_encoded small_8886261_left_checked

theorem cover_8886261 : CoveredBy scale carrier boxes root_8886261 := by
  apply coveredBy_split_literal root_8886261 small_8886261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886267 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8886261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886267
#print axioms cover_8886261

def root_8890724 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890724_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890724_right_fuel : Nat := 28
def small_8890724_right_count : Nat := 341
def small_8890724_right_encoded : String := "128A4103000000010280010413D7B0FB0280010613D7B0FD0AD3578110D10100000000000000000910D13D000DE7CA08000000070E601509064000F812FFAD03014001040000000713F614FB00000002014001060000000713F614FD000000030BE879C10000000900000007000000010000000700000004000000000000000313D7ECFD000000030AD357810000000910D13D000DE7CA08000000090E601509064000F812FFAD0300000009000000010000000900000004000000000000000213D7ECFB000000020280010613D7B0FD0AD3578110D10100000000000DE7CA080E5FD90900000004064000F812FFAD030000000900000001000000090E601509064000F812FFAD0303C00104000000090000000A0000000112FF71030000000103C001040000000913A54CFB00000002014001060000000A000000050000000410D13D000DE7CA080E5FD90900000004000000070E601509064000F812FFAD0303C0010413A510FB0140010613F5D8FD0BE879C110117100000000000000000A000000070000000313F614FD000000030BE879C110117100000000000DAED8890E9625080000000406E000F800000009000000090E9661080000000700000004000000070000000213A54CFB000000020140010613F5D8FD0BE879C110117100000000000000000A1011AD0000000007000000000000000313F614FD000000030BE879C110117100000000000DAED8890E9625080000000406E000F80000000A12C7E50300000001046001041383DCFB0000000A00000002000000050E96610806E000F80000000A00000006000000041011AD000DAED8890E9625080000000406E000F812C82103046001041383DCFB000000070000000200000008000000010000000700000007000000000000000112FF71030000000103C001040000000713A54CFB00000002014001060000000713F614FD000000030BE879C110117100000000000DAED8890E9625080000000400000005000000060000000700000004000000000000000313D7ECFD000000030AD3578110D10100000000000DE7CA08000000090E601509064000F812FFAD030000000900000001000000050000000410D13D000DE7CA080E5FD90900000004064000F812FFAD0303C001040000000913A54CFB0000000203C0010613A510FD0BE879C1101171000000000000000009000000070000000313A54CFD000000030BE879C1000000091011AD0000000007000000000000000112FF71030000000103C001040000000713A54CFB0000000203C0010600000006000000050E601509064000F812FFAD0303C0010413A510FB03C0010613A510FD0BE879C11011710000000000000000091011AD000DAED8890E9625080000000406E000F812C82103032001040000000713C144FB00000002032001060000000700000009000000010000000700000007000000000000000313A54CFD000000030BE879C1000000091011AD000DAED8890000000900000009000000000000000213A54CFB0000000203C0010613A510FD0BE879C110117100000000000DAED8890E96250800000004000000050E96610800000009000000041011AD000DAED8890E9625080000000406E000F812C82103046001041383DCFB0320010613C108FD0C730AE10FA709000000000000000005000000070000000300000005000000020000000500000001000000050E96610806E000F812C821030460010400000007138418FB000000020320010600000006000000050000000100000007000000040000000000000003000000050000000112FF71030000000103C0010413A510FB03C0010613A510FD0BE879C10000000900000007000000030000000500000002000000050000000400000000"
theorem small_8890724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8890724_right_root small_8890724_right_fuel small_8890724_right_count small_8890724_right_encoded = true := by
  decide +kernel
theorem small_8890724_right_covered : CoveredBy scale carrier boxes small_8890724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8890724_right_root small_8890724_right_fuel small_8890724_right_count small_8890724_right_encoded small_8890724_right_checked

theorem cover_8890724 : CoveredBy scale carrier boxes root_8890724 := by
  apply coveredBy_split_literal root_8890724 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3324.root small_8890724_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3324.covered
  · exact small_8890724_right_covered
#print axioms cover_8890724

def root_8890719 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890719_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890719_right_fuel : Nat := 1
def small_8890719_right_count : Nat := 1
def small_8890719_right_encoded : String := "00000004"
theorem small_8890719_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8890719_right_root small_8890719_right_fuel small_8890719_right_count small_8890719_right_encoded = true := by
  decide +kernel
theorem small_8890719_right_covered : CoveredBy scale carrier boxes small_8890719_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8890719_right_root small_8890719_right_fuel small_8890719_right_count small_8890719_right_encoded small_8890719_right_checked

theorem cover_8890719 : CoveredBy scale carrier boxes root_8890719 := by
  apply coveredBy_split_literal root_8890719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8890724 small_8890719_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8890724
  · exact small_8890719_right_covered
#print axioms cover_8890719

def root_8890509 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890509_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890509_left_fuel : Nat := 22
def small_8890509_left_count : Nat := 97
def small_8890509_left_encoded : String := "0F87510900000004078000F8128A7D030280010413D7B0FB0280010613D7B0FD0AD35781000000050000000700000003000000090000000213D7ECFB000000020280010613D7B0FD0AD3578110D10100000000000000000910D13D000B4D440810801109000000040000000710804D0908C000F8000000050000000700000004000000000000000313D7ECFD000000030AD357810000000910D13D000B4D440810801109000000040000000910804D0908C000F811FC250303C001040000000913A54CFB0000000203C0010613A510FD0BE879C1000000091011AD000BF3E588000000051009290900000009000000040000000000000003000000090000000111FBE9030000000103C001040000000913A54CFB0000000200000009000000040000000000000001128A4103000000010280010413D7B0FB000000090000000213D7ECFB000000020280010613D7B0FD0AD3578110D101000000000000000009000000070000000313D7ECFD000000030AD357810000000910D13D000000000700000000"
theorem small_8890509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8890509_left_root small_8890509_left_fuel small_8890509_left_count small_8890509_left_encoded = true := by
  decide +kernel
theorem small_8890509_left_covered : CoveredBy scale carrier boxes small_8890509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8890509_left_root small_8890509_left_fuel small_8890509_left_count small_8890509_left_encoded small_8890509_left_checked

theorem cover_8890509 : CoveredBy scale carrier boxes root_8890509 := by
  apply coveredBy_split_literal root_8890509 small_8890509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8890719 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8890509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8890719
#print axioms cover_8890509

def root_8890504 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890504_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8890504_right_fuel : Nat := 1
def small_8890504_right_count : Nat := 1
def small_8890504_right_encoded : String := "00000004"
theorem small_8890504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8890504_right_root small_8890504_right_fuel small_8890504_right_count small_8890504_right_encoded = true := by
  decide +kernel
theorem small_8890504_right_covered : CoveredBy scale carrier boxes small_8890504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8890504_right_root small_8890504_right_fuel small_8890504_right_count small_8890504_right_encoded small_8890504_right_checked

theorem cover_8890504 : CoveredBy scale carrier boxes root_8890504 := by
  apply coveredBy_split_literal root_8890504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8890509 small_8890504_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8890509
  · exact small_8890504_right_covered
#print axioms cover_8890504

def root_8886260 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8886260 : CoveredBy scale carrier boxes root_8886260 := by
  apply coveredBy_split_literal root_8886260 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8890504 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886261
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8890504
#print axioms cover_8886260

def root_8886254 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886254_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886254_left_fuel : Nat := 1
def small_8886254_left_count : Nat := 1
def small_8886254_left_encoded : String := "00000000"
theorem small_8886254_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8886254_left_root small_8886254_left_fuel small_8886254_left_count small_8886254_left_encoded = true := by
  decide +kernel
theorem small_8886254_left_covered : CoveredBy scale carrier boxes small_8886254_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8886254_left_root small_8886254_left_fuel small_8886254_left_count small_8886254_left_encoded small_8886254_left_checked

theorem cover_8886254 : CoveredBy scale carrier boxes root_8886254 := by
  apply coveredBy_split_literal root_8886254 small_8886254_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886260 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8886254_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886260
#print axioms cover_8886254

def root_8894148 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8894148_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8894148_right_fuel : Nat := 28
def small_8894148_right_count : Nat := 351
def small_8894148_right_encoded : String := "128A4103000000010280010413D7B0FB0280010613D7B0FD0AD3578910D10108000000040000000810D13D080DE7CA00000000070E601501064000F812FFAD03014001040000000713F614FB00000002014001060000000713F614FD000000030BE879C90000000800000007000000010000000700000000000000040000000313D7ECFD000000030AD3578910D10108000000040DE7CA000E5FD90100000000064000F812FFAD030000000800000001000000080E601501064000F812FFAD03014001040000000613F614FB0000000203C0010600000008000000060000000112FF7103000000010140010413F5D8FB03C0010600000008000000060000000213F614FB0000000203C0010600000008000000050000000010D13D080DE7CA000E5FD90100000000000000070E601501064000F812FFAD030140010413F5D8FB03C0010613A510FD0BE879C9101171080000000400000006000000070000000313A54CFD000000030BE879C91011710800000004000000061011AD0800000007000000040000000213F614FB0000000203C0010613A510FD0BE879C910117108000000040DAED8810E9625000000000006E000F800000006000000080E9661000000000700000000000000070000000313A54CFD000000030BE879C910117108000000040DAED8810E9625000000000006E000F80000000612C7E5030000000101E0010400000006000000050E96610006E000F8000000060000000A000000001011AD080DAED8810E9625000000000006E000F812C8210301E001040000000913E994FB00000002046001060000000700000009000000010000000700000007000000040000000112FF710300000001014001040000000713F614FB0000000203C001060000000713A54CFD000000030BE879C910117108000000040DAED8810E9625000000000000000005000000070000000700000000000000040000000213D7ECFB000000020280010613D7B0FD0AD357890000000810D13D080DE7CA00000000080E601501064000F812FFAD0300000008000000010000000800000000000000040000000313D7ECFD000000030AD3578910D10108000000040DE7CA00000000080E601501064000F812FFAD030000000800000001000000050000000010D13D080DE7CA000E5FD90100000000064000F812FFAD0303C0010413A510FB03C001060000000713A54CFD000000030BE879C9101171080000000400000008000000070000000213A54CFB0000000203C001060000000813A54CFD000000030BE879C9000000081011AD0800000007000000040000000112FF71030000000103C001040000000713A54CFB0000000203C0010600000007000000050E601501064000F812FFAD0303C0010413A510FB03C0010613A510FD0BE879C91011710800000004000000081011AD080DAED8810E9625000000000006E000F812C82103032001040000000713C144FB0000000200000008000000010000000700000007000000040000000313A54CFD000000030BE879C910117108000000040DAED8810E96250000000000000000050E96610000000008000000001011AD080DAED8810E9625000000000006E000F812C821030320010413C108FB046001061383DCFD0C730AE90FA709080000000400000005000000070000000300000005000000020000000500000001000000050E96610006E000F812C82103032001040000000713C144FB00000002046001060000000700000005000000010000000700000000000000040000000213A54CFB0000000203C0010613A510FD0BE879C9000000081011AD080DAED88100000008000000080000000400000003000000050000000112FF71030000000103C0010413A510FB03C0010613A510FD0BE879C90000000800000007000000030000000500000002000000050000000000000004"
theorem small_8894148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8894148_right_root small_8894148_right_fuel small_8894148_right_count small_8894148_right_encoded = true := by
  decide +kernel
theorem small_8894148_right_covered : CoveredBy scale carrier boxes small_8894148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8894148_right_root small_8894148_right_fuel small_8894148_right_count small_8894148_right_encoded small_8894148_right_checked

theorem cover_8894148 : CoveredBy scale carrier boxes root_8894148 := by
  apply coveredBy_split_literal root_8894148 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3325.root small_8894148_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3325.covered
  · exact small_8894148_right_covered
#print axioms cover_8894148

def root_8894143 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8894143_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8894143_right_fuel : Nat := 1
def small_8894143_right_count : Nat := 1
def small_8894143_right_encoded : String := "00000000"
theorem small_8894143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8894143_right_root small_8894143_right_fuel small_8894143_right_count small_8894143_right_encoded = true := by
  decide +kernel
theorem small_8894143_right_covered : CoveredBy scale carrier boxes small_8894143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8894143_right_root small_8894143_right_fuel small_8894143_right_count small_8894143_right_encoded small_8894143_right_checked

theorem cover_8894143 : CoveredBy scale carrier boxes root_8894143 := by
  apply coveredBy_split_literal root_8894143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8894148 small_8894143_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8894148
  · exact small_8894143_right_covered
#print axioms cover_8894143

def root_8893923 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8893923_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8893923_left_fuel : Nat := 22
def small_8893923_left_count : Nat := 103
def small_8893923_left_encoded : String := "0F87510100000000078000F8128A7D030280010413D7B0FB0280010613D7B0FD0AD3578900000005000000070000000313D7ECFD000000030AD3578910D10108000000040000000610D13D080B4D440010801101000000000000000710804D0108C000F8000000050000000700000000000000040000000213D7ECFB00000002028001060000000813D7ECFD000000030AD357890000000810D13D080B4D440010801101000000000000000810804D0108C000F811FC250303C0010413A510FB03C001060000000513A54CFD000000030BE879C9000000061011AD080BF3E580000000051009290100000008000000000000000400000002000000080000000111FBE9030000000103C0010413A510FB03C001060000000713A54CFD00000003000000080000000200000008000000000000000400000001128A4103000000010280010413D7B0FB028001060000000713D7ECFD000000030AD3578910D101080000000400000008000000070000000213D7ECFB00000002028001060000000813D7ECFD000000030AD357890000000810D13D080000000700000004"
theorem small_8893923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8893923_left_root small_8893923_left_fuel small_8893923_left_count small_8893923_left_encoded = true := by
  decide +kernel
theorem small_8893923_left_covered : CoveredBy scale carrier boxes small_8893923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8893923_left_root small_8893923_left_fuel small_8893923_left_count small_8893923_left_encoded small_8893923_left_checked

theorem cover_8893923 : CoveredBy scale carrier boxes root_8893923 := by
  apply coveredBy_split_literal root_8893923 small_8893923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8894143 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8893923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8894143
#print axioms cover_8893923

def root_8893917 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8893917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8893917_left_fuel : Nat := 1
def small_8893917_left_count : Nat := 1
def small_8893917_left_encoded : String := "00000004"
theorem small_8893917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8893917_left_root small_8893917_left_fuel small_8893917_left_count small_8893917_left_encoded = true := by
  decide +kernel
theorem small_8893917_left_covered : CoveredBy scale carrier boxes small_8893917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8893917_left_root small_8893917_left_fuel small_8893917_left_count small_8893917_left_encoded small_8893917_left_checked

theorem cover_8893917 : CoveredBy scale carrier boxes root_8893917 := by
  apply coveredBy_split_literal root_8893917 small_8893917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8893923 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8893917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8893923
#print axioms cover_8893917

def root_8893916 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8893916 : CoveredBy scale carrier boxes root_8893916 := by
  apply coveredBy_split_literal root_8893916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8893917 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3326.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8893917
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3326.covered
#print axioms cover_8893916

def root_8893911 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8893911_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8893911_right_fuel : Nat := 1
def small_8893911_right_count : Nat := 1
def small_8893911_right_encoded : String := "00000000"
theorem small_8893911_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8893911_right_root small_8893911_right_fuel small_8893911_right_count small_8893911_right_encoded = true := by
  decide +kernel
theorem small_8893911_right_covered : CoveredBy scale carrier boxes small_8893911_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8893911_right_root small_8893911_right_fuel small_8893911_right_count small_8893911_right_encoded small_8893911_right_checked

theorem cover_8893911 : CoveredBy scale carrier boxes root_8893911 := by
  apply coveredBy_split_literal root_8893911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8893916 small_8893911_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8893916
  · exact small_8893911_right_covered
#print axioms cover_8893911

def root_8886253 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8886253 : CoveredBy scale carrier boxes root_8886253 := by
  apply coveredBy_split_literal root_8886253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886254 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8893911 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886254
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8893911
#print axioms cover_8886253

def root_8886248 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886248_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886248_right_fuel : Nat := 1
def small_8886248_right_count : Nat := 1
def small_8886248_right_encoded : String := "00000003"
theorem small_8886248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8886248_right_root small_8886248_right_fuel small_8886248_right_count small_8886248_right_encoded = true := by
  decide +kernel
theorem small_8886248_right_covered : CoveredBy scale carrier boxes small_8886248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8886248_right_root small_8886248_right_fuel small_8886248_right_count small_8886248_right_encoded small_8886248_right_checked

theorem cover_8886248 : CoveredBy scale carrier boxes root_8886248 := by
  apply coveredBy_split_literal root_8886248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886253 small_8886248_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886253
  · exact small_8886248_right_covered
#print axioms cover_8886248

def root_8901034 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8901034 : CoveredBy scale carrier boxes root_8901034 := by
  apply coveredBy_split_literal root_8901034 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3327.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3328.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3327.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3328.covered
#print axioms cover_8901034

def root_8901029 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8901029_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8901029_right_fuel : Nat := 1
def small_8901029_right_count : Nat := 1
def small_8901029_right_encoded : String := "00000000"
theorem small_8901029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8901029_right_root small_8901029_right_fuel small_8901029_right_count small_8901029_right_encoded = true := by
  decide +kernel
theorem small_8901029_right_covered : CoveredBy scale carrier boxes small_8901029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8901029_right_root small_8901029_right_fuel small_8901029_right_count small_8901029_right_encoded small_8901029_right_checked

theorem cover_8901029 : CoveredBy scale carrier boxes root_8901029 := by
  apply coveredBy_split_literal root_8901029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8901034 small_8901029_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8901034
  · exact small_8901029_right_covered
#print axioms cover_8901029

def root_8900399 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8900399_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8900399_left_fuel : Nat := 29
def small_8900399_left_count : Nat := 301
def small_8900399_left_encoded : String := "0F34D100000000000CFD9C090F34D10800000004078000F8128A7D030280010413D7B0FB07800106128A40FD0AD3578110D10100000000000AD35789000000070000000910D13D000AD3578910D101080000000408C000F80000000611FBE9030000000101400104000000060000000510D13D0808C000F811FC2503014001040000000913F614FB000000020640010612FF70FD0BE879C1000000091011AD000BE879C900000006000000090000000000000003000000090000000111FBE90300000001014001040000000913F614FB000000020640010612FF70FD0BE879C1000000091011AD000BE879C90000000900000009000000000000000300000005000000040000000000000003128A7CFD000000030AD357810000000910D13D000AD3578910D10108000000040000000510D13D080000000900000004000000000000000213D7ECFB0000000207800106128A40FD0AD3578110D10100000000000000000510D13D000AD3578910D10108000000040000000510D13D0808C000F811FC250303C0010413A510FB0640010612FF70FD0BE879C1000000071011AD000BE879C9000000071011AD08096000F80000000711AA81030000000103200104000000090000000500000004000000000000000300000005000000020000000500000001000000050000000400000000000000030000000500000001128A4103000000010280010413D7B0FB07800106128A40FD0AD3578110D10100000000000000000510D13D000AD3578910D10108000000040000000510D13D08064000F812FFAD0301400104000000090000000500000001000000050000000400000000000000030000000500000002000000050F350D080C9A87080F87510900000004078000F8128A7D03028001040000000913D7ECFB0000000207800106128A40FD0AD357810000000910D13D000000000900000000000000030000000800000001000000090F878D09078000F8128A7D030280010413D7B0FB07800106128A40FD0AD357810000000910D13D00000000090000000000000003000000090000000213D7ECFB0000000207800106128A40FD0AD3578110D10100000000000000000910D13D000DE7CA080E5FD9090000000408C000F811FC250303C001040000000913A54CFB000000020640010612FF70FD0BE879C1000000091011AD000000000900000000000000030000000800000001000000090E60150908C000F811FC250303C0010413A510FB000000090000000213A54CFB000000020640010612FF70FD0BE879C11011710000000000000000091011AD000DAED8890E96250800000004096000F811AABD0304600104000000070000000500000001000000050E966108096000F811AABD03000000090000000100000009000000040000000000000003000000050000000111FBE9030000000103C001040000000900000005000000040000000000000003128A7CFD000000030AD357810000000910D13D000DE7CA0800000009000000050000000000000001128A410300000001028001040000000913D7ECFB0000000207800106128A40FD0AD3578110D10100000000000000000510D13D000DE7CA080E5FD90900000004064000F80000000900000005000000050000000000000003000000050000000400000004"
theorem small_8900399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8900399_left_root small_8900399_left_fuel small_8900399_left_count small_8900399_left_encoded = true := by
  decide +kernel
theorem small_8900399_left_covered : CoveredBy scale carrier boxes small_8900399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8900399_left_root small_8900399_left_fuel small_8900399_left_count small_8900399_left_encoded small_8900399_left_checked

theorem cover_8900399 : CoveredBy scale carrier boxes root_8900399 := by
  apply coveredBy_split_literal root_8900399 small_8900399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8901029 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8900399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8901029
#print axioms cover_8900399

def root_8900393 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8900393_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8900393_left_fuel : Nat := 1
def small_8900393_left_count : Nat := 1
def small_8900393_left_encoded : String := "00000003"
theorem small_8900393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8900393_left_root small_8900393_left_fuel small_8900393_left_count small_8900393_left_encoded = true := by
  decide +kernel
theorem small_8900393_left_covered : CoveredBy scale carrier boxes small_8900393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8900393_left_root small_8900393_left_fuel small_8900393_left_count small_8900393_left_encoded small_8900393_left_checked

theorem cover_8900393 : CoveredBy scale carrier boxes root_8900393 := by
  apply coveredBy_split_literal root_8900393 small_8900393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8900399 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8900393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8900399
#print axioms cover_8900393

def root_8886247 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8886247 : CoveredBy scale carrier boxes root_8886247 := by
  apply coveredBy_split_literal root_8886247 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8900393 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886248
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8900393
#print axioms cover_8886247

def root_8886242 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886242_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886242_right_fuel : Nat := 1
def small_8886242_right_count : Nat := 1
def small_8886242_right_encoded : String := "00000002"
theorem small_8886242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8886242_right_root small_8886242_right_fuel small_8886242_right_count small_8886242_right_encoded = true := by
  decide +kernel
theorem small_8886242_right_covered : CoveredBy scale carrier boxes small_8886242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8886242_right_root small_8886242_right_fuel small_8886242_right_count small_8886242_right_encoded small_8886242_right_checked

theorem cover_8886242 : CoveredBy scale carrier boxes root_8886242 := by
  apply coveredBy_split_literal root_8886242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886247 small_8886242_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886247
  · exact small_8886242_right_covered
#print axioms cover_8886242

def root_8905759 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8905759 : CoveredBy scale carrier boxes root_8905759 := by
  apply coveredBy_split_literal root_8905759 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3329.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3330.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3329.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3330.covered
#print axioms cover_8905759

def root_8905754 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8905754_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8905754_right_fuel : Nat := 1
def small_8905754_right_count : Nat := 1
def small_8905754_right_encoded : String := "00000003"
theorem small_8905754_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8905754_right_root small_8905754_right_fuel small_8905754_right_count small_8905754_right_encoded = true := by
  decide +kernel
theorem small_8905754_right_covered : CoveredBy scale carrier boxes small_8905754_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8905754_right_root small_8905754_right_fuel small_8905754_right_count small_8905754_right_encoded small_8905754_right_checked

theorem cover_8905754 : CoveredBy scale carrier boxes root_8905754 := by
  apply coveredBy_split_literal root_8905754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8905759 small_8905754_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8905759
  · exact small_8905754_right_covered
#print axioms cover_8905754

def root_8905753 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8905753 : CoveredBy scale carrier boxes root_8905753 := by
  apply coveredBy_split_literal root_8905753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8905754 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3331.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8905754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3331.covered
#print axioms cover_8905753

def root_8905747 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8905747_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8905747_left_fuel : Nat := 1
def small_8905747_left_count : Nat := 1
def small_8905747_left_encoded : String := "00000002"
theorem small_8905747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8905747_left_root small_8905747_left_fuel small_8905747_left_count small_8905747_left_encoded = true := by
  decide +kernel
theorem small_8905747_left_covered : CoveredBy scale carrier boxes small_8905747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8905747_left_root small_8905747_left_fuel small_8905747_left_count small_8905747_left_encoded small_8905747_left_checked

theorem cover_8905747 : CoveredBy scale carrier boxes root_8905747 := by
  apply coveredBy_split_literal root_8905747 small_8905747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8905753 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8905747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8905753
#print axioms cover_8905747

def root_8886241 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8886241 : CoveredBy scale carrier boxes root_8886241 := by
  apply coveredBy_split_literal root_8886241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8905747 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886242
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8905747
#print axioms cover_8886241

def root_8886236 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886236_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886236_right_fuel : Nat := 1
def small_8886236_right_count : Nat := 1
def small_8886236_right_encoded : String := "00000001"
theorem small_8886236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8886236_right_root small_8886236_right_fuel small_8886236_right_count small_8886236_right_encoded = true := by
  decide +kernel
theorem small_8886236_right_covered : CoveredBy scale carrier boxes small_8886236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8886236_right_root small_8886236_right_fuel small_8886236_right_count small_8886236_right_encoded small_8886236_right_checked

theorem cover_8886236 : CoveredBy scale carrier boxes root_8886236 := by
  apply coveredBy_split_literal root_8886236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886241 small_8886236_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886241
  · exact small_8886236_right_covered
#print axioms cover_8886236

def root_8886235 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8886235 : CoveredBy scale carrier boxes root_8886235 := by
  apply coveredBy_split_literal root_8886235 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886236 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3332.root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886236
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3332.covered
#print axioms cover_8886235

def root_8886230 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886230_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8886230_right_fuel : Nat := 1
def small_8886230_right_count : Nat := 1
def small_8886230_right_encoded : String := "00000004"
theorem small_8886230_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8886230_right_root small_8886230_right_fuel small_8886230_right_count small_8886230_right_encoded = true := by
  decide +kernel
theorem small_8886230_right_covered : CoveredBy scale carrier boxes small_8886230_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8886230_right_root small_8886230_right_fuel small_8886230_right_count small_8886230_right_encoded small_8886230_right_checked

theorem cover_8886230 : CoveredBy scale carrier boxes root_8886230 := by
  apply coveredBy_split_literal root_8886230 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.root_8886235 small_8886230_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608.cover_8886235
  · exact small_8886230_right_covered
#print axioms cover_8886230

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0608

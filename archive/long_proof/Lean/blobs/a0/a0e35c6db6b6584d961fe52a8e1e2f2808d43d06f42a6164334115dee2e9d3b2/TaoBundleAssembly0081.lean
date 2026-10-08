import TaoBundleAssembly0080
import TaoBundleChunkBatch0323
import TaoBundleChunkBatch0324
import TaoBundleChunkBatch0325
import TaoBundleChunkBatch0326
import TaoBundleChunkBatch0327
import TaoBundleChunkBatch0328
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081
def root_3376645 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376645_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376645_right_fuel : Nat := 19
def small_3376645_right_count : Nat := 127
def small_3376645_right_encoded : String := "135D44FD05000108135D44FF04548A01138670F604548A030000000500000008000000001386ACF60000000004548A030000000A1386ACF8000000010280010413D7B0FB028000FC13D7ECFD000000030280010813D7B0FF067ECE8100000008000000060000000400000008000000080000000213D7ECFB00000002028000FC13D7ECFD00000003028001080000000A13D7ECFF00000004067ECE81000000080000000A13D7B0FD0000000A0000000300000004135D80FF0000000404548A01138670F604548A03138670F8028001040000000813D7ECFB00000002028000FC13D7ECFD0000000307800108128A40FF0000000500000004128A7CFF0000000400000008000000080000000100000008000000001386ACF60000000004548A03138670F80280010413D7B0FB028000FC00000006000000060000000213D7ECFB00000002028000FC13D7ECFD0000000307800108128A40FF067ECE8112EA58F6022A45830000000513E200F80000000103C00104000000060000000A000000000000000600000004128A7CFF00000004067ECE8112EA58F6022A45830000000600000006000000000000000613D7B0FD07800108000000060000000600000003000000011386ACF800000001028001040000000813D7ECFB00000002028000FC13D7ECFD000000030780010800000008000000080000000800000003"
theorem small_3376645_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376645_right_root small_3376645_right_fuel small_3376645_right_count small_3376645_right_encoded = true := by
  decide +kernel
theorem small_3376645_right_covered : CoveredBy scale carrier boxes small_3376645_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376645_right_root small_3376645_right_fuel small_3376645_right_count small_3376645_right_encoded small_3376645_right_checked

theorem cover_3376645 : CoveredBy scale carrier boxes root_3376645 := by
  apply coveredBy_split_literal root_3376645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3376646 small_3376645_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3376646
  · exact small_3376645_right_covered
#print axioms cover_3376645

def root_3376640 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376640_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376640_right_fuel : Nat := 1
def small_3376640_right_count : Nat := 1
def small_3376640_right_encoded : String := "00000002"
theorem small_3376640_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376640_right_root small_3376640_right_fuel small_3376640_right_count small_3376640_right_encoded = true := by
  decide +kernel
theorem small_3376640_right_covered : CoveredBy scale carrier boxes small_3376640_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376640_right_root small_3376640_right_fuel small_3376640_right_count small_3376640_right_encoded small_3376640_right_checked

theorem cover_3376640 : CoveredBy scale carrier boxes root_3376640 := by
  apply coveredBy_split_literal root_3376640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376645 small_3376640_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376645
  · exact small_3376640_right_covered
#print axioms cover_3376640

def root_3382518 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3382518 : CoveredBy scale carrier boxes root_3382518 := by
  apply coveredBy_split_literal root_3382518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1290.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1291.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1290.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1291.covered
#print axioms cover_3382518

def root_3382513 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382513_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382513_right_fuel : Nat := 1
def small_3382513_right_count : Nat := 1
def small_3382513_right_encoded : String := "00000004"
theorem small_3382513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3382513_right_root small_3382513_right_fuel small_3382513_right_count small_3382513_right_encoded = true := by
  decide +kernel
theorem small_3382513_right_covered : CoveredBy scale carrier boxes small_3382513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3382513_right_root small_3382513_right_fuel small_3382513_right_count small_3382513_right_encoded small_3382513_right_checked

theorem cover_3382513 : CoveredBy scale carrier boxes root_3382513 := by
  apply coveredBy_split_literal root_3382513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3382518 small_3382513_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3382518
  · exact small_3382513_right_covered
#print axioms cover_3382513

def root_3385962 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3385962 : CoveredBy scale carrier boxes root_3385962 := by
  apply coveredBy_split_literal root_3385962 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1292.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1293.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1292.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1293.covered
#print axioms cover_3385962

def root_3385957 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3385957_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3385957_right_fuel : Nat := 1
def small_3385957_right_count : Nat := 1
def small_3385957_right_encoded : String := "00000000"
theorem small_3385957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3385957_right_root small_3385957_right_fuel small_3385957_right_count small_3385957_right_encoded = true := by
  decide +kernel
theorem small_3385957_right_covered : CoveredBy scale carrier boxes small_3385957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3385957_right_root small_3385957_right_fuel small_3385957_right_count small_3385957_right_encoded small_3385957_right_checked

theorem cover_3385957 : CoveredBy scale carrier boxes root_3385957 := by
  apply coveredBy_split_literal root_3385957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3385962 small_3385957_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3385962
  · exact small_3385957_right_covered
#print axioms cover_3385957

def root_3391050 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3391050 : CoveredBy scale carrier boxes root_3391050 := by
  apply coveredBy_split_literal root_3391050 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1294.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1295.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1294.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1295.covered
#print axioms cover_3391050

def root_3391044 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3391044_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3391044_left_fuel : Nat := 1
def small_3391044_left_count : Nat := 1
def small_3391044_left_encoded : String := "00000000"
theorem small_3391044_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3391044_left_root small_3391044_left_fuel small_3391044_left_count small_3391044_left_encoded = true := by
  decide +kernel
theorem small_3391044_left_covered : CoveredBy scale carrier boxes small_3391044_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3391044_left_root small_3391044_left_fuel small_3391044_left_count small_3391044_left_encoded small_3391044_left_checked

theorem cover_3391044 : CoveredBy scale carrier boxes root_3391044 := by
  apply coveredBy_split_literal root_3391044 small_3391044_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3391050 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3391044_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3391050
#print axioms cover_3391044

def root_3385956 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3385956 : CoveredBy scale carrier boxes root_3385956 := by
  apply coveredBy_split_literal root_3385956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3385957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3391044 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3385957
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3391044
#print axioms cover_3385956

def root_3385950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3385950_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3385950_left_fuel : Nat := 1
def small_3385950_left_count : Nat := 1
def small_3385950_left_encoded : String := "00000004"
theorem small_3385950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3385950_left_root small_3385950_left_fuel small_3385950_left_count small_3385950_left_encoded = true := by
  decide +kernel
theorem small_3385950_left_covered : CoveredBy scale carrier boxes small_3385950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3385950_left_root small_3385950_left_fuel small_3385950_left_count small_3385950_left_encoded small_3385950_left_checked

theorem cover_3385950 : CoveredBy scale carrier boxes root_3385950 := by
  apply coveredBy_split_literal root_3385950 small_3385950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3385956 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3385950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3385956
#print axioms cover_3385950

def root_3382512 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3382512 : CoveredBy scale carrier boxes root_3382512 := by
  apply coveredBy_split_literal root_3382512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3382513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3385950 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3382513
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3385950
#print axioms cover_3382512

def root_3382506 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382506_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382506_left_fuel : Nat := 1
def small_3382506_left_count : Nat := 1
def small_3382506_left_encoded : String := "00000003"
theorem small_3382506_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3382506_left_root small_3382506_left_fuel small_3382506_left_count small_3382506_left_encoded = true := by
  decide +kernel
theorem small_3382506_left_covered : CoveredBy scale carrier boxes small_3382506_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3382506_left_root small_3382506_left_fuel small_3382506_left_count small_3382506_left_encoded small_3382506_left_checked

theorem cover_3382506 : CoveredBy scale carrier boxes root_3382506 := by
  apply coveredBy_split_literal root_3382506 small_3382506_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3382512 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3382506_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3382512
#print axioms cover_3382506

def root_3382505 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382505_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382505_right_fuel : Nat := 25
def small_3382505_right_count : Nat := 401
def small_3382505_right_encoded : String := "135D44FD05000108135D44FF04548A01138670F604548A03138670F807800104128A40FB0000000500000002128A7CFB000000020000000A000000011386ACF80000000107800104128A40FB028000FC13D7ECFD00000003028001080000000713D7ECFF00000004022A45810000000713E200F600000000067ECE8312EA58F806400104000000070000000700000001000000070000000700000002128A7CFB00000002028000FC13D7ECFD00000003028001080000000713D7ECFF00000004022A4581000000070000000700000007000000001386ACF60000000004548A030000000A1386ACF800000001078001040000000A0000000A00000004135D80FF0000000404548A01138670F604548A03138670F807800104128A40FB028000FC13D7ECFD0000000307800108128A40FF022A45810000000513E200F600000000022A45830000000513E200F8000000010640010412FF70FB000000080000000212FFACFB0000000203C000FC13A54CFD00000003064001080000000A12FFACFF00000004033F67C1000000050000000A0000000A00000004128A7CFF00000004022A458113E1C4F6022A458300000005000000080000000013E200F600000000022A458313E1C4F8064001040000000512FFACFB0000000203C000FC0000000513A510FD0000000500000003000000010000000813D7B0FD07800108128A40FF022A4581000000050000000A00000004128A7CFF00000004022A458100000005000000080000000300000002128A7CFB00000002028000FC13D7ECFD0000000307800108128A40FF022A458113E1C4F6022A45830000000513E200F80000000108C001040000000511FC24FB0000000203C000FC000000050000000A0000000013E200F600000000022A45830000000A0000000A00000004128A7CFF00000004022A458113E1C4F6022A458300000005000000090000000013E200F600000000022A458313E1C4F800000009000000010000000913D7B0FD07800108128A40FF022A4581000000050000000A00000004128A7CFF00000004022A458113E1C4F6022A45830000000500000008000000000000000900000003000000011386ACF80000000107800104128A40FB028000FC13D7ECFD000000030780010800000008000000080000000800000002128A7CFB00000002028000FC13D7ECFD0000000307800108128A40FF022A458113E1C4F6067ECE8312EA58F808C001040000000811FC24FB0000000203C000FC13A54CFD000000030640010800000007000000080000000700000001000000070000000013E200F600000000067ECE8312EA58F808C0010411FBE8FB03C000FC13A54CFD00000003064001080000000700000008000000080000000200000009000000010000000800000004128A7CFF00000004022A4581000000080000000913D7B0FD07800108128A40FF022A45810000000813E200F60000000000000008000000040000000800000003000000001386ACF60000000004548A03138670F807800104128A40FB028000FC13D7ECFD00000003078001080000000A128A7CFF00000004067ECE8112EA58F6022A458313E1C4F80640010412FF70FB03C000FC13A54CFD0000000308C00108000000060000000600000006000000020000000A0000000113E200F8000000010640010400000008000000090000000012EA94F6000000000000000A13D7B0FD078001080000000A128A7CFF00000004067ECE8112EA58F6022A45830000000A0000000800000000000000060000000300000002128A7CFB00000002028000FC13D7ECFD00000003078001080000000A128A7CFF00000004067ECE8112EA58F60000000900000000000000090000000A000000011386ACF80000000107800104128A40FB028000FC13D7ECFD0000000307800108128A40FF067ECE8112EA58F6067ECE8312EA58F806400104000000080000000A00000001000000080000000012EA94F600000000067ECE830000000A0000000500000004128A7CFF00000004067ECE81000000080000000513D7B0FD07800108128A40FF067ECE81000000080000000A00000004000000080000000300000002128A7CFB00000002028000FC13D7ECFD0000000307800108128A40FF067ECE8112EA58F6067ECE830000000A000000050000000000000005000000040000000913D7B0FD078001080000000A000000090000000300000003"
theorem small_3382505_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3382505_right_root small_3382505_right_fuel small_3382505_right_count small_3382505_right_encoded = true := by
  decide +kernel
theorem small_3382505_right_covered : CoveredBy scale carrier boxes small_3382505_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3382505_right_root small_3382505_right_fuel small_3382505_right_count small_3382505_right_encoded small_3382505_right_checked

theorem cover_3382505 : CoveredBy scale carrier boxes root_3382505 := by
  apply coveredBy_split_literal root_3382505 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3382506 small_3382505_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3382506
  · exact small_3382505_right_covered
#print axioms cover_3382505

def root_3382499 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382499_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3382499_left_fuel : Nat := 1
def small_3382499_left_count : Nat := 1
def small_3382499_left_encoded : String := "00000002"
theorem small_3382499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3382499_left_root small_3382499_left_fuel small_3382499_left_count small_3382499_left_encoded = true := by
  decide +kernel
theorem small_3382499_left_covered : CoveredBy scale carrier boxes small_3382499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3382499_left_root small_3382499_left_fuel small_3382499_left_count small_3382499_left_encoded small_3382499_left_checked

theorem cover_3382499 : CoveredBy scale carrier boxes root_3382499 := by
  apply coveredBy_split_literal root_3382499 small_3382499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3382505 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3382499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3382505
#print axioms cover_3382499

def root_3376639 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3376639 : CoveredBy scale carrier boxes root_3376639 := by
  apply coveredBy_split_literal root_3376639 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3382499 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376640
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3382499
#print axioms cover_3376639

def root_3376634 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376634_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376634_right_fuel : Nat := 1
def small_3376634_right_count : Nat := 1
def small_3376634_right_encoded : String := "00000001"
theorem small_3376634_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376634_right_root small_3376634_right_fuel small_3376634_right_count small_3376634_right_encoded = true := by
  decide +kernel
theorem small_3376634_right_covered : CoveredBy scale carrier boxes small_3376634_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376634_right_root small_3376634_right_fuel small_3376634_right_count small_3376634_right_encoded small_3376634_right_checked

theorem cover_3376634 : CoveredBy scale carrier boxes root_3376634 := by
  apply coveredBy_split_literal root_3376634 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376639 small_3376634_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376639
  · exact small_3376634_right_covered
#print axioms cover_3376634

def root_3376633 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376633_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376633_right_fuel : Nat := 24
def small_3376633_right_count : Nat := 285
def small_3376633_right_encoded : String := "12073CF80000000105000104135D44FB050000FC135D80FD0000000305000108135D44FF04548A01138670F60CFD9C030F34D0F8028001040000000813D7ECFB00000002078000FC128A7CFD00000003028001080000000700000008000000080000000100000008000000001386ACF6000000000CFD9C030F34D0F80280010413D7B0FB078000FC128A7CFD000000030280010813D7B0FF067ECE8100000007000000070000000400000008000000080000000213D7ECFB00000002078000FC128A7CFD000000030280010813D7B0FF000000070000000413D7ECFF00000004067ECE810000000800000005128A40FD02800108000000070000000800000003000000010F350CF8000000010000000500000004135D80FF0000000404548A01138670F60CFD9C030F34D0F8000000080000000100000008000000001386ACF6000000000CFD9C030F34D0F8028001040000000813D7ECFB00000002078000FC128A7CFD0000000307800108128A40FF067ECE8100000008000000050000000400000005000000050000000100000005135D44FD05000108135D44FF04548A01000000081386ACF6000000000000000800000004000000080000000300000002135D80FB00000002050000FC135D80FD0000000305000108135D44FF04548A01138670F60CFD9C030F34D0F807800104128A40FB078000FC128A7CFD00000003028001080000000713D7ECFF00000004022A458100000007000000070000000700000002128A7CFB00000002078000FC128A7CFD00000003028001080000000713D7ECFF00000004022A45810000000700000007000000070000000100000007000000001386ACF6000000000CFD9C030F34D0F807800104128A40FB078000FC128A7CFD00000003028001080000000713D7ECFF00000004067ECE8112EA58F60AD3578310D100F80640010412FF70FB00000007000000020000000500000001000000050000000000000005128A40FD000000070000000300000002128A7CFB00000002078000FC128A7CFD000000030000000500000005000000010000000500000004135D80FF0000000404548A01138670F60CFD9C030F34D0F807800104128A40FB078000FC128A7CFD0000000307800108128A40FF022A45810000000813E200F6000000000AD3578310D100F800000008000000010000000500000004128A7CFF00000004000000080000000800000002128A7CFB00000002078000FC128A7CFD0000000307800108128A40FF022A458113E1C4F60AD3578310D100F808C0010400000008000000060000000100000005000000000000000500000004128A7CFF0000000400000005128A40FD07800108128A40FF022A4581000000070000000500000004128A7CFF00000004000000050000000300000001000000050000000000000005135D44FD05000108135D44FF04548A01000000071386ACF6000000000CFD9C030F34D0F8078001040000000700000005000000010000000500000004135D80FF0000000404548A01138670F60CFD9C030F34D0F8000000080000000100000005000000000000000500000003"
theorem small_3376633_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376633_right_root small_3376633_right_fuel small_3376633_right_count small_3376633_right_encoded = true := by
  decide +kernel
theorem small_3376633_right_covered : CoveredBy scale carrier boxes small_3376633_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376633_right_root small_3376633_right_fuel small_3376633_right_count small_3376633_right_encoded small_3376633_right_checked

theorem cover_3376633 : CoveredBy scale carrier boxes root_3376633 := by
  apply coveredBy_split_literal root_3376633 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376634 small_3376633_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376634
  · exact small_3376633_right_covered
#print axioms cover_3376633

def root_3376628 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376628_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376628_right_fuel : Nat := 1
def small_3376628_right_count : Nat := 1
def small_3376628_right_encoded : String := "00000000"
theorem small_3376628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376628_right_root small_3376628_right_fuel small_3376628_right_count small_3376628_right_encoded = true := by
  decide +kernel
theorem small_3376628_right_covered : CoveredBy scale carrier boxes small_3376628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376628_right_root small_3376628_right_fuel small_3376628_right_count small_3376628_right_encoded small_3376628_right_checked

theorem cover_3376628 : CoveredBy scale carrier boxes root_3376628 := by
  apply coveredBy_split_literal root_3376628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376633 small_3376628_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376633
  · exact small_3376628_right_covered
#print axioms cover_3376628

def root_3376627 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376627_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376627_right_fuel : Nat := 26
def small_3376627_right_count : Nat := 319
def small_3376627_right_encoded : String := "12073CF60000000008A91303120700F805000104135D44FB050000FC135D80FD0000000305000108135D44FF0CFD9C010F34D0F604548A03138670F8028001040000000A0000000A000000011386ACF8000000010280010413D7B0FB078000FC128A7CFD000000030280010813D7B0FF0AD3578110D100F60000000A00000000000000060000000400000006128A40FD00000006000000030000000213D7ECFB00000002078000FC128A7CFD00000003028001080000000A13D7ECFF000000040AD3578110D100F6067ECE830000000A000000050000000000000005128A40FD0000000A00000003000000000F350CF6000000000000000A00000004135D80FF000000040CFD9C010F34D0F604548A03138670F80280010413D7B0FB078000FC00000006000000060000000213D7ECFB00000002078000FC128A7CFD0000000307800108128A40FF0AD3578110D100F6022A45830000000600000006000000000000000600000004128A7CFF000000040AD3578110D100F6022A458300000006000000060000000000000006128A40FD0000000600000003000000011386ACF8000000010280010413D7B0FB078000FC128A7CFD0000000307800108128A40FF000000060000000400000006128A40FD00000006000000030000000213D7ECFB00000002078000FC128A7CFD0000000307800108128A40FF0AD3578110D100F6067ECE8312EA58F803C00104000000060000000500000001000000050000000000000005000000040000000500000005000000000F350CF60000000004548A030000000600000005135D44FD05000108135D44FF0CFD9C010F34D0F60000000A000000000000000600000004135D80FF000000040CFD9C010F34D0F604548A03000000061386ACF80000000102800104000000060000000500000000000000060000000300000002135D80FB00000002050000FC135D80FD0000000305000108135D44FF0CFD9C010F34D0F604548A030000000A1386ACF80000000107800104128A40FB078000FC128A7CFD00000003028001080000000A13D7ECFF000000040AD3578110D100F6067ECE830000000A0000000500000000000000050000000A00000002128A7CFB000000020000000A000000000000000A00000004135D80FF000000040CFD9C010F34D0F604548A03138670F807800104128A40FB078000FC128A7CFD0000000307800108128A40FF0AD3578110D100F6022A45830000000A0000000A000000000000000A00000004128A7CFF000000040AD3578110D100F6022A458313E1C4F8064001040000000712FFACFB000000020000000700000001000000050000000000000005128A40FD078001080000000A128A7CFF000000040AD3578110D100F6022A4583000000060000000500000000000000050000000300000002128A7CFB00000002078000FC128A7CFD00000003078001080000000A128A7CFF0000000400000005128A40FD0000000A0000000300000001000000050000000000000005135D44FD050001080000000A135D80FF000000040CFD9C010F34D0F604548A030000000A000000050000000000000005000000030000000112073CF80000000105000104135D44FB050000FC135D80FD0000000305000108135D44FF0CFD9C010F34D0F60CFD9C030F34D0F80280010413D7B0FB078000FC128A7CFD0000000300000005000000050000000200000005000000010000000500000000000000050000000400000005000000050000000200000005"
theorem small_3376627_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376627_right_root small_3376627_right_fuel small_3376627_right_count small_3376627_right_encoded = true := by
  decide +kernel
theorem small_3376627_right_covered : CoveredBy scale carrier boxes small_3376627_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376627_right_root small_3376627_right_fuel small_3376627_right_count small_3376627_right_encoded small_3376627_right_checked

theorem cover_3376627 : CoveredBy scale carrier boxes root_3376627 := by
  apply coveredBy_split_literal root_3376627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376628 small_3376627_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376628
  · exact small_3376627_right_covered
#print axioms cover_3376627

def root_3376622 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376622_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376622_right_fuel : Nat := 1
def small_3376622_right_count : Nat := 1
def small_3376622_right_encoded : String := "00000004"
theorem small_3376622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376622_right_root small_3376622_right_fuel small_3376622_right_count small_3376622_right_encoded = true := by
  decide +kernel
theorem small_3376622_right_covered : CoveredBy scale carrier boxes small_3376622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376622_right_root small_3376622_right_fuel small_3376622_right_count small_3376622_right_encoded small_3376622_right_checked

theorem cover_3376622 : CoveredBy scale carrier boxes root_3376622 := by
  apply coveredBy_split_literal root_3376622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376627 small_3376622_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376627
  · exact small_3376622_right_covered
#print axioms cover_3376622

def root_3376621 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3376621 : CoveredBy scale carrier boxes root_3376621 := by
  apply coveredBy_split_literal root_3376621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376622 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1296.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376622
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1296.covered
#print axioms cover_3376621

def root_3376616 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376616_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376616_right_fuel : Nat := 1
def small_3376616_right_count : Nat := 1
def small_3376616_right_encoded : String := "00000003"
theorem small_3376616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376616_right_root small_3376616_right_fuel small_3376616_right_count small_3376616_right_encoded = true := by
  decide +kernel
theorem small_3376616_right_covered : CoveredBy scale carrier boxes small_3376616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376616_right_root small_3376616_right_fuel small_3376616_right_count small_3376616_right_encoded small_3376616_right_checked

theorem cover_3376616 : CoveredBy scale carrier boxes root_3376616 := by
  apply coveredBy_split_literal root_3376616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376621 small_3376616_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376621
  · exact small_3376616_right_covered
#print axioms cover_3376616

def root_3352458 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352458 : CoveredBy scale carrier boxes root_3352458 := by
  apply coveredBy_split_literal root_3352458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3376616 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352459
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3376616
#print axioms cover_3352458

def root_3352453 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352453_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352453_right_fuel : Nat := 1
def small_3352453_right_count : Nat := 1
def small_3352453_right_encoded : String := "00000002"
theorem small_3352453_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352453_right_root small_3352453_right_fuel small_3352453_right_count small_3352453_right_encoded = true := by
  decide +kernel
theorem small_3352453_right_covered : CoveredBy scale carrier boxes small_3352453_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352453_right_root small_3352453_right_fuel small_3352453_right_count small_3352453_right_encoded small_3352453_right_checked

theorem cover_3352453 : CoveredBy scale carrier boxes root_3352453 := by
  apply coveredBy_split_literal root_3352453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352458 small_3352453_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352458
  · exact small_3352453_right_covered
#print axioms cover_3352453

def root_3352452 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352452 : CoveredBy scale carrier boxes root_3352452 := by
  apply coveredBy_split_literal root_3352452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352453 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1297.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352453
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1297.covered
#print axioms cover_3352452

def root_3352447 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352447_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352447_right_fuel : Nat := 1
def small_3352447_right_count : Nat := 1
def small_3352447_right_encoded : String := "00000001"
theorem small_3352447_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352447_right_root small_3352447_right_fuel small_3352447_right_count small_3352447_right_encoded = true := by
  decide +kernel
theorem small_3352447_right_covered : CoveredBy scale carrier boxes small_3352447_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352447_right_root small_3352447_right_fuel small_3352447_right_count small_3352447_right_encoded small_3352447_right_checked

theorem cover_3352447 : CoveredBy scale carrier boxes root_3352447 := by
  apply coveredBy_split_literal root_3352447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352452 small_3352447_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352452
  · exact small_3352447_right_covered
#print axioms cover_3352447

def root_3352446 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352446_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352446_right_fuel : Nat := 21
def small_3352446_right_count : Nat := 203
def small_3352446_right_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0001081151E8FF08A91301120700F608A912FD12073CFC000000030000000500000005000000000000000500000004115224FF00000004000000051151E8FD0A0001081151E8FF08A91301120700F600000005000000000000000500000004115224FF0000000408A91301120700F608A912FF12073D08050000F8000000050000000800000004000000050000000012073CF60000000008A912FF12073D08050000F800000005135D4503000000010000000500000004000000050000000300000002115224FB000000020A0000FC115224FD000000030A00010800000005115224FF0000000408A91301120700F6000000050000000012073CF60000000008A912FB12073D040000000500000002120701040000000208A912FD12073CFC0000000308A912FF00000005120701080000000400000009120700FC08A912FF00000005120701080000000400000006000000031151E8FD0A0001081151E8FF08A91301120700F608A912FB12073D04050000F800000005135D4503000000010000000500000002000000050000000012073CF60000000008A912FB12073D04050000F800000005135D45030000000100000005000000020000000500000004115224FF0000000408A91301120700F608A912FB12073D0408A912FF12073D08050000F8135D8103050000FC00000005135D44FD04548A01138670F60000000500000000000000050000000300000001135D450300000001050000FC00000005135D44FD04548A01138670F60CFD9BFB0000000600000005000000001386ACF6000000000CFD9BFB00000008000000050000000300000004120701080000000400000009000000021207010400000002000000090000000012073CF60000000008A912FB12073D0408A912FF12073D08050000F8135D8103050000FC00000005135D44FD0CFD9C010F34D0F60000000500000000000000050000000300000001135D450300000001050000FC00000005135D44FD0CFD9C010F34D0F600000005000000000000000900000003000000041207010800000004000000090000000212070104000000020000000900000003"
theorem small_3352446_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352446_right_root small_3352446_right_fuel small_3352446_right_count small_3352446_right_encoded = true := by
  decide +kernel
theorem small_3352446_right_covered : CoveredBy scale carrier boxes small_3352446_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352446_right_root small_3352446_right_fuel small_3352446_right_count small_3352446_right_encoded small_3352446_right_checked

theorem cover_3352446 : CoveredBy scale carrier boxes root_3352446 := by
  apply coveredBy_split_literal root_3352446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352447 small_3352446_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352447
  · exact small_3352446_right_covered
#print axioms cover_3352446

def root_3352441 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352441_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352441_right_fuel : Nat := 1
def small_3352441_right_count : Nat := 1
def small_3352441_right_encoded : String := "00000000"
theorem small_3352441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352441_right_root small_3352441_right_fuel small_3352441_right_count small_3352441_right_encoded = true := by
  decide +kernel
theorem small_3352441_right_covered : CoveredBy scale carrier boxes small_3352441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352441_right_root small_3352441_right_fuel small_3352441_right_count small_3352441_right_encoded small_3352441_right_checked

theorem cover_3352441 : CoveredBy scale carrier boxes root_3352441 := by
  apply coveredBy_split_literal root_3352441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352446 small_3352441_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352446
  · exact small_3352441_right_covered
#print axioms cover_3352441

def root_3352440 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352440_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352440_right_fuel : Nat := 24
def small_3352440_right_count : Nat := 333
def small_3352440_right_encoded : String := "1151E901000000000A0000F8115225030A0001041151E8FB0A0000FC115224FD000000030A0001081151E8FF08A91303120700F808A912FD12073CFC000000030000000500000005000000010000000500000004115224FF00000004000000051151E8FD0A0001081151E8FF08A91303120700F800000005000000010000000500000004115224FF0000000408A91303120700F808A912FF12073D08050000F600000005135D4501000000000000000500000004000000050000000112073CF80000000108A912FF12073D08050000F600000005135D4501000000000000000500000004000000050000000300000002115224FB000000020A0000FC115224FD000000030A00010800000005115224FF0000000408A91303120700F8000000050000000112073CF80000000108A912FB12073D040000000500000002120701040000000208A912FD12073CFC0000000308A912FF00000005120701080000000400000009120700FC08A912FF00000005120701080000000400000007000000031151E8FD0A0001081151E8FF08A91303120700F808A912FB12073D04050000F6000000050000000A00000002000000050000000112073CF80000000108A912FB12073D04050000F600000005135D45010000000000000005000000020000000500000004115224FF0000000408A91303120700F808A912FB12073D0408A912FF12073D08050000F6135D8101050000FC00000005135D44FD04548A03138670F80000000500000001000000050000000300000000135D450100000000050000FC00000005135D44FD04548A03138670F80CFD9BFB0F350D04000000050000000200000005000000011386ACF8000000010CFD9BFB00000009000000050000000300000004120701080000000400000009000000021207010400000002000000090000000112073CF80000000108A912FB12073D0408A912FF12073D08050000F6135D8101050000FC00000005135D44FD0CFD9C030F34D0F80000000500000001000000050000000300000000135D450100000000050000FC00000005135D44FD0CFD9C030F34D0F800000005000000010000000900000003000000041207010800000004000000090000000212070104000000020000000900000003000000011151E903000000010A0001041151E8FB0A0000FC000000051151E8FD0A00010800000005115224FF0000000408A912FF12073D08050000F6000000050000000800000004000000080000000300000002115224FB000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB12073D0408A912FD12073CFC0000000308A912FF12073D08050000F600000005135D45010000000000000005000000041207010800000004050000F60000000500000009120700FC08A912FF000000051207010800000004050000F600000005000000090000000300000002120701040000000208A912FD12073CFC0000000308A912FF12073D08050000F6000000050000000900000004120701080000000400000009120700FC08A912FF12073D08050000F6000000050000000900000004120701080000000400000009000000031151E8FD0A0001081151E8FF08A912FB12073D04050000F6000000050000000A000000020000000A00000004115224FF0000000408A912FB12073D0408A912FF12073D08050000F6135D8101050000F800000009135D4503000000010000000900000000135D450100000000050000F8000000090000000A0000000412070108000000040000000800000002120701040000000208A912FF000000090000000900000003"
theorem small_3352440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352440_right_root small_3352440_right_fuel small_3352440_right_count small_3352440_right_encoded = true := by
  decide +kernel
theorem small_3352440_right_covered : CoveredBy scale carrier boxes small_3352440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352440_right_root small_3352440_right_fuel small_3352440_right_count small_3352440_right_encoded small_3352440_right_checked

theorem cover_3352440 : CoveredBy scale carrier boxes root_3352440 := by
  apply coveredBy_split_literal root_3352440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352441 small_3352440_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352441
  · exact small_3352440_right_covered
#print axioms cover_3352440

def root_3352439 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352439 : CoveredBy scale carrier boxes root_3352439 := by
  apply coveredBy_split_literal root_3352439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352440 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1298.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352440
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1298.covered
#print axioms cover_3352439

def root_3334849 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334849 : CoveredBy scale carrier boxes root_3334849 := by
  apply coveredBy_split_literal root_3334849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3352439 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334850
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3352439
#print axioms cover_3334849

def root_3409459 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3409459 : CoveredBy scale carrier boxes root_3409459 := by
  apply coveredBy_split_literal root_3409459 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1301.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1302.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1301.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1302.covered
#print axioms cover_3409459

def root_3409453 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409453_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409453_left_fuel : Nat := 1
def small_3409453_left_count : Nat := 1
def small_3409453_left_encoded : String := "00000002"
theorem small_3409453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3409453_left_root small_3409453_left_fuel small_3409453_left_count small_3409453_left_encoded = true := by
  decide +kernel
theorem small_3409453_left_covered : CoveredBy scale carrier boxes small_3409453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3409453_left_root small_3409453_left_fuel small_3409453_left_count small_3409453_left_encoded small_3409453_left_checked

theorem cover_3409453 : CoveredBy scale carrier boxes root_3409453 := by
  apply coveredBy_split_literal root_3409453 small_3409453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3409459 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3409453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3409459
#print axioms cover_3409453

def root_3409159 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409159_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409159_left_fuel : Nat := 20
def small_3409159_left_count : Nat := 137
def small_3409159_left_encoded : String := "1386AD0404548A07138670FC0CFD9C090F34D0FE0C9A86F80F878D0300000008000000010F87510300000001067ECE810000000500000008000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09067ECE8112EA58F6067ECE7B0000000512EA5904000000020000000500000000000000060000000400000006000000010F875103000000010C9A86FE0F878D09067ECE8112EA58F6067ECE7B0000000512EA590400000002000000050000000012EA94F600000000067ECE7B0000000512EA59040000000200000007000000040F87510900000004067ECE8112EA58F6067ECE7B0000000512EA590400000002000000050000000012EA94F600000000067ECE7B0000000512EA590400000002022A45870000000500000006000000031386ACFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0900000008000000040F8751090000000400000006000000010F875103000000010C9A86FE0F878D0900000009000000040F87510900000004067ECE8112EA58F6067ECE7B12EA9504067ECE8700000005000000090000000212EA590400000002067ECE8712EA58FC0B4D43F810804D030B4D43FE10804D090000000500000004000000050000000110801103000000010B4D43FE000000090000000500000003000000090000000012EA94F600000000067ECE7B0000000612EA590400000002067ECE87000000060000000800000002"
theorem small_3409159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3409159_left_root small_3409159_left_fuel small_3409159_left_count small_3409159_left_encoded = true := by
  decide +kernel
theorem small_3409159_left_covered : CoveredBy scale carrier boxes small_3409159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3409159_left_root small_3409159_left_fuel small_3409159_left_count small_3409159_left_encoded small_3409159_left_checked

theorem cover_3409159 : CoveredBy scale carrier boxes root_3409159 := by
  apply coveredBy_split_literal root_3409159 small_3409159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3409453 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3409159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3409453
#print axioms cover_3409159

def root_3409153 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409153_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409153_left_fuel : Nat := 1
def small_3409153_left_count : Nat := 1
def small_3409153_left_encoded : String := "00000001"
theorem small_3409153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3409153_left_root small_3409153_left_fuel small_3409153_left_count small_3409153_left_encoded = true := by
  decide +kernel
theorem small_3409153_left_covered : CoveredBy scale carrier boxes small_3409153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3409153_left_root small_3409153_left_fuel small_3409153_left_count small_3409153_left_encoded small_3409153_left_checked

theorem cover_3409153 : CoveredBy scale carrier boxes root_3409153 := by
  apply coveredBy_split_literal root_3409153 small_3409153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3409159 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3409153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3409159
#print axioms cover_3409153

def root_3409097 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409097_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409097_left_fuel : Nat := 9
def small_3409097_left_count : Nat := 27
def small_3409097_left_encoded : String := "0F34D0F8045489FB1386AD0404548A07138670FC0CFD9C09000000080F350CFE0000000400000006000000030000000800000002138671040000000204548A07138670FC0CFD9C09000000080F350CFE000000040C9A86FE0000000800000006000000030000000800000001"
theorem small_3409097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3409097_left_root small_3409097_left_fuel small_3409097_left_count small_3409097_left_encoded = true := by
  decide +kernel
theorem small_3409097_left_covered : CoveredBy scale carrier boxes small_3409097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3409097_left_root small_3409097_left_fuel small_3409097_left_count small_3409097_left_encoded small_3409097_left_checked

theorem cover_3409097 : CoveredBy scale carrier boxes root_3409097 := by
  apply coveredBy_split_literal root_3409097 small_3409097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3409153 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3409097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3409153
#print axioms cover_3409097

def root_3409091 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409091_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3409091_left_fuel : Nat := 1
def small_3409091_left_count : Nat := 1
def small_3409091_left_encoded : String := "00000000"
theorem small_3409091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3409091_left_root small_3409091_left_fuel small_3409091_left_count small_3409091_left_encoded = true := by
  decide +kernel
theorem small_3409091_left_covered : CoveredBy scale carrier boxes small_3409091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3409091_left_root small_3409091_left_fuel small_3409091_left_count small_3409091_left_encoded small_3409091_left_checked

theorem cover_3409091 : CoveredBy scale carrier boxes root_3409091 := by
  apply coveredBy_split_literal root_3409091 small_3409091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3409097 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3409091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3409097
#print axioms cover_3409091

def root_3406933 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3406933 : CoveredBy scale carrier boxes root_3406933 := by
  apply coveredBy_split_literal root_3406933 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1300.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3409091 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1300.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3409091
#print axioms cover_3406933

def root_3406927 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406927_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406927_left_fuel : Nat := 1
def small_3406927_left_count : Nat := 1
def small_3406927_left_encoded : String := "00000004"
theorem small_3406927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406927_left_root small_3406927_left_fuel small_3406927_left_count small_3406927_left_encoded = true := by
  decide +kernel
theorem small_3406927_left_covered : CoveredBy scale carrier boxes small_3406927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406927_left_root small_3406927_left_fuel small_3406927_left_count small_3406927_left_encoded small_3406927_left_checked

theorem cover_3406927 : CoveredBy scale carrier boxes root_3406927 := by
  apply coveredBy_split_literal root_3406927 small_3406927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406933 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3406927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406933
#print axioms cover_3406927

def root_3406895 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406895_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406895_left_fuel : Nat := 8
def small_3406895_left_count : Nat := 15
def small_3406895_left_encoded : String := "120700FE04548A01138670F60CFD9C03000000080F350CF800000001045489FB00000009138671040000000200000008000000000000000800000004"
theorem small_3406895_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406895_left_root small_3406895_left_fuel small_3406895_left_count small_3406895_left_encoded = true := by
  decide +kernel
theorem small_3406895_left_covered : CoveredBy scale carrier boxes small_3406895_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406895_left_root small_3406895_left_fuel small_3406895_left_count small_3406895_left_encoded small_3406895_left_checked

theorem cover_3406895 : CoveredBy scale carrier boxes root_3406895 := by
  apply coveredBy_split_literal root_3406895 small_3406895_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406927 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3406895_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406927
#print axioms cover_3406895

def root_3406890 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406890_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406890_right_fuel : Nat := 1
def small_3406890_right_count : Nat := 1
def small_3406890_right_encoded : String := "00000003"
theorem small_3406890_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406890_right_root small_3406890_right_fuel small_3406890_right_count small_3406890_right_encoded = true := by
  decide +kernel
theorem small_3406890_right_covered : CoveredBy scale carrier boxes small_3406890_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406890_right_root small_3406890_right_fuel small_3406890_right_count small_3406890_right_encoded small_3406890_right_checked

theorem cover_3406890 : CoveredBy scale carrier boxes root_3406890 := by
  apply coveredBy_split_literal root_3406890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406895 small_3406890_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406895
  · exact small_3406890_right_covered
#print axioms cover_3406890

def root_3406889 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406889_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406889_right_fuel : Nat := 28
def small_3406889_right_count : Nat := 263
def small_3406889_right_encoded : String := "12073CFC0000000308A91309120700FE000000080000000412073CFE0000000404548A01138670F60CFD9C030F34D0F8045489FB1386AD040CFD9C070F34D0FC0000000800000003000000080000000213867104000000020CFD9C070F34D0FC000000080000000300000008000000010F350CF800000001045489FB1386AD040CFD9C070F34D0FC0CFD9C09000000090F350CFE000000040C9A86F80F878D030C9A86FE000000090F87510900000004022A458113E1C4F6067ECE7B0000000912EA5904000000020000000A0000000013E200F600000000067ECE7B0000000812EA59040000000200000008000000010F8751030000000100000009000000030F350CFC000000030CFD9C09000000090F350CFE000000040C9A86F80F878D030C9A86FC000000080000000800000001000000090000000213867104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0900000008000000040F87510900000004022A458113E1C4F6022A457B13E201040AD3578710D100FC0000000A00000003000000080000000213E1C504000000020AD3578710D100FC0DE7C9F8000000070E5FD903000000010B4D43FE000000080000000700000003000000070000000000000008000000010F875103000000010C9A86FE0F878D0900000009000000040F87510900000004022A458113E1C4F6022A457B0000000913E1C504000000020AD3578710D100FC0B4D43F810804D030B4D43FE0000000910801109000000040000000A000000010000000900000003000000090000000013E200F600000000022A457B13E20104000000090000000213E1C504000000020AD3578710D100FC0B4D43F810804D030000000800000001000000090000000300000009000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86F80F878D0300000008000000010F875103000000010C9A86FC0F878D070C9A86FE0000000800000009000000030F8751070000000300000008000000001386ACF6000000000CFD9C030F34D0F800000008000000010F350CF800000001045489FB1386AD040CFD9C070F34D0FC0CFD9C09000000080F350CFE000000040C9A86F80F878D0300000008000000010F8751030000000100000009000000030F350CFC000000030CFD9C09000000080F350CFE000000040C9A86F800000008000000090000000213867104000000020CFD9C070F34D0FC0CFD9C09000000080F350CFE000000040C9A86F8000000080F875103000000010C9A86FE000000080F87510900000004067ECE8112EA58F6022A457B13E201040AD3578710D100FC0000000800000003000000080000000213E1C504000000020AD3578710D100FC0000000800000003000000080000000000000008000000030F350CFC0000000300000008"
theorem small_3406889_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406889_right_root small_3406889_right_fuel small_3406889_right_count small_3406889_right_encoded = true := by
  decide +kernel
theorem small_3406889_right_covered : CoveredBy scale carrier boxes small_3406889_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406889_right_root small_3406889_right_fuel small_3406889_right_count small_3406889_right_encoded small_3406889_right_checked

theorem cover_3406889 : CoveredBy scale carrier boxes root_3406889 := by
  apply coveredBy_split_literal root_3406889 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406890 small_3406889_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406890
  · exact small_3406889_right_covered
#print axioms cover_3406889

def root_3406883 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406883_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406883_left_fuel : Nat := 1
def small_3406883_left_count : Nat := 1
def small_3406883_left_encoded : String := "00000002"
theorem small_3406883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406883_left_root small_3406883_left_fuel small_3406883_left_count small_3406883_left_encoded = true := by
  decide +kernel
theorem small_3406883_left_covered : CoveredBy scale carrier boxes small_3406883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406883_left_root small_3406883_left_fuel small_3406883_left_count small_3406883_left_encoded small_3406883_left_checked

theorem cover_3406883 : CoveredBy scale carrier boxes root_3406883 := by
  apply coveredBy_split_literal root_3406883 small_3406883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406889 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3406883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406889
#print axioms cover_3406883

def root_3406377 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406377_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406377_left_fuel : Nat := 19
def small_3406377_left_count : Nat := 237
def small_3406377_left_encoded : String := "12073D0408A91307120700FC08A91309120700FE04548A01000000091386ACF6000000000CFD9C03000000090F350CF8000000010CFD9BFB00000009000000090000000412073CFE0000000404548A01138670F60CFD9C030F34D0F80CFD9BFB0F350D0400000006000000020F34D1040000000204548A07138670FC0CFD9C09000000050F350CFE0000000400000005000000031386ACFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE0F878D09000000060000000400000006000000010F350CF8000000010CFD9BFB0F350D0404548A07138670FC0CFD9C09000000090F350CFE000000040C9A86F800000006000000050000000300000009000000020F34D1040000000204548A07138670FC0CFD9C09000000050F350CFE000000040C9A86F80F878D03000000050000000100000005000000031386ACFC000000030CFD9C09000000090F350CFE000000040C9A86F80F878D030C9A86FE000000090000000A0000000100000009000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB000000060F34D1040000000204548A070000000600000006000000010F350CF8000000010CFD9BFB0F350D0404548A07138670FC0CFD9C090000000600000006000000031386ACFC0000000300000009000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE0C9A86F80F878D03000000090000000100000007000000040F350CFE000000040C9A86F8000000060F875103000000010C9A86FE0000000700000005000000031386ACFC000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86F80F878D0300000006000000010F875103000000010C9A86FE00000009000000060000000312073CFC0000000308A91309120700FE000000090000000412073CFE0000000404548A01138670F60CFD9C030F34D0F80CFD9BFB0F350D040CFD9C070F34D0FC000000090000000300000009000000020F34D104000000020CFD9C070F34D0FC0CFD9C09000000080F350CFE000000040C9A86FE000000080F875109000000040000000A0000000300000008000000010F350CF8000000010CFD9BFB000000090F34D104000000020CFD9C070F34D0FC000000090000000300000009000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350D0400000009000000020F34D104000000020CFD9C070F34D0FC000000080000000300000008000000010F350CF8000000010CFD9BFB000000090F34D104000000020CFD9C070F34D0FC00000009000000030000000900000002"
theorem small_3406377_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406377_left_root small_3406377_left_fuel small_3406377_left_count small_3406377_left_encoded = true := by
  decide +kernel
theorem small_3406377_left_covered : CoveredBy scale carrier boxes small_3406377_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406377_left_root small_3406377_left_fuel small_3406377_left_count small_3406377_left_encoded small_3406377_left_checked

theorem cover_3406377 : CoveredBy scale carrier boxes root_3406377 := by
  apply coveredBy_split_literal root_3406377 small_3406377_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406883 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3406377_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406883
#print axioms cover_3406377

def root_3406371 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406371_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406371_left_fuel : Nat := 1
def small_3406371_left_count : Nat := 1
def small_3406371_left_encoded : String := "00000001"
theorem small_3406371_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406371_left_root small_3406371_left_fuel small_3406371_left_count small_3406371_left_encoded = true := by
  decide +kernel
theorem small_3406371_left_covered : CoveredBy scale carrier boxes small_3406371_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406371_left_root small_3406371_left_fuel small_3406371_left_count small_3406371_left_encoded small_3406371_left_checked

theorem cover_3406371 : CoveredBy scale carrier boxes root_3406371 := by
  apply coveredBy_split_literal root_3406371 small_3406371_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406377 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3406371_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406377
#print axioms cover_3406371

def root_3406169 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406169_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406169_left_fuel : Nat := 16
def small_3406169_left_count : Nat := 93
def small_3406169_left_encoded : String := "120700F808A912FB12073D0408A91307120700FC08A91309120700FE000000080000000412073CFE0000000404548A01138670F604548A03138670F800000006000000011386ACF8000000010CFD9BFB000000060000000600000000000000060000000312073CFC0000000308A913090000000812073CFE0000000404548A01138670F604548A03138670F800000008000000011386ACF8000000010CFD9BFB0F350D040CFD9C070F34D0FC000000060000000300000008000000020F34D1040000000200000008000000001386ACF60000000004548A03000000081386ACF8000000010CFD9BFB000000080F34D104000000020000000800000002120701040000000208A91307120700FC08A913090000000812073CFE0000000404548A01138670F604548A03000000081386ACF800000001045489FB1386AD0404548A07138670FC000000080000000300000008000000021386710400000002000000080000000000000008000000030000000800000001"
theorem small_3406169_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406169_left_root small_3406169_left_fuel small_3406169_left_count small_3406169_left_encoded = true := by
  decide +kernel
theorem small_3406169_left_covered : CoveredBy scale carrier boxes small_3406169_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406169_left_root small_3406169_left_fuel small_3406169_left_count small_3406169_left_encoded small_3406169_left_checked

theorem cover_3406169 : CoveredBy scale carrier boxes root_3406169 := by
  apply coveredBy_split_literal root_3406169 small_3406169_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406371 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3406169_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406371
#print axioms cover_3406169

def root_3406164 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406164_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406164_right_fuel : Nat := 1
def small_3406164_right_count : Nat := 1
def small_3406164_right_encoded : String := "00000000"
theorem small_3406164_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406164_right_root small_3406164_right_fuel small_3406164_right_count small_3406164_right_encoded = true := by
  decide +kernel
theorem small_3406164_right_covered : CoveredBy scale carrier boxes small_3406164_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406164_right_root small_3406164_right_fuel small_3406164_right_count small_3406164_right_encoded small_3406164_right_checked

theorem cover_3406164 : CoveredBy scale carrier boxes root_3406164 := by
  apply coveredBy_split_literal root_3406164 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406169 small_3406164_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406169
  · exact small_3406164_right_covered
#print axioms cover_3406164

def root_3406163 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3406163 : CoveredBy scale carrier boxes root_3406163 := by
  apply coveredBy_split_literal root_3406163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406164 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1303.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406164
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1303.covered
#print axioms cover_3406163

def root_3406158 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406158_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406158_right_fuel : Nat := 1
def small_3406158_right_count : Nat := 1
def small_3406158_right_encoded : String := "00000004"
theorem small_3406158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406158_right_root small_3406158_right_fuel small_3406158_right_count small_3406158_right_encoded = true := by
  decide +kernel
theorem small_3406158_right_covered : CoveredBy scale carrier boxes small_3406158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406158_right_root small_3406158_right_fuel small_3406158_right_count small_3406158_right_encoded small_3406158_right_checked

theorem cover_3406158 : CoveredBy scale carrier boxes root_3406158 := by
  apply coveredBy_split_literal root_3406158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406163 small_3406158_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406163
  · exact small_3406158_right_covered
#print axioms cover_3406158

def root_3415151 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3415151 : CoveredBy scale carrier boxes root_3415151 := by
  apply coveredBy_split_literal root_3415151 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1304.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1305.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1304.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1305.covered
#print axioms cover_3415151

def root_3415145 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3415145_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3415145_left_fuel : Nat := 1
def small_3415145_left_count : Nat := 1
def small_3415145_left_encoded : String := "00000002"
theorem small_3415145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3415145_left_root small_3415145_left_fuel small_3415145_left_count small_3415145_left_encoded = true := by
  decide +kernel
theorem small_3415145_left_covered : CoveredBy scale carrier boxes small_3415145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3415145_left_root small_3415145_left_fuel small_3415145_left_count small_3415145_left_encoded small_3415145_left_checked

theorem cover_3415145 : CoveredBy scale carrier boxes root_3415145 := by
  apply coveredBy_split_literal root_3415145 small_3415145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3415151 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3415145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3415151
#print axioms cover_3415145

def root_3414753 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414753_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414753_left_fuel : Nat := 18
def small_3414753_left_count : Nat := 183
def small_3414753_left_encoded : String := "12073D0408A91307120700FC050000FE135D810904548A01138670F60CFD9C030F34D0F80CFD9BFB0000000600000006000000010F350CF8000000010CFD9BFB0000000A0F34D1040000000204548A07000000050000000A000000001386ACF6000000000CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFB0F350D0400000006000000020F34D1040000000204548A07000000061386ACFC000000030C9A86F8000000060F875103000000010000000600000004135D45090000000404548A01138670F60CFD9C030F34D0F800000006000000010000000A000000001386ACF6000000000CFD9C0300000006000000060000000312073CFC00000003050000FE135D810904548A01138670F60CFD9C030F34D0F80CFD9BFB0000000A0F34D104000000020CFD9C070F34D0FC0000000A000000030000000A000000010F350CF8000000010CFD9BFB0F350D040000000A000000020F34D104000000020CFD9C070F34D0FC0000000A000000030000000A000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350D040CFD9C070000000600000009000000020F34D104000000020CFD9C07000000060F350CFC0000000300000008000000010F350CF8000000010CFD9BFB0F350D040CFD9C070F34D0FC000000060000000300000009000000020F34D104000000020CFD9C070F34D0FC0C9A86F80F878D0300000006000000010F87510300000001078000FE000000090000000A000000030F350CFC000000030C9A86F80F878D030C9A86FC000000090F8751070000000300000008000000010000000900000004135D45090000000404548A01138670F60CFD9C030F34D0F80000000A000000010000000A000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0000000A0F34D104000000020CFD9C07000000060000000A000000010F350CF8000000010CFD9BFB0000000A0F34D104000000020CFD9C070F34D0FC0000000A000000030000000A00000002"
theorem small_3414753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3414753_left_root small_3414753_left_fuel small_3414753_left_count small_3414753_left_encoded = true := by
  decide +kernel
theorem small_3414753_left_covered : CoveredBy scale carrier boxes small_3414753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3414753_left_root small_3414753_left_fuel small_3414753_left_count small_3414753_left_encoded small_3414753_left_checked

theorem cover_3414753 : CoveredBy scale carrier boxes root_3414753 := by
  apply coveredBy_split_literal root_3414753 small_3414753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3415145 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3414753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3415145
#print axioms cover_3414753

def root_3414747 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414747_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414747_left_fuel : Nat := 1
def small_3414747_left_count : Nat := 1
def small_3414747_left_encoded : String := "00000001"
theorem small_3414747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3414747_left_root small_3414747_left_fuel small_3414747_left_count small_3414747_left_encoded = true := by
  decide +kernel
theorem small_3414747_left_covered : CoveredBy scale carrier boxes small_3414747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3414747_left_root small_3414747_left_fuel small_3414747_left_count small_3414747_left_encoded small_3414747_left_checked

theorem cover_3414747 : CoveredBy scale carrier boxes root_3414747 := by
  apply coveredBy_split_literal root_3414747 small_3414747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3414753 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3414747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3414753
#print axioms cover_3414747

def root_3414485 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414485_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414485_left_fuel : Nat := 16
def small_3414485_left_count : Nat := 125
def small_3414485_left_encoded : String := "120700F808A912FB12073D0408A91307120700FC050000FE135D81090000000600000004000000060000000312073CFC00000003050000FE135D810904548A01138670F604548A03138670F80CFD9BFB0000000A0F34D1040000000200000008000000011386ACF8000000010CFD9BFB0000000A0F34D104000000020CFD9C070000000500000008000000001386ACF60000000004548A03138670F80CFD9BFB0000000800000006000000011386ACF8000000010CFD9BFB0F350D0400000006000000020F34D104000000020000000800000004135D45090000000404548A01138670F604548A03138670F80000000A000000010000000A000000001386ACF60000000004548A03138670F80CFD9BFB0000000A00000006000000011386ACF8000000010CFD9BFB0000000A0000000600000002120701040000000208A91307120700FC050000FE135D810904548A01138670F604548A03000000051386ACF800000001045489FB0000000500000006000000000000000600000004000000060000000312073CFC00000003050000FE135D810904548A01138670F604548A03000000071386ACF800000001045489FB1386AD040CFD9C070F34D0FC0000000700000003000000070000000200000007000000000000000800000004135D45090000000404548A01000000070000000700000001"
theorem small_3414485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3414485_left_root small_3414485_left_fuel small_3414485_left_count small_3414485_left_encoded = true := by
  decide +kernel
theorem small_3414485_left_covered : CoveredBy scale carrier boxes small_3414485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3414485_left_root small_3414485_left_fuel small_3414485_left_count small_3414485_left_encoded small_3414485_left_checked

theorem cover_3414485 : CoveredBy scale carrier boxes root_3414485 := by
  apply coveredBy_split_literal root_3414485 small_3414485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3414747 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3414485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3414747
#print axioms cover_3414485

def root_3414480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414480_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414480_right_fuel : Nat := 1
def small_3414480_right_count : Nat := 1
def small_3414480_right_encoded : String := "00000000"
theorem small_3414480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3414480_right_root small_3414480_right_fuel small_3414480_right_count small_3414480_right_encoded = true := by
  decide +kernel
theorem small_3414480_right_covered : CoveredBy scale carrier boxes small_3414480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3414480_right_root small_3414480_right_fuel small_3414480_right_count small_3414480_right_encoded small_3414480_right_checked

theorem cover_3414480 : CoveredBy scale carrier boxes root_3414480 := by
  apply coveredBy_split_literal root_3414480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3414485 small_3414480_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3414485
  · exact small_3414480_right_covered
#print axioms cover_3414480

def root_3414479 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414479_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414479_right_fuel : Nat := 26
def small_3414479_right_count : Nat := 317
def small_3414479_right_encoded : String := "12073CF60000000008A91303120700F808A912FB12073D0408A913070000000612073CFC00000003050000FE135D81090CFD9C010F34D0F604548A030000000800000006000000000000000600000004135D4509000000040CFD9C010F34D0F604548A030000000600000006000000000000000600000002120701040000000208A913070000000612073CFC00000003050000FE00000008135D4509000000040CFD9C0100000007000000060000000112073CF80000000108A912FB12073D0408A91307120700FC050000FE00000006000000060000000312073CFC00000003050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F80CFD9BFB0000000600000006000000010F350CF8000000010CFD9BFB0F350D040CFD9C070000000600000009000000020F34D104000000020CFD9C07000000060F350CFC000000030C9A86F80000000600000009000000000F350CF6000000000CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFB000000060000000600000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFB0F350D0400000006000000020F34D104000000020CFD9C07000000060F350CFC0000000300000006000000000F350CF6000000000CFD9C03000000060000000600000002120701040000000208A91307120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F800000006000000010F350CF800000001045489FB00000006138671040000000204548A07138670FC0C9A86F8000000060F87510300000001078000FE128A7D09000000060000000400000006000000031386ACFC000000030C9A86F8000000060F87510300000001078000FE128A7D090AD3578110D100F6022A457B0000000613E1C504000000020000000600000000000000060000000400000006000000000F350CF6000000000CFD9C03000000060F350CF800000001045489FB00000006138671040000000204548A07000000060000000600000004135D4509000000040CFD9C010F34D0F60000000600000000000000060000000312073CFC00000003050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F8045489FB00000008138671040000000200000008000000010F350CF800000001045489FB1386AD040CFD9C070F34D0FC0C9A86F8000000060F8751030000000100000006000000030F350CFC000000030C9A86F8000000080F875103000000010C9A86FC00000008000000060000000213867104000000020CFD9C070F34D0FC0C9A86F8000000060F87510300000001078000FE128A7D090AD3578110D100F60000000800000000000000060000000400000006000000030F350CFC000000030C9A86F8000000080F8751030000000100000005000000000F350CF6000000000CFD9C030F34D0F800000006000000010F350CF800000001045489FB1386AD04000000060000000213867104000000020CFD9C07000000060000000500000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F8045489FB0000000600000006000000010F350CF800000001045489FB1386AD040CFD9C07000000060F350CFC000000030C9A86F8000000060F87510300000001000000060000000213867104000000020CFD9C070000000600000005000000000F350CF6000000000CFD9C030F34D0F800000006000000010F350CF800000001045489FB0000000600000005"
theorem small_3414479_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3414479_right_root small_3414479_right_fuel small_3414479_right_count small_3414479_right_encoded = true := by
  decide +kernel
theorem small_3414479_right_covered : CoveredBy scale carrier boxes small_3414479_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3414479_right_root small_3414479_right_fuel small_3414479_right_count small_3414479_right_encoded small_3414479_right_checked

theorem cover_3414479 : CoveredBy scale carrier boxes root_3414479 := by
  apply coveredBy_split_literal root_3414479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3414480 small_3414479_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3414480
  · exact small_3414479_right_covered
#print axioms cover_3414479

def root_3414473 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414473_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3414473_left_fuel : Nat := 1
def small_3414473_left_count : Nat := 1
def small_3414473_left_encoded : String := "00000004"
theorem small_3414473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3414473_left_root small_3414473_left_fuel small_3414473_left_count small_3414473_left_encoded = true := by
  decide +kernel
theorem small_3414473_left_covered : CoveredBy scale carrier boxes small_3414473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3414473_left_root small_3414473_left_fuel small_3414473_left_count small_3414473_left_encoded small_3414473_left_checked

theorem cover_3414473 : CoveredBy scale carrier boxes root_3414473 := by
  apply coveredBy_split_literal root_3414473 small_3414473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3414479 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3414473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3414479
#print axioms cover_3414473

def root_3406157 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3406157 : CoveredBy scale carrier boxes root_3406157 := by
  apply coveredBy_split_literal root_3406157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3414473 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406158
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3414473
#print axioms cover_3406157

def root_3406152 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406152_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406152_right_fuel : Nat := 1
def small_3406152_right_count : Nat := 1
def small_3406152_right_encoded : String := "00000003"
theorem small_3406152_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406152_right_root small_3406152_right_fuel small_3406152_right_count small_3406152_right_encoded = true := by
  decide +kernel
theorem small_3406152_right_covered : CoveredBy scale carrier boxes small_3406152_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406152_right_root small_3406152_right_fuel small_3406152_right_count small_3406152_right_encoded small_3406152_right_checked

theorem cover_3406152 : CoveredBy scale carrier boxes root_3406152 := by
  apply coveredBy_split_literal root_3406152 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406157 small_3406152_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406157
  · exact small_3406152_right_covered
#print axioms cover_3406152

def root_3406151 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3406151 : CoveredBy scale carrier boxes root_3406151 := by
  apply coveredBy_split_literal root_3406151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406152 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1306.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406152
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1306.covered
#print axioms cover_3406151

def root_3406145 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406145_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3406145_left_fuel : Nat := 1
def small_3406145_left_count : Nat := 1
def small_3406145_left_encoded : String := "00000002"
theorem small_3406145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3406145_left_root small_3406145_left_fuel small_3406145_left_count small_3406145_left_encoded = true := by
  decide +kernel
theorem small_3406145_left_covered : CoveredBy scale carrier boxes small_3406145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3406145_left_root small_3406145_left_fuel small_3406145_left_count small_3406145_left_encoded small_3406145_left_checked

theorem cover_3406145 : CoveredBy scale carrier boxes root_3406145 := by
  apply coveredBy_split_literal root_3406145 small_3406145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406151 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3406145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406151
#print axioms cover_3406145

def root_3405697 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3405697_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3405697_left_fuel : Nat := 17
def small_3405697_left_count : Nat := 215
def small_3405697_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120700F608A91303120700F808A913070000000612073CFC0000000308A913090000000612073CFE000000040500010400000006135D80FB0000000204548A0100000009000000060000000112073CF80000000108A91307120700FC08A913090000000912073CFE000000040500010400000006135D80FB0000000204548A01000000090000000600000003000000090000000012073CF60000000008A91303120700F8000000060000000112073CF80000000108A91307120700FC08A91309120700FE0500010400000009135D80FB000000020CFD9C0100000009000000060000000412073CFE00000004000000060000000312073CFC0000000308A913090000000600000009000000041151E9090000000408A91301120700F608A91303120700F808A913070000000612073CFC000000030500010400000006135D80FB00000002050000FE135D81090000000600000004000000060000000112073CF80000000108A91307120700FC000000060000000312073CFC00000003050001040000000A135D80FB00000002050000FE135D810904548A010000000900000009000000040000000A0000000012073CF60000000008A91303120700F8000000060000000112073CF80000000108A913070000000612073CFC000000030500010400000006135D80FB0000000200000006000000031151E907000000030A0000FE1152250908A91301120700F608A91303120700F808A913090000000612073CFE000000040500010400000006000000080000000112073CF80000000108A913090000000912073CFE000000040500010400000009000000090000000012073CF60000000008A91303120700F8000000060000000100000009000000041151E9090000000408A91301120700F608A91303120700F805000104135D44FB0000000A00000002135D80FB00000002050000FC0000000A135D450700000003050000FE0000000800000005000000010000000A0000000012073CF60000000008A91303120700F805000104135D44FB050000FC00000006135D4507000000030000000800000002135D80FB00000002050000FC00000006000000080000000112073CF8000000010500010400000006135D80FB00000002050000FC000000060000000600000002"
theorem small_3405697_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3405697_left_root small_3405697_left_fuel small_3405697_left_count small_3405697_left_encoded = true := by
  decide +kernel
theorem small_3405697_left_covered : CoveredBy scale carrier boxes small_3405697_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3405697_left_root small_3405697_left_fuel small_3405697_left_count small_3405697_left_encoded small_3405697_left_checked

theorem cover_3405697 : CoveredBy scale carrier boxes root_3405697 := by
  apply coveredBy_split_literal root_3405697 small_3405697_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3406145 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3405697_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3406145
#print axioms cover_3405697

def root_3405692 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3405692_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3405692_right_fuel : Nat := 1
def small_3405692_right_count : Nat := 1
def small_3405692_right_encoded : String := "00000001"
theorem small_3405692_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3405692_right_root small_3405692_right_fuel small_3405692_right_count small_3405692_right_encoded = true := by
  decide +kernel
theorem small_3405692_right_covered : CoveredBy scale carrier boxes small_3405692_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3405692_right_root small_3405692_right_fuel small_3405692_right_count small_3405692_right_encoded small_3405692_right_checked

theorem cover_3405692 : CoveredBy scale carrier boxes root_3405692 := by
  apply coveredBy_split_literal root_3405692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3405697 small_3405692_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3405697
  · exact small_3405692_right_covered
#print axioms cover_3405692

def root_3421619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3421619 : CoveredBy scale carrier boxes root_3421619 := by
  apply coveredBy_split_literal root_3421619 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1307.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1308.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1307.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1308.covered
#print axioms cover_3421619

def root_3421614 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3421614_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3421614_right_fuel : Nat := 1
def small_3421614_right_count : Nat := 1
def small_3421614_right_encoded : String := "00000004"
theorem small_3421614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3421614_right_root small_3421614_right_fuel small_3421614_right_count small_3421614_right_encoded = true := by
  decide +kernel
theorem small_3421614_right_covered : CoveredBy scale carrier boxes small_3421614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3421614_right_root small_3421614_right_fuel small_3421614_right_count small_3421614_right_encoded small_3421614_right_checked

theorem cover_3421614 : CoveredBy scale carrier boxes root_3421614 := by
  apply coveredBy_split_literal root_3421614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3421619 small_3421614_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3421619
  · exact small_3421614_right_covered
#print axioms cover_3421614

def root_3428979 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3428979 : CoveredBy scale carrier boxes root_3428979 := by
  apply coveredBy_split_literal root_3428979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1309.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1310.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1309.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1310.covered
#print axioms cover_3428979

def root_3428974 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3428974_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3428974_right_fuel : Nat := 1
def small_3428974_right_count : Nat := 1
def small_3428974_right_encoded : String := "00000004"
theorem small_3428974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3428974_right_root small_3428974_right_fuel small_3428974_right_count small_3428974_right_encoded = true := by
  decide +kernel
theorem small_3428974_right_covered : CoveredBy scale carrier boxes small_3428974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3428974_right_root small_3428974_right_fuel small_3428974_right_count small_3428974_right_encoded small_3428974_right_checked

theorem cover_3428974 : CoveredBy scale carrier boxes root_3428974 := by
  apply coveredBy_split_literal root_3428974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3428979 small_3428974_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3428979
  · exact small_3428974_right_covered
#print axioms cover_3428974

def root_3428973 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3428973_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3428973_right_fuel : Nat := 23
def small_3428973_right_count : Nat := 241
def small_3428973_right_encoded : String := "128A410900000004067ECE8112EA58F6022A457B13E20104067ECE8712EA58FC08C000F80000000A11FBE90300000001000000080000000312EA94FC0000000308C000F80000000A11FBE903000000010000000A0000000213E1C50400000002067ECE8712EA58FC08C000F811FC2503064000FE12FFAD090569AC4100000008134110F6000000000115233B13F895040569AC47000000060000000A0000000213F85904000000020569AC4700000008134110FC0000000300000008000000040000000800000001000000080000000312EA94FC0000000308C000F811FC2503064000FE12FFAD090569AC411340D4F60115233B0000000A13F85904000000020793F0C7000000080000000700000000134110F6000000000115233B13F895040793F0C70000000A0000000A0000000213F85904000000020793F0C7128220FC096000F80000000A11AA81030000000106E000FE12C8210905F43D610000000800000005000000040000000800000003000000050000000412FF7109000000040000000A0000000111FBE90300000001064000FE12FFAD090569AC4100000008134110F6000000000115233B13F895040793F0C70000000812825CFC00000003082000F80000000A12465D0300000001000000080000000213F85904000000020793F0C700000008000000050000000412FF710900000004000000080000000012EA94F600000000022A457B13E20104067ECE8712EA58FC08C000F800000006000000060000000312EA94FC0000000308C000F80000000611FBE90300000001064000FE12FFAD090793F0C1128220F6033F67BB0000000613BBF504000000020793F0C70000000612825CFC0000000300000006000000000000000600000004000000060000000213E1C50400000002067ECE8712EA58FC08C000F811FC2503000000060000000111FBE90300000001064000FE12FFAD090793F0C10000000812825CF6000000000115233B0000000613F85904000000020569AC4700000006000000050000000412FF710900000004000000080000000312EA94FC0000000308C000F811FC2503064000FE12FFAD090793F0C1128220F60115233B0000000600000005000000000000000500000004000000060000000111FBE90300000001064000FE12FFAD090793F0C1128220F60115233B13F895040793F0C7128220FC082000F80000000612465D0300000001000000080000000300000005000000020000000500000000000000050000000412FF7109000000040793F0C1128220F60115233B13F895040793F0C7000000060000000500000002000000050000000000000005"
theorem small_3428973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3428973_right_root small_3428973_right_fuel small_3428973_right_count small_3428973_right_encoded = true := by
  decide +kernel
theorem small_3428973_right_covered : CoveredBy scale carrier boxes small_3428973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3428973_right_root small_3428973_right_fuel small_3428973_right_count small_3428973_right_encoded small_3428973_right_checked

theorem cover_3428973 : CoveredBy scale carrier boxes root_3428973 := by
  apply coveredBy_split_literal root_3428973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3428974 small_3428973_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3428974
  · exact small_3428973_right_covered
#print axioms cover_3428973

def root_3428968 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3428968_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3428968_right_fuel : Nat := 1
def small_3428968_right_count : Nat := 1
def small_3428968_right_encoded : String := "00000001"
theorem small_3428968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3428968_right_root small_3428968_right_fuel small_3428968_right_count small_3428968_right_encoded = true := by
  decide +kernel
theorem small_3428968_right_covered : CoveredBy scale carrier boxes small_3428968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3428968_right_root small_3428968_right_fuel small_3428968_right_count small_3428968_right_encoded small_3428968_right_checked

theorem cover_3428968 : CoveredBy scale carrier boxes root_3428968 := by
  apply coveredBy_split_literal root_3428968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.root_3428973 small_3428968_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081.cover_3428973
  · exact small_3428968_right_covered
#print axioms cover_3428968

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0081

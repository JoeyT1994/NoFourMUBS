import TaoBundleAssembly0694
import TaoBundleChunkBatch0969
import TaoBundleChunkBatch0970
import TaoBundleChunkBatch0971
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695
def root_10334318 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334318_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334318_left_fuel : Nat := 21
def small_10334318_left_count : Nat := 73
def small_10334318_left_encoded : String := "120701020000000108A913070000000712073CFC0000000305000104135D44FB050000FE00000007135D4509000000040000000700000002135D80FB00000002050000FE135D810904548A01138671000000000004548A0313867102000000010CFD9C07000000070F350CFC000000030C9A86FC000000070F875107000000030780010400000007128A7CFB00000002000000081386AD020CFD9C07000000070F350CFC000000030C9A86FC0F878D0700000008000000030F8751070000000307800104128A40FB078000FE000000070000000700000002128A7CFB00000002078000FE128A7D09022A458100000008000000070000000400000008000000010000000700000004135D45090000000404548A0113867100000000000000000800000007"
theorem small_10334318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334318_left_root small_10334318_left_fuel small_10334318_left_count small_10334318_left_encoded = true := by
  decide +kernel
theorem small_10334318_left_covered : CoveredBy scale carrier boxes small_10334318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334318_left_root small_10334318_left_fuel small_10334318_left_count small_10334318_left_encoded small_10334318_left_checked

theorem cover_10334318 : CoveredBy scale carrier boxes root_10334318 := by
  apply coveredBy_split_literal root_10334318 small_10334318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0694.root_10334472 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10334318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0694.cover_10334472
#print axioms cover_10334318

def root_10334312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334312_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334312_left_fuel : Nat := 1
def small_10334312_left_count : Nat := 1
def small_10334312_left_encoded : String := "00000000"
theorem small_10334312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334312_left_root small_10334312_left_fuel small_10334312_left_count small_10334312_left_encoded = true := by
  decide +kernel
theorem small_10334312_left_covered : CoveredBy scale carrier boxes small_10334312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334312_left_root small_10334312_left_fuel small_10334312_left_count small_10334312_left_encoded small_10334312_left_checked

theorem cover_10334312 : CoveredBy scale carrier boxes root_10334312 := by
  apply coveredBy_split_literal root_10334312 small_10334312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10334318 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10334312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10334318
#print axioms cover_10334312

def root_10334311 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334311_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334311_right_fuel : Nat := 25
def small_10334311_right_count : Nat := 103
def small_10334311_right_encoded : String := "12073D0008A9130312070102000000010000000712073D0208A913070000000712073CFC0000000305000104135D44FB050000FE00000007135D4509000000040000000700000002135D80FB00000002050000FE135D81090CFD9C010F34D100000000000CFD9C030F34D10200000001000000070F350D020CFD9C07000000070F350CFC000000030C9A87020F875103000000010C9A86FC0F878D070780010400000007128A7CFB00000002078000FE00000007128A41090000000400000007000000030F875107000000030780010400000006128A7CFB00000002078000FE128A7D090AD35781000000090000000500000004000000050F878D030C9A86FC000000070F875107000000030780010400000007128A7CFB00000002078000FE000000070000000500000001000000010000000700000004135D4509000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000070F350D020CFD9C07000000070F350CFC000000030C9A8702000000060F878D030C9A86FC00000007000000050000000100000001000000070000000100000000"
theorem small_10334311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334311_right_root small_10334311_right_fuel small_10334311_right_count small_10334311_right_encoded = true := by
  decide +kernel
theorem small_10334311_right_covered : CoveredBy scale carrier boxes small_10334311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334311_right_root small_10334311_right_fuel small_10334311_right_count small_10334311_right_encoded small_10334311_right_checked

theorem cover_10334311 : CoveredBy scale carrier boxes root_10334311 := by
  apply coveredBy_split_literal root_10334311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10334312 small_10334311_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10334312
  · exact small_10334311_right_covered
#print axioms cover_10334311

def root_10334305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10334305_left_fuel : Nat := 1
def small_10334305_left_count : Nat := 1
def small_10334305_left_encoded : String := "00000004"
theorem small_10334305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10334305_left_root small_10334305_left_fuel small_10334305_left_count small_10334305_left_encoded = true := by
  decide +kernel
theorem small_10334305_left_covered : CoveredBy scale carrier boxes small_10334305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10334305_left_root small_10334305_left_fuel small_10334305_left_count small_10334305_left_encoded small_10334305_left_checked

theorem cover_10334305 : CoveredBy scale carrier boxes root_10334305 := by
  apply coveredBy_split_literal root_10334305 small_10334305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10334311 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10334305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10334311
#print axioms cover_10334305

def root_10317453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10317453 : CoveredBy scale carrier boxes root_10317453 := by
  apply coveredBy_split_literal root_10317453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0694.root_10317454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10334305 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0694.cover_10317454
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10334305
#print axioms cover_10317453

def root_10317448 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317448_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317448_right_fuel : Nat := 1
def small_10317448_right_count : Nat := 1
def small_10317448_right_encoded : String := "00000003"
theorem small_10317448_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317448_right_root small_10317448_right_fuel small_10317448_right_count small_10317448_right_encoded = true := by
  decide +kernel
theorem small_10317448_right_covered : CoveredBy scale carrier boxes small_10317448_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317448_right_root small_10317448_right_fuel small_10317448_right_count small_10317448_right_encoded small_10317448_right_checked

theorem cover_10317448 : CoveredBy scale carrier boxes root_10317448 := by
  apply coveredBy_split_literal root_10317448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10317453 small_10317448_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10317453
  · exact small_10317448_right_covered
#print axioms cover_10317448

def root_10342895 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10342895 : CoveredBy scale carrier boxes root_10342895 := by
  apply coveredBy_split_literal root_10342895 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3876.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3877.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3876.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3877.covered
#print axioms cover_10342895

def root_10342889 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342889_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342889_left_fuel : Nat := 1
def small_10342889_left_count : Nat := 1
def small_10342889_left_encoded : String := "00000004"
theorem small_10342889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342889_left_root small_10342889_left_fuel small_10342889_left_count small_10342889_left_encoded = true := by
  decide +kernel
theorem small_10342889_left_covered : CoveredBy scale carrier boxes small_10342889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342889_left_root small_10342889_left_fuel small_10342889_left_count small_10342889_left_encoded small_10342889_left_checked

theorem cover_10342889 : CoveredBy scale carrier boxes root_10342889 := by
  apply coveredBy_split_literal root_10342889 small_10342889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342895 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10342889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342895
#print axioms cover_10342889

def root_10342833 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342833_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342833_left_fuel : Nat := 9
def small_10342833_left_count : Nat := 27
def small_10342833_left_encoded : String := "120700FE05000104135D44FB050000FC135D810704548A011386710000000000000000090000000A000000030000000A00000002135D80FB00000002050000FC135D810704548A0113867100000000000CFD9C030000000A0000000A0000000A000000030000000A00000004"
theorem small_10342833_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342833_left_root small_10342833_left_fuel small_10342833_left_count small_10342833_left_encoded = true := by
  decide +kernel
theorem small_10342833_left_covered : CoveredBy scale carrier boxes small_10342833_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342833_left_root small_10342833_left_fuel small_10342833_left_count small_10342833_left_encoded small_10342833_left_checked

theorem cover_10342833 : CoveredBy scale carrier boxes root_10342833 := by
  apply coveredBy_split_literal root_10342833 small_10342833_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342889 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10342833_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342889
#print axioms cover_10342833

def root_10342828 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342828_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342828_right_fuel : Nat := 1
def small_10342828_right_count : Nat := 1
def small_10342828_right_encoded : String := "00000001"
theorem small_10342828_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342828_right_root small_10342828_right_fuel small_10342828_right_count small_10342828_right_encoded = true := by
  decide +kernel
theorem small_10342828_right_covered : CoveredBy scale carrier boxes small_10342828_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342828_right_root small_10342828_right_fuel small_10342828_right_count small_10342828_right_encoded small_10342828_right_checked

theorem cover_10342828 : CoveredBy scale carrier boxes root_10342828 := by
  apply coveredBy_split_literal root_10342828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342833 small_10342828_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342833
  · exact small_10342828_right_covered
#print axioms cover_10342828

def root_10342714 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342714_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342714_left_fuel : Nat := 17
def small_10342714_left_count : Nat := 57
def small_10342714_left_encoded : String := "120701020000000108A913090000000A12073CFE0000000405000104135D44FB050000FC135D810704548A01138671000000000004548A03000000091386AD020CFD9C09000000090F350CFE000000040C9A86FE000000090F8751090000000402800104000000090000000A000000010000000A000000030000000A00000002135D80FB00000002050000FC135D810704548A01138671000000000004548A030000000A1386AD020CFD9C090000000A0F350CFE000000040C9A86FE0000000A0F87510900000004078001040000000A0000000A000000010000000A000000030000000A"
theorem small_10342714_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342714_left_root small_10342714_left_fuel small_10342714_left_count small_10342714_left_encoded = true := by
  decide +kernel
theorem small_10342714_left_covered : CoveredBy scale carrier boxes small_10342714_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342714_left_root small_10342714_left_fuel small_10342714_left_count small_10342714_left_encoded small_10342714_left_checked

theorem cover_10342714 : CoveredBy scale carrier boxes root_10342714 := by
  apply coveredBy_split_literal root_10342714 small_10342714_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342828 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10342714_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342828
#print axioms cover_10342714

def root_10342708 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342708_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342708_left_fuel : Nat := 1
def small_10342708_left_count : Nat := 1
def small_10342708_left_encoded : String := "00000000"
theorem small_10342708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342708_left_root small_10342708_left_fuel small_10342708_left_count small_10342708_left_encoded = true := by
  decide +kernel
theorem small_10342708_left_covered : CoveredBy scale carrier boxes small_10342708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342708_left_root small_10342708_left_fuel small_10342708_left_count small_10342708_left_encoded small_10342708_left_checked

theorem cover_10342708 : CoveredBy scale carrier boxes root_10342708 := by
  apply coveredBy_split_literal root_10342708 small_10342708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342714 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10342708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342714
#print axioms cover_10342708

def root_10342707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342707_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342707_right_fuel : Nat := 20
def small_10342707_right_count : Nat := 97
def small_10342707_right_encoded : String := "12073D0008A9130312070102000000010000000A12073D0208A91309120700FE0000000A0000000412073CFE0000000405000104135D44FB050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020F87510300000001000000080F878D030000000A00000001000000010F350D000CFD9C030000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0000000600000002135D80FB00000002050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020F875103000000010C9A86FE000000080F87510900000004000000080F878D030000000A00000001000000010F350D000CFD9C030000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0000000A0000000100000000"
theorem small_10342707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342707_right_root small_10342707_right_fuel small_10342707_right_count small_10342707_right_encoded = true := by
  decide +kernel
theorem small_10342707_right_covered : CoveredBy scale carrier boxes small_10342707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342707_right_root small_10342707_right_fuel small_10342707_right_count small_10342707_right_encoded small_10342707_right_checked

theorem cover_10342707 : CoveredBy scale carrier boxes root_10342707 := by
  apply coveredBy_split_literal root_10342707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342708 small_10342707_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342708
  · exact small_10342707_right_covered
#print axioms cover_10342707

def root_10342702 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342702_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342702_right_fuel : Nat := 1
def small_10342702_right_count : Nat := 1
def small_10342702_right_encoded : String := "00000004"
theorem small_10342702_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342702_right_root small_10342702_right_fuel small_10342702_right_count small_10342702_right_encoded = true := by
  decide +kernel
theorem small_10342702_right_covered : CoveredBy scale carrier boxes small_10342702_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342702_right_root small_10342702_right_fuel small_10342702_right_count small_10342702_right_encoded small_10342702_right_checked

theorem cover_10342702 : CoveredBy scale carrier boxes root_10342702 := by
  apply coveredBy_split_literal root_10342702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342707 small_10342702_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342707
  · exact small_10342702_right_covered
#print axioms cover_10342702

def root_10342701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10342701 : CoveredBy scale carrier boxes root_10342701 := by
  apply coveredBy_split_literal root_10342701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342702 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3878.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342702
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3878.covered
#print axioms cover_10342701

def root_10342695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342695_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10342695_left_fuel : Nat := 1
def small_10342695_left_count : Nat := 1
def small_10342695_left_encoded : String := "00000003"
theorem small_10342695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10342695_left_root small_10342695_left_fuel small_10342695_left_count small_10342695_left_encoded = true := by
  decide +kernel
theorem small_10342695_left_covered : CoveredBy scale carrier boxes small_10342695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10342695_left_root small_10342695_left_fuel small_10342695_left_count small_10342695_left_encoded small_10342695_left_checked

theorem cover_10342695 : CoveredBy scale carrier boxes root_10342695 := by
  apply coveredBy_split_literal root_10342695 small_10342695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342701 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10342695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342701
#print axioms cover_10342695

def root_10317447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10317447 : CoveredBy scale carrier boxes root_10317447 := by
  apply coveredBy_split_literal root_10317447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10317448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10342695 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10317448
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10342695
#print axioms cover_10317447

def root_10317442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317442_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317442_right_fuel : Nat := 1
def small_10317442_right_count : Nat := 1
def small_10317442_right_encoded : String := "00000002"
theorem small_10317442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317442_right_root small_10317442_right_fuel small_10317442_right_count small_10317442_right_encoded = true := by
  decide +kernel
theorem small_10317442_right_covered : CoveredBy scale carrier boxes small_10317442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317442_right_root small_10317442_right_fuel small_10317442_right_count small_10317442_right_encoded small_10317442_right_checked

theorem cover_10317442 : CoveredBy scale carrier boxes root_10317442 := by
  apply coveredBy_split_literal root_10317442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10317447 small_10317442_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10317447
  · exact small_10317442_right_covered
#print axioms cover_10317442

def root_10351063 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10351063 : CoveredBy scale carrier boxes root_10351063 := by
  apply coveredBy_split_literal root_10351063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3879.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3880.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3879.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3880.covered
#print axioms cover_10351063

def root_10351057 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10351057_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10351057_left_fuel : Nat := 1
def small_10351057_left_count : Nat := 1
def small_10351057_left_encoded : String := "00000004"
theorem small_10351057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10351057_left_root small_10351057_left_fuel small_10351057_left_count small_10351057_left_encoded = true := by
  decide +kernel
theorem small_10351057_left_covered : CoveredBy scale carrier boxes small_10351057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10351057_left_root small_10351057_left_fuel small_10351057_left_count small_10351057_left_encoded small_10351057_left_checked

theorem cover_10351057 : CoveredBy scale carrier boxes root_10351057 := by
  apply coveredBy_split_literal root_10351057 small_10351057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10351063 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10351057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10351063
#print axioms cover_10351057

def root_10350863 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350863_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350863_left_fuel : Nat := 17
def small_10350863_left_count : Nat := 89
def small_10350863_left_encoded : String := "120700FE04548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000005000000030F350CFC000000030000000A000000020F34D10400000002000000060F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09138670FE0000000A000000041386ACFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FC000000050000000A00000002000000060F878D030000000A00000001000000020F34D104000000020CFD9C070000000600000006000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D020CFD9BFB0F350D040CFD9C070F34D0FC04548A09000000051386ACFE000000040C9A8702000000050000000A000000030F350CFC000000030000000A000000020F34D104000000020CFD9C070000000A0000000A000000010000000000000004"
theorem small_10350863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350863_left_root small_10350863_left_fuel small_10350863_left_count small_10350863_left_encoded = true := by
  decide +kernel
theorem small_10350863_left_covered : CoveredBy scale carrier boxes small_10350863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350863_left_root small_10350863_left_fuel small_10350863_left_count small_10350863_left_encoded small_10350863_left_checked

theorem cover_10350863 : CoveredBy scale carrier boxes root_10350863 := by
  apply coveredBy_split_literal root_10350863 small_10350863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10351057 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10350863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10351057
#print axioms cover_10350863

def root_10350857 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350857_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350857_left_fuel : Nat := 1
def small_10350857_left_count : Nat := 1
def small_10350857_left_encoded : String := "00000003"
theorem small_10350857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350857_left_root small_10350857_left_fuel small_10350857_left_count small_10350857_left_encoded = true := by
  decide +kernel
theorem small_10350857_left_covered : CoveredBy scale carrier boxes small_10350857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350857_left_root small_10350857_left_fuel small_10350857_left_count small_10350857_left_encoded small_10350857_left_checked

theorem cover_10350857 : CoveredBy scale carrier boxes root_10350857 := by
  apply coveredBy_split_literal root_10350857 small_10350857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10350863 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10350857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10350863
#print axioms cover_10350857

def root_10350369 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350369_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350369_left_fuel : Nat := 20
def small_10350369_left_count : Nat := 227
def small_10350369_left_encoded : String := "120700FC08A91309120700FE04548A0113867100000000000CFD9C03000000050F350D0200000005000000011386AD000CFD9C030F34D102000000010CFD9BFB000000050000000A0F350D020CFD9BFB000000050F34D104000000020000000600000001000000000000000412073CFE0000000404548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D0404548A07138670FC0CFD9C090000000500000007000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000080F878CFB0000000200000006000000020F34D10400000002000000060F350D020CFD9BFB0F350D0404548A07138670FC0CFD9C09000000050F350CFE000000040C9A87020000000500000008000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE000000050F875109000000040000000600000002000000060F878D030C9A87040F8750FB0C9A86FE0000000500000008000000020000000600000001000000020F34D1040000000204548A070000000600000006000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350D0404548A07000000071386ACFC000000030CFD9C090F34D0FE000000070000000400000007000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE000000060000000400000006000000031386ACFC000000030CFD9C090F34D0FE0000000600000004000000060F350D020CFD9BFB0F350D0404548A07138670FC0CFD9C090F34D0FE000000050000000400000007000000031386ACFC000000030CFD9C090F34D0FE0C9A8702000000050F878D030C9A8704000000050000000600000001000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE000000070F8751090000000400000007000000020F878CFB000000020C9A86FE000000060F87510900000004000000090F878D030C9A8704000000070F878CFB000000020C9A86FE000000070F875109000000040000000700000001000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87020000000900000006000000031386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87020F875103000000010000000600000006000000010000000000000003"
theorem small_10350369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350369_left_root small_10350369_left_fuel small_10350369_left_count small_10350369_left_encoded = true := by
  decide +kernel
theorem small_10350369_left_covered : CoveredBy scale carrier boxes small_10350369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350369_left_root small_10350369_left_fuel small_10350369_left_count small_10350369_left_encoded small_10350369_left_checked

theorem cover_10350369 : CoveredBy scale carrier boxes root_10350369 := by
  apply coveredBy_split_literal root_10350369 small_10350369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10350857 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10350369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10350857
#print axioms cover_10350369

def root_10350364 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350364_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350364_right_fuel : Nat := 1
def small_10350364_right_count : Nat := 1
def small_10350364_right_encoded : String := "00000002"
theorem small_10350364_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350364_right_root small_10350364_right_fuel small_10350364_right_count small_10350364_right_encoded = true := by
  decide +kernel
theorem small_10350364_right_covered : CoveredBy scale carrier boxes small_10350364_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350364_right_root small_10350364_right_fuel small_10350364_right_count small_10350364_right_encoded small_10350364_right_checked

theorem cover_10350364 : CoveredBy scale carrier boxes root_10350364 := by
  apply coveredBy_split_literal root_10350364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10350369 small_10350364_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10350369
  · exact small_10350364_right_covered
#print axioms cover_10350364

def root_10350363 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350363_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350363_right_fuel : Nat := 16
def small_10350363_right_count : Nat := 95
def small_10350363_right_encoded : String := "120701040000000208A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A01000000061386AD000CFD9C030F34D10200000001000000060F350D02045489FB1386AD0400000006000000020000000600000001000000000000000312073CFC0000000308A91309120700FE04548A01000000060000000A0000000412073CFE0000000404548A0113867100000000000CFD9C030F34D10200000001000000060F350D02045489FB1386AD040CFD9C0700000006000000060000000200000006000000011386AD000CFD9C030F34D10200000001045489FB1386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030000000A000000021386710400000002000000060F350D02045489FB1386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE00000004000000050000000213867104000000020CFD9C070F34D0FC0000000600000003000000060000000100000000"
theorem small_10350363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350363_right_root small_10350363_right_fuel small_10350363_right_count small_10350363_right_encoded = true := by
  decide +kernel
theorem small_10350363_right_covered : CoveredBy scale carrier boxes small_10350363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350363_right_root small_10350363_right_fuel small_10350363_right_count small_10350363_right_encoded small_10350363_right_checked

theorem cover_10350363 : CoveredBy scale carrier boxes root_10350363 := by
  apply coveredBy_split_literal root_10350363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10350364 small_10350363_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10350364
  · exact small_10350363_right_covered
#print axioms cover_10350363

def root_10350358 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350358_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10350358_right_fuel : Nat := 1
def small_10350358_right_count : Nat := 1
def small_10350358_right_encoded : String := "00000001"
theorem small_10350358_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10350358_right_root small_10350358_right_fuel small_10350358_right_count small_10350358_right_encoded = true := by
  decide +kernel
theorem small_10350358_right_covered : CoveredBy scale carrier boxes small_10350358_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10350358_right_root small_10350358_right_fuel small_10350358_right_count small_10350358_right_encoded small_10350358_right_checked

theorem cover_10350358 : CoveredBy scale carrier boxes root_10350358 := by
  apply coveredBy_split_literal root_10350358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10350363 small_10350358_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10350363
  · exact small_10350358_right_covered
#print axioms cover_10350358

def root_10349328 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349328_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349328_left_fuel : Nat := 29
def small_10349328_left_count : Nat := 481
def small_10349328_left_encoded : String := "120701020000000108A912FB12073D0408A91307120700FC08A91309120700FE04548A01000000051386AD0000000005000000000000000412073CFE0000000404548A01138671000000000004548A0313867102000000010CFD9BFB0F350D0404548A07000000071386ACFC000000030CFD9C090F34D0FE000000050000000400000007000000020F34D1040000000204548A0700000008000000061386AD020CFD9BFB0F350D0404548A07000000071386ACFC000000030CFD9C090F34D0FE000000050000000400000007000000020F34D1040000000204548A070000000600000006000000011386AD0004548A0313867102000000010CFD9BFB000000070F34D1040000000204548A07000000071386ACFC000000030CFD9C090F34D0FE0000000600000004000000071386AD020CFD9BFB0F350D0400000007000000020F34D1040000000204548A07138670FC00000007000000031386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE000000060000000800000001000000000000000312073CFC0000000308A91309120700FE04548A01138671000000000004548A0313867102000000010CFD9BFB0F350D040000000A000000020000000A1386AD020CFD9BFB0F350D040000000A000000020000000A000000010000000A0000000412073CFE0000000404548A01138671000000000004548A0313867102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87040000000500000006000000040F350CFE000000040C9A87040F8750FB00000007000000020F878CFB000000020C9A86FE0000000600000008000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE0F878D090000000A000000040F87510900000004022A45810000000800000007000000030000000A000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000060F8751090000000400000006000000030000000A000000020F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A000000061386AD020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87040F8750FB000000050000000200000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE0000000700000008000000020F878CFB0000000200000006000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE0F878D09022A4581000000060000000A000000040F87510900000004022A45810000000613E20100067ECE8312EA5902000000010000000712EA95020B4D440400000007000000060000000100000000000000030F875107000000030C9A86FE0000000A0F87510900000004022A458113E1C50000000000067ECE830000000A000000060000000A000000020F878CFB000000020C9A86FC000000060F875107000000030C9A86FE000000060F8751090000000400000005000000020F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A00000006000000011386AD0004548A0313867102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090000000A00000007000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A87040000000A0F878CFB000000020000000A000000020F34D104000000020CFD9C070F34D0FC0CFD9C090000000A0F350CFE000000040C9A86FE000000060F87510900000004067ECE810000000600000007000000030F350CFC000000030000000A1386AD020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A8704000000070F878CFB000000020C9A86FE000000070F8751090000000400000007000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070000000A000000030000000A000000020F878CFB000000020C9A86FC0F878D070000000A000000030000000A000000020F34D104000000020CFD9C070F34D0FC0CFD9C090000000A0F350CFE000000040C9A86FE000000060F8751090000000400000006000000030F350CFC000000030000000A000000010000000000000002120701040000000208A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A01000000061386AD0004548A031386710200000001045489FB1386AD0404548A07138670FC000000060000000300000006000000020000000600000006000000000000000312073CFC0000000308A91309120700FE04548A01000000060000000A0000000412073CFE0000000404548A01138671000000000004548A03138671020000000100000006000000061386AD0004548A031386710200000001045489FB1386AD040CFD9C070F34D0FC00000006000000030000000A0000000213867104000000020CFD9C070F34D0FC0000000600000003000000061386AD02045489FB1386AD040CFD9C070F34D0FC00000006000000030000000A000000020000000A0000000100000000"
theorem small_10349328_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349328_left_root small_10349328_left_fuel small_10349328_left_count small_10349328_left_encoded = true := by
  decide +kernel
theorem small_10349328_left_covered : CoveredBy scale carrier boxes small_10349328_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349328_left_root small_10349328_left_fuel small_10349328_left_count small_10349328_left_encoded small_10349328_left_checked

theorem cover_10349328 : CoveredBy scale carrier boxes root_10349328 := by
  apply coveredBy_split_literal root_10349328 small_10349328_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10350358 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10349328_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10350358
#print axioms cover_10349328

def root_10349322 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349322_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349322_left_fuel : Nat := 1
def small_10349322_left_count : Nat := 1
def small_10349322_left_encoded : String := "00000000"
theorem small_10349322_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349322_left_root small_10349322_left_fuel small_10349322_left_count small_10349322_left_encoded = true := by
  decide +kernel
theorem small_10349322_left_covered : CoveredBy scale carrier boxes small_10349322_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349322_left_root small_10349322_left_fuel small_10349322_left_count small_10349322_left_encoded small_10349322_left_checked

theorem cover_10349322 : CoveredBy scale carrier boxes root_10349322 := by
  apply coveredBy_split_literal root_10349322 small_10349322_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10349328 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10349322_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10349328
#print axioms cover_10349322

def root_10349321 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10349321 : CoveredBy scale carrier boxes root_10349321 := by
  apply coveredBy_split_literal root_10349321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10349322 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3881.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10349322
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3881.covered
#print axioms cover_10349321

def root_10349316 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349316_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349316_right_fuel : Nat := 1
def small_10349316_right_count : Nat := 1
def small_10349316_right_encoded : String := "00000004"
theorem small_10349316_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349316_right_root small_10349316_right_fuel small_10349316_right_count small_10349316_right_encoded = true := by
  decide +kernel
theorem small_10349316_right_covered : CoveredBy scale carrier boxes small_10349316_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349316_right_root small_10349316_right_fuel small_10349316_right_count small_10349316_right_encoded small_10349316_right_checked

theorem cover_10349316 : CoveredBy scale carrier boxes root_10349316 := by
  apply coveredBy_split_literal root_10349316 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10349321 small_10349316_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10349321
  · exact small_10349316_right_covered
#print axioms cover_10349316

def root_10349315 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10349315 : CoveredBy scale carrier boxes root_10349315 := by
  apply coveredBy_split_literal root_10349315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10349316 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3882.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10349316
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3882.covered
#print axioms cover_10349315

def root_10349310 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349310_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349310_right_fuel : Nat := 1
def small_10349310_right_count : Nat := 1
def small_10349310_right_encoded : String := "00000003"
theorem small_10349310_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349310_right_root small_10349310_right_fuel small_10349310_right_count small_10349310_right_encoded = true := by
  decide +kernel
theorem small_10349310_right_covered : CoveredBy scale carrier boxes small_10349310_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349310_right_root small_10349310_right_fuel small_10349310_right_count small_10349310_right_encoded small_10349310_right_checked

theorem cover_10349310 : CoveredBy scale carrier boxes root_10349310 := by
  apply coveredBy_split_literal root_10349310 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10349315 small_10349310_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10349315
  · exact small_10349310_right_covered
#print axioms cover_10349310

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695

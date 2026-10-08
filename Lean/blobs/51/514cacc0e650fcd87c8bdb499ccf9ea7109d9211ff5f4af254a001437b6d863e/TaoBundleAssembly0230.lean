import TaoBundleAssembly0229
import TaoBundleChunkBatch0905
import TaoBundleChunkBatch0906
import TaoBundleChunkBatch0907
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230
def root_9659238 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659238_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659238_left_fuel : Nat := 16
def small_9659238_left_count : Nat := 119
def small_9659238_left_encoded : String := "120700FC08A91309120700FE04548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D04000000050000000200000005000000010F34D102000000010CFD9BFB0F350D040000000500000002000000051386AD000CFD9BF90F350D02000000050000000100000005000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D0404548A07138670FC000000050000000300000005000000020F34D1040000000204548A07138670FC000000050000000300000005000000010F34D102000000010CFD9BFB0F350D0404548A07138670FC000000050000000300000005000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE000000050000000400000005000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000050F87510900000004000000091386AD000CFD9BF90F350D020CFD9BFB0F350D04000000050000000200000005000000010F34D102000000010CFD9BFB0F350D0400000005000000020F34D1040000000204548A07138670FC00000005000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE00000005000000090000000000000003"
theorem small_9659238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659238_left_root small_9659238_left_fuel small_9659238_left_count small_9659238_left_encoded = true := by
  decide +kernel
theorem small_9659238_left_covered : CoveredBy scale carrier boxes small_9659238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659238_left_root small_9659238_left_fuel small_9659238_left_count small_9659238_left_encoded small_9659238_left_checked

theorem cover_9659238 : CoveredBy scale carrier boxes root_9659238 := by
  apply coveredBy_split_literal root_9659238 small_9659238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.root_9659502 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9659238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.cover_9659502
#print axioms cover_9659238

def root_9659233 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659233_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659233_right_fuel : Nat := 1
def small_9659233_right_count : Nat := 1
def small_9659233_right_encoded : String := "00000002"
theorem small_9659233_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659233_right_root small_9659233_right_fuel small_9659233_right_count small_9659233_right_encoded = true := by
  decide +kernel
theorem small_9659233_right_covered : CoveredBy scale carrier boxes small_9659233_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659233_right_root small_9659233_right_fuel small_9659233_right_count small_9659233_right_encoded small_9659233_right_checked

theorem cover_9659233 : CoveredBy scale carrier boxes root_9659233 := by
  apply coveredBy_split_literal root_9659233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659238 small_9659233_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659238
  · exact small_9659233_right_covered
#print axioms cover_9659233

def root_9659232 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659232 : CoveredBy scale carrier boxes root_9659232 := by
  apply coveredBy_split_literal root_9659232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659233 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3620.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659233
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3620.covered
#print axioms cover_9659232

def root_9659227 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659227_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659227_right_fuel : Nat := 1
def small_9659227_right_count : Nat := 1
def small_9659227_right_encoded : String := "00000001"
theorem small_9659227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659227_right_root small_9659227_right_fuel small_9659227_right_count small_9659227_right_encoded = true := by
  decide +kernel
theorem small_9659227_right_covered : CoveredBy scale carrier boxes small_9659227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659227_right_root small_9659227_right_fuel small_9659227_right_count small_9659227_right_encoded small_9659227_right_checked

theorem cover_9659227 : CoveredBy scale carrier boxes root_9659227 := by
  apply coveredBy_split_literal root_9659227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659232 small_9659227_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659232
  · exact small_9659227_right_covered
#print axioms cover_9659227

def root_9659226 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659226 : CoveredBy scale carrier boxes root_9659226 := by
  apply coveredBy_split_literal root_9659226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3621.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659227
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3621.covered
#print axioms cover_9659226

def root_9659220 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659220_left_fuel : Nat := 1
def small_9659220_left_count : Nat := 1
def small_9659220_left_encoded : String := "00000000"
theorem small_9659220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659220_left_root small_9659220_left_fuel small_9659220_left_count small_9659220_left_encoded = true := by
  decide +kernel
theorem small_9659220_left_covered : CoveredBy scale carrier boxes small_9659220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659220_left_root small_9659220_left_fuel small_9659220_left_count small_9659220_left_encoded small_9659220_left_checked

theorem cover_9659220 : CoveredBy scale carrier boxes root_9659220 := by
  apply coveredBy_split_literal root_9659220 small_9659220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659226 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9659220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659226
#print axioms cover_9659220

def root_9659219 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659219 : CoveredBy scale carrier boxes root_9659219 := by
  apply coveredBy_split_literal root_9659219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659220 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3622.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659220
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3622.covered
#print axioms cover_9659219

def root_9659214 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659214_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659214_right_fuel : Nat := 1
def small_9659214_right_count : Nat := 1
def small_9659214_right_encoded : String := "00000004"
theorem small_9659214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659214_right_root small_9659214_right_fuel small_9659214_right_count small_9659214_right_encoded = true := by
  decide +kernel
theorem small_9659214_right_covered : CoveredBy scale carrier boxes small_9659214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659214_right_root small_9659214_right_fuel small_9659214_right_count small_9659214_right_encoded small_9659214_right_checked

theorem cover_9659214 : CoveredBy scale carrier boxes root_9659214 := by
  apply coveredBy_split_literal root_9659214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659219 small_9659214_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659219
  · exact small_9659214_right_covered
#print axioms cover_9659214

def root_9680411 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9680411 : CoveredBy scale carrier boxes root_9680411 := by
  apply coveredBy_split_literal root_9680411 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3623.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3624.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3623.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3624.covered
#print axioms cover_9680411

def root_9680405 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680405_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680405_left_fuel : Nat := 1
def small_9680405_left_count : Nat := 1
def small_9680405_left_encoded : String := "00000000"
theorem small_9680405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680405_left_root small_9680405_left_fuel small_9680405_left_count small_9680405_left_encoded = true := by
  decide +kernel
theorem small_9680405_left_covered : CoveredBy scale carrier boxes small_9680405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680405_left_root small_9680405_left_fuel small_9680405_left_count small_9680405_left_encoded small_9680405_left_checked

theorem cover_9680405 : CoveredBy scale carrier boxes root_9680405 := by
  apply coveredBy_split_literal root_9680405 small_9680405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680411 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9680405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680411
#print axioms cover_9680405

def root_9680404 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680404_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680404_right_fuel : Nat := 21
def small_9680404_right_count : Nat := 169
def small_9680404_right_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0C9A86FC000000070F8751070000000300000007000000020F878CFB000000020C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09067ECE8112EA5900000000000B4D44020000000610804CF90000000100000009000000060000000400000009000000010F878CF9000000010C9A87040F8750FB0C9A86FC000000070F8751070000000300000007000000020F878CFB000000020C9A86FC0F878D07078000FE0000000700000007000000030F87510700000003078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD8F90DE7CA040000000700000009000000010E6014F9000000010DE7CA040000000700000009000000070000000400000009000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A87020000000900000009000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878D07078000FE0000000700000007000000030F87510700000003078000FE128A7D09067ECE8112EA5900000000000AD3577910D13D020DE7CA04000000070E6014FB00000002000000090000000110D10102000000010DE7CA04000000070E6014FB00000002000000070000000700000004128A410900000004067ECE8112EA5900000000000AD35779000000070000000900000007000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09067ECE810000000900000009000000040000000500000000"
theorem small_9680404_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680404_right_root small_9680404_right_fuel small_9680404_right_count small_9680404_right_encoded = true := by
  decide +kernel
theorem small_9680404_right_covered : CoveredBy scale carrier boxes small_9680404_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680404_right_root small_9680404_right_fuel small_9680404_right_count small_9680404_right_encoded small_9680404_right_checked

theorem cover_9680404 : CoveredBy scale carrier boxes root_9680404 := by
  apply coveredBy_split_literal root_9680404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680405 small_9680404_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680405
  · exact small_9680404_right_covered
#print axioms cover_9680404

def root_9680399 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680399_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680399_right_fuel : Nat := 1
def small_9680399_right_count : Nat := 1
def small_9680399_right_encoded : String := "00000004"
theorem small_9680399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680399_right_root small_9680399_right_fuel small_9680399_right_count small_9680399_right_encoded = true := by
  decide +kernel
theorem small_9680399_right_covered : CoveredBy scale carrier boxes small_9680399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680399_right_root small_9680399_right_fuel small_9680399_right_count small_9680399_right_encoded small_9680399_right_checked

theorem cover_9680399 : CoveredBy scale carrier boxes root_9680399 := by
  apply coveredBy_split_literal root_9680399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680404 small_9680399_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680404
  · exact small_9680399_right_covered
#print axioms cover_9680399

def root_9680398 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680398_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680398_right_fuel : Nat := 17
def small_9680398_right_count : Nat := 117
def small_9680398_right_encoded : String := "135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A87040F8750FB0C9A86FC000000070F87510700000003028000FE00000007000000060000000200000009000000010F878CF9000000010C9A87040F8750FB0C9A86FC000000070F87510700000003028000FE0000000700000007000000020F878CFB0000000200000009000000020F34D1040000000200000009000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87040F8750FB0C9A86FC000000070F87510700000003028000FE0000000700000005000000020F878CFB000000020C9A86FC0F878D07000000080000000300000005000000020F34D10400000002000000091386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000090F350CFC000000030C9A8702000000090F878CF9000000010C9A870400000007000000090000000200000009000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A8704000000070F878CFB000000020C9A86FC0000000700000009000000020F34D104000000020000000900000000"
theorem small_9680398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680398_right_root small_9680398_right_fuel small_9680398_right_count small_9680398_right_encoded = true := by
  decide +kernel
theorem small_9680398_right_covered : CoveredBy scale carrier boxes small_9680398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680398_right_root small_9680398_right_fuel small_9680398_right_count small_9680398_right_encoded small_9680398_right_checked

theorem cover_9680398 : CoveredBy scale carrier boxes root_9680398 := by
  apply coveredBy_split_literal root_9680398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680399 small_9680398_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680399
  · exact small_9680398_right_covered
#print axioms cover_9680398

def root_9680392 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680392_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680392_left_fuel : Nat := 1
def small_9680392_left_count : Nat := 1
def small_9680392_left_encoded : String := "00000003"
theorem small_9680392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680392_left_root small_9680392_left_fuel small_9680392_left_count small_9680392_left_encoded = true := by
  decide +kernel
theorem small_9680392_left_covered : CoveredBy scale carrier boxes small_9680392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680392_left_root small_9680392_left_fuel small_9680392_left_count small_9680392_left_encoded small_9680392_left_checked

theorem cover_9680392 : CoveredBy scale carrier boxes root_9680392 := by
  apply coveredBy_split_literal root_9680392 small_9680392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680398 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9680392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680398
#print axioms cover_9680392

def root_9680306 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680306_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680306_left_fuel : Nat := 9
def small_9680306_left_count : Nat := 41
def small_9680306_left_encoded : String := "120700FC050000FE135D810904548A0113867100000000000CFD9BF90F350D020000000A000000010F34D102000000010CFD9BFB00000007000000081386AD000CFD9BF90F350D020CFD9BFB0000000700000009000000010F34D10200000001000000070000000000000004135D45090000000404548A0113867100000000000CFD9BF900000009000000091386AD000CFD9BF900000007000000090000000000000003"
theorem small_9680306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680306_left_root small_9680306_left_fuel small_9680306_left_count small_9680306_left_encoded = true := by
  decide +kernel
theorem small_9680306_left_covered : CoveredBy scale carrier boxes small_9680306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680306_left_root small_9680306_left_fuel small_9680306_left_count small_9680306_left_encoded small_9680306_left_checked

theorem cover_9680306 : CoveredBy scale carrier boxes root_9680306 := by
  apply coveredBy_split_literal root_9680306 small_9680306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680392 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9680306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680392
#print axioms cover_9680306

def root_9680301 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680301_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680301_right_fuel : Nat := 1
def small_9680301_right_count : Nat := 1
def small_9680301_right_encoded : String := "00000002"
theorem small_9680301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680301_right_root small_9680301_right_fuel small_9680301_right_count small_9680301_right_encoded = true := by
  decide +kernel
theorem small_9680301_right_covered : CoveredBy scale carrier boxes small_9680301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680301_right_root small_9680301_right_fuel small_9680301_right_count small_9680301_right_encoded small_9680301_right_checked

theorem cover_9680301 : CoveredBy scale carrier boxes root_9680301 := by
  apply coveredBy_split_literal root_9680301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680306 small_9680301_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680306
  · exact small_9680301_right_covered
#print axioms cover_9680301

def root_9680300 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680300_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680300_right_fuel : Nat := 15
def small_9680300_right_count : Nat := 37
def small_9680300_right_encoded : String := "120701040000000208A913070000000912073CFC00000003050000FE135D810904548A0113867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C07000000090F350CFC000000030C9A870200000009000000090000000200000009000000010F34D10200000001000000091386AD000CFD9BF90F350D02000000090000000100000009000000000000000400000009"
theorem small_9680300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680300_right_root small_9680300_right_fuel small_9680300_right_count small_9680300_right_encoded = true := by
  decide +kernel
theorem small_9680300_right_covered : CoveredBy scale carrier boxes small_9680300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680300_right_root small_9680300_right_fuel small_9680300_right_count small_9680300_right_encoded small_9680300_right_checked

theorem cover_9680300 : CoveredBy scale carrier boxes root_9680300 := by
  apply coveredBy_split_literal root_9680300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680301 small_9680300_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680301
  · exact small_9680300_right_covered
#print axioms cover_9680300

def root_9680295 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680295_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680295_right_fuel : Nat := 1
def small_9680295_right_count : Nat := 1
def small_9680295_right_encoded : String := "00000001"
theorem small_9680295_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680295_right_root small_9680295_right_fuel small_9680295_right_count small_9680295_right_encoded = true := by
  decide +kernel
theorem small_9680295_right_covered : CoveredBy scale carrier boxes small_9680295_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680295_right_root small_9680295_right_fuel small_9680295_right_count small_9680295_right_encoded small_9680295_right_checked

theorem cover_9680295 : CoveredBy scale carrier boxes root_9680295 := by
  apply coveredBy_split_literal root_9680295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680300 small_9680295_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680300
  · exact small_9680295_right_covered
#print axioms cover_9680295

def root_9680294 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680294_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680294_right_fuel : Nat := 27
def small_9680294_right_count : Nat := 321
def small_9680294_right_encoded : String := "120701020000000108A912FB12073D0408A91307120700FC050000FE135D810904548A01000000080000000700000004000000080000000312073CFC00000003050000FE135D810904548A011386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87040F8750FB0C9A86FC0F878D0700000007000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE7900000008000000080000000700000004128A410900000004022A45810000000800000007000000020F878CFB000000020C9A86FC0F878D07078000FE128A7D09022A45810000000813E20100067ECE790000000700000008000000000000000400000008000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE7912EA95020DE7CA040000000800000005000000010000000513E20100067ECE7912EA95020DE7CA040000000A000000050000000100000005000000000000000400000005000000020F34D104000000020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09022A45810000000813E20100067ECE79000000090000000500000000000000040000000500000003000000050000000113867102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87040F8750FB0C9A86FC000000080F87510700000003078000FE128A7D09022A458100000008000000070000000400000005000000020F878CFB000000020C9A86FC0F878D07000000080000000300000005000000020F34D104000000020CFD9C07000000080F350CFC00000003000000051386AD00045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878D0700000007000000030F87510700000003078000FE128A7D090000000A0000000400000005000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A86FC0F878D07078000FE128A7D09067ECE810000000900000009000000040000000500000003000000050000000113867102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878D07000000070000000300000005000000020F34D104000000020CFD9C070F34D0FC078000FE0000000900000008000000030F350CFC00000003000000050000000000000004135D45090000000404548A011386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A87040000000800000005000000020F34D10400000002000000050000000113867102000000010CFD9BFB0F350D040000000800000002000000081386AD00045489F91386AD020CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A87040000000700000005000000020F34D10400000002000000050000000113867102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC0000000300000005000000020F34D10400000002000000050000000000000002120701040000000208A913070000000912073CFC00000003050000FE135D810904548A011386710000000000045489F900000009000000051386AD00045489F90000000900000005000000000000000400000005"
theorem small_9680294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680294_right_root small_9680294_right_fuel small_9680294_right_count small_9680294_right_encoded = true := by
  decide +kernel
theorem small_9680294_right_covered : CoveredBy scale carrier boxes small_9680294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680294_right_root small_9680294_right_fuel small_9680294_right_count small_9680294_right_encoded small_9680294_right_checked

theorem cover_9680294 : CoveredBy scale carrier boxes root_9680294 := by
  apply coveredBy_split_literal root_9680294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680295 small_9680294_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680295
  · exact small_9680294_right_covered
#print axioms cover_9680294

def root_9680288 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680288_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680288_left_fuel : Nat := 1
def small_9680288_left_count : Nat := 1
def small_9680288_left_encoded : String := "00000000"
theorem small_9680288_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680288_left_root small_9680288_left_fuel small_9680288_left_count small_9680288_left_encoded = true := by
  decide +kernel
theorem small_9680288_left_covered : CoveredBy scale carrier boxes small_9680288_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680288_left_root small_9680288_left_fuel small_9680288_left_count small_9680288_left_encoded small_9680288_left_checked

theorem cover_9680288 : CoveredBy scale carrier boxes root_9680288 := by
  apply coveredBy_split_literal root_9680288 small_9680288_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680294 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9680288_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680294
#print axioms cover_9680288

def root_9680287 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680287_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680287_right_fuel : Nat := 22
def small_9680287_right_count : Nat := 255
def small_9680287_right_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000070000000700000004135D4509000000040CFD9C0100000009000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F90C9A87040000000700000009000000010F878CF9000000010C9A8704000000070F878CFB0000000200000009000000020F34D1040000000200000009000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A8704000000070F878CFB0000000200000007000000020F34D104000000020CFD9C07000000090F350CFC00000003000000090F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C0700000007000000070000000200000009000000010F34D102000000010CFD9BFB000000070F34D10400000002000000090000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000070F350CFC00000003000000090000000200000009000000010F34D102000000010CFD9BFB0F350D0400000007000000020F34D10400000002000000090F350D000CFD9BF90F350D0200000009000000010F34D102000000010CFD9BFB00000007000000090000000000000002120701040000000208A913070000000912073CFC00000003050000FE000000090000000900000001120701020000000108A912FB12073D0408A91307120700FC000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F91386AD020CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A86FC0F878D070000000900000003000000050000000113867102000000010CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C07000000090F350CFC00000003000000050F350D00045489F91386AD020CFD9BFB000000070F34D1040000000200000009000000011386710200000001000000070000000000000004135D4509000000040CFD9C010F34D10000000000045489F91386AD020CFD9BFB0F350D0400000007000000020F34D10400000002000000090000000113867102000000010CFD9BFB0F350D0400000007000000020F34D10400000002000000050F350D00045489F91386AD020CFD9BFB0000000700000007000000011386710200000001000000070000000000000002120701040000000208A913070000000912073CFC00000003050000FE135D81090CFD9C010000000900000009000000040000000900000000"
theorem small_9680287_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680287_right_root small_9680287_right_fuel small_9680287_right_count small_9680287_right_encoded = true := by
  decide +kernel
theorem small_9680287_right_covered : CoveredBy scale carrier boxes small_9680287_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680287_right_root small_9680287_right_fuel small_9680287_right_count small_9680287_right_encoded small_9680287_right_checked

theorem cover_9680287 : CoveredBy scale carrier boxes root_9680287 := by
  apply coveredBy_split_literal root_9680287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680288 small_9680287_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680288
  · exact small_9680287_right_covered
#print axioms cover_9680287

def root_9680281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680281_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680281_left_fuel : Nat := 1
def small_9680281_left_count : Nat := 1
def small_9680281_left_encoded : String := "00000004"
theorem small_9680281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680281_left_root small_9680281_left_fuel small_9680281_left_count small_9680281_left_encoded = true := by
  decide +kernel
theorem small_9680281_left_covered : CoveredBy scale carrier boxes small_9680281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680281_left_root small_9680281_left_fuel small_9680281_left_count small_9680281_left_encoded small_9680281_left_checked

theorem cover_9680281 : CoveredBy scale carrier boxes root_9680281 := by
  apply coveredBy_split_literal root_9680281 small_9680281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680287 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9680281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680287
#print axioms cover_9680281

def root_9659213 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659213 : CoveredBy scale carrier boxes root_9659213 := by
  apply coveredBy_split_literal root_9659213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9680281 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9680281
#print axioms cover_9659213

def root_9659208 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659208_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659208_right_fuel : Nat := 1
def small_9659208_right_count : Nat := 1
def small_9659208_right_encoded : String := "00000003"
theorem small_9659208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659208_right_root small_9659208_right_fuel small_9659208_right_count small_9659208_right_encoded = true := by
  decide +kernel
theorem small_9659208_right_covered : CoveredBy scale carrier boxes small_9659208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659208_right_root small_9659208_right_fuel small_9659208_right_count small_9659208_right_encoded small_9659208_right_checked

theorem cover_9659208 : CoveredBy scale carrier boxes root_9659208 := by
  apply coveredBy_split_literal root_9659208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659213 small_9659208_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659213
  · exact small_9659208_right_covered
#print axioms cover_9659208

def root_9685743 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685743_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685743_right_fuel : Nat := 28
def small_9685743_right_count : Nat := 161
def small_9685743_right_encoded : String := "0F34D102000000010CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FE0F878D0900000009000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3577910D13D020B4D44040000000910804CFB000000020000000A0000000110D1010200000001000000090000000A000000030000000A000000020F878CFB000000020C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3577910D13D020DE7CA040E5FD8FB0B4D43FE0000000A108011090000000408C000FC11FC25070000000A000000030000000A000000020E6014FB000000020B4D43FE10804D090000000A00000004108011090000000408C000FC11FC25070115234113F85900000000000BE879B91011AD020DAED87B0E9661040000000A000000020000000A000000010000000A0000000A00000003000000050000000110D10102000000010000000A13E201000AD357790000000A0000000A00000000000000030000000A000000020F34D104000000020CFD9C090000000A0F350CFE000000040C9A86FE0F878D09078000FC128A7D07022A458113E1C500000000000AD3577910D13D020AD3577B0000000A0000000A000000010000000A0000000A000000030000000A000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3577910D13D020AD3577B10D13D040B4D43FE10804D090000000A00000004000000050000000210D1010400000002000000050000000110D10102000000010000000513E201000AD3577910D13D020AD3577B10D13D040000000A000000020000000A000000010000000A000000000000000300000005"
theorem small_9685743_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685743_right_root small_9685743_right_fuel small_9685743_right_count small_9685743_right_encoded = true := by
  decide +kernel
theorem small_9685743_right_covered : CoveredBy scale carrier boxes small_9685743_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685743_right_root small_9685743_right_fuel small_9685743_right_count small_9685743_right_encoded small_9685743_right_checked

theorem cover_9685743 : CoveredBy scale carrier boxes root_9685743 := by
  apply coveredBy_split_literal root_9685743 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3625.root small_9685743_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3625.covered
  · exact small_9685743_right_covered
#print axioms cover_9685743

def root_9685737 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685737_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685737_left_fuel : Nat := 1
def small_9685737_left_count : Nat := 1
def small_9685737_left_encoded : String := "00000000"
theorem small_9685737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685737_left_root small_9685737_left_fuel small_9685737_left_count small_9685737_left_encoded = true := by
  decide +kernel
theorem small_9685737_left_covered : CoveredBy scale carrier boxes small_9685737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685737_left_root small_9685737_left_fuel small_9685737_left_count small_9685737_left_encoded small_9685737_left_checked

theorem cover_9685737 : CoveredBy scale carrier boxes root_9685737 := by
  apply coveredBy_split_literal root_9685737 small_9685737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685743 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9685737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685743
#print axioms cover_9685737

def root_9685736 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685736_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685736_right_fuel : Nat := 20
def small_9685736_right_count : Nat := 163
def small_9685736_right_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB0C9A86FE000000080F8751090000000400000008000000020F878CFB000000020C9A86FE000000080F8751090000000400000008000000010F878CF9000000010C9A87040F8750FB0C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000DE7CA02000000060000000A00000006000000030000000A000000020F878CFB000000020C9A86FE0F878D09078000FC0000000800000008000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000DE7CA020E5FD8F900000008000000010E6014F9000000010000000A00000008000000030000000A000000020F34D104000000020CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87020F8750F900000008000000010F878CF9000000010C9A86FE0F878D09078000FC0000000800000008000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000AD3577B10D13D040DE7CA02000000080E6014F9000000010000000A0000000210D10104000000020DE7CA02000000080E6014F900000001000000080000000800000003128A410700000003067ECE8112EA5900000000000AD3577B000000080000000A00000008000000010F34D102000000010CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040000000A0000000A000000020F34D104000000020CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07067ECE810000000A0000000A000000030000000500000000"
theorem small_9685736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685736_right_root small_9685736_right_fuel small_9685736_right_count small_9685736_right_encoded = true := by
  decide +kernel
theorem small_9685736_right_covered : CoveredBy scale carrier boxes small_9685736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685736_right_root small_9685736_right_fuel small_9685736_right_count small_9685736_right_encoded small_9685736_right_checked

theorem cover_9685736 : CoveredBy scale carrier boxes root_9685736 := by
  apply coveredBy_split_literal root_9685736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685737 small_9685736_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685737
  · exact small_9685736_right_covered
#print axioms cover_9685736

def root_9685731 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685731_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685731_right_fuel : Nat := 1
def small_9685731_right_count : Nat := 1
def small_9685731_right_encoded : String := "00000003"
theorem small_9685731_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685731_right_root small_9685731_right_fuel small_9685731_right_count small_9685731_right_encoded = true := by
  decide +kernel
theorem small_9685731_right_covered : CoveredBy scale carrier boxes small_9685731_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685731_right_root small_9685731_right_fuel small_9685731_right_count small_9685731_right_encoded small_9685731_right_checked

theorem cover_9685731 : CoveredBy scale carrier boxes root_9685731 := by
  apply coveredBy_split_literal root_9685731 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685736 small_9685731_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685736
  · exact small_9685731_right_covered
#print axioms cover_9685731

def root_9685730 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685730_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685730_right_fuel : Nat := 17
def small_9685730_right_count : Nat := 109
def small_9685730_right_encoded : String := "135D45070000000304548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87020F8750F90C9A87040F8750FB0C9A86FE000000080F87510900000004028000FC0000000800000006000000020F878CFB000000020C9A86FE000000080F87510900000004028000FC0000000800000008000000010F878CF9000000010C9A87040000000A0F878CFB000000020000000A000000020F34D104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A86FE000000080F87510900000004028000FC0000000800000005000000010F878CF9000000010C9A86FE0F878D09000000070000000400000005000000010F34D102000000010CFD9BFB0F350D040000000A000000020000000A1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87020F8750F900000008000000010000000A000000020F34D104000000020CFD9C09000000080F350CFE000000040C9A8702000000080F878CF9000000010C9A86FE000000080000000A000000010F34D102000000010000000A00000000"
theorem small_9685730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685730_right_root small_9685730_right_fuel small_9685730_right_count small_9685730_right_encoded = true := by
  decide +kernel
theorem small_9685730_right_covered : CoveredBy scale carrier boxes small_9685730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685730_right_root small_9685730_right_fuel small_9685730_right_count small_9685730_right_encoded small_9685730_right_checked

theorem cover_9685730 : CoveredBy scale carrier boxes root_9685730 := by
  apply coveredBy_split_literal root_9685730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685731 small_9685730_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685731
  · exact small_9685730_right_covered
#print axioms cover_9685730

def root_9685724 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685724_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685724_left_fuel : Nat := 1
def small_9685724_left_count : Nat := 1
def small_9685724_left_encoded : String := "00000004"
theorem small_9685724_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685724_left_root small_9685724_left_fuel small_9685724_left_count small_9685724_left_encoded = true := by
  decide +kernel
theorem small_9685724_left_covered : CoveredBy scale carrier boxes small_9685724_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685724_left_root small_9685724_left_fuel small_9685724_left_count small_9685724_left_encoded small_9685724_left_checked

theorem cover_9685724 : CoveredBy scale carrier boxes root_9685724 := by
  apply coveredBy_split_literal root_9685724 small_9685724_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685730 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9685724_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685730
#print axioms cover_9685724

def root_9685634 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685634_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685634_left_fuel : Nat := 10
def small_9685634_left_count : Nat := 41
def small_9685634_left_encoded : String := "120700FE050000FC135D810704548A0113867100000000000CFD9BF90F350D020CFD9BFB000000090F34D1040000000200000007000000010F34D10200000001000000091386AD000CFD9BF90F350D0200000008000000010F34D102000000010000000A0000000000000003135D45070000000304548A0113867100000000000CFD9BF9000000090000000A1386AD000CFD9BF9000000080000000A0000000000000004"
theorem small_9685634_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685634_left_root small_9685634_left_fuel small_9685634_left_count small_9685634_left_encoded = true := by
  decide +kernel
theorem small_9685634_left_covered : CoveredBy scale carrier boxes small_9685634_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685634_left_root small_9685634_left_fuel small_9685634_left_count small_9685634_left_encoded small_9685634_left_checked

theorem cover_9685634 : CoveredBy scale carrier boxes root_9685634 := by
  apply coveredBy_split_literal root_9685634 small_9685634_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685724 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9685634_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685724
#print axioms cover_9685634

def root_9685629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685629_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685629_right_fuel : Nat := 1
def small_9685629_right_count : Nat := 1
def small_9685629_right_encoded : String := "00000002"
theorem small_9685629_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685629_right_root small_9685629_right_fuel small_9685629_right_count small_9685629_right_encoded = true := by
  decide +kernel
theorem small_9685629_right_covered : CoveredBy scale carrier boxes small_9685629_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685629_right_root small_9685629_right_fuel small_9685629_right_count small_9685629_right_encoded small_9685629_right_checked

theorem cover_9685629 : CoveredBy scale carrier boxes root_9685629 := by
  apply coveredBy_split_literal root_9685629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685634 small_9685629_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685634
  · exact small_9685629_right_covered
#print axioms cover_9685629

def root_9685628 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685628_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685628_right_fuel : Nat := 25
def small_9685628_right_count : Nat := 287
def small_9685628_right_encoded : String := "120701040000000208A91309120700FE050000FC135D810704548A01000000070000000800000003000000070000000412073CFE00000004050000FC135D810704548A0113867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A86FE0F878D0900000008000000040F87510900000004078000FC128A7D07022A458113E1C50000000000067ECE7B00000007000000070000000800000003128A410700000003022A45810000000700000008000000010F878CF9000000010C9A86FE0F878D09078000FC128A7D07022A45810000000713E20100067ECE7B0000000800000007000000000000000300000007000000040F87510900000004078000FC128A7D07022A458113E1C50000000000067ECE7B12EA95040DE7CA020000000700000005000000020000000513E20100067ECE7B12EA95040DE7CA02000000090000000500000002000000050000000000000003000000050000000213867104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A86FE000000070F87510900000004078000FC128A7D07022A458100000007000000080000000300000005000000010F878CF9000000010C9A86FE0F878D09000000070000000400000005000000010F34D10200000001045489FB1386AD040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D09078000FC128A7D07022A45810000000713E201000AD3577910D13D020000000A000000010000000500000000000000030000000500000004000000050000000213867104000000020CFD9C09000000070F350CFE00000004000000051386AD000CFD9BF90F350D02045489FB1386AD040CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87020F8750F900000008000000010F878CF9000000010C9A86FE0F878D0900000008000000040F87510900000004078000FC128A7D070000000900000003000000050000000213867104000000020CFD9C09000000080F350CFE000000040C9A87020F8750F900000008000000010F878CF9000000010C9A86FE0F878D09000000080000000400000005000000010F34D10200000001045489FB1386AD040CFD9C090000000A0F350CFE000000040C9A86FE0F878D09078000FC128A7D07067ECE810000000A0000000A000000030000000500000004000000050000000213867104000000020CFD9C090F34D0FE078000FC0000000A00000007000000040F350CFE00000004000000050000000000000003135D45070000000304548A0113867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C09000000070F350CFE000000040C9A870200000007000000050000000200000007000000010F34D10200000001000000051386AD000CFD9BF90F350D02045489FB1386AD040CFD9C09000000080F350CFE000000040C9A870200000008000000050000000213867104000000020CFD9C09000000070F350CFE0000000400000005000000010F34D102000000010000000500000000"
theorem small_9685628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685628_right_root small_9685628_right_fuel small_9685628_right_count small_9685628_right_encoded = true := by
  decide +kernel
theorem small_9685628_right_covered : CoveredBy scale carrier boxes small_9685628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685628_right_root small_9685628_right_fuel small_9685628_right_count small_9685628_right_encoded small_9685628_right_checked

theorem cover_9685628 : CoveredBy scale carrier boxes root_9685628 := by
  apply coveredBy_split_literal root_9685628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685629 small_9685628_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685629
  · exact small_9685628_right_covered
#print axioms cover_9685628

def root_9685623 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685623_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685623_right_fuel : Nat := 1
def small_9685623_right_count : Nat := 1
def small_9685623_right_encoded : String := "00000001"
theorem small_9685623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685623_right_root small_9685623_right_fuel small_9685623_right_count small_9685623_right_encoded = true := by
  decide +kernel
theorem small_9685623_right_covered : CoveredBy scale carrier boxes small_9685623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685623_right_root small_9685623_right_fuel small_9685623_right_count small_9685623_right_encoded small_9685623_right_checked

theorem cover_9685623 : CoveredBy scale carrier boxes root_9685623 := by
  apply coveredBy_split_literal root_9685623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685628 small_9685623_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685628
  · exact small_9685623_right_covered
#print axioms cover_9685623

def root_9685622 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685622_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685622_right_fuel : Nat := 17
def small_9685622_right_count : Nat := 71
def small_9685622_right_encoded : String := "120701020000000108A912FB12073D0408A913090000000A12073CFE00000004050000FC135D810704548A011386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040000000A0000000A000000020000000A0000000113867102000000010CFD9BFB0F350D040000000A000000020000000A1386AD00045489F90000000A0000000A00000000000000030000000A00000002120701040000000208A913090000000A12073CFE00000004050000FC135D810704548A011386710000000000045489F91386AD02045489FB0000000A0000000500000001000000051386AD00045489F91386AD02045489FB0000000A000000050000000100000005000000000000000300000005"
theorem small_9685622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685622_right_root small_9685622_right_fuel small_9685622_right_count small_9685622_right_encoded = true := by
  decide +kernel
theorem small_9685622_right_covered : CoveredBy scale carrier boxes small_9685622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685622_right_root small_9685622_right_fuel small_9685622_right_count small_9685622_right_encoded small_9685622_right_checked

theorem cover_9685622 : CoveredBy scale carrier boxes root_9685622 := by
  apply coveredBy_split_literal root_9685622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685623 small_9685622_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685623
  · exact small_9685622_right_covered
#print axioms cover_9685622

def root_9685616 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685616_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685616_left_fuel : Nat := 1
def small_9685616_left_count : Nat := 1
def small_9685616_left_encoded : String := "00000000"
theorem small_9685616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685616_left_root small_9685616_left_fuel small_9685616_left_count small_9685616_left_encoded = true := by
  decide +kernel
theorem small_9685616_left_covered : CoveredBy scale carrier boxes small_9685616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685616_left_root small_9685616_left_fuel small_9685616_left_count small_9685616_left_encoded small_9685616_left_checked

theorem cover_9685616 : CoveredBy scale carrier boxes root_9685616 := by
  apply coveredBy_split_literal root_9685616 small_9685616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685622 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9685616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685622
#print axioms cover_9685616

def root_9685615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685615_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685615_right_fuel : Nat := 22
def small_9685615_right_count : Nat := 233
def small_9685615_right_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91309120700FE050000FC135D81070CFD9C010F34D10000000000000000080000000800000003135D4507000000030CFD9C010000000A000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87020F8750F900000008000000010F878CF9000000010C9A87040000000A0F878CFB000000020000000A000000020F34D104000000020CFD9C09000000080F350CFE000000040C9A8702000000080F878CF90000000100000008000000010F34D102000000010CFD9BFB0F350D040000000A000000020F34D104000000020CFD9C090000000A0F350CFE000000040000000A0F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090000000800000008000000020F34D1040000000200000008000000010F34D102000000010000000A0000000000000003135D4507000000030CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C09000000080F350CFE000000040000000A000000020F34D1040000000200000008000000010F34D102000000010000000A0F350D000CFD9BF90F350D020CFD9BFB000000080F34D1040000000200000008000000010000000A0000000000000002120701040000000208A91309120700FE000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9BF90F350D02045489FB00000008138671040000000200000008000000010F34D10200000001045489FB1386AD040CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A00000004000000050000000213867104000000020CFD9C090000000A0F350CFE00000004000000050F350D000CFD9BF9000000080F34D10200000001045489FB0000000A1386710400000002000000080000000000000003135D4507000000030CFD9C010F34D100000000000CFD9BF90F350D02045489FB00000008138671040000000200000008000000010F34D10200000001045489FB0000000A000000050F350D000CFD9BF9000000080F34D102000000010000000A0000000000000001120701020000000108A912FB12073D0408A913090000000A12073CFE00000004050000FC0000000A0000000A00000002120701040000000208A913090000000A12073CFE00000004050000FC135D81070CFD9C010000000A0000000A000000030000000A00000000"
theorem small_9685615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685615_right_root small_9685615_right_fuel small_9685615_right_count small_9685615_right_encoded = true := by
  decide +kernel
theorem small_9685615_right_covered : CoveredBy scale carrier boxes small_9685615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685615_right_root small_9685615_right_fuel small_9685615_right_count small_9685615_right_encoded small_9685615_right_checked

theorem cover_9685615 : CoveredBy scale carrier boxes root_9685615 := by
  apply coveredBy_split_literal root_9685615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685616 small_9685615_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685616
  · exact small_9685615_right_covered
#print axioms cover_9685615

def root_9685610 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685610_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685610_right_fuel : Nat := 1
def small_9685610_right_count : Nat := 1
def small_9685610_right_encoded : String := "00000004"
theorem small_9685610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685610_right_root small_9685610_right_fuel small_9685610_right_count small_9685610_right_encoded = true := by
  decide +kernel
theorem small_9685610_right_covered : CoveredBy scale carrier boxes small_9685610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685610_right_root small_9685610_right_fuel small_9685610_right_count small_9685610_right_encoded small_9685610_right_checked

theorem cover_9685610 : CoveredBy scale carrier boxes root_9685610 := by
  apply coveredBy_split_literal root_9685610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685615 small_9685610_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685615
  · exact small_9685610_right_covered
#print axioms cover_9685610

def root_9691911 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9691911_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9691911_left_fuel : Nat := 25
def small_9691911_left_count : Nat := 385
def small_9691911_left_encoded : String := "0F8750FB078000FC128A7D07078000FE128A7D09022A458113E1C500000000000DE7CA020E5FD8F90B4D4404108010FB08C000FC11FC25070000000600000003000000060000000210804CFB0000000208C000FC11FC250708C000FE11FC25090115234113F85900000000000D412882000000050EFA4CF9000000010BF3E58400000005100928FB0000000200000006000000060000000411FBE909000000040115234113F85900000000000D412882000000060EFA4CF90000000100000006000000060000000311FBE9070000000308C000FE11FC25090115234113F85900000000000D4128820000000600000009000000060000000411FBE909000000040115234113F85900000000000000000600000006000000010E6014F9000000010B4D4404108010FB08C000FC11FC250708C000FE00000007000000070000000311FBE9070000000308C000FE0000000911FBE909000000040115234113F859000000000000000006000000060000000210804CFB0000000208C000FC11FC250708C000FE11FC25090115234113F85900000000000DAED8790E9661020BF3E58400000009100928FB00000002096000FC11AABD07000000070000000311AA810700000003096000FE0000000600000006000000010E962502000000010BF3E58400000009100928FB00000002096000FC0000000711AA8107000000030000000913F895000DAED879000000070E9625020000000100000007000000000000000411FBE909000000040115234113F85900000000000DAED879000000070E9625020000000100000007000000070000000311FBE9070000000308C000FE11FC25090115234113F85900000000000DAED879000000090E96250200000001000000090000000A0000000411FBE909000000040115234113F85900000000000DAED8790E9661020BF3E58400000006100928FB00000002082000FC12469907000000060000000300000005000000010E962502000000010BF3E5841008ECFB082000FC0000000700000005000000020000000513F895000DAED8790E96610200000006000000010E962502000000010000000A0000000013E201000DE7CA020E5FD8F90B4D44040000000610804CFB0000000208C000FC0000000600000006000000010E6014F9000000010B4D4404108010FB000000070000000210804CFB0000000208C000FC11FC2507000000070000000311FBE9070000000308C000FE0000000A000000060000000000000004128A410900000004022A458113E1C500000000000DE7CA020E5FD8F90B4D4404108010FB08C000FC00000006000000060000000210804CFB0000000208C000FC11FC2507064000FE00000007000000060000000311FBE90700000003064000FE12FFAD09000000060000000400000005000000010E6014F9000000010B4D4404108010FB08C000FC0000000711FBE90700000003000000070000000210804CFB0000000208C000FC11FC2507064000FE0000000700000005000000030000000513E201000DE7CA020E5FD8F90B4D44040000000610804CFB000000020000000600000001000000070000000000000003128A410700000003078000FE128A7D09022A458113E1C500000000000DE7CA020E5FD8F90B4D4404108010FB064000FC00000006000000060000000210804CFB00000002064000FC12FFAD0708C000FE11FC25090000000600000004000000060000000312FF71070000000308C000FE11FC2509000000060000000400000006000000010E6014F9000000010B4D4404108010FB064000FC12FFAD070000000A00000003000000090000000210804CFB00000002064000FC12FFAD0708C000FE0000000A00000005000000030000000513E201000DE7CA020E5FD8F90B4D44040000000610804CFB0000000200000006000000010E6014F9000000010000000A0000000000000004128A410900000004022A458113E1C500000000000DE7CA020E5FD8F90B4D4404108010FB000000060000000210804CFB0000000200000005000000010E6014F9000000010000000513E201000DE7CA020E5FD8F90B4D44040000000610804CFB0000000200000006000000010E6014F900000001000000050000000000000002"
theorem small_9691911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9691911_left_root small_9691911_left_fuel small_9691911_left_count small_9691911_left_encoded = true := by
  decide +kernel
theorem small_9691911_left_covered : CoveredBy scale carrier boxes small_9691911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9691911_left_root small_9691911_left_fuel small_9691911_left_count small_9691911_left_encoded small_9691911_left_checked

theorem cover_9691911 : CoveredBy scale carrier boxes root_9691911 := by
  apply coveredBy_split_literal root_9691911 small_9691911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3626.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9691911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3626.covered
#print axioms cover_9691911

def root_9691905 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9691905_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9691905_left_fuel : Nat := 1
def small_9691905_left_count : Nat := 1
def small_9691905_left_encoded : String := "00000001"
theorem small_9691905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9691905_left_root small_9691905_left_fuel small_9691905_left_count small_9691905_left_encoded = true := by
  decide +kernel
theorem small_9691905_left_covered : CoveredBy scale carrier boxes small_9691905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9691905_left_root small_9691905_left_fuel small_9691905_left_count small_9691905_left_encoded small_9691905_left_checked

theorem cover_9691905 : CoveredBy scale carrier boxes root_9691905 := by
  apply coveredBy_split_literal root_9691905 small_9691905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9691911 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9691905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9691911
#print axioms cover_9691905

def root_9690915 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690915_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690915_left_fuel : Nat := 26
def small_9690915_left_count : Nat := 465
def small_9690915_left_encoded : String := "0F8750F90C9A87040F8750FB078000FC128A7D07078000FE128A7D09022A458113E1C500000000000B4D44020000000610804CF9000000010B4D44040000000610804CFB0000000208C000FC11FC25070000000600000003000000060000000600000004128A410900000004022A458113E1C500000000000B4D44020000000610804CF9000000010B4D44040000000610804CFB0000000208C000FC00000006000000060000000600000003128A410700000003078000FE128A7D09022A458113E1C500000000000B4D44020000000610804CF9000000010B4D44040000000610804CFB00000002064000FC00000006000000060000000600000004128A410900000004022A458113E1C500000000000B4D44020000000610804CF9000000010B4D44040000000610804CFB000000020000000600000006000000020F878CFB00000002078000FC128A7D07078000FE128A7D09022A458113E1C500000000000B4D4402108010F90DE7CA040E5FD8FB08C000FC11FC2507000000060000000300000006000000020E6014FB0000000208C000FC11FC25070000000A0000000311FBE9070000000308C000FE0000000811FBE909000000040115234113F859000000000000000006000000060000000110804CF9000000010DE7CA040E5FD8FB08C000FC11FC250708C000FE11FC25090115234113F85900000000000BF3E58200000005100928F9000000010D412884000000050EFA4CFB0000000200000006000000060000000411FBE909000000040115234113F85900000000000BF3E58200000006100928F90000000100000006000000060000000311FBE9070000000308C000FE11FC25090115234113F85900000000000BF3E58200000006100928F90000000100000006000000060000000411FBE909000000040115234113F85900000000000000000600000006000000020E6014FB0000000208C000FC11FC250708C000FE11FC25090115234113F85900000000000DAED87B0E9661040BF3E5820000000A100928F900000001096000FC0000000A11AA81070000000300000008000000020E962504000000020BF3E5820000000A100928F900000001096000FC0000000A11AA8107000000030000000813F895000DAED87B000000080E9625040000000200000008000000000000000411FBE909000000040115234113F85900000000000DAED87B0000000A0E9625040000000200000009000000090000000311FBE9070000000308C000FE11FC25090115234113F85900000000000DAED87B000000080E9625040000000200000008000000080000000411FBE909000000040115234113F85900000000000DAED87B0E9661040BF3E58200000006100928F900000001082000FC12469907000000060000000300000005000000020E962504000000020BF3E5821008ECF9082000FC0000000800000005000000010000000513F895000DAED87B0E96610400000006000000020E96250400000002000000090000000013E201000B4D4402108010F90DE7CA0400000006000000080000000110804CF9000000010DE7CA040E5FD8FB08C000FC0000000600000006000000020E6014FB0000000208C000FC11FC250708C000FE00000008000000060000000311FBE90700000003000000080000000000000004128A410900000004022A458113E1C500000000000B4D4402108010F90DE7CA040E5FD8FB08C000FC0000000600000006000000020E6014FB0000000208C000FC0000000911FBE90700000003064000FE12FFAD090000000600000004000000050000000110804CF9000000010DE7CA040E5FD8FB08C000FC11FC2507064000FE12FFAD090000000600000004000000060000000311FBE90700000003064000FE12FFAD09000000060000000400000005000000020E6014FB0000000208C000FC000000090000000513E201000B4D4402108010F90DE7CA0400000006000000090000000110804CF9000000010DE7CA040E5FD8FB0000000600000002000000090000000000000003128A410700000003078000FE128A7D09022A458113E1C500000000000B4D4402108010F90DE7CA040E5FD8FB064000FC0000000600000006000000020E6014FB00000002064000FC00000008000000080000000110804CF9000000010DE7CA040E5FD8FB064000FC12FFAD0708C000FE11FC25090000000600000004000000060000000312FF71070000000308C000FE0000000800000006000000020E6014FB00000002064000FC12FFAD0708C000FE11FC2509000000080000000400000005000000030000000513E201000B4D44020000000810804CF9000000010DE7CA040E5FD8FB0000000600000002000000080000000000000004128A410900000004022A458113E1C500000000000B4D4402108010F90DE7CA040E5FD8FB00000006000000020E6014FB00000002000000050000000110804CF9000000010000000513E201000B4D4402108010F90DE7CA04000000060E6014FB00000002000000050000000110804CF9000000010DE7CA040E5FD8FB0000000600000002000000050000000000000001"
theorem small_9690915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690915_left_root small_9690915_left_fuel small_9690915_left_count small_9690915_left_encoded = true := by
  decide +kernel
theorem small_9690915_left_covered : CoveredBy scale carrier boxes small_9690915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690915_left_root small_9690915_left_fuel small_9690915_left_count small_9690915_left_encoded small_9690915_left_checked

theorem cover_9690915 : CoveredBy scale carrier boxes root_9690915 := by
  apply coveredBy_split_literal root_9690915 small_9690915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9691905 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9690915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9691905
#print axioms cover_9690915

def root_9690910 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690910_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690910_right_fuel : Nat := 1
def small_9690910_right_count : Nat := 1
def small_9690910_right_encoded : String := "00000002"
theorem small_9690910_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690910_right_root small_9690910_right_fuel small_9690910_right_count small_9690910_right_encoded = true := by
  decide +kernel
theorem small_9690910_right_covered : CoveredBy scale carrier boxes small_9690910_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690910_right_root small_9690910_right_fuel small_9690910_right_count small_9690910_right_encoded small_9690910_right_checked

theorem cover_9690910 : CoveredBy scale carrier boxes root_9690910 := by
  apply coveredBy_split_literal root_9690910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690915 small_9690910_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690915
  · exact small_9690910_right_covered
#print axioms cover_9690910

def root_9690909 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690909_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690909_right_fuel : Nat := 28
def small_9690909_right_count : Nat := 225
def small_9690909_right_encoded : String := "0F34D104000000020C9A87020F8750F9078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577B10D13D040B4D4402108010F908C000FC11FC25070000000A0000000311FBE9070000000308C000FE0000000811FBE90900000004000000090000000110804CF90000000108C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879BB1011AD040BF3E58200000009100928F900000001096000FC0000000911AA81070000000300000008000000021011710400000002000000090000000900000004000000090000000311FBE9070000000308C000FE11FC25090115234113F85900000000000BE879BB000000081011710400000002000000050000000800000004000000050000000210D10104000000020B4D44020000000910804CF9000000010000000913E201000AD3577B10D13D040B4D44020000000910804CF90000000108C000FC0000000911FBE9070000000308C000FE00000008000000050000000210D1010400000002000000090000000000000004128A410900000004022A458113E1C500000000000AD3577B00000009000000090000000900000003128A410700000003078000FE128A7D09022A458113E1C500000000000AD3577B10D13D040B4D4402108010F9064000FC000000080000000500000001000000050000000210D10104000000020000000513E201000AD3577B10D13D040B4D440200000008000000050000000210D101040000000200000005000000000000000400000005000000010F878CF900000001078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577B10D13D040DE7CA020E5FD8F908C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879BB1011AD040D4128820EFA10F9096000FC11AABD07000000090000000311AA810700000003096000FE11AABD09000000080000000400000005000000010EFA4CF900000001096000FC11AABD070000000900000003000000050000000210117104000000020000000513F895000BE879BB0000000900000009000000000000000400000005000000030000000500000001000000050000000210D10104000000020000000513E201000AD3577B10D13D040DE7CA020E5FD8F908C000FC11FC250700000009000000030000000500000001000000050000000210D1010400000002000000050000000000000004000000050000000300000005"
theorem small_9690909_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690909_right_root small_9690909_right_fuel small_9690909_right_count small_9690909_right_encoded = true := by
  decide +kernel
theorem small_9690909_right_covered : CoveredBy scale carrier boxes small_9690909_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690909_right_root small_9690909_right_fuel small_9690909_right_count small_9690909_right_encoded small_9690909_right_checked

theorem cover_9690909 : CoveredBy scale carrier boxes root_9690909 := by
  apply coveredBy_split_literal root_9690909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690910 small_9690909_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690910
  · exact small_9690909_right_covered
#print axioms cover_9690909

def root_9690904 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690904_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690904_right_fuel : Nat := 1
def small_9690904_right_count : Nat := 1
def small_9690904_right_encoded : String := "00000001"
theorem small_9690904_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690904_right_root small_9690904_right_fuel small_9690904_right_count small_9690904_right_encoded = true := by
  decide +kernel
theorem small_9690904_right_covered : CoveredBy scale carrier boxes small_9690904_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690904_right_root small_9690904_right_fuel small_9690904_right_count small_9690904_right_encoded small_9690904_right_checked

theorem cover_9690904 : CoveredBy scale carrier boxes root_9690904 := by
  apply coveredBy_split_literal root_9690904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690909 small_9690904_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690909
  · exact small_9690904_right_covered
#print axioms cover_9690904

def root_9690903 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690903_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690903_right_fuel : Nat := 30
def small_9690903_right_count : Nat := 231
def small_9690903_right_encoded : String := "0F34D102000000010CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577910D13D020B4D4404108010FB08C000FC11FC250708C000FE00000007000000070000000311FBE907000000030000000A0000000210804CFB0000000208C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879B91011AD020BF3E58400000009100928FB00000002096000FC11AABD0700000007000000030000000A0000000110117102000000010000000A0000000A0000000411FBE909000000040115234113F85900000000000BE879B900000007101171020000000100000005000000070000000311FBE9070000000308C000FE0000000A000000050000000110D10102000000010B4D44040000000A10804CFB000000020000000A13E201000AD3577910D13D020B4D44040000000A10804CFB0000000208C000FC11FC250700000007000000030000000A0000000110D10102000000010000000A0000000000000004128A410900000004022A458113E1C500000000000AD3577910D13D020B4D4404108010FB08C000FC000000070000000500000002000000050000000110D10102000000010000000513E201000AD3577910D13D020B4D440400000007000000050000000110D1010200000001000000050000000000000003128A410700000003078000FE128A7D09022A458113E1C500000000000AD357790000000A0000000A0000000A0000000400000005000000020F878CFB00000002078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3577910D13D020DE7CA040E5FD8FB08C000FC11FC250708C000FE11FC25090115234113F85900000000000BE879B91011AD020D4128840EFA10FB096000FC11AABD07096000FE0000000A11AA81090000000400000007000000030000000A000000020EFA4CFB00000002096000FC11AABD07096000FE11AABD090000000A000000040000000500000003000000050000000110117102000000010000000513F895000BE879B90000000A0000000A000000000000000400000005000000030000000500000002000000050000000110D10102000000010000000513E201000AD3577910D13D020DE7CA040E5FD8FB08C000FC11FC250708C000FE0000000A00000005000000030000000500000002000000050000000110D1010200000001000000050000000000000004000000050000000300000005000000020F34D1040000000200000005"
theorem small_9690903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690903_right_root small_9690903_right_fuel small_9690903_right_count small_9690903_right_encoded = true := by
  decide +kernel
theorem small_9690903_right_covered : CoveredBy scale carrier boxes small_9690903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690903_right_root small_9690903_right_fuel small_9690903_right_count small_9690903_right_encoded small_9690903_right_checked

theorem cover_9690903 : CoveredBy scale carrier boxes root_9690903 := by
  apply coveredBy_split_literal root_9690903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690904 small_9690903_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690904
  · exact small_9690903_right_covered
#print axioms cover_9690903

def root_9690897 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690897_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690897_left_fuel : Nat := 1
def small_9690897_left_count : Nat := 1
def small_9690897_left_encoded : String := "00000000"
theorem small_9690897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690897_left_root small_9690897_left_fuel small_9690897_left_count small_9690897_left_encoded = true := by
  decide +kernel
theorem small_9690897_left_covered : CoveredBy scale carrier boxes small_9690897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690897_left_root small_9690897_left_fuel small_9690897_left_count small_9690897_left_encoded small_9690897_left_checked

theorem cover_9690897 : CoveredBy scale carrier boxes root_9690897 := by
  apply coveredBy_split_literal root_9690897 small_9690897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690903 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9690897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690903
#print axioms cover_9690897

def root_9690896 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690896_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690896_right_fuel : Nat := 22
def small_9690896_right_count : Nat := 255
def small_9690896_right_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07078000FE000000060000000600000003128A410700000003078000FE0000000600000006000000020F878CFB00000002078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000B4D44020000000610804CF9000000010DE7CA0400000006000000080000000600000004128A4109000000040000000900000003128A410700000003078000FE128A7D090000000800000004128A410900000004067ECE8112EA5900000000000B4D44020000000610804CF9000000010DE7CA04000000060000000500000006000000010F878CF9000000010C9A87040F8750FB078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000DE7CA0200000006000000070000000600000004128A4109000000040000000700000003128A410700000003078000FE128A7D090000000A00000004128A410900000004067ECE8112EA5900000000000DE7CA02000000060000000A00000006000000020F878CFB00000002078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD8F90DE7CA040E5FD8FB08C000FC0000000600000006000000020E6014FB0000000208C000FC0000000911FBE9070000000300000008000000010E6014F9000000010DE7CA040E5FD8FB08C000FC000000070000000A000000020E6014FB0000000208C000FC11FC250700000009000000030000000512EA95000DE7CA020E5FD8F90DE7CA040000000600000008000000010000000A0000000000000004128A410900000004067ECE8112EA5900000000000DE7CA02000000090E6014F900000001000000050000000900000003128A410700000003078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD8F90000000A000000010000000A0000000A0000000400000005000000020F34D104000000020C9A87020F8750F9078000FC128A7D07078000FE128A7D0900000009000000040000000900000003128A410700000003078000FE128A7D09000000080000000400000005000000010F878CF900000001078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000AD3577B00000009000000090000000900000004000000050000000300000005000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D090000000A00000004128A41090000000400000007000000030000000A000000020F878CFB00000002078000FC128A7D07078000FE128A7D09067ECE8112EA5900000000000AD357790000000A0000000A0000000A00000004000000050000000300000005000000020F34D104000000020000000500000000"
theorem small_9690896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690896_right_root small_9690896_right_fuel small_9690896_right_count small_9690896_right_encoded = true := by
  decide +kernel
theorem small_9690896_right_covered : CoveredBy scale carrier boxes small_9690896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690896_right_root small_9690896_right_fuel small_9690896_right_count small_9690896_right_encoded small_9690896_right_checked

theorem cover_9690896 : CoveredBy scale carrier boxes root_9690896 := by
  apply coveredBy_split_literal root_9690896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690897 small_9690896_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690897
  · exact small_9690896_right_covered
#print axioms cover_9690896

def root_9690891 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690891_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690891_right_fuel : Nat := 1
def small_9690891_right_count : Nat := 1
def small_9690891_right_encoded : String := "00000004"
theorem small_9690891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690891_right_root small_9690891_right_fuel small_9690891_right_count small_9690891_right_encoded = true := by
  decide +kernel
theorem small_9690891_right_covered : CoveredBy scale carrier boxes small_9690891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690891_right_root small_9690891_right_fuel small_9690891_right_count small_9690891_right_encoded small_9690891_right_checked

theorem cover_9690891 : CoveredBy scale carrier boxes root_9690891 := by
  apply coveredBy_split_literal root_9690891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690896 small_9690891_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690896
  · exact small_9690891_right_covered
#print axioms cover_9690891

def root_9690890 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690890_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690890_right_fuel : Nat := 22
def small_9690890_right_count : Nat := 139
def small_9690890_right_encoded : String := "135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07028000FE13D7ED09022A458113E1C500000000000B4D44020000000610804CF9000000010000000600000006000000040000000600000003128A410700000003028000FE13D7ED09022A458113E1C500000000000B4D44020000000610804CF90000000100000006000000060000000400000005000000020F878CFB00000002078000FC128A7D07028000FE13D7ED09022A458113E1C500000000000B4D44020000000910804CF900000001000000050000000900000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB078000FC128A7D07028000FE13D7ED09022A458113E1C500000000000DE7CA020E5FD8F90B4D44040000000610804CFB0000000200000005000000010E6014F9000000010000000500000007000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D10200000001000000051386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D070000000600000003000000060000000200000009000000010F878CF9000000010C9A87040F8750FB078000FC00000007128A410700000003000000050000000200000009000000020F34D1040000000200000005000000010F34D102000000010000000500000000"
theorem small_9690890_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690890_right_root small_9690890_right_fuel small_9690890_right_count small_9690890_right_encoded = true := by
  decide +kernel
theorem small_9690890_right_covered : CoveredBy scale carrier boxes small_9690890_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690890_right_root small_9690890_right_fuel small_9690890_right_count small_9690890_right_encoded small_9690890_right_checked

theorem cover_9690890 : CoveredBy scale carrier boxes root_9690890 := by
  apply coveredBy_split_literal root_9690890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690891 small_9690890_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690891
  · exact small_9690890_right_covered
#print axioms cover_9690890

def root_9690885 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690885_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690885_right_fuel : Nat := 1
def small_9690885_right_count : Nat := 1
def small_9690885_right_encoded : String := "00000003"
theorem small_9690885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690885_right_root small_9690885_right_fuel small_9690885_right_count small_9690885_right_encoded = true := by
  decide +kernel
theorem small_9690885_right_covered : CoveredBy scale carrier boxes small_9690885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690885_right_root small_9690885_right_fuel small_9690885_right_count small_9690885_right_encoded small_9690885_right_checked

theorem cover_9690885 : CoveredBy scale carrier boxes root_9690885 := by
  apply coveredBy_split_literal root_9690885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690890 small_9690885_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690890
  · exact small_9690885_right_covered
#print axioms cover_9690885

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230

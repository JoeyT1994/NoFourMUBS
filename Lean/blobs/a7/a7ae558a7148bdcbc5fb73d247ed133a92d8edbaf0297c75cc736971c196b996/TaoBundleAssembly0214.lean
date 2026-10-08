import TaoBundleAssembly0211
import TaoBundleAssembly0212
import TaoBundleAssembly0213
import TaoBundleChunkBatch0834
import TaoBundleChunkBatch0835
import TaoBundleChunkBatch0836
import TaoBundleChunkBatch0837
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214
def root_8883974 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883974_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883974_left_fuel : Nat := 26
def small_8883974_left_count : Nat := 367
def small_8883974_left_encoded : String := "1151E9090000000408A913011207010000000000050000F8135D81030500010400000009135D80FB0000000205000106135D44FD0500010800000009135D810904548A01000000091386AD00078000F8128A7D0307800104000000090000000A00000001128A410300000001078001040000000900000006000000000000000400000003135D80FD000000030000000900000001135D4503000000010500010400000009135D80FB0000000205000106135D44FD050001080000000600000006000000030000000912073D00050000F8135D810305000104135D44FB05000106135D44FD0500010800000007135D81090CFD9C010F34D10000000000078000F8128A7D03028001040000000913D7ECFB000000020280010613D7B0FD0780010800000005128A7D090AD3578100000005000000070000000400000003000000090000000100000007000000070000000400000003135D80FD0000000305000108135D4509000000040CFD9C010000000900000007135D81090CFD9C010F34D10000000000000000090F350D000C9A8700000000070F878D01078000F8128A7D03028001040000000713D7ECFB00000002078001060000000700000008000000010000000700000000000000000000000400000002135D80FB0000000205000106135D44FD05000108135D4509000000040CFD9C010F34D10000000000078000F8128A7D03078001040000000900000006000000010000000600000007135D81090CFD9C010F34D10000000000078000F8128A7D0307800104128A40FB0280010613D7B0FD07800108128A41090000000400000006128A7D090AD357810000000610D13D000000000600000000000000040000000313D7ECFD000000030780010800000009128A7D090AD357810000000610D13D0000000006000000000000000400000002128A7CFB00000002028001060000000613D7ECFD0000000307800108000000060000000600000001128A41030000000107800104128A40FB02800106000000060000000600000002000000060F350D000C9A8700000000070F878D01078000F8128A7D030780010400000007128A7CFB00000002028001060000000600000006000000010000000700000000000000000000000400000003135D80FD0000000305000108135D4509000000040CFD9C010F34D10000000000000000090F350D000C9A8700000000070F878D01078000F800000008000000060000000000000000135D81090CFD9C010F34D10000000000078000F8128A7D0307800104128A40FB07800106128A40FD0780010800000008128A7D090AD35781000000060000000800000004000000030000000800000002128A7CFB000000020780010600000006128A7CFD000000030000000600000001128A41030000000107800104128A40FB0000000900000002000000060F350D000C9A87000F87510100000000078000F8128A7D0307800104128A40FB0000000700000002128A7CFB000000020780010600000006128A7CFD000000030000000600000001000000070F878D01078000F8128A7D0307800104128A40FB07800106128A40FD0780010800000007128A7D090DE7CA00000000060E601501000000060000000000000004000000030000000800000002128A7CFB000000020780010600000006128A7CFD000000030000000600000001128A41030000000107800104128A40FB078001060000000600000006000000020000000600000000000000000000000400000001135D45030000000105000104135D44FB0500010600000007135D80FD000000030500010800000007135D81090CFD9C010F34D1000000000000000009000000070000000400000002135D80FB0000000205000106135D44FD0500010800000007135D81090CFD9C0100000006000000070000000400000003135D80FD0000000305000108135D45090000000400000006135D81090CFD9C01000000060F350D000C9A8700000000060F878D010000000600000000000000000000000400000000"
theorem small_8883974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883974_left_root small_8883974_left_fuel small_8883974_left_count small_8883974_left_encoded = true := by
  decide +kernel
theorem small_8883974_left_covered : CoveredBy scale carrier boxes small_8883974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883974_left_root small_8883974_left_fuel small_8883974_left_count small_8883974_left_encoded small_8883974_left_checked

theorem cover_8883974 : CoveredBy scale carrier boxes root_8883974 := by
  apply coveredBy_split_literal root_8883974 small_8883974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0213.root_8884738 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8883974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0213.cover_8884738
#print axioms cover_8883974

def root_8883969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883969_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883969_right_fuel : Nat := 1
def small_8883969_right_count : Nat := 1
def small_8883969_right_encoded : String := "00000003"
theorem small_8883969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883969_right_root small_8883969_right_fuel small_8883969_right_count small_8883969_right_encoded = true := by
  decide +kernel
theorem small_8883969_right_covered : CoveredBy scale carrier boxes small_8883969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883969_right_root small_8883969_right_fuel small_8883969_right_count small_8883969_right_encoded small_8883969_right_checked

theorem cover_8883969 : CoveredBy scale carrier boxes root_8883969 := by
  apply coveredBy_split_literal root_8883969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8883974 small_8883969_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8883974
  · exact small_8883969_right_covered
#print axioms cover_8883969

def root_8883968 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8883968 : CoveredBy scale carrier boxes root_8883968 := by
  apply coveredBy_split_literal root_8883968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8883969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3333.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8883969
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3333.covered
#print axioms cover_8883968

def root_8883963 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883963_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883963_right_fuel : Nat := 1
def small_8883963_right_count : Nat := 1
def small_8883963_right_encoded : String := "00000002"
theorem small_8883963_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883963_right_root small_8883963_right_fuel small_8883963_right_count small_8883963_right_encoded = true := by
  decide +kernel
theorem small_8883963_right_covered : CoveredBy scale carrier boxes small_8883963_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883963_right_root small_8883963_right_fuel small_8883963_right_count small_8883963_right_encoded small_8883963_right_checked

theorem cover_8883963 : CoveredBy scale carrier boxes root_8883963 := by
  apply coveredBy_split_literal root_8883963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8883968 small_8883963_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8883968
  · exact small_8883963_right_covered
#print axioms cover_8883963

def root_8883962 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8883962 : CoveredBy scale carrier boxes root_8883962 := by
  apply coveredBy_split_literal root_8883962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8883963 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3334.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8883963
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3334.covered
#print axioms cover_8883962

def root_8883956 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883956_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8883956_left_fuel : Nat := 1
def small_8883956_left_count : Nat := 1
def small_8883956_left_encoded : String := "00000001"
theorem small_8883956_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8883956_left_root small_8883956_left_fuel small_8883956_left_count small_8883956_left_encoded = true := by
  decide +kernel
theorem small_8883956_left_covered : CoveredBy scale carrier boxes small_8883956_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8883956_left_root small_8883956_left_fuel small_8883956_left_count small_8883956_left_encoded small_8883956_left_checked

theorem cover_8883956 : CoveredBy scale carrier boxes root_8883956 := by
  apply coveredBy_split_literal root_8883956 small_8883956_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8883962 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8883956_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8883962
#print axioms cover_8883956

def root_8838596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8838596 : CoveredBy scale carrier boxes root_8838596 := by
  apply coveredBy_split_literal root_8838596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0213.root_8838597 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8883956 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0213.cover_8838597
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8883956
#print axioms cover_8838596

def root_8838591 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838591_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8838591_right_fuel : Nat := 1
def small_8838591_right_count : Nat := 1
def small_8838591_right_encoded : String := "00000000"
theorem small_8838591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8838591_right_root small_8838591_right_fuel small_8838591_right_count small_8838591_right_encoded = true := by
  decide +kernel
theorem small_8838591_right_covered : CoveredBy scale carrier boxes small_8838591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8838591_right_root small_8838591_right_fuel small_8838591_right_count small_8838591_right_encoded small_8838591_right_checked

theorem cover_8838591 : CoveredBy scale carrier boxes root_8838591 := by
  apply coveredBy_split_literal root_8838591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8838596 small_8838591_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8838596
  · exact small_8838591_right_covered
#print axioms cover_8838591

def root_8826401 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8826401 : CoveredBy scale carrier boxes root_8826401 := by
  apply coveredBy_split_literal root_8826401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8826402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8838591 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8826402
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8838591
#print axioms cover_8826401

def root_8820371 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8820371 : CoveredBy scale carrier boxes root_8820371 := by
  apply coveredBy_split_literal root_8820371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8820372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8826401 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8820372
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8826401
#print axioms cover_8820371

def root_8786593 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8786593 : CoveredBy scale carrier boxes root_8786593 := by
  apply coveredBy_split_literal root_8786593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.root_8786594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8820371 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0212.cover_8786594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8820371
#print axioms cover_8786593

def root_8923394 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8923394 : CoveredBy scale carrier boxes root_8923394 := by
  apply coveredBy_split_literal root_8923394 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3337.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3338.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3337.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3338.covered
#print axioms cover_8923394

def root_8923389 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8923389_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8923389_right_fuel : Nat := 1
def small_8923389_right_count : Nat := 1
def small_8923389_right_encoded : String := "00000000"
theorem small_8923389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8923389_right_root small_8923389_right_fuel small_8923389_right_count small_8923389_right_encoded = true := by
  decide +kernel
theorem small_8923389_right_covered : CoveredBy scale carrier boxes small_8923389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8923389_right_root small_8923389_right_fuel small_8923389_right_count small_8923389_right_encoded small_8923389_right_checked

theorem cover_8923389 : CoveredBy scale carrier boxes root_8923389 := by
  apply coveredBy_split_literal root_8923389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8923394 small_8923389_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8923394
  · exact small_8923389_right_covered
#print axioms cover_8923389

def root_8920893 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8920893 : CoveredBy scale carrier boxes root_8920893 := by
  apply coveredBy_split_literal root_8920893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3336.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8923389 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3336.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8923389
#print axioms cover_8920893

def root_8920892 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8920892 : CoveredBy scale carrier boxes root_8920892 := by
  apply coveredBy_split_literal root_8920892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8920893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3339.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8920893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3339.covered
#print axioms cover_8920892

def root_8918016 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8918016 : CoveredBy scale carrier boxes root_8918016 := by
  apply coveredBy_split_literal root_8918016 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3335.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8920892 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3335.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8920892
#print axioms cover_8918016

def root_8786592 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8786592 : CoveredBy scale carrier boxes root_8786592 := by
  apply coveredBy_split_literal root_8786592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8786593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8918016 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8786593
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8918016
#print axioms cover_8786592

def root_8711294 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711294 : CoveredBy scale carrier boxes root_8711294 := by
  apply coveredBy_split_literal root_8711294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8711295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8786592 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8711295
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8786592
#print axioms cover_8711294

def root_8935946 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935946_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935946_left_fuel : Nat := 26
def small_8935946_left_count : Nat := 339
def small_8935946_left_encoded : String := "12EA94FC000000030B4D43F810804D030B4D43FE10804D090000000500000004108011090000000403C0010013A5110100000000011523450000000513F895040793F0BD00000005128220FC0BF3E5781009290300000005000000011008ED03000000010AA6A27E10EDAD09032001000000000913C1450100000005000000000000000400000009000000030000000213A54D01011523450000000513F895040793F0BD00000005128220FC0BF3E5781009290300000005000000011008ED03000000010AA6A27E10EDAD09000000050000000410ED710900000004046001001383DD01000000000000000913841901019FB4650000000513EF350407095F9D000000050000000700000002000000000000000300000002000000000000000110801103000000010B4D43FE10804D0903C0010013A5110100000000011523450000000513F895040793F0BD000000050000000A0000000213A54D01011523450000000513F895040793F0BD00000005128220FC0AA6A27810EDAD03000000050000000110ED7103000000010000000A00000003000000020000000000000004108011090000000403C0010013A51101000000000115234513F85904000000020793F0BD00000005128220FC0AA6A27810EDAD03000000050000000110ED7103000000010AA6A27E10EDAD09000000050000000410ED710900000004000000090000000313F895040793F0BD12825CFC000000030AA6A278000000090000000A128220FC0AA6A27810EDAD030AA6A27E10EDAD0903200100000000090000000A0000000400000009000000010000000A000000030000000213A54D010115234513F85904000000020793F0BD00000005128220FC0AA6A27810EDAD03000000050000000110ED7103000000010AA6A27E10EDAD09000000050000000410ED710900000004046001001383DD0100000000008A92250000000513FE350407095F9D00000005000000AB0000000213841901008A92250000000513FE350407095F9D00000005000000AB00000002000000000000000313F895040793F0BD12825CFC000000030AA6A27810EDAD03000000050000000110ED7103000000010AA6A27E10EDAD09000000050000000410ED71090000000400000008128220FC0AA6A27810EDAD030AA6A27E10EDAD09046001001383DD0100000000019FB4650000000513EF350407095F9D000000050000000A0000000213841901019FB4650000000513EF350407095F9D000000050000000600000002000000000000000410ED710900000004046001001383DD0100000000019FB465000000090000000913841901019FB46513EEF9040000000207095F9D0000000512B880FC0AF9F33810B82903000000050000000110B7ED03000000010A5351BE112101090000000500000004000000090000000313EF350407095F9D0000000912B880FC0AF9F3380000000710B7ED03000000010A5351BE00000006000000090000000300000002000000000000000110ED7103000000010AA6A27E10EDAD09046001000000000A13841901019FB46513EEF9040000000207095F9D0000000512B880FC000000060000000300000006000000000000000410ED710900000004046001001383DD0100000000019FB46513EEF9040000000207095F9D000000090000000A0000000913841901019FB46513EEF9040000000207095F9D12B8BCFC000000030000000812B880FC0A5351B8112101030A5351BE11210109000000060000000400000009000000011120C503000000010A5351BE00000006000000080000000313EF350407095F9D0000000612B880FC0A5351B80000000600000006000000030000000200000000000000030000000200000000"
theorem small_8935946_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935946_left_root small_8935946_left_fuel small_8935946_left_count small_8935946_left_encoded = true := by
  decide +kernel
theorem small_8935946_left_covered : CoveredBy scale carrier boxes small_8935946_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935946_left_root small_8935946_left_fuel small_8935946_left_count small_8935946_left_encoded small_8935946_left_checked

theorem cover_8935946 : CoveredBy scale carrier boxes root_8935946 := by
  apply coveredBy_split_literal root_8935946 small_8935946_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3342.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_8935946_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3342.covered
#print axioms cover_8935946

def root_8935940 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935940_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935940_left_fuel : Nat := 1
def small_8935940_left_count : Nat := 1
def small_8935940_left_encoded : String := "00000002"
theorem small_8935940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935940_left_root small_8935940_left_fuel small_8935940_left_count small_8935940_left_encoded = true := by
  decide +kernel
theorem small_8935940_left_covered : CoveredBy scale carrier boxes small_8935940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935940_left_root small_8935940_left_fuel small_8935940_left_count small_8935940_left_encoded small_8935940_left_checked

theorem cover_8935940 : CoveredBy scale carrier boxes root_8935940 := by
  apply coveredBy_split_literal root_8935940 small_8935940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935946 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_8935940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935946
#print axioms cover_8935940

def root_8935939 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935939_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935939_right_fuel : Nat := 23
def small_8935939_right_count : Nat := 421
def small_8935939_right_encoded : String := "13E20104067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE10804D0903C0010013A5110100000000033F67C513BBF504000000020793F0BD00000005128220FC0BF3E578100929030BF3E57E1009290900000005000000041008ED0900000004032001000000000A13C1450102B4D6A5000000050000000700000000000000010000000A0000000313BC31040793F0BD12825CFC000000030BF3E578100929030BF3E57E10092909000000050000000400000009000000010000000A0000000A0000000213A54D01033F67C513BBF504000000020793F0BD00000005128220FC0BF3E578100929030BF3E57E10092909000000050000000400000007000000011008ED03000000010BF3E57E000000061008ED0900000004000000060000000313BC31040793F0BD0000000600000007000000020000000000000004108011090000000403C0010013A5110100000000033F67C513BBF504000000020793F0BD00000009128220FC0BF3E578100929030AA6A27E10EDAD09000000090000000400000009000000011008ED03000000010AA6A27E10EDAD09032001000000000913C1450102B4D6A500000009000000090000000000000004000000090000000313BC31040793F0BD00000009128220FC0BF3E578000000071008ED03000000010000000A000000030000000213A54D01033F67C513BBF504000000020793F0BD12825CFC000000030BF3E5781009290300000005000000011008ED03000000010AA6A27E10EDAD0904600100000000051384190100000005000000000000000400000009128220FC0BF3E578000000071008ED03000000010AA6A27E10EDAD09046001001383DD010000000002B4D6A513D0D1040000000207095F9D000000050000000700000007000000070000000410ED7109000000040460010000000009000000070000000313BC31040793F0BD12825CFC000000030BF3E578000000071008ED03000000010AA6A27E00000006000000090000000700000002000000000000000110801103000000010B4D43FE10804D0903C001000000000A13A54D01033F67C513BBF504000000020793F0BD00000006128220FC0000000600000003000000060000000000000004108011090000000403C0010013A5110100000000033F67C513BBF504000000020793F0BD000000090000000A0000000A13A54D01033F67C513BBF504000000020793F0BD12825CFC000000030AA6A27810EDAD030AA6A27E10EDAD0904600100000000090000000600000004000000090000000110ED7103000000010AA6A27E0000000600000008128220FC0AA6A27810EDAD030AA6A27E10EDAD09046001000000000A000000060000000410ED710900000004046001001383DD0100000000000000091384190102B4D6A513D0D1040000000207095F9D000000060000000700000006000000000000000110ED7103000000010AA6A27E10EDAD09000000060000000410ED7109000000040460010000000008000000060000000313BC31040793F0BD12825CFC000000030AA6A2780000000600000006128220FC0AA6A27810EDAD030AA6A27E0000000600000007000000010000000600000003000000020000000012EA58FC0B4D43F810804D030B4D43FE10804D0903C0010013A5110100000000033F67C513BBF504000000020569AC3D134110FC000000030BF3E578100929030BF3E57E0000000800000007000000010000000A1340D4FC000000070000000313BC31040000000A0000000213A54D01033F67C513BBF504000000020569AC3D134110FC000000030000000700000007000000070000000000000004108011090000000403C0010013A5110100000000033F67C513BBF504000000020569AC3D134110FC000000030BF3E578000000071008ED03000000010AA6A27E10EDAD090000000A0000000410ED710900000004032001000000000900000007000000070000000713A54D0100000007000000000000000110801103000000010B4D43FE10804D0903C001000000000A13A54D01033F67C513BBF504000000020569AC3D000000060000000A000000060000000000000004108011090000000403C0010013A5110100000000033F67C513BBF504000000020569AC3D0000000A000000050000000513A54D01033F67C513BBF504000000020569AC3D134110FC000000030AA6A27810EDAD030AA6A27E10EDAD09046001000000000A0000000600000004000000070000000110ED7103000000010AA6A27E0000000A10ED710900000004046001000000000A000000050000000500000005000000000000000300000002"
theorem small_8935939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935939_right_root small_8935939_right_fuel small_8935939_right_count small_8935939_right_encoded = true := by
  decide +kernel
theorem small_8935939_right_covered : CoveredBy scale carrier boxes small_8935939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935939_right_root small_8935939_right_fuel small_8935939_right_count small_8935939_right_encoded small_8935939_right_checked

theorem cover_8935939 : CoveredBy scale carrier boxes root_8935939 := by
  apply coveredBy_split_literal root_8935939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935940 small_8935939_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935940
  · exact small_8935939_right_covered
#print axioms cover_8935939

def root_8935934 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935934_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935934_right_fuel : Nat := 1
def small_8935934_right_count : Nat := 1
def small_8935934_right_encoded : String := "00000000"
theorem small_8935934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935934_right_root small_8935934_right_fuel small_8935934_right_count small_8935934_right_encoded = true := by
  decide +kernel
theorem small_8935934_right_covered : CoveredBy scale carrier boxes small_8935934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935934_right_root small_8935934_right_fuel small_8935934_right_count small_8935934_right_encoded small_8935934_right_checked

theorem cover_8935934 : CoveredBy scale carrier boxes root_8935934 := by
  apply coveredBy_split_literal root_8935934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935939 small_8935934_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935939
  · exact small_8935934_right_covered
#print axioms cover_8935934

def root_8935488 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935488_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935488_left_fuel : Nat := 21
def small_8935488_left_count : Nat := 213
def small_8935488_left_encoded : String := "13D7B10100000000022A458513E1C50400000002067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE10804D0900000005000000041080110900000004014001000000000913F61501011523450000000500000009000000000000000110801103000000010B4D43FE10804D090000000A000000041080110900000004014001000000000913F615010115234513F85904000000020793F0BD00000005128220FC0AA6A2780000000900000007000000030000000A0000000012EA58FC0B4D43F810804D030B4D43FE10804D09014001000000000A13F61501011523450000000813F895040569AC3D134110FC000000030000000A0000000800000002000000000000000410801109000000040140010013F5D901000000000115234513F85904000000020569AC3D000000090000000613F895040569AC3D000000090000000A0000000213F615010115234513F85904000000020569AC3D134110FC000000030BF3E578100929030AA6A27E0000000800000006000000011008ED03000000010AA6A27E10EDAD0901E00100000000080000000800000004000000091340D4FC0BF3E578000000081008ED0300000001000000080000000313F895040569AC3D134110FC000000030BF3E578100929030AA6A27E10EDAD0901E0010000000008000000080000000400000009000000011008ED03000000010AA6A27E0000000A000000091340D4FC0BF3E5781009290300000008000000011008ED03000000010000000A0000000300000002000000000000000110801103000000010B4D43FE10804D090000000A000000041080110900000004014001000000000A13F615010115234513F85904000000020569AC3D134110FC000000030000000A0000000A0000000A000000000000000313E20104067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE10804D090000000A000000041080110900000004014001000000000913F61501033F67C5000000090000000900000000000000010000000A12EA58FC0B4D43F810804D030B4D43FE10804D090000000A000000041080110900000004014001000000000A13F61501033F67C513BBF504000000020569AC3D134110FC000000030BF3E578000000090000000A0000000A0000000A00000000000000010000000A0000000300000002"
theorem small_8935488_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935488_left_root small_8935488_left_fuel small_8935488_left_count small_8935488_left_encoded = true := by
  decide +kernel
theorem small_8935488_left_covered : CoveredBy scale carrier boxes small_8935488_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935488_left_root small_8935488_left_fuel small_8935488_left_count small_8935488_left_encoded small_8935488_left_checked

theorem cover_8935488 : CoveredBy scale carrier boxes root_8935488 := by
  apply coveredBy_split_literal root_8935488 small_8935488_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935934 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8935488_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935934
#print axioms cover_8935488

def root_8935482 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935482_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935482_left_fuel : Nat := 1
def small_8935482_left_count : Nat := 1
def small_8935482_left_encoded : String := "00000004"
theorem small_8935482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935482_left_root small_8935482_left_fuel small_8935482_left_count small_8935482_left_encoded = true := by
  decide +kernel
theorem small_8935482_left_covered : CoveredBy scale carrier boxes small_8935482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935482_left_root small_8935482_left_fuel small_8935482_left_count small_8935482_left_encoded small_8935482_left_checked

theorem cover_8935482 : CoveredBy scale carrier boxes root_8935482 := by
  apply coveredBy_split_literal root_8935482 small_8935482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935488 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8935482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935488
#print axioms cover_8935482

def root_8935232 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935232_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935232_left_fuel : Nat := 17
def small_8935232_left_count : Nat := 117
def small_8935232_left_encoded : String := "0F878D090280010013D7B10100000000022A458513E1C50400000002067ECE7D12EA94FC000000030B4D43F810804D0300000005000000010000000512EA58FC0B4D43F810804D0300000008000000010000000A0000000313E201040000000A0000000213D7ED01022A458513E1C50400000002067ECE7D0000000512EA58FC0B4D43F810804D030DE7C9FE000000080E5FD90900000004000000080000000110801103000000010DE7C9FE0E60150900000008000000040E5FD9090000000403C001000000000A13A54D010115234513F85904000000020569AC3D00000005000000080000000A000000000000000313E20104067ECE7D12EA94FC000000030B4D43F810804D030DE7C9FE0E60150900000005000000040E5FD9090000000403C0010013A5110100000000033F67C5000000050000000A13A54D01033F67C50000000500000006000000000000000110801103000000010DE7C9FE000000060E5FD9090000000403C001000000000A0000000612EA58FC0B4D43F810804D030DE7C9FE0E60150900000006000000040E5FD9090000000403C001000000000A13A54D01033F67C513BBF50400000002000000080000000600000000000000010000000A00000003000000020000000000000004"
theorem small_8935232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935232_left_root small_8935232_left_fuel small_8935232_left_count small_8935232_left_encoded = true := by
  decide +kernel
theorem small_8935232_left_covered : CoveredBy scale carrier boxes small_8935232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935232_left_root small_8935232_left_fuel small_8935232_left_count small_8935232_left_encoded small_8935232_left_checked

theorem cover_8935232 : CoveredBy scale carrier boxes root_8935232 := by
  apply coveredBy_split_literal root_8935232 small_8935232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935482 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8935232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935482
#print axioms cover_8935232

def root_8935226 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935226_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8935226_left_fuel : Nat := 1
def small_8935226_left_count : Nat := 1
def small_8935226_left_encoded : String := "00000001"
theorem small_8935226_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8935226_left_root small_8935226_left_fuel small_8935226_left_count small_8935226_left_encoded = true := by
  decide +kernel
theorem small_8935226_left_covered : CoveredBy scale carrier boxes small_8935226_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8935226_left_root small_8935226_left_fuel small_8935226_left_count small_8935226_left_encoded small_8935226_left_checked

theorem cover_8935226 : CoveredBy scale carrier boxes root_8935226 := by
  apply coveredBy_split_literal root_8935226 small_8935226_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935232 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8935226_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935232
#print axioms cover_8935226

def root_8934468 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934468_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934468_left_fuel : Nat := 23
def small_8934468_left_count : Nat := 361
def small_8934468_left_encoded : String := "0F878D030C9A86FE0F878D090280010013D7B10100000000022A458513E1C50400000002067ECE7D000000050000000813E20104067ECE7D12EA94FC000000030DE7C9F80E60150300000005000000010E5FD903000000010DE7C9FE0E60150900000005000000040E5FD90900000004014001000000000A13F61501033F67C50000000513BC31040793F0BD0000000500000008000000020000000012EA58FC00000008000000030000000213D7ED01022A458513E1C50400000002067ECE7D000000050000000813E20104067ECE7D12EA94FC000000030DE7C9F80E60150300000005000000010E5FD903000000010DE7C9FE0E60150900000005000000040000000512EA58FC0DE7C9F8000000070E5FD9030000000100000008000000030000000200000000000000040F875109000000040280010013D7B10100000000022A458513E1C50400000002067ECE7D12EA94FC000000030DE7C9F80E60150300000005000000010000000512EA58FC0DE7C9F80E60150300000008000000010E5FD903000000010B4D43FE0000000810801109000000040140010013F5D90100000000011523450000000613F895040569AC3D00000009000000060000000213F61501011523450000000813F895040569AC3D134110FC000000030D412878000000080EFA1103000000010AA6A27E00000008000000090000000800000002000000000000000313E20104067ECE7D12EA94FC000000030DE7C9F80E6015030B4D43FE10804D090140010013F5D90100000000033F67C5000000050000000913F61501033F67C500000005000000070000000000000004108011090000000400000009000000010E5FD903000000010B4D43FE10804D090140010013F5D90100000000033F67C513BBF50400000002000000090000000913F61501033F67C50000000513BC31040793F0BD00000005128220FC0D412878000000070000000A0000000300000002000000000000000410801109000000040000000912EA58FC0DE7C9F80E6015030B4D43FE0000000800000007000000010E5FD903000000010B4D43FE10804D090140010013F5D901000000000000000813F61501033F67C50000000800000007000000000000000410801109000000040140010013F5D90100000000033F67C513BBF504000000020569AC3D000000090000000813BC31040569AC3D00000009000000070000000213F61501033F67C513BBF504000000020569AC3D134110FC000000030D412878000000070EFA11030000000100000009000000070000000700000000000000030000000213D7ED01022A458513E1C50400000002067ECE7D0000000512EA58FC0DE7C9F80E60150300000008000000010E5FD903000000010B4D43FE10804D090000000800000004108011090000000403C0010013A5110100000000011523450000000813F895040569AC3D134110FC000000030D412878000000070EFA1103000000010AA6A27E0000000800000007000000070000000213A54D010115234513F85904000000020569AC3D000000050000000700000007000000000000000313E20104067ECE7D12EA94FC000000030DE7C9F80E6015030B4D43FE10804D09000000050000000400000007000000010E5FD903000000010B4D43FE10804D0903C0010013A5110100000000033F67C50000000513BC31040793F0BD00000005000000070000000213A54D01033F67C500000005000000070000000000000004108011090000000403C0010013A5110100000000033F67C513BBF504000000020793F0BD00000005128220FC0D412878000000070EFA110300000001000000090000000313BC31040793F0BD00000009000000070000000213A54D01033F67C513BBF504000000020793F0BD0000000500000007000000070000000012EA58FC0DE7C9F8000000070E5FD903000000010B4D43FE10804D0900000007000000040000000700000003000000020000000000000001"
theorem small_8934468_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934468_left_root small_8934468_left_fuel small_8934468_left_count small_8934468_left_encoded = true := by
  decide +kernel
theorem small_8934468_left_covered : CoveredBy scale carrier boxes small_8934468_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934468_left_root small_8934468_left_fuel small_8934468_left_count small_8934468_left_encoded small_8934468_left_checked

theorem cover_8934468 : CoveredBy scale carrier boxes root_8934468 := by
  apply coveredBy_split_literal root_8934468 small_8934468_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8935226 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8934468_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8935226
#print axioms cover_8934468

def root_8934462 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934462_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934462_left_fuel : Nat := 1
def small_8934462_left_count : Nat := 1
def small_8934462_left_encoded : String := "00000004"
theorem small_8934462_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934462_left_root small_8934462_left_fuel small_8934462_left_count small_8934462_left_encoded = true := by
  decide +kernel
theorem small_8934462_left_covered : CoveredBy scale carrier boxes small_8934462_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934462_left_root small_8934462_left_fuel small_8934462_left_count small_8934462_left_encoded small_8934462_left_checked

theorem cover_8934462 : CoveredBy scale carrier boxes root_8934462 := by
  apply coveredBy_split_literal root_8934462 small_8934462_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934468 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8934462_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934468
#print axioms cover_8934462

def root_8934420 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934420_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934420_left_fuel : Nat := 9
def small_8934420_left_count : Nat := 21
def small_8934420_left_encoded : String := "0F34D0FE0C9A86F80F878D03028001000000000800000008000000010F87510300000001028001000000000A13D7ED01022A45850000000513E20104067ECE7D000000050000000A000000020000000000000004"
theorem small_8934420_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934420_left_root small_8934420_left_fuel small_8934420_left_count small_8934420_left_encoded = true := by
  decide +kernel
theorem small_8934420_left_covered : CoveredBy scale carrier boxes small_8934420_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934420_left_root small_8934420_left_fuel small_8934420_left_count small_8934420_left_encoded small_8934420_left_checked

theorem cover_8934420 : CoveredBy scale carrier boxes root_8934420 := by
  apply coveredBy_split_literal root_8934420 small_8934420_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934462 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8934420_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934462
#print axioms cover_8934420

def root_8934414 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934414_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934414_left_fuel : Nat := 1
def small_8934414_left_count : Nat := 1
def small_8934414_left_encoded : String := "00000003"
theorem small_8934414_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934414_left_root small_8934414_left_fuel small_8934414_left_count small_8934414_left_encoded = true := by
  decide +kernel
theorem small_8934414_left_covered : CoveredBy scale carrier boxes small_8934414_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934414_left_root small_8934414_left_fuel small_8934414_left_count small_8934414_left_encoded small_8934414_left_checked

theorem cover_8934414 : CoveredBy scale carrier boxes root_8934414 := by
  apply coveredBy_split_literal root_8934414 small_8934414_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934420 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8934414_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934420
#print axioms cover_8934414

def root_8934413 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934413_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934413_right_fuel : Nat := 30
def small_8934413_right_count : Nat := 233
def small_8934413_right_encoded : String := "138670FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0900000008000000040F875109000000040280010013D7B10100000000022A45850000000813E20104022A457D13E200FC000000030DE7C9F8000000070E5FD903000000010B4D43FE0000000800000007000000070000000213D7ED01022A458513E1C50400000002000000080000000700000000000000010F875103000000010C9A86FE0F878D090280010013D7B10100000000022A4585000000080000000A13D7ED01022A458513E1C504000000020000000813E20104022A457D13E200FC000000030B4D43F8000000080000000A000000070000000200000000000000040F875109000000040280010013D7B10100000000022A458513E1C50400000002022A457D13E200FC000000030B4D43F810804D030B4D43FE0000000810801109000000040140010000000008000000080000000110801103000000010B4D43FE0000000A1080110900000004014001000000000A13F615010115234513F8590400000002033F67BD0000000A0000000500000005000000000000000813E20104022A457D13E200FC000000030B4D43F810804D030B4D43FE0000000A108011090000000400000005000000010000000A000000050000000213D7ED01022A458513E1C50400000002022A457D13E200FC000000030B4D43F810804D030B4D43FE00000008108011090000000403C0010013A51101000000000000000813A54D0100000007000000000000000110801103000000010B4D43FE10804D0903C0010013A51101000000000000000813A54D01011523450000000813F89504033F67BD13BC30FC000000030AA6A278000000070000000A00000005000000020000000000000004108011090000000403C0010013A51101000000000115234513F8590400000002033F67BD13BC30FC000000030AA6A27810EDAD03000000080000000110ED7103000000010000000A000000050000000513A54D010115234513F8590400000002033F67BD13BC30FC000000030AA6A27810EDAD03000000080000000110ED7103000000010AA6A27E10EDAD09000000080000000410ED710900000004046001001383DD0100000000000000050000000500000005000000050000000013E1C4FC0B4D43F8000000071080110300000001000000050000000313E20104022A457D13E200FC000000030B4D43F810804D03000000070000000110801103000000010000000500000005000000020000000000000003"
theorem small_8934413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934413_right_root small_8934413_right_fuel small_8934413_right_count small_8934413_right_encoded = true := by
  decide +kernel
theorem small_8934413_right_covered : CoveredBy scale carrier boxes small_8934413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934413_right_root small_8934413_right_fuel small_8934413_right_count small_8934413_right_encoded small_8934413_right_checked

theorem cover_8934413 : CoveredBy scale carrier boxes root_8934413 := by
  apply coveredBy_split_literal root_8934413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934414 small_8934413_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934414
  · exact small_8934413_right_covered
#print axioms cover_8934413

def root_8934407 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934407_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934407_left_fuel : Nat := 1
def small_8934407_left_count : Nat := 1
def small_8934407_left_encoded : String := "00000002"
theorem small_8934407_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934407_left_root small_8934407_left_fuel small_8934407_left_count small_8934407_left_encoded = true := by
  decide +kernel
theorem small_8934407_left_covered : CoveredBy scale carrier boxes small_8934407_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934407_left_root small_8934407_left_fuel small_8934407_left_count small_8934407_left_encoded small_8934407_left_checked

theorem cover_8934407 : CoveredBy scale carrier boxes root_8934407 := by
  apply coveredBy_split_literal root_8934407 small_8934407_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934413 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8934407_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934413
#print axioms cover_8934407

def root_8934406 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934406_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934406_right_fuel : Nat := 25
def small_8934406_right_count : Nat := 335
def small_8934406_right_encoded : String := "1386AD04045489FD1386ACFC000000030CFD9C090F34D0FE0C9A86F80F878D030280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030AD3578900000005000000080000000812EA95040000000A0000000213D7ED01067ECE8512EA590400000002067ECE7D00000006000000070000000600000000000000010F87510300000001028001000000000A00000006000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F80E6015030DE7C9FE0E60150900000008000000040E5FD909000000040140010013F5D901000000000569AC451340D50400000002000000080000000700000007000000010E5FD903000000010000000A12EA58FC0DE7C9F8000000070000000A0000000312EA9504067ECE7D12EA94FC000000030DE7C9F8000000070000000A000000070000000213D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F8000000070E5FD903000000010DE7C9FE000000060E5FD9090000000400000007000000070000000700000000000000040F875109000000040280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F80E6015030B4D43FE10804D090140010000000009000000070000000400000007000000010E5FD903000000010B4D43FE10804D09014001000000000913F615010569AC451340D504000000020793F0BD00000009000000070000000700000000000000040000000912EA58FC0DE7C9F8000000070E5FD903000000010B4D43FE10804D090000000700000004000000070000000312EA9504067ECE7D12EA94FC000000030DE7C9F8000000070E5FD903000000010000000A000000070000000213D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F8000000070E5FD903000000010B4D43FE10804D09000000070000000400000007000000070000000700000000000000010F875103000000010C9A86FE0F878D09028001000000000A13D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030B4D43F800000006000000060000000A0000000600000000000000040F875109000000040280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030000000A0000000A0000000A13D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE10804D0903C0010013A51101000000000000000A0000000600000004108011090000000403C0010013A51101000000000569AC451340D504000000020793F0BD00000009000000070000000713A54D010569AC451340D504000000020000000700000007000000000000000110801103000000010B4D43FE10804D090000000600000004108011090000000403C001000000000A13A54D010569AC451340D5040000000200000006000000050000000012EA58FC0B4D43F810804D030B4D43FE10804D09000000070000000400000007000000011080110300000001000000050000000312EA9504067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE0000000600000007000000010000000A000000050000000200000000138670FC0CFD9C090F34D0FE0C9A86F80F878D0300000008000000010000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09000000070000000400000007000000010F875103000000010C9A86FE0F878D090000000A000000040F87510900000004000000050000000300000002"
theorem small_8934406_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934406_right_root small_8934406_right_fuel small_8934406_right_count small_8934406_right_encoded = true := by
  decide +kernel
theorem small_8934406_right_covered : CoveredBy scale carrier boxes small_8934406_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934406_right_root small_8934406_right_fuel small_8934406_right_count small_8934406_right_encoded small_8934406_right_checked

theorem cover_8934406 : CoveredBy scale carrier boxes root_8934406 := by
  apply coveredBy_split_literal root_8934406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934407 small_8934406_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934407
  · exact small_8934406_right_covered
#print axioms cover_8934406

def root_8934400 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934400_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934400_left_fuel : Nat := 1
def small_8934400_left_count : Nat := 1
def small_8934400_left_encoded : String := "00000001"
theorem small_8934400_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934400_left_root small_8934400_left_fuel small_8934400_left_count small_8934400_left_encoded = true := by
  decide +kernel
theorem small_8934400_left_covered : CoveredBy scale carrier boxes small_8934400_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934400_left_root small_8934400_left_fuel small_8934400_left_count small_8934400_left_encoded small_8934400_left_checked

theorem cover_8934400 : CoveredBy scale carrier boxes root_8934400 := by
  apply coveredBy_split_literal root_8934400 small_8934400_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934406 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8934400_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934406
#print axioms cover_8934400

def root_8934206 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934206_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934206_left_fuel : Nat := 18
def small_8934206_left_count : Nat := 93
def small_8934206_left_encoded : String := "0F34D0F804548A051386710400000002045489FD1386ACFC000000030CFD9C09000000050F350CFE000000040C9A86FE0F878D09028001000000000800000008000000040F875109000000040280010013D7B101000000000AD3578310D100F8000000080000000110D13CF800000001022A458513E1C50400000002067ECE7D000000050000000813E20104067ECE7D12EA94FC0000000300000005000000070000000213D7ED010AD357830000000510D13CF800000001022A4585000000050000000700000000138670FC0CFD9C090000000800000008000000031386AD04045489FD1386ACFC000000030CFD9C090F34D0FE028001000000000800000007000000040F350CFE000000040C9A86FE0F878D090280010013D7B101000000000AD357830000000710D13CF800000001067ECE8512EA590400000002000000080000000700000007000000040F8751090000000400000007138670FC0CFD9C090000000700000007000000030000000200000001"
theorem small_8934206_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934206_left_root small_8934206_left_fuel small_8934206_left_count small_8934206_left_encoded = true := by
  decide +kernel
theorem small_8934206_left_covered : CoveredBy scale carrier boxes small_8934206_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934206_left_root small_8934206_left_fuel small_8934206_left_count small_8934206_left_encoded small_8934206_left_checked

theorem cover_8934206 : CoveredBy scale carrier boxes root_8934206 := by
  apply coveredBy_split_literal root_8934206 small_8934206_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934400 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8934206_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934400
#print axioms cover_8934206

def root_8934200 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934200_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934200_left_fuel : Nat := 1
def small_8934200_left_count : Nat := 1
def small_8934200_left_encoded : String := "00000000"
theorem small_8934200_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934200_left_root small_8934200_left_fuel small_8934200_left_count small_8934200_left_encoded = true := by
  decide +kernel
theorem small_8934200_left_covered : CoveredBy scale carrier boxes small_8934200_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934200_left_root small_8934200_left_fuel small_8934200_left_count small_8934200_left_encoded small_8934200_left_checked

theorem cover_8934200 : CoveredBy scale carrier boxes root_8934200 := by
  apply coveredBy_split_literal root_8934200 small_8934200_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934206 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8934200_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934206
#print axioms cover_8934200

def root_8934199 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8934199 : CoveredBy scale carrier boxes root_8934199 := by
  apply coveredBy_split_literal root_8934199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934200 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3343.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934200
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3343.covered
#print axioms cover_8934199

def root_8934193 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934193_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934193_left_fuel : Nat := 1
def small_8934193_left_count : Nat := 1
def small_8934193_left_encoded : String := "00000004"
theorem small_8934193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934193_left_root small_8934193_left_fuel small_8934193_left_count small_8934193_left_encoded = true := by
  decide +kernel
theorem small_8934193_left_covered : CoveredBy scale carrier boxes small_8934193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934193_left_root small_8934193_left_fuel small_8934193_left_count small_8934193_left_encoded small_8934193_left_checked

theorem cover_8934193 : CoveredBy scale carrier boxes root_8934193 := by
  apply coveredBy_split_literal root_8934193 small_8934193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934199 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8934193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934199
#print axioms cover_8934193

def root_8934107 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934107_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934107_left_fuel : Nat := 13
def small_8934107_left_count : Nat := 41
def small_8934107_left_encoded : String := "120700FE05000100135D4501000000000CFD9C03000000080F350CF80000000104548A051386710400000002000000081386AD04045489FD1386ACFC0000000304548A09000000051386ACFE000000040C9A86F800000006000000060000000800000002135D81010CFD9C030F34D0F800000008000000010F350CF80000000104548A051386710400000002045489FD0000000500000008000000060000000000000004"
theorem small_8934107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934107_left_root small_8934107_left_fuel small_8934107_left_count small_8934107_left_encoded = true := by
  decide +kernel
theorem small_8934107_left_covered : CoveredBy scale carrier boxes small_8934107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934107_left_root small_8934107_left_fuel small_8934107_left_count small_8934107_left_encoded small_8934107_left_checked

theorem cover_8934107 : CoveredBy scale carrier boxes root_8934107 := by
  apply coveredBy_split_literal root_8934107 small_8934107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934193 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8934107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934193
#print axioms cover_8934107

def root_8934102 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934102_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934102_right_fuel : Nat := 1
def small_8934102_right_count : Nat := 1
def small_8934102_right_encoded : String := "00000003"
theorem small_8934102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934102_right_root small_8934102_right_fuel small_8934102_right_count small_8934102_right_encoded = true := by
  decide +kernel
theorem small_8934102_right_covered : CoveredBy scale carrier boxes small_8934102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934102_right_root small_8934102_right_fuel small_8934102_right_count small_8934102_right_encoded small_8934102_right_checked

theorem cover_8934102 : CoveredBy scale carrier boxes root_8934102 := by
  apply coveredBy_split_literal root_8934102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934107 small_8934102_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934107
  · exact small_8934102_right_covered
#print axioms cover_8934102

def root_8932166 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8932166 : CoveredBy scale carrier boxes root_8932166 := by
  apply coveredBy_split_literal root_8932166 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3341.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8934102 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3341.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8934102
#print axioms cover_8932166

def root_8932160 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932160_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932160_left_fuel : Nat := 1
def small_8932160_left_count : Nat := 1
def small_8932160_left_encoded : String := "00000002"
theorem small_8932160_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8932160_left_root small_8932160_left_fuel small_8932160_left_count small_8932160_left_encoded = true := by
  decide +kernel
theorem small_8932160_left_covered : CoveredBy scale carrier boxes small_8932160_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8932160_left_root small_8932160_left_fuel small_8932160_left_count small_8932160_left_encoded small_8932160_left_checked

theorem cover_8932160 : CoveredBy scale carrier boxes root_8932160 := by
  apply coveredBy_split_literal root_8932160 small_8932160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8932166 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8932160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8932166
#print axioms cover_8932160

def root_8932159 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8932159 : CoveredBy scale carrier boxes root_8932159 := by
  apply coveredBy_split_literal root_8932159 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8932160 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3344.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8932160
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3344.covered
#print axioms cover_8932159

def root_8932153 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932153_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932153_left_fuel : Nat := 1
def small_8932153_left_count : Nat := 1
def small_8932153_left_encoded : String := "00000001"
theorem small_8932153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8932153_left_root small_8932153_left_fuel small_8932153_left_count small_8932153_left_encoded = true := by
  decide +kernel
theorem small_8932153_left_covered : CoveredBy scale carrier boxes small_8932153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8932153_left_root small_8932153_left_fuel small_8932153_left_count small_8932153_left_encoded small_8932153_left_checked

theorem cover_8932153 : CoveredBy scale carrier boxes root_8932153 := by
  apply coveredBy_split_literal root_8932153 small_8932153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8932159 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8932153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8932159
#print axioms cover_8932153

def root_8931215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931215_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931215_left_fuel : Nat := 22
def small_8931215_left_count : Nat := 441
def small_8931215_left_encoded : String := "120700F808A91305120701040000000208A912FD12073CFC0000000308A913090000000512073CFE0000000405000100135D45010000000004548A03000000051386ACF80000000104548A05000000051386AD040CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE0000000400000005000000030000000200000005120700FC08A91309120700FE000000080000000412073CFE0000000405000100135D45010000000004548A03000000081386ACF80000000104548A051386710400000002000000081386AD04045489FD1386ACFC000000030CFD9C09000000070F350CFE00000004000000070000000700000002135D810104548A03138670F804548A05000000051386AD04045489FD000000050000000700000002000000011386ACF80000000104548A051386710400000002045489FD00000005000000071386AD04045489FD000000070000000700000002000000000000000312073D0408A912FD12073CFC0000000308A91309120700FE05000100135D45010000000004548A03138670F80CFD9C050000000500000007000000011386ACF8000000010CFD9C050F34D104000000020000000500000006135D810104548A030000000500000006000000000000000412073CFE0000000405000100135D45010000000004548A03138670F80CFD9C050F34D104000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0000000700000005000000030F350D040CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A87040F875105000000020C9A86FC0F878CFD0000000300000007000000070F878D0500000005000000020F34D0FC0CFD9C09000000070F350CFE000000040C9A87040F875105000000020C9A86FE00000007000000070F878D0500000007000000020000000300000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE00000004000000050F34D0FC0CFD9C09000000070F350CFE000000040C9A86FE0000000700000007000000030F350D040CFD9BFD0F350CFC000000030CFD9C09000000070F350CFE000000040C9A87040F87510500000002000000070F878D0500000007000000020F34D0FC0CFD9C09000000070F350CFE000000040C9A87040F8751050000000200000007000000070000000300000002135D810104548A03138670F80CFD9C050F34D10400000002000000050F350D040CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9C09000000070F350CFE000000040C9A87040F875105000000020C9A86FE0000000700000007000000070000000300000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE0000000400000007000000030F350D040CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A87040F8751050000000200000006000000070F34D0FC0CFD9C09000000060F350CFE000000040C9A87040F875105000000020000000600000007000000030000000200000000120700FC08A91309120700FE000000070000000412073CFE0000000405000100135D45010000000004548A03138670F80CFD9C050F34D10400000002045489FD1386ACFC000000030CFD9C09000000070F350CFE0000000400000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020000000700000007138670FC0CFD9C09000000070F350CFE000000040C9A87040F8751050000000200000007000000070000000300000002000000011386ACF8000000010CFD9C050F34D10400000002045489FD1386ACFC0000000300000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020000000700000007138670FC0CFD9C09000000070F350CFE00000004000000070000000300000002135D810104548A03138670F80CFD9C050F34D10400000002045489FD1386ACFC0000000300000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020C9A86FE000000070000000700000007138670FC0CFD9C09000000070F350CFE000000040C9A87040F8751050000000200000007000000070000000300000002000000011386ACF8000000010CFD9C050F34D10400000002045489FD00000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020000000700000007138670FC0CFD9C09000000070F350CFE0000000400000007000000030000000200000000000000030000000200000001"
theorem small_8931215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931215_left_root small_8931215_left_fuel small_8931215_left_count small_8931215_left_encoded = true := by
  decide +kernel
theorem small_8931215_left_covered : CoveredBy scale carrier boxes small_8931215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931215_left_root small_8931215_left_fuel small_8931215_left_count small_8931215_left_encoded small_8931215_left_checked

theorem cover_8931215 : CoveredBy scale carrier boxes root_8931215 := by
  apply coveredBy_split_literal root_8931215 small_8931215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8932153 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8931215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8932153
#print axioms cover_8931215

def root_8931210 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931210_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931210_right_fuel : Nat := 1
def small_8931210_right_count : Nat := 1
def small_8931210_right_encoded : String := "00000004"
theorem small_8931210_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931210_right_root small_8931210_right_fuel small_8931210_right_count small_8931210_right_encoded = true := by
  decide +kernel
theorem small_8931210_right_covered : CoveredBy scale carrier boxes small_8931210_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931210_right_root small_8931210_right_fuel small_8931210_right_count small_8931210_right_encoded small_8931210_right_checked

theorem cover_8931210 : CoveredBy scale carrier boxes root_8931210 := by
  apply coveredBy_split_literal root_8931210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8931215 small_8931210_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8931215
  · exact small_8931210_right_covered
#print axioms cover_8931210

def root_8947786 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947786_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947786_left_fuel : Nat := 15
def small_8947786_left_count : Nat := 69
def small_8947786_left_encoded : String := "0F34D0F804548A051386710400000002045489FD1386ACFC000000030280010013D7B10100000000078000FE128A7D090AD357830000000610D13CF800000001022A45850000000613E20104067ECE7D000000090000000600000002000000040000000613D7ED01078000FE128A7D090AD357830000000A10D13CF800000001022A45850000000A0000000700000004128A4109000000040000000A00000000138670FC0280010013D7B10100000000078000FE000000070000000600000007000000031386AD04045489FD1386ACFC000000030280010013D7B10100000000078000FE128A7D0900000007000000040000000713D7ED01078000FE000000070000000700000000000000070000000200000001"
theorem small_8947786_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947786_left_root small_8947786_left_fuel small_8947786_left_count small_8947786_left_encoded = true := by
  decide +kernel
theorem small_8947786_left_covered : CoveredBy scale carrier boxes small_8947786_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947786_left_root small_8947786_left_fuel small_8947786_left_count small_8947786_left_encoded small_8947786_left_checked

theorem cover_8947786 : CoveredBy scale carrier boxes root_8947786 := by
  apply coveredBy_split_literal root_8947786 small_8947786_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3346.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8947786_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3346.covered
#print axioms cover_8947786

def root_8947781 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947781_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947781_right_fuel : Nat := 1
def small_8947781_right_count : Nat := 1
def small_8947781_right_encoded : String := "00000004"
theorem small_8947781_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947781_right_root small_8947781_right_fuel small_8947781_right_count small_8947781_right_encoded = true := by
  decide +kernel
theorem small_8947781_right_covered : CoveredBy scale carrier boxes small_8947781_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947781_right_root small_8947781_right_fuel small_8947781_right_count small_8947781_right_encoded small_8947781_right_checked

theorem cover_8947781 : CoveredBy scale carrier boxes root_8947781 := by
  apply coveredBy_split_literal root_8947781 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8947786 small_8947781_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8947786
  · exact small_8947781_right_covered
#print axioms cover_8947781

def root_8947780 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947780_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947780_right_fuel : Nat := 10
def small_8947780_right_count : Nat := 49
def small_8947780_right_encoded : String := "135D4509000000040CFD9C030F34D0F804548A051386710400000002045489FD00000006000000061386AD04045489FD000000090000000700000002000000010F350CF80000000104548A051386710400000002045489FD1386ACFC000000030C9A86F8000000090F8751030000000100000009138670FC0C9A86F80F878D0300000006000000010F8751030000000100000005000000031386AD04045489FD1386ACFC000000030C9A86F8000000090F87510300000001000000050000000500000002"
theorem small_8947780_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947780_right_root small_8947780_right_fuel small_8947780_right_count small_8947780_right_encoded = true := by
  decide +kernel
theorem small_8947780_right_covered : CoveredBy scale carrier boxes small_8947780_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947780_right_root small_8947780_right_fuel small_8947780_right_count small_8947780_right_encoded small_8947780_right_checked

theorem cover_8947780 : CoveredBy scale carrier boxes root_8947780 := by
  apply coveredBy_split_literal root_8947780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8947781 small_8947780_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8947781
  · exact small_8947780_right_covered
#print axioms cover_8947780

def root_8947774 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947774_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947774_left_fuel : Nat := 1
def small_8947774_left_count : Nat := 1
def small_8947774_left_encoded : String := "00000000"
theorem small_8947774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947774_left_root small_8947774_left_fuel small_8947774_left_count small_8947774_left_encoded = true := by
  decide +kernel
theorem small_8947774_left_covered : CoveredBy scale carrier boxes small_8947774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947774_left_root small_8947774_left_fuel small_8947774_left_count small_8947774_left_encoded small_8947774_left_checked

theorem cover_8947774 : CoveredBy scale carrier boxes root_8947774 := by
  apply coveredBy_split_literal root_8947774 small_8947774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8947780 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8947774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8947780
#print axioms cover_8947774

def root_8947773 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8947773 : CoveredBy scale carrier boxes root_8947773 := by
  apply coveredBy_split_literal root_8947773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8947774 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3347.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8947774
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3347.covered
#print axioms cover_8947773

def root_8947768 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947768_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947768_right_fuel : Nat := 1
def small_8947768_right_count : Nat := 1
def small_8947768_right_encoded : String := "00000003"
theorem small_8947768_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947768_right_root small_8947768_right_fuel small_8947768_right_count small_8947768_right_encoded = true := by
  decide +kernel
theorem small_8947768_right_covered : CoveredBy scale carrier boxes small_8947768_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947768_right_root small_8947768_right_fuel small_8947768_right_count small_8947768_right_encoded small_8947768_right_checked

theorem cover_8947768 : CoveredBy scale carrier boxes root_8947768 := by
  apply coveredBy_split_literal root_8947768 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8947773 small_8947768_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8947773
  · exact small_8947768_right_covered
#print axioms cover_8947768

def root_8946744 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946744_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946744_left_fuel : Nat := 30
def small_8946744_left_count : Nat := 487
def small_8946744_left_encoded : String := "12073CFC0000000305000100135D450100000000050000FE135D81090CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000050F34D0FC000000050000000300000009000000010F350CF80000000104548A0513867104000000020CFD9BFD000000090F34D0FC0C9A86F80F878D03028001000000000913D7ED01078000FE128A7D09022A45850000000500000009000000040000000900000000000000010F87510300000001028001000000000913D7ED01078000FE128A7D09022A458513E1C504000000020AD3577D0000000510D100FC0B4D43F8000000091080110300000001000000090000000313E201040AD3577D0000000910D100FC0B4D43F800000009000000090000000300000002000000040000000900000000000000031386AD040CFD9BFD000000090F34D0FC0C9A86F8000000090F87510300000001028001000000000913D7ED01078000FE128A7D09067ECE8512EA5904000000020000000900000008000000040000000800000000000000030000000200000004135D4509000000040CFD9C030F34D0F8000000090000000100000009135D8101050000FE135D81090CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000050F34D0FC0000000A000000031386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD0000000307800100000000090000000A0F8750FD00000005000000030F34D0FC07800100128A410100000000078000FE128A7D090000000700000004000000070000000A0000000300000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F80F878D030C9A86FC0F878CFD0000000307800100000000050000000A0F8750FD0000000500000003000000010F875103000000010C9A86FC0F878CFD0000000307800100128A41010000000000000009128A7D01078000FE128A7D09022A458500000005000000080000000400000008000000000F8750FD0780010000000008128A7D010000000800000000000000030F34D0FC0C9A86F80F878D0307800100128A410100000000078000FE128A7D09022A45850000000513E201040AD3577D0000000510D100FC0DE7C9F80000000A0E5FD903000000010640010012FF710100000000000000090000000A000000030000000200000004128A410900000004022A45850000000A000000090000000A000000010F8751030000000107800100128A410100000000078000FE128A7D09022A458513E1C504000000020AD3577D0000000510D100FC0B4D43F810804D030640010012FF71010000000008C000FE00000005000000090000000A0000000110801103000000010640010012FF71010000000008C000FE11FC2509011523450000000500000008000000040000000812FFAD0108C000FE11FC25090115234500000005000000080000000400000008000000000000000313E201040AD3577D10D13CFC000000030000000810D100FC0B4D43F810804D030640010012FF71010000000008C000FE11FC250900000009000000040000000812FFAD0108C000FE11FC2509033F67C513BBF504000000020000000A0000000800000004000000080000000000000001108011030000000100000008000000030000000200000004128A410900000004022A458513E1C504000000020AD3577D0000000810D100FC0B4D43F800000009000000080000000300000008128A7D01078000FE128A7D09022A458513E1C504000000020AD3577D0000000510D100FC0000000A0000000313E201040AD3577D10D13CFC000000030000000810D100FC0B4D43F80000000A00000008000000030000000200000004128A410900000004022A45850000000A0000000800000000000000031386AD040CFD9BFD0F350CFC000000030C9A86F80F878D030C9A86FC0F878CFD000000030780010000000009128A7D01078000FE128A7D09067ECE8512EA5904000000020DE7C9F80000000500000008000000070000000400000008000000000F8750FD0000000900000003000000010F875103000000010C9A86FC00000008000000080F34D0FC0C9A86F80F878D0307800100128A410100000000078000FE128A7D09067ECE8512EA5904000000020AD3577D000000090000000712EA95040AD3577D00000009000000070000000200000004128A41090000000400000009128A7D01078000FE128A7D09067ECE8512EA5904000000020000000700000007000000040000000700000000000000010F8751030000000107800100128A410100000000078000FE128A7D09067ECE8512EA5904000000020AD3577D0000000810D100FC0000000800000003000000080000000400000008128A7D01078000FE128A7D09067ECE8512EA5904000000020AD3577D0000000810D100FC000000080000000300000008000000040000000800000000000000030000000200000004135D4509000000040CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000090F34D0FC0000000A0000000300000009000000010F350CF80000000104548A0513867104000000020CFD9BFD000000090F34D0FC0C9A86F80F878D030000000A000000010F8751030000000100000008000000031386AD040CFD9BFD000000080F34D0FC0C9A86F80000000900000008000000030000000200000000"
theorem small_8946744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946744_left_root small_8946744_left_fuel small_8946744_left_count small_8946744_left_encoded = true := by
  decide +kernel
theorem small_8946744_left_covered : CoveredBy scale carrier boxes small_8946744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946744_left_root small_8946744_left_fuel small_8946744_left_count small_8946744_left_encoded small_8946744_left_checked

theorem cover_8946744 : CoveredBy scale carrier boxes root_8946744 := by
  apply coveredBy_split_literal root_8946744 small_8946744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8947768 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8946744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8947768
#print axioms cover_8946744

def root_8946738 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946738_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946738_left_fuel : Nat := 1
def small_8946738_left_count : Nat := 1
def small_8946738_left_encoded : String := "00000002"
theorem small_8946738_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946738_left_root small_8946738_left_fuel small_8946738_left_count small_8946738_left_encoded = true := by
  decide +kernel
theorem small_8946738_left_covered : CoveredBy scale carrier boxes small_8946738_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946738_left_root small_8946738_left_fuel small_8946738_left_count small_8946738_left_encoded small_8946738_left_checked

theorem cover_8946738 : CoveredBy scale carrier boxes root_8946738 := by
  apply coveredBy_split_literal root_8946738 small_8946738_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8946744 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8946738_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8946744
#print axioms cover_8946738

def root_8946737 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946737_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946737_right_fuel : Nat := 22
def small_8946737_right_count : Nat := 285
def small_8946737_right_encoded : String := "12073D0408A912FD12073CFC0000000305000100135D450100000000050000FE135D81090CFD9C030F34D0F80CFD9C050F34D10400000002000000090F350D040CFD9BFD000000090F34D0FC0C9A87040F87510500000002000000080F878D05028001000000000913D7ED01078000FE000000070000000700000000000000020000000300000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD000000090F34D0FC0C9A86F80F878D03028001000000000913D7ED01078000FE128A7D090AD3578510D10104000000020000000900000007000000040000000800000000000000010F8751030000000100000008000000030F350D040CFD9BFD00000008000000050000000200000004135D4509000000040CFD9C030F34D0F800000009000000010F350CF80000000100000008135D8101050000FE135D81090CFD9C030F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003078001000000000700000007000000070F34D0FC07800100128A410100000000078000FE000000070000000700000007000000030F350D040CFD9BFD0F350CFC00000003000000080F34D0FC0C9A8704000000080F878D05078001000000000700000007000000020000000300000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86F80F878D030000000800000001000000080F34D0FC0C9A86F80F878D0307800100128A410100000000078000FE128A7D090AD3578500000007000000070000000400000008128A7D010000000700000000000000010F8751030000000100000008000000030F350D040CFD9BFD000000080F34D0FC00000008000000030000000200000004135D4509000000040CFD9C030F34D0F80CFD9C050F34D10400000002000000090F350D040000000800000002000000010F350CF8000000010000000800000000120700FC05000100135D450100000000050000FE135D81090CFD9C030F34D0F80CFD9C050F34D10400000002045489FD1386ACFC000000030280010013D7B10100000000078000FE0000000700000007000000070000000500000005000000010000000500000004135D4509000000040CFD9C030F34D0F80CFD9C050F34D10400000002045489FD0000000900000005000000050000000100000005135D8101050000FE135D81090CFD9C030F34D0F80CFD9C050F34D10400000002045489FD1386ACFC0000000300000007000000070F350D04045489FD1386ACFC000000030C9A87040F87510500000002000000050F878D0500000007000000020000000500000002000000010F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC000000030C9A86F80F878D03078001000000000700000007000000010F8751030000000100000005000000050000000500000004135D4509000000040CFD9C030F34D0F80CFD9C050F34D10400000002045489FD1386ACFC0000000307800100000000070000000700000005000000050000000100000005000000000000000300000002"
theorem small_8946737_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946737_right_root small_8946737_right_fuel small_8946737_right_count small_8946737_right_encoded = true := by
  decide +kernel
theorem small_8946737_right_covered : CoveredBy scale carrier boxes small_8946737_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946737_right_root small_8946737_right_fuel small_8946737_right_count small_8946737_right_encoded small_8946737_right_checked

theorem cover_8946737 : CoveredBy scale carrier boxes root_8946737 := by
  apply coveredBy_split_literal root_8946737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8946738 small_8946737_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8946738
  · exact small_8946737_right_covered
#print axioms cover_8946737

def root_8946731 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946731_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8946731_left_fuel : Nat := 1
def small_8946731_left_count : Nat := 1
def small_8946731_left_encoded : String := "00000001"
theorem small_8946731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8946731_left_root small_8946731_left_fuel small_8946731_left_count small_8946731_left_encoded = true := by
  decide +kernel
theorem small_8946731_left_covered : CoveredBy scale carrier boxes small_8946731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8946731_left_root small_8946731_left_fuel small_8946731_left_count small_8946731_left_encoded small_8946731_left_checked

theorem cover_8946731 : CoveredBy scale carrier boxes root_8946731 := by
  apply coveredBy_split_literal root_8946731 small_8946731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8946737 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8946731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8946737
#print axioms cover_8946731

def root_8945245 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8945245 : CoveredBy scale carrier boxes root_8945245 := by
  apply coveredBy_split_literal root_8945245 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3345.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8946731 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3345.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8946731
#print axioms cover_8945245

def root_8945239 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8945239_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8945239_left_fuel : Nat := 1
def small_8945239_left_count : Nat := 1
def small_8945239_left_encoded : String := "00000004"
theorem small_8945239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8945239_left_root small_8945239_left_fuel small_8945239_left_count small_8945239_left_encoded = true := by
  decide +kernel
theorem small_8945239_left_covered : CoveredBy scale carrier boxes small_8945239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8945239_left_root small_8945239_left_fuel small_8945239_left_count small_8945239_left_encoded small_8945239_left_checked

theorem cover_8945239 : CoveredBy scale carrier boxes root_8945239 := by
  apply coveredBy_split_literal root_8945239 small_8945239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8945245 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8945239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8945245
#print axioms cover_8945239

def root_8931209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8931209 : CoveredBy scale carrier boxes root_8931209 := by
  apply coveredBy_split_literal root_8931209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8931210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8945239 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8931210
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8945239
#print axioms cover_8931209

def root_8931203 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931203_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931203_left_fuel : Nat := 1
def small_8931203_left_count : Nat := 1
def small_8931203_left_encoded : String := "00000003"
theorem small_8931203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931203_left_root small_8931203_left_fuel small_8931203_left_count small_8931203_left_encoded = true := by
  decide +kernel
theorem small_8931203_left_covered : CoveredBy scale carrier boxes small_8931203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931203_left_root small_8931203_left_fuel small_8931203_left_count small_8931203_left_encoded small_8931203_left_checked

theorem cover_8931203 : CoveredBy scale carrier boxes root_8931203 := by
  apply coveredBy_split_literal root_8931203 small_8931203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8931209 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8931203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8931209
#print axioms cover_8931203

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214

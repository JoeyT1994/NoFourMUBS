import TaoBundleAssembly0020
import TaoBundleChunkBatch0079
import TaoBundleChunkBatch0080
import TaoBundleChunkBatch0081
import TaoBundleChunkBatch0082
import TaoBundleChunkBatch0083
import TaoBundleChunkBatch0084
import TaoBundleChunkBatch0085
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021
def root_841301 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841301_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841301_right_fuel : Nat := 23
def small_841301_right_count : Nat := 147
def small_841301_right_encoded : String := "120701060000000308A912FF12073D08050000F6135D80F700000000050000F800000008135D45030000000105000104135D450500000002045489FD1386AD060CFD9BFF0F350D0800000008000000040F34D10800000004078000F6128A7CF7000000000000000800000008000000030000000800000008135D44F7050000F800000008135D45030000000105000104135D450500000002045489FD1386AD060CFD9BFF000000080000000800000003000000080000000800000000000000041207010800000004050000F6135D80F700000000050000F8135D810305000104135D450500000002045489FD00000009000000080000000800000001135D45030000000105000104135D450500000002045489FD1386AD06045489FF1386AD08078000F600000006128A40F7028000F800000008000000060000000000000004000000060000000300000006135D81050000000600000002135D44F7050000F8135D810305000104135D450500000002045489FD1386AD06045489FF000000080000000800000003000000080000000800000001135D45030000000105000104135D450500000002045489FD1386AD06045489FF1386AD08028000F613D7ECF700000000028000F80000000813D7B103000000010280010413D7B10500000002067ECE7D12EA9506067ECE7F000000080000000600000003000000060000000513D7B0F7028000F8000000080000000500000000000000041386710800000004028000F60000000600000005000000031386710600000003045489FF00000008000000060000000500000000"
theorem small_841301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_841301_right_root small_841301_right_fuel small_841301_right_count small_841301_right_encoded = true := by
  decide +kernel
theorem small_841301_right_covered : CoveredBy scale carrier boxes small_841301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_841301_right_root small_841301_right_fuel small_841301_right_count small_841301_right_encoded small_841301_right_checked

theorem cover_841301 : CoveredBy scale carrier boxes root_841301 := by
  apply coveredBy_split_literal root_841301 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0318.root small_841301_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0318.covered
  · exact small_841301_right_covered
#print axioms cover_841301

def root_841295 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841295_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841295_left_fuel : Nat := 1
def small_841295_left_count : Nat := 1
def small_841295_left_encoded : String := "00000004"
theorem small_841295_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_841295_left_root small_841295_left_fuel small_841295_left_count small_841295_left_encoded = true := by
  decide +kernel
theorem small_841295_left_covered : CoveredBy scale carrier boxes small_841295_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_841295_left_root small_841295_left_fuel small_841295_left_count small_841295_left_encoded small_841295_left_checked

theorem cover_841295 : CoveredBy scale carrier boxes root_841295 := by
  apply coveredBy_split_literal root_841295 small_841295_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_841301 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_841295_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_841301
#print axioms cover_841295

def root_841211 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841211_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841211_left_fuel : Nat := 13
def small_841211_left_count : Nat := 39
def small_841211_left_encoded : String := "1151E8FF08A912FD12073D06050000F6135D80F700000000050000F8135D810305000104000000050000000800000001135D45030000000105000104135D45050000000200000006135D81050500010800000008135D80FF000000040CFD9BFD000000060000000800000002135D44F7050000F800000006135D45030000000100000006000000000000000312070106000000030000000800000004"
theorem small_841211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_841211_left_root small_841211_left_fuel small_841211_left_count small_841211_left_encoded = true := by
  decide +kernel
theorem small_841211_left_covered : CoveredBy scale carrier boxes small_841211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_841211_left_root small_841211_left_fuel small_841211_left_count small_841211_left_encoded small_841211_left_checked

theorem cover_841211 : CoveredBy scale carrier boxes root_841211 := by
  apply coveredBy_split_literal root_841211 small_841211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_841295 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_841211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_841295
#print axioms cover_841211

def root_841205 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841205_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_841205_left_fuel : Nat := 1
def small_841205_left_count : Nat := 1
def small_841205_left_encoded : String := "00000003"
theorem small_841205_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_841205_left_root small_841205_left_fuel small_841205_left_count small_841205_left_encoded = true := by
  decide +kernel
theorem small_841205_left_covered : CoveredBy scale carrier boxes small_841205_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_841205_left_root small_841205_left_fuel small_841205_left_count small_841205_left_encoded small_841205_left_checked

theorem cover_841205 : CoveredBy scale carrier boxes root_841205 := by
  apply coveredBy_split_literal root_841205 small_841205_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_841211 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_841205_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_841211
#print axioms cover_841205

def root_840911 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_840911_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_840911_left_fuel : Nat := 23
def small_840911_left_count : Nat := 141
def small_840911_left_encoded : String := "1151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912FF12073D08050000F6135D80F700000000050000F8135D81030500010400000005135D81050500010600000005135D80FD000000030CFD9BFF000000060F34D10800000004078000F600000005128A40F7078000F8000000050000000A000000000000000200000001135D45030000000105000104135D45050000000200000006135D810505000106135D44FD0000000600000003135D80FD000000030CFD9BFF000000060F34D10800000004078000F6128A7CF700000000028000F80000000913D7B1030000000107800104128A41050000000207800106000000050000000900000009128A40F7028000F80000000613D7B1030000000107800104000000060000000A0000000000000002135D44F7050000F800000006135D4503000000010000000600000000000000041207010800000004050000F6135D80F700000000050000F8135D810305000104000000050000000900000001135D45030000000105000104135D45050000000200000007135D810505000106000000070000000900000002135D44F7050000F8135D810305000104135D4505000000020500010600000005135D80FD00000003045489FF0000000600000007135D810505000106135D44FD0000000700000003135D80FD00000003045489FF0000000A000000090000000200000001135D4503000000010500010400000007135D810505000106000000070000000A000000020000000000000003"
theorem small_840911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_840911_left_root small_840911_left_fuel small_840911_left_count small_840911_left_encoded = true := by
  decide +kernel
theorem small_840911_left_covered : CoveredBy scale carrier boxes small_840911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_840911_left_root small_840911_left_fuel small_840911_left_count small_840911_left_encoded small_840911_left_checked

theorem cover_840911 : CoveredBy scale carrier boxes root_840911 := by
  apply coveredBy_split_literal root_840911 small_840911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_841205 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_840911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_841205
#print axioms cover_840911

def root_840905 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_840905_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_840905_left_fuel : Nat := 1
def small_840905_left_count : Nat := 1
def small_840905_left_encoded : String := "00000002"
theorem small_840905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_840905_left_root small_840905_left_fuel small_840905_left_count small_840905_left_encoded = true := by
  decide +kernel
theorem small_840905_left_covered : CoveredBy scale carrier boxes small_840905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_840905_left_root small_840905_left_fuel small_840905_left_count small_840905_left_encoded small_840905_left_checked

theorem cover_840905 : CoveredBy scale carrier boxes root_840905 := by
  apply coveredBy_split_literal root_840905 small_840905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_840911 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_840905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_840911
#print axioms cover_840905

def root_840904 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_840904 : CoveredBy scale carrier boxes root_840904 := by
  apply coveredBy_split_literal root_840904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_840905 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0319.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_840905
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0319.covered
#print axioms cover_840904

def root_840898 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_840898_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_840898_left_fuel : Nat := 1
def small_840898_left_count : Nat := 1
def small_840898_left_encoded : String := "00000001"
theorem small_840898_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_840898_left_root small_840898_left_fuel small_840898_left_count small_840898_left_encoded = true := by
  decide +kernel
theorem small_840898_left_covered : CoveredBy scale carrier boxes small_840898_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_840898_left_root small_840898_left_fuel small_840898_left_count small_840898_left_encoded small_840898_left_checked

theorem cover_840898 : CoveredBy scale carrier boxes root_840898 := by
  apply coveredBy_split_literal root_840898 small_840898_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_840904 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_840898_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_840904
#print axioms cover_840898

def root_838412 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_838412 : CoveredBy scale carrier boxes root_838412 := by
  apply coveredBy_split_literal root_838412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0317.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_840898 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0317.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_840898
#print axioms cover_838412

def root_838407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_838407_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_838407_right_fuel : Nat := 1
def small_838407_right_count : Nat := 1
def small_838407_right_encoded : String := "00000000"
theorem small_838407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_838407_right_root small_838407_right_fuel small_838407_right_count small_838407_right_encoded = true := by
  decide +kernel
theorem small_838407_right_covered : CoveredBy scale carrier boxes small_838407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_838407_right_root small_838407_right_fuel small_838407_right_count small_838407_right_encoded small_838407_right_checked

theorem cover_838407 : CoveredBy scale carrier boxes root_838407 := by
  apply coveredBy_split_literal root_838407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_838412 small_838407_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_838412
  · exact small_838407_right_covered
#print axioms cover_838407

def root_832079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_832079 : CoveredBy scale carrier boxes root_832079 := by
  apply coveredBy_split_literal root_832079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0020.root_832080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_838407 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0020.cover_832080
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_838407
#print axioms cover_832079

def root_832078 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_832078 : CoveredBy scale carrier boxes root_832078 := by
  apply coveredBy_split_literal root_832078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_832079 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0320.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_832079
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0320.covered
#print axioms cover_832078

def root_829904 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_829904 : CoveredBy scale carrier boxes root_829904 := by
  apply coveredBy_split_literal root_829904 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0313.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_832078 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0313.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_832078
#print axioms cover_829904

def root_858386 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_858386 : CoveredBy scale carrier boxes root_858386 := by
  apply coveredBy_split_literal root_858386 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0325.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0326.root coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0325.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0326.covered
#print axioms cover_858386

def root_858381 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_858381_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_858381_right_fuel : Nat := 1
def small_858381_right_count : Nat := 1
def small_858381_right_encoded : String := "00000000"
theorem small_858381_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_858381_right_root small_858381_right_fuel small_858381_right_count small_858381_right_encoded = true := by
  decide +kernel
theorem small_858381_right_covered : CoveredBy scale carrier boxes small_858381_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_858381_right_root small_858381_right_fuel small_858381_right_count small_858381_right_encoded small_858381_right_checked

theorem cover_858381 : CoveredBy scale carrier boxes root_858381 := by
  apply coveredBy_split_literal root_858381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_858386 small_858381_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_858386
  · exact small_858381_right_covered
#print axioms cover_858381

def root_856203 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_856203 : CoveredBy scale carrier boxes root_856203 := by
  apply coveredBy_split_literal root_856203 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0324.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_858381 coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0324.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_858381
#print axioms cover_856203

def root_856198 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_856198_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_856198_right_fuel : Nat := 1
def small_856198_right_count : Nat := 1
def small_856198_right_encoded : String := "00000003"
theorem small_856198_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_856198_right_root small_856198_right_fuel small_856198_right_count small_856198_right_encoded = true := by
  decide +kernel
theorem small_856198_right_covered : CoveredBy scale carrier boxes small_856198_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_856198_right_root small_856198_right_fuel small_856198_right_count small_856198_right_encoded small_856198_right_checked

theorem cover_856198 : CoveredBy scale carrier boxes root_856198 := by
  apply coveredBy_split_literal root_856198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_856203 small_856198_right_root coord3 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_856203
  · exact small_856198_right_covered
#print axioms cover_856198

def root_855490 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_855490_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_855490_left_fuel : Nat := 23
def small_855490_left_count : Nat := 339
def small_855490_left_encoded : String := "13D7B10700000003067ECE7712EA94F600000000067ECE7F12EA94FE000000040B4D43F810804D0303C0010413A51105000000020140010613F5D907000000030793F0B712825CF6000000000793F0BF0000000600000006128220F60793F0BF12825CFE0000000400000007000000070000000013F615070793F0B712825CF6000000000793F0BF00000005128220FE0BF3E57810092903032001040000000700000006000000011008ED03000000010000000600000004128220F60793F0BF12825CFE000000040BF3E57810092903032001040000000700000008000000011008ED03000000010320010413C10905000000020000000713C1450501E00106000000060000000500000002128220FE0BF3E5781009290300000007000000010000000700000004000000000000000313A54D050140010613F5D907000000030793F0B712825CF60000000000000006128220F6000000080000000013F615070793F0B712825CF60000000000000005128220F60793F0BF00000008128220FE0BF3E5781009290300000008000000011008ED0300000001046001041383DD050000000201E001060000000613E9950707095F97000000050000000800000003000000080000000400000000000000030000000200000001108011030000000103C0010413A5110500000002014001060000000613F615070793F0B712825CF6000000000793F0BF0000000500000006128220F60793F0BF12825CFE0000000400000009128220FE0AA6A278000000060000000600000004000000000000000313A54D05014001060000000613F615070793F0B712825CF60000000000000005128220F60793F0BF00000009128220FE0AA6A27800000006000000060000000400000000000000030000000212EA58FE0B4D43F810804D0303C0010413A5110500000002014001060000000713F615070793F0B712825CF6000000000569AC3F134110FE000000040BF3E5781009290300000007000000010000000600000007000000070000000313A54D050140010613F5D907000000030793F0B7000000060000000713F615070793F0B712825CF6000000000569AC3F134110FE000000040BF3E57800000006000000061340D4FE0000000600000004128220F60569AC3F134110FE000000040BF3E57810092903046001040000000700000008000000011008ED03000000010460010400000007000000061340D4FE000000070000000400000000000000030000000200000001108011030000000103C0010413A5110500000002014001060000000613F615070793F0B700000006000000070000000313A54D05014001060000000613F615070793F0B700000006128220F60569AC3F00000006000000060000000000000003000000020000000412EA58F6067ECE7F12EA94FE000000040B4D43F810804D0303C0010413A5110500000002014001060000000713F615070569AC37134110F6000000000793F0BF000000080000000700000007000000030000000800000001108011030000000103C0010413A5110500000002014001060000000713F615070569AC37134110F6000000000793F0BF0000000900000007000000070000000313A54D05000000090000000212EA58FE0B4D43F810804D0303C001040000000713A54D05014001060000000713F615070569AC37134110F6000000000569AC3F000000080000000700000007000000030000000200000001108011030000000103C001040000000713A54D05014001060000000713F615070569AC37134110F6000000000569AC3F134110FE000000040AA6A27810EDAD03000000070000000100000007000000070000000700000003000000020000000400000000"
theorem small_855490_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_855490_left_root small_855490_left_fuel small_855490_left_count small_855490_left_encoded = true := by
  decide +kernel
theorem small_855490_left_covered : CoveredBy scale carrier boxes small_855490_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_855490_left_root small_855490_left_fuel small_855490_left_count small_855490_left_encoded small_855490_left_checked

theorem cover_855490 : CoveredBy scale carrier boxes root_855490 := by
  apply coveredBy_split_literal root_855490 small_855490_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_856198 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_855490_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_856198
#print axioms cover_855490

def root_855485 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_855485_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_855485_right_fuel : Nat := 1
def small_855485_right_count : Nat := 1
def small_855485_right_encoded : String := "00000002"
theorem small_855485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_855485_right_root small_855485_right_fuel small_855485_right_count small_855485_right_encoded = true := by
  decide +kernel
theorem small_855485_right_covered : CoveredBy scale carrier boxes small_855485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_855485_right_root small_855485_right_fuel small_855485_right_count small_855485_right_encoded small_855485_right_checked

theorem cover_855485 : CoveredBy scale carrier boxes root_855485 := by
  apply coveredBy_split_literal root_855485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_855490 small_855485_right_root coord2 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_855490
  · exact small_855485_right_covered
#print axioms cover_855485

def root_854595 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_854595_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_854595_left_fuel : Nat := 25
def small_854595_left_count : Nat := 425
def small_854595_left_encoded : String := "13D7B105000000020280010613D7B10700000003067ECE7712EA94F600000000067ECE7F12EA94FE000000040B4D43F810804D03014001040000000713F61505014001060000000713F615070793F0B712825CF6000000000793F0BF12825CFE000000040BF3E5781009290301E001040000000700000005000000011008ED03000000010000000600000007128220F60793F0BF12825CFE000000040000000700000007000000000000000300000002000000011080110300000001014001040000000713F61505014001060000000713F615070793F0B712825CF6000000000793F0BF0000000600000006128220F60793F0BF0000000A0000000700000000000000030000000212EA58FE0B4D43F810804D030000000700000001000000070000000412EA58F6067ECE7F12EA94FE000000040B4D43F810804D03000000070000000100000007000000070000000013D7ED07067ECE7712EA94F600000000067ECE7F12EA94FE000000040B4D43F810804D030140010413F5D9050000000203C0010613A51107000000030793F0B712825CF6000000000793F0BF0000000A00000007128220F60793F0BF0000000A000000070000000013A54D070793F0B712825CF6000000000793F0BF0000000500000008128220F60793F0BF0000000A00000009000000000000000313F6150503C0010613A51107000000030793F0B712825CF6000000000793F0BF00000005128220FE0BF3E5781009290301E001040000000713E995050000000500000002000000011008ED030000000101E001040000000813E995050320010600000006000000050000000200000004128220F60793F0BF12825CFE000000040BF3E5781009290301E001040000000713E995050000000500000002000000011008ED03000000010000000A128220FE0BF3E57810092903000000070000000100000007000000040000000013A54D070793F0B712825CF60000000000000005128220F60793F0BF12825CFE0000000400000005128220FE0BF3E5781009290300000009000000011008ED030000000101E001040000000A13E99505046001061383DD070000000307095F97000000050000000A0000000900000002000000040000000000000003000000020000000110801103000000010140010413F5D9050000000203C0010613A51107000000030000000A0000000A13F6150503C0010613A51107000000030793F0B712825CF6000000000793F0BF0000000500000008128220F60793F0BF0000000A128220FE0AA6A2780000000A0000000A000000040000000013A54D070793F0B712825CF60000000000000005128220F60793F0BF0000000A128220FE0AA6A2780000000A000000080000000400000000000000030000000212EA58FE0B4D43F810804D030140010413F5D905000000020000000913F6150503C0010613A51107000000030793F0B700000009000000070000000900000002000000011080110300000001014001040000000813F6150503C0010613A51107000000030793F0B7000000080000000713A54D070000000800000003000000020000000412EA58F6067ECE7F12EA94FE000000040B4D43F810804D030140010413F5D9050000000203C001060000000713A54D070569AC370000000A000000070000000313F6150503C0010613A51107000000030569AC37134110F6000000000793F0BF12825CFE000000040BF3E57810092903000000070000000100000007000000070000000713A54D070569AC37134110F6000000000793F0BF12825CFE000000040BF3E5780000000A0000000A128220FE0BF3E5781009290301E001040000000713E9950504600106000000070000000900000002000000011008ED030000000101E001040000000713E9950504600106000000070000000A00000002000000041340D4F60793F0BF12825CFE000000040000000A128220FE00000007000000040000000000000003000000020000000110801103000000010140010413F5D905000000020000000A13F6150503C0010613A51107000000030569AC37134110F6000000000793F0BF0000000A000000070000000713A54D070569AC370000000A0000000A000000030000000212EA58FE0B4D43F810804D03014001040000000713F6150503C001060000000713A54D070569AC3700000009000000070000000300000002000000011080110300000001014001040000000713F6150503C001060000000713A54D070569AC37134110F6000000000569AC3F134110FE000000040AA6A27810EDAD0300000007000000010000000700000007000000070000000300000002000000040000000000000003"
theorem small_854595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_854595_left_root small_854595_left_fuel small_854595_left_count small_854595_left_encoded = true := by
  decide +kernel
theorem small_854595_left_covered : CoveredBy scale carrier boxes small_854595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_854595_left_root small_854595_left_fuel small_854595_left_count small_854595_left_encoded small_854595_left_checked

theorem cover_854595 : CoveredBy scale carrier boxes root_854595 := by
  apply coveredBy_split_literal root_854595 small_854595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_855485 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_854595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_855485
#print axioms cover_854595

def root_854589 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_854589_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_854589_left_fuel : Nat := 1
def small_854589_left_count : Nat := 1
def small_854589_left_encoded : String := "00000001"
theorem small_854589_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_854589_left_root small_854589_left_fuel small_854589_left_count small_854589_left_encoded = true := by
  decide +kernel
theorem small_854589_left_covered : CoveredBy scale carrier boxes small_854589_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_854589_left_root small_854589_left_fuel small_854589_left_count small_854589_left_encoded small_854589_left_checked

theorem cover_854589 : CoveredBy scale carrier boxes root_854589 := by
  apply coveredBy_split_literal root_854589 small_854589_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_854595 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_854589_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_854595
#print axioms cover_854589

def root_853243 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_853243 : CoveredBy scale carrier boxes root_853243 := by
  apply coveredBy_split_literal root_853243 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0323.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_854589 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0323.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_854589
#print axioms cover_853243

def root_853237 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853237_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853237_left_fuel : Nat := 1
def small_853237_left_count : Nat := 1
def small_853237_left_encoded : String := "00000004"
theorem small_853237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853237_left_root small_853237_left_fuel small_853237_left_count small_853237_left_encoded = true := by
  decide +kernel
theorem small_853237_left_covered : CoveredBy scale carrier boxes small_853237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853237_left_root small_853237_left_fuel small_853237_left_count small_853237_left_encoded small_853237_left_checked

theorem cover_853237 : CoveredBy scale carrier boxes root_853237 := by
  apply coveredBy_split_literal root_853237 small_853237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853243 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_853237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853243
#print axioms cover_853237

def root_853236 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853236_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853236_right_fuel : Nat := 31
def small_853236_right_count : Nat := 267
def small_853236_right_encoded : String := "138670FE0C9A86F80F878D030280010413D7B1050000000202800106000000070000000913D7ED050280010613D7B10700000003067ECE7712EA94F600000000022A457F13E200FE000000040DE7C9F80E60150300000007000000010E5FD9030000000103C001040000000713A54D0501400106000000070000000900000002000000070000000713D7ED07067ECE770000000912EA58F6022A457F13E200FE000000040DE7C9F8000000090E5FD903000000010000000900000009000000000000000300000002000000010F875103000000010280010413D7B10500000002028001060000000713D7ED07067ECE7700000009000000070000000313D7ED050280010613D7B10700000003067ECE7712EA94F600000000022A457F13E200FE000000040B4D43F810804D0303C001040000000713A54D05014001060000000713F615070793F0B712825CF6000000000000000700000007000000030000000200000001108011030000000103C001040000000713A54D05014001060000000613F61507000000060000000300000002000000070000000713D7ED07067ECE7712EA94F600000000022A457F13E200FE000000040B4D43F810804D0303C001040000000913A54D0503C0010613A51107000000030793F0B700000009128220F60000000900000000000000090000000200000001108011030000000103C0010413A511050000000203C0010613A51107000000030793F0B700000008000000070000000913A54D0503C0010613A51107000000030793F0B712825CF600000000033F67BF0000000600000006128220F6033F67BF13BC30FE000000040AA6A27810EDAD03046001040000000713841905032001060000000600000009000000020000000110ED71030000000100000006000000070000000013A54D070793F0B700000009128220F6000000090000000000000003000000020000000912EA58F6022A457F13E200FE000000040B4D43F810804D0303C0010413A511050000000203C00106000000050000000913A54D0503C0010613A51107000000030569AC37134110F600000000000000070000000513A54D070569AC37000000091340D4F60000000900000000000000030000000200000001108011030000000103C0010413A511050000000203C001060000000513A54D070569AC3700000009000000050000000313A54D0503C0010613A51107000000030569AC37134110F600000000000000070000000513A54D070569AC37134110F600000000033F67BF13BC30FE000000040AA6A27810EDAD03000000090000000110ED710300000001046001041383DD050000000204600106000000050000000913841905046001061383DD070000000305F43D571317F8F60000000003C9F8DF000000B400000005000000050000000900000002000000050000000500000003000000020000000500000000000000030000000200000004"
theorem small_853236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853236_right_root small_853236_right_fuel small_853236_right_count small_853236_right_encoded = true := by
  decide +kernel
theorem small_853236_right_covered : CoveredBy scale carrier boxes small_853236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853236_right_root small_853236_right_fuel small_853236_right_count small_853236_right_encoded small_853236_right_checked

theorem cover_853236 : CoveredBy scale carrier boxes root_853236 := by
  apply coveredBy_split_literal root_853236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853237 small_853236_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853237
  · exact small_853236_right_covered
#print axioms cover_853236

def root_853230 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853230_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853230_left_fuel : Nat := 1
def small_853230_left_count : Nat := 1
def small_853230_left_encoded : String := "00000001"
theorem small_853230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853230_left_root small_853230_left_fuel small_853230_left_count small_853230_left_encoded = true := by
  decide +kernel
theorem small_853230_left_covered : CoveredBy scale carrier boxes small_853230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853230_left_root small_853230_left_fuel small_853230_left_count small_853230_left_encoded small_853230_left_checked

theorem cover_853230 : CoveredBy scale carrier boxes root_853230 := by
  apply coveredBy_split_literal root_853230 small_853230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853236 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_853230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853236
#print axioms cover_853230

def root_853130 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853130_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853130_left_fuel : Nat := 15
def small_853130_left_count : Nat := 47
def small_853130_left_encoded : String := "0F34D0F8045489FF1386ACFE000000040280010413D7B105000000020280010613D7B10700000003067ECE7712EA94F6000000000AD357830000000910D13CF800000001067ECE7F12EA94FE000000040140010400000007000000080000000712EA58F60AD357830000000710D13CF80000000100000007000000000000000913D7ED050280010613D7B107000000030000000813D7ED07067ECE7700000009000000080000000300000002138670FE000000090000000400000001"
theorem small_853130_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853130_left_root small_853130_left_fuel small_853130_left_count small_853130_left_encoded = true := by
  decide +kernel
theorem small_853130_left_covered : CoveredBy scale carrier boxes small_853130_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853130_left_root small_853130_left_fuel small_853130_left_count small_853130_left_encoded small_853130_left_checked

theorem cover_853130 : CoveredBy scale carrier boxes root_853130 := by
  apply coveredBy_split_literal root_853130 small_853130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853230 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_853130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853230
#print axioms cover_853130

def root_853124 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853124_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853124_left_fuel : Nat := 1
def small_853124_left_count : Nat := 1
def small_853124_left_encoded : String := "00000000"
theorem small_853124_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853124_left_root small_853124_left_fuel small_853124_left_count small_853124_left_encoded = true := by
  decide +kernel
theorem small_853124_left_covered : CoveredBy scale carrier boxes small_853124_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853124_left_root small_853124_left_fuel small_853124_left_count small_853124_left_encoded small_853124_left_checked

theorem cover_853124 : CoveredBy scale carrier boxes root_853124 := by
  apply coveredBy_split_literal root_853124 small_853124_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853130 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_853124_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853130
#print axioms cover_853124

def root_853123 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853123_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853123_right_fuel : Nat := 33
def small_853123_right_count : Nat := 321
def small_853123_right_encoded : String := "138670F60CFD9C030F34D0F8045489FF0000000800000007000000010F350CF800000001045489FF1386ACFE000000040C9A86F80F878D030280010413D7B10500000002028001060000000713D7ED07022A457713E200F600000000067ECE7F12EA94FE000000040DE7C9F80E60150300000007000000010E5FD9030000000101400104000000070000000800000007000000070000000313D7ED05028001060000000813D7ED07022A457713E200F600000000067ECE7F0000000812EA58FE0DE7C9F8000000080E5FD903000000010000000800000004000000080000000300000002000000010F875103000000010280010413D7B10500000002028001060000000713D7ED07022A457713E200F600000000067ECE7F12EA94FE000000040B4D43F810804D03014001040000000713F6150503C001060000000713A54D07033F67B713BC30F6000000000793F0BF0000000A00000007000000070000000300000002000000011080110300000001014001040000000713F6150503C00106000000070000000A0000000200000007000000070000000313D7ED050280010613D7B10700000003022A457713E200F600000000067ECE7F00000008000000070000000713D7ED07022A457713E200F600000000067ECE7F12EA94FE000000040B4D43F810804D0303C0010413A511050000000203C001060000000813A54D07033F67B713BC30F6000000000793F0BF00000008128220FE000000080000000400000008000000030000000800000001108011030000000103C0010413A511050000000203C0010613A5110700000003033F67B713BC30F6000000000793F0BF00000008000000070000000713A54D07033F67B713BC30F6000000000793F0BF0000000A128220FE0AA6A27810EDAD030320010400000007000000080000000110ED7103000000010000000A0000000413BBF4F60793F0BF0000000800000007000000000000000313A54D0503C001060000000813A54D07033F67B713BC30F6000000000793F0BF00000008128220FE000000080000000400000008000000030000000212EA58FE0B4D43F810804D0303C0010413A511050000000203C001060000000513A54D07033F67B713BC30F60000000000000007000000050000000313A54D0503C001060000000813A54D07033F67B713BC30F6000000000569AC3F000000081340D4FE000000080000000400000008000000030000000200000001108011030000000103C0010413A511050000000203C001060000000513A54D07033F67B713BC30F6000000000569AC3F134110FE000000040000000700000005000000050000000313A54D0503C0010613A5110700000003033F67B713BC30F6000000000569AC3F00000008000000050000000513A54D07033F67B713BC30F6000000000569AC3F134110FE000000040AA6A27810EDAD03000000080000000110ED710300000001046001041383DD050000000204600106000000051384190703C9F8D7000000B4000000050000000300000008000000050000000500000003000000020000000413E1C4F6067ECE7F0000000812EA58FE0000000500000004000000000000000300000002138670FE0C9A86F80F878D03028001040000000513D7ED05028001060000000513D7ED07022A457713E200F600000000022A457F13E200FE000000040DE7C9F80E60150300000007000000010000000700000005000000050000000300000002000000010F87510300000001000000050000000400000000"
theorem small_853123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853123_right_root small_853123_right_fuel small_853123_right_count small_853123_right_encoded = true := by
  decide +kernel
theorem small_853123_right_covered : CoveredBy scale carrier boxes small_853123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853123_right_root small_853123_right_fuel small_853123_right_count small_853123_right_encoded small_853123_right_checked

theorem cover_853123 : CoveredBy scale carrier boxes root_853123 := by
  apply coveredBy_split_literal root_853123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853124 small_853123_right_root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853124
  · exact small_853123_right_covered
#print axioms cover_853123

def root_853117 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853117_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853117_left_fuel : Nat := 1
def small_853117_left_count : Nat := 1
def small_853117_left_encoded : String := "00000003"
theorem small_853117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853117_left_root small_853117_left_fuel small_853117_left_count small_853117_left_encoded = true := by
  decide +kernel
theorem small_853117_left_covered : CoveredBy scale carrier boxes small_853117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853117_left_root small_853117_left_fuel small_853117_left_count small_853117_left_encoded small_853117_left_checked

theorem cover_853117 : CoveredBy scale carrier boxes root_853117 := by
  apply coveredBy_split_literal root_853117 small_853117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853123 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_853117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853123
#print axioms cover_853117

def root_863839 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_863839 : CoveredBy scale carrier boxes root_863839 := by
  apply coveredBy_split_literal root_863839 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0327.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0328.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0327.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0328.covered
#print axioms cover_863839

def root_863834 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_863834_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_863834_right_fuel : Nat := 1
def small_863834_right_count : Nat := 1
def small_863834_right_encoded : String := "00000003"
theorem small_863834_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_863834_right_root small_863834_right_fuel small_863834_right_count small_863834_right_encoded = true := by
  decide +kernel
theorem small_863834_right_covered : CoveredBy scale carrier boxes small_863834_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_863834_right_root small_863834_right_fuel small_863834_right_count small_863834_right_encoded small_863834_right_checked

theorem cover_863834 : CoveredBy scale carrier boxes root_863834 := by
  apply coveredBy_split_literal root_863834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_863839 small_863834_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_863839
  · exact small_863834_right_covered
#print axioms cover_863834

def root_853116 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_853116 : CoveredBy scale carrier boxes root_853116 := by
  apply coveredBy_split_literal root_853116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_863834 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853117
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_863834
#print axioms cover_853116

def root_853110 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853110_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853110_left_fuel : Nat := 1
def small_853110_left_count : Nat := 1
def small_853110_left_encoded : String := "00000002"
theorem small_853110_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853110_left_root small_853110_left_fuel small_853110_left_count small_853110_left_encoded = true := by
  decide +kernel
theorem small_853110_left_covered : CoveredBy scale carrier boxes small_853110_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853110_left_root small_853110_left_fuel small_853110_left_count small_853110_left_encoded small_853110_left_checked

theorem cover_853110 : CoveredBy scale carrier boxes root_853110 := by
  apply coveredBy_split_literal root_853110 small_853110_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853116 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_853110_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853116
#print axioms cover_853110

def root_867820 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867820_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867820_right_fuel : Nat := 29
def small_867820_right_count : Nat := 451
def small_867820_right_encoded : String := "138670FE0C9A86F80F878D0307800104128A4105000000020280010613D7B10700000003067ECE7712EA94F600000000022A457F13E200FE000000040DE7C9F80000000A0000000A0000000A0000000A13D7ED07067ECE7712EA94F600000000022A457F13E200FE000000040DE7C9F8000000090000000A0000000912EA58F6022A457F13E200FE000000040DE7C9F80000000A0000000A000000090000000000000003128A7D05028001060000000A0000000A00000002000000010F8751030000000107800104128A4105000000020280010613D7B10700000003067ECE7712EA94F600000000022A457F13E200FE000000040B4D43F810804D030640010412FF71050000000201400106000000060000000A0000000A0000000110801103000000010640010412FF710500000002000000060000000613E1C4FE0B4D43F80000000A10801103000000010640010400000006000000060000000412EA58F6022A457F13E200FE000000040B4D43F810804D030640010412FF71050000000201400106000000070000000A000000080000000110801103000000010640010412FF710500000002014001060000000513F615070569AC37134110F600000000033F67BF13BC30FE000000040000000700000005000000050000000312FFAD05014001060000000A13F615070569AC370000000A0000000A000000030000000213E1C4FE00000005000000040000000013D7ED07067ECE7712EA94F600000000022A457F13E200FE000000040B4D43F810804D030640010412FF71050000000203C0010613A51107000000030793F0B70000000A0000000A000000090000000A0000000110801103000000010640010412FF71050000000203C0010613A51107000000030793F0B712825CF60000000000000006128220F6033F67BF13BC30FE000000040AA6A27810EDAD030000000A0000000110ED710300000001000000060000000A0000000013A54D070793F0B712825CF600000000033F67BF13BC30FE000000040AA6A2780000000910ED7103000000010000000600000009128220F6033F67BF13BC30FE000000040AA6A27810EDAD030000000A0000000110ED71030000000105A0010413313505000000020460010600000006000000090000000A00000009000000000000000312FFAD0503C0010613A51107000000030793F0B7000000060000000A13A54D070793F0B70000000A0000000A000000030000000213E1C4FE0B4D43F810804D03000000090000000110801103000000010640010412FF71050000000203C001060000000A000000090000000A0000000412EA58F6022A457F13E200FE000000040B4D43F810804D030640010412FF71050000000203C0010613A51107000000030569AC370000000A0000000A13A54D070569AC370000000A0000000A0000000312FFAD050000000A000000020000000110801103000000010640010412FF71050000000203C0010613A51107000000030569AC37134110F600000000033F67BF13BC30FE000000040AA6A27810EDAD030000000A0000000110ED71030000000105A001041331350500000002032001060000000513C1450705F43D570000000600000005000000030000000A000000050000000513A54D070569AC37134110F600000000033F67BF13BC30FE000000040AA6A27810EDAD0305A0010413313505000000020000000A0000000A0000000110ED71030000000105A001041331350500000002046001061383DD070000000305F43D570000000A0000000A1384190705F43D57000000090000000A0000000313317105046001060000000A0000000A0000000213BBF4FE0000000A000000041340D4F6033F67BF13BC30FE000000040AA6A27810EDAD0305A001041331350500000002000000050000000A0000000110ED71030000000105A00104000000051331710504600106000000050000000A0000000200000005000000000000000312FFAD0503C0010613A51107000000030569AC370000000A0000000A13A54D070569AC37134110F6000000000000000A0000000A000000030000000213E1C4FE0B4D43F810804D030000000A00000001108011030000000106400104000000050000000A000000040000000000000003128A7D050280010613D7B10700000003067ECE7712EA94F600000000022A457F13E200FE000000040B4D43F80000000A0000000A0000000A12EA58F6022A457F13E200FE000000040B4D43F8000000080000000A0000000A0000000013D7ED07067ECE7712EA94F600000000022A457F13E200FE000000040B4D43F810804D030000000A00000001108011030000000108C0010411FBE905000000020000000A0000000A0000000A12EA58F6022A457F13E200FE000000040B4D43F810804D030000000A00000001108011030000000108C0010411FBE9050000000203C001060000000A0000000A0000000A0000000A00000000000000030000000200000004"
theorem small_867820_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867820_right_root small_867820_right_fuel small_867820_right_count small_867820_right_encoded = true := by
  decide +kernel
theorem small_867820_right_covered : CoveredBy scale carrier boxes small_867820_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867820_right_root small_867820_right_fuel small_867820_right_count small_867820_right_encoded small_867820_right_checked

theorem cover_867820 : CoveredBy scale carrier boxes root_867820 := by
  apply coveredBy_split_literal root_867820 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0329.root small_867820_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0329.covered
  · exact small_867820_right_covered
#print axioms cover_867820

def root_867814 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867814_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867814_left_fuel : Nat := 1
def small_867814_left_count : Nat := 1
def small_867814_left_encoded : String := "00000001"
theorem small_867814_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867814_left_root small_867814_left_fuel small_867814_left_count small_867814_left_encoded = true := by
  decide +kernel
theorem small_867814_left_covered : CoveredBy scale carrier boxes small_867814_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867814_left_root small_867814_left_fuel small_867814_left_count small_867814_left_encoded small_867814_left_checked

theorem cover_867814 : CoveredBy scale carrier boxes root_867814 := by
  apply coveredBy_split_literal root_867814 small_867814_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867820 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_867814_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867820
#print axioms cover_867814

def root_867790 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867790_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867790_left_fuel : Nat := 6
def small_867790_left_count : Nat := 11
def small_867790_left_encoded : String := "0F34D0F8045489FF00000008138670FE07800104128A4105000000020000000A000000080000000400000001"
theorem small_867790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867790_left_root small_867790_left_fuel small_867790_left_count small_867790_left_encoded = true := by
  decide +kernel
theorem small_867790_left_covered : CoveredBy scale carrier boxes small_867790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867790_left_root small_867790_left_fuel small_867790_left_count small_867790_left_encoded small_867790_left_checked

theorem cover_867790 : CoveredBy scale carrier boxes root_867790 := by
  apply coveredBy_split_literal root_867790 small_867790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867814 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_867790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867814
#print axioms cover_867790

def root_867784 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867784_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867784_left_fuel : Nat := 1
def small_867784_left_count : Nat := 1
def small_867784_left_encoded : String := "00000000"
theorem small_867784_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867784_left_root small_867784_left_fuel small_867784_left_count small_867784_left_encoded = true := by
  decide +kernel
theorem small_867784_left_covered : CoveredBy scale carrier boxes small_867784_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867784_left_root small_867784_left_fuel small_867784_left_count small_867784_left_encoded small_867784_left_checked

theorem cover_867784 : CoveredBy scale carrier boxes root_867784 := by
  apply coveredBy_split_literal root_867784 small_867784_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867790 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_867784_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867790
#print axioms cover_867784

def root_867783 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867783_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867783_right_fuel : Nat := 29
def small_867783_right_count : Nat := 135
def small_867783_right_encoded : String := "138670F60CFD9C030F34D0F800000008000000010F350CF800000001045489FF1386ACFE000000040C9A86F8000000080F8751030000000107800104128A410500000002028001060000000813D7ED07022A457713E200F600000000067ECE7F0000000812EA58FE0B4D43F80000000810801103000000010640010412FF71050000000203C001060000000813A54D07033F67B713BC30F6000000000569AC3F000000081340D4FE0AA6A2780000000810ED71030000000105A0010400000005000000080000000400000008000000030000000800000004000000080000000300000008138670FE0C9A86F80F878D0307800104128A410500000002028001060000000813D7ED07022A457713E200F600000000022A457F000000080000000A000000080000000300000008000000010F8751030000000107800104128A4105000000020280010613D7B107000000030000000513D7ED07022A457713E200F600000000022A457F13E200FE000000040B4D43F810804D030640010412FF7105000000020000000500000008000000011080110300000001064001040000000512FFAD0503C001060000000513A54D07033F67B713BC30F6000000000000000A000000050000000300000002000000050000000500000003128A7D050280010613D7B107000000030000000813D7ED07022A457713E200F600000000022A457F000000080000000A0000000800000003000000020000000400000000"
theorem small_867783_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867783_right_root small_867783_right_fuel small_867783_right_count small_867783_right_encoded = true := by
  decide +kernel
theorem small_867783_right_covered : CoveredBy scale carrier boxes small_867783_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867783_right_root small_867783_right_fuel small_867783_right_count small_867783_right_encoded small_867783_right_checked

theorem cover_867783 : CoveredBy scale carrier boxes root_867783 := by
  apply coveredBy_split_literal root_867783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867784 small_867783_right_root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867784
  · exact small_867783_right_covered
#print axioms cover_867783

def root_867777 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867777_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867777_left_fuel : Nat := 1
def small_867777_left_count : Nat := 1
def small_867777_left_encoded : String := "00000003"
theorem small_867777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867777_left_root small_867777_left_fuel small_867777_left_count small_867777_left_encoded = true := by
  decide +kernel
theorem small_867777_left_covered : CoveredBy scale carrier boxes small_867777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867777_left_root small_867777_left_fuel small_867777_left_count small_867777_left_encoded small_867777_left_checked

theorem cover_867777 : CoveredBy scale carrier boxes root_867777 := by
  apply coveredBy_split_literal root_867777 small_867777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867783 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_867777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867783
#print axioms cover_867777

def root_867776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_867776 : CoveredBy scale carrier boxes root_867776 := by
  apply coveredBy_split_literal root_867776 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867777 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0330.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867777
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0330.covered
#print axioms cover_867776

def root_867771 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867771_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_867771_right_fuel : Nat := 1
def small_867771_right_count : Nat := 1
def small_867771_right_encoded : String := "00000002"
theorem small_867771_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_867771_right_root small_867771_right_fuel small_867771_right_count small_867771_right_encoded = true := by
  decide +kernel
theorem small_867771_right_covered : CoveredBy scale carrier boxes small_867771_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_867771_right_root small_867771_right_fuel small_867771_right_count small_867771_right_encoded small_867771_right_checked

theorem cover_867771 : CoveredBy scale carrier boxes root_867771 := by
  apply coveredBy_split_literal root_867771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867776 small_867771_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867776
  · exact small_867771_right_covered
#print axioms cover_867771

def root_853109 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_853109 : CoveredBy scale carrier boxes root_853109 := by
  apply coveredBy_split_literal root_853109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_867771 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853110
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_867771
#print axioms cover_853109

def root_853104 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853104_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_853104_right_fuel : Nat := 1
def small_853104_right_count : Nat := 1
def small_853104_right_encoded : String := "00000004"
theorem small_853104_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_853104_right_root small_853104_right_fuel small_853104_right_count small_853104_right_encoded = true := by
  decide +kernel
theorem small_853104_right_covered : CoveredBy scale carrier boxes small_853104_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_853104_right_root small_853104_right_fuel small_853104_right_count small_853104_right_encoded small_853104_right_checked

theorem cover_853104 : CoveredBy scale carrier boxes root_853104 := by
  apply coveredBy_split_literal root_853104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853109 small_853104_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853109
  · exact small_853104_right_covered
#print axioms cover_853104

def root_850946 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_850946 : CoveredBy scale carrier boxes root_850946 := by
  apply coveredBy_split_literal root_850946 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0322.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_853104 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0322.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_853104
#print axioms cover_850946

def root_850940 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_850940_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_850940_left_fuel : Nat := 1
def small_850940_left_count : Nat := 1
def small_850940_left_encoded : String := "00000001"
theorem small_850940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_850940_left_root small_850940_left_fuel small_850940_left_count small_850940_left_encoded = true := by
  decide +kernel
theorem small_850940_left_covered : CoveredBy scale carrier boxes small_850940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_850940_left_root small_850940_left_fuel small_850940_left_count small_850940_left_encoded small_850940_left_checked

theorem cover_850940 : CoveredBy scale carrier boxes root_850940 := by
  apply coveredBy_split_literal root_850940 small_850940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_850946 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_850940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_850946
#print axioms cover_850940

def root_850860 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_850860_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_850860_left_fuel : Nat := 9
def small_850860_left_count : Nat := 39
def small_850860_left_encoded : String := "120700F808A912FF12073CFE0000000405000104135D45050000000205000106135D45070000000300000008135D8107045489F700000005000000080000000300000008120700FE05000104135D45050000000205000106135D450700000003045489F7000000090000000800000009135D81050500010600000008135D8107045489F7000000090000000600000003000000020000000400000001"
theorem small_850860_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_850860_left_root small_850860_left_fuel small_850860_left_count small_850860_left_encoded = true := by
  decide +kernel
theorem small_850860_left_covered : CoveredBy scale carrier boxes small_850860_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_850860_left_root small_850860_left_fuel small_850860_left_count small_850860_left_encoded small_850860_left_checked

theorem cover_850860 : CoveredBy scale carrier boxes root_850860 := by
  apply coveredBy_split_literal root_850860 small_850860_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_850940 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_850860_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_850940
#print axioms cover_850860

def root_850855 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_850855_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_850855_right_fuel : Nat := 1
def small_850855_right_count : Nat := 1
def small_850855_right_encoded : String := "00000000"
theorem small_850855_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_850855_right_root small_850855_right_fuel small_850855_right_count small_850855_right_encoded = true := by
  decide +kernel
theorem small_850855_right_covered : CoveredBy scale carrier boxes small_850855_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_850855_right_root small_850855_right_fuel small_850855_right_count small_850855_right_encoded small_850855_right_checked

theorem cover_850855 : CoveredBy scale carrier boxes root_850855 := by
  apply coveredBy_split_literal root_850855 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_850860 small_850855_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_850860
  · exact small_850855_right_covered
#print axioms cover_850855

def root_848547 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_848547 : CoveredBy scale carrier boxes root_848547 := by
  apply coveredBy_split_literal root_848547 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0321.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_850855 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0321.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_850855
#print axioms cover_848547

def root_848541 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848541_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848541_left_fuel : Nat := 1
def small_848541_left_count : Nat := 1
def small_848541_left_encoded : String := "00000004"
theorem small_848541_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848541_left_root small_848541_left_fuel small_848541_left_count small_848541_left_encoded = true := by
  decide +kernel
theorem small_848541_left_covered : CoveredBy scale carrier boxes small_848541_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848541_left_root small_848541_left_fuel small_848541_left_count small_848541_left_encoded small_848541_left_checked

theorem cover_848541 : CoveredBy scale carrier boxes root_848541 := by
  apply coveredBy_split_literal root_848541 small_848541_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848547 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_848541_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848547
#print axioms cover_848541

def root_848540 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848540_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848540_right_fuel : Nat := 6
def small_848540_right_count : Nat := 11
def small_848540_right_encoded : String := "1151E8FF08A912F700000005120700F608A913030000000512073CF800000001000000050000000000000004"
theorem small_848540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848540_right_root small_848540_right_fuel small_848540_right_count small_848540_right_encoded = true := by
  decide +kernel
theorem small_848540_right_covered : CoveredBy scale carrier boxes small_848540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848540_right_root small_848540_right_fuel small_848540_right_count small_848540_right_encoded small_848540_right_checked

theorem cover_848540 : CoveredBy scale carrier boxes root_848540 := by
  apply coveredBy_split_literal root_848540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848541 small_848540_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848541
  · exact small_848540_right_covered
#print axioms cover_848540

def root_848534 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848534_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848534_left_fuel : Nat := 1
def small_848534_left_count : Nat := 1
def small_848534_left_encoded : String := "00000003"
theorem small_848534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848534_left_root small_848534_left_fuel small_848534_left_count small_848534_left_encoded = true := by
  decide +kernel
theorem small_848534_left_covered : CoveredBy scale carrier boxes small_848534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848534_left_root small_848534_left_fuel small_848534_left_count small_848534_left_encoded small_848534_left_checked

theorem cover_848534 : CoveredBy scale carrier boxes root_848534 := by
  apply coveredBy_split_literal root_848534 small_848534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848540 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_848534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848540
#print axioms cover_848534

def root_848533 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848533_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848533_right_fuel : Nat := 31
def small_848533_right_count : Nat := 355
def small_848533_right_encoded : String := "115225070A0000FE115224FF0000000408A912F712073CF60000000008A913030000000512073CF80000000108A913070000000512073D0608A912FF00000005120700FE05000104135D4505000000020CFD9BF7000000090F34D0F60000000900000000135D81050CFD9BF7000000050F34D0F60CFD9C03000000050F350CF8000000010000000500000000000000020000000400000003120700F608A91303120700F808A913070000000512073D0608A912FF00000005120700FE0000000900000004000000030000000112073CF80000000108A91307120701060000000308A912FF00000005120700FE0500010400000009000000050000000412073D0608A912FF12073CFE0000000405000104135D450500000002045489F71386ACF60000000000000005138670F60CFD9C030F34D0F80CFD9C07000000050F350D060CFD9BFF000000050000000600000003000000010F350CF8000000010CFD9C07000000050F350D060CFD9BFF000000050F34D0FE0C9A86F80F878D030C9A87060F875107000000030000000600000005000000010F875103000000010C9A87060F875107000000030280010413D7B10500000002022A4577000000050000000613D7ED05022A45770000000500000006000000020F878D070000000500000003000000040000000300000000135D8105045489F700000005138670F60CFD9C03000000050F350CF800000001000000050000000000000002120700FE05000104135D450500000002045489F71386ACF6000000000CFD9C03000000090F350CF8000000010CFD9C070F34D10600000003000000090F350D06045489FF1386ACFE000000040C9A86F8000000090F875103000000010C9A87060F87510700000003028001040000000913D7ED05067ECE770000000512EA58F6000000090000000000000002000000090000000900000003138670F60CFD9C03000000090F350CF8000000010CFD9C070F34D10600000003000000090F350D06045489FF1386ACFE000000040C9A86F80F878D030C9A87060F875107000000030000000600000006000000010F875103000000010C9A87060F875107000000030280010413D7B10500000002022A4577000000090000000613D7ED05022A457713E200F600000000067ECE7F000000060000000600000006000000020F878D0702800104000000060000000600000003000000090000000300000000135D8105045489F71386ACF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C070F34D10600000003000000050F350D06045489FF1386ACFE000000040C9A86F80F878D03000000050000000100000005138670FE0C9A86F8000000090F875103000000010C9A87060F87510700000003078001040000000900000009000000090000000400000003138670F60CFD9C030F34D0F80CFD9C070F34D10600000003000000050F350D06045489FF000000060000000600000003000000010F350CF8000000010CFD9C070F34D10600000003045489FF00000005000000090F350D06045489FF1386ACFE000000040C9A86F80F878D030C9A87060F875107000000030000000600000006000000010F875103000000010C9A87060F8751070000000307800104128A410500000002022A457713E200F600000000067ECE7F000000050000000600000006128A7D05022A45770000000500000006000000020F878D0707800104000000060000000600000003138670FE0C9A86F80F878D0300000009000000010F875103000000010C9A87060F8751070000000307800104128A410500000002022A45770000000900000006128A7D05022A457713E200F600000000022A457F000000060000000600000006000000020F878D070000000600000003000000040000000300000000000000020000000400000003000000001151E8FF000000050000000400000003"
theorem small_848533_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848533_right_root small_848533_right_fuel small_848533_right_count small_848533_right_encoded = true := by
  decide +kernel
theorem small_848533_right_covered : CoveredBy scale carrier boxes small_848533_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848533_right_root small_848533_right_fuel small_848533_right_count small_848533_right_encoded small_848533_right_checked

theorem cover_848533 : CoveredBy scale carrier boxes root_848533 := by
  apply coveredBy_split_literal root_848533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848534 small_848533_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848534
  · exact small_848533_right_covered
#print axioms cover_848533

def root_848527 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848527_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848527_left_fuel : Nat := 1
def small_848527_left_count : Nat := 1
def small_848527_left_encoded : String := "00000002"
theorem small_848527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848527_left_root small_848527_left_fuel small_848527_left_count small_848527_left_encoded = true := by
  decide +kernel
theorem small_848527_left_covered : CoveredBy scale carrier boxes small_848527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848527_left_root small_848527_left_fuel small_848527_left_count small_848527_left_encoded small_848527_left_checked

theorem cover_848527 : CoveredBy scale carrier boxes root_848527 := by
  apply coveredBy_split_literal root_848527 small_848527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848533 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_848527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848533
#print axioms cover_848527

def root_848526 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848526_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848526_right_fuel : Nat := 31
def small_848526_right_count : Nat := 479
def small_848526_right_encoded : String := "115225050A0001061151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A913030000000512073CF80000000108A913050000000512073D0408A912FF00000005120700FE05000106135D4507000000030CFD9BF70F350CF600000000000000050F34D0F60CFD9C030F34D0F80CFD9C05000000050F350D04045489FF00000005138670FE0000000A0000000400000002000000010F350CF8000000010CFD9C05000000050F350D04045489FF00000005138670FE0C9A86F80F878D030C9A87040F875105000000020000000A00000005000000010F875103000000010C9A87040F875105000000020280010613D7B107000000030AD35777000000050000000A13D7ED070AD35777000000050000000A000000030F878D050000000500000002000000040000000200000000135D81070CFD9BF7000000050F34D0F60CFD9C03000000050F350CF8000000010000000500000000000000030000000400000002120700F608A91303120700F808A913050000000512073D0408A912FF00000005120700FE0000000800000004000000020000000112073CF80000000108A91305120701040000000208A912FF00000005120700FE0500010600000008000000050000000412073D0408A912FF12073CFE0000000405000106135D450700000003045489F71386ACF6000000000000000500000008135D8107045489F700000005138670F60CFD9C03000000050F350CF800000001000000050000000000000003120700FE05000106135D450700000003045489F71386ACF6000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D04045489FF1386ACFE000000040C9A86F8000000080F875103000000010C9A87040F87510500000002028001060000000813D7ED07067ECE7700000005000000080000000300000008138670FE0C9A86F80F878D030C9A87040F875105000000020000000A00000008000000010F875103000000010C9A87040F875105000000020280010613D7B10700000003067ECE770000000A0000000813D7ED07067ECE770000000A0000000A000000030F878D0502800106000000080000000A000000020000000400000002138670F60000000800000000135D8107045489F71386ACF6000000000CFD9C030F34D0F80CFD9C05000000050F350D04045489FF000000050000000A00000002000000010F350CF8000000010CFD9C050F34D10400000002000000050F350D04045489FF1386ACFE000000040C9A86F80F878D03000000050000000100000005138670FE0C9A86F80F878D030C9A87040F875105000000020000000A0000000A000000010F875103000000010C9A87040F8751050000000207800106128A410700000003067ECE770000000A0000000A128A7D07067ECE77000000050000000A000000030F878D05078001060000000A00000007000000020000000400000002138670F60CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D10400000002000000080F350D04045489FF1386ACFE000000040C9A86F8000000080F875103000000010C9A87040F8751050000000207800106000000080000000800000008138670FE0C9A86F80F878D0300000008000000010F875103000000010C9A87040F8751050000000207800106128A410700000003022A45770000000A00000008128A7D07022A45770000000A0000000A000000030F878D050000000800000002000000040000000200000000000000030000000400000002000000001151E8FF0000000500000004115225070A0000FE115224FF0000000408A912F712073CF60000000008A913030000000512073CF80000000108A913050000000512073D0408A913070000000512073D0608A912FF00000005120700FE00000005000000040000000300000002120700F608A913030000000512073CF80000000108A913050000000512073D0408A913070000000512073D0608A912FF00000005120700FE045489F71386ACF6000000000CFD9C03000000050F350CF8000000010CFD9C05000000050F350D040CFD9C07000000050F350D06045489FF00000005138670FE0C9A86F80F878D0300000005000000010F8751030000000100000007000000040000000300000002138670F60CFD9C030F34D0F80CFD9C05000000050F350D040CFD9C07000000050000000600000002000000010F350CF8000000010CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D06045489FF1386ACFE000000040C9A86F80F878D0300000005000000010F8751030000000100000007138670FE0C9A86F80F878D030C9A87040000000600000006000000010F875103000000010000000700000004000000030000000200000000000000040000000300000002000000001151E8FF08A912F712073CF60000000008A91303120700F808A91305120701040000000208A9130712070106000000030000000600000005000000050000000112073CF80000000108A91305120701040000000208A913071207010600000003000000070000000500000005120700F60000000500000000000000040000000300000002"
theorem small_848526_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848526_right_root small_848526_right_fuel small_848526_right_count small_848526_right_encoded = true := by
  decide +kernel
theorem small_848526_right_covered : CoveredBy scale carrier boxes small_848526_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848526_right_root small_848526_right_fuel small_848526_right_count small_848526_right_encoded small_848526_right_checked

theorem cover_848526 : CoveredBy scale carrier boxes root_848526 := by
  apply coveredBy_split_literal root_848526 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848527 small_848526_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848527
  · exact small_848526_right_covered
#print axioms cover_848526

def root_848521 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848521_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848521_right_fuel : Nat := 1
def small_848521_right_count : Nat := 1
def small_848521_right_encoded : String := "00000001"
theorem small_848521_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848521_right_root small_848521_right_fuel small_848521_right_count small_848521_right_encoded = true := by
  decide +kernel
theorem small_848521_right_covered : CoveredBy scale carrier boxes small_848521_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848521_right_root small_848521_right_fuel small_848521_right_count small_848521_right_encoded small_848521_right_checked

theorem cover_848521 : CoveredBy scale carrier boxes root_848521 := by
  apply coveredBy_split_literal root_848521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848526 small_848521_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848526
  · exact small_848521_right_covered
#print axioms cover_848521

def root_879867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_879867 : CoveredBy scale carrier boxes root_879867 := by
  apply coveredBy_split_literal root_879867 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0332.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0333.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0332.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0333.covered
#print axioms cover_879867

def root_879862 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_879862_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_879862_right_fuel : Nat := 1
def small_879862_right_count : Nat := 1
def small_879862_right_encoded : String := "00000003"
theorem small_879862_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_879862_right_root small_879862_right_fuel small_879862_right_count small_879862_right_encoded = true := by
  decide +kernel
theorem small_879862_right_covered : CoveredBy scale carrier boxes small_879862_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_879862_right_root small_879862_right_fuel small_879862_right_count small_879862_right_encoded small_879862_right_checked

theorem cover_879862 : CoveredBy scale carrier boxes root_879862 := by
  apply coveredBy_split_literal root_879862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_879867 small_879862_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_879867
  · exact small_879862_right_covered
#print axioms cover_879862

def root_877724 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_877724 : CoveredBy scale carrier boxes root_877724 := by
  apply coveredBy_split_literal root_877724 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0331.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_879862 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0331.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_879862
#print axioms cover_877724

def root_877718 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877718_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877718_left_fuel : Nat := 1
def small_877718_left_count : Nat := 1
def small_877718_left_encoded : String := "00000002"
theorem small_877718_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_877718_left_root small_877718_left_fuel small_877718_left_count small_877718_left_encoded = true := by
  decide +kernel
theorem small_877718_left_covered : CoveredBy scale carrier boxes small_877718_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_877718_left_root small_877718_left_fuel small_877718_left_count small_877718_left_encoded small_877718_left_checked

theorem cover_877718 : CoveredBy scale carrier boxes root_877718 := by
  apply coveredBy_split_literal root_877718 small_877718_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877724 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_877718_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877724
#print axioms cover_877718

def root_883393 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_883393_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_883393_right_fuel : Nat := 29
def small_883393_right_count : Nat := 219
def small_883393_right_encoded : String := "138670F6045489FF1386ACFE00000004078000F8128A7D0307800104128A410500000002028001060000000913D7ED07022A457713E200F600000000067ECE7F0000000912EA58FE08C000F811FC25030640010412FF71050000000203C001060000000913A54D07033F67B713BC30F6000000000569AC3F000000091340D4FE096000F811AABD0305A001040000000513317105046001060000000500000008000000020000000111AA810300000001000000050000000413BBF4F60569AC3F0000000800000005000000000000000312FFAD0503C001060000000813A54D07033F67B713BC30F6000000000569AC3F000000081340D4FE096000F80000000800000009000000040000000800000003000000020000000111FBE903000000010640010400000009000000090000000413E1C4F6067ECE7F0000000812EA58FE08C000F811FC2503000000080000000100000009000000040000000000000003128A7D05028001060000000813D7ED07022A457713E200F600000000067ECE7F0000000812EA58FE08C000F800000008000000090000000400000008000000030000000200000001128A41030000000100000009138670FE078000F8128A7D0307800104128A410500000002028001060000000513D7ED07022A457713E200F600000000022A457F13E200FE0000000408C000F80000000511FBE9030000000100000005000000050000000500000003128A7D050280010613D7B10700000003022A457713E200F600000000022A457F00000009000000050000000513D7ED07022A457713E200F600000000022A457F13E200FE0000000408C000F811FC250308C0010411FBE9050000000203C001060000000813A54D07033F67B70000000A0000000500000003000000080000000111FBE9030000000108C0010411FBE9050000000203C001060000000913A54D07033F67B713BC30F600000000033F67BF0000000900000005000000050000000311FC2505000000090000000213E1C4FE08C000F80000000511FBE90300000001000000050000000413E1C4F6022A457F000000080000000500000000000000030000000200000001128A41030000000107800104128A41050000000200000005128A7D05028001060000000913D7ED07022A457713E200F600000000022A457F00000009000000050000000500000003000000020000000400000000"
theorem small_883393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_883393_right_root small_883393_right_fuel small_883393_right_count small_883393_right_encoded = true := by
  decide +kernel
theorem small_883393_right_covered : CoveredBy scale carrier boxes small_883393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_883393_right_root small_883393_right_fuel small_883393_right_count small_883393_right_encoded small_883393_right_checked

theorem cover_883393 : CoveredBy scale carrier boxes root_883393 := by
  apply coveredBy_split_literal root_883393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0334.root small_883393_right_root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0334.covered
  · exact small_883393_right_covered
#print axioms cover_883393

def root_883387 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_883387_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_883387_left_fuel : Nat := 1
def small_883387_left_count : Nat := 1
def small_883387_left_encoded : String := "00000003"
theorem small_883387_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_883387_left_root small_883387_left_fuel small_883387_left_count small_883387_left_encoded = true := by
  decide +kernel
theorem small_883387_left_covered : CoveredBy scale carrier boxes small_883387_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_883387_left_root small_883387_left_fuel small_883387_left_count small_883387_left_encoded small_883387_left_checked

theorem cover_883387 : CoveredBy scale carrier boxes root_883387 := by
  apply coveredBy_split_literal root_883387 small_883387_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_883393 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_883387_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_883393
#print axioms cover_883387

def root_886842 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_886842 : CoveredBy scale carrier boxes root_886842 := by
  apply coveredBy_split_literal root_886842 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0335.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0336.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0335.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0336.covered
#print axioms cover_886842

def root_886836 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_886836_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_886836_left_fuel : Nat := 1
def small_886836_left_count : Nat := 1
def small_886836_left_encoded : String := "00000000"
theorem small_886836_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_886836_left_root small_886836_left_fuel small_886836_left_count small_886836_left_encoded = true := by
  decide +kernel
theorem small_886836_left_covered : CoveredBy scale carrier boxes small_886836_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_886836_left_root small_886836_left_fuel small_886836_left_count small_886836_left_encoded small_886836_left_checked

theorem cover_886836 : CoveredBy scale carrier boxes root_886836 := by
  apply coveredBy_split_literal root_886836 small_886836_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_886842 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_886836_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_886842
#print axioms cover_886836

def root_892084 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_892084 : CoveredBy scale carrier boxes root_892084 := by
  apply coveredBy_split_literal root_892084 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0337.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0338.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0337.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0338.covered
#print axioms cover_892084

def root_892079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_892079_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_892079_right_fuel : Nat := 1
def small_892079_right_count : Nat := 1
def small_892079_right_encoded : String := "00000000"
theorem small_892079_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_892079_right_root small_892079_right_fuel small_892079_right_count small_892079_right_encoded = true := by
  decide +kernel
theorem small_892079_right_covered : CoveredBy scale carrier boxes small_892079_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_892079_right_root small_892079_right_fuel small_892079_right_count small_892079_right_encoded small_892079_right_checked

theorem cover_892079 : CoveredBy scale carrier boxes root_892079 := by
  apply coveredBy_split_literal root_892079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_892084 small_892079_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_892084
  · exact small_892079_right_covered
#print axioms cover_892079

def root_886835 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_886835 : CoveredBy scale carrier boxes root_886835 := by
  apply coveredBy_split_literal root_886835 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_886836 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_892079 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_886836
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_892079
#print axioms cover_886835

def root_886830 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_886830_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_886830_right_fuel : Nat := 1
def small_886830_right_count : Nat := 1
def small_886830_right_encoded : String := "00000003"
theorem small_886830_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_886830_right_root small_886830_right_fuel small_886830_right_count small_886830_right_encoded = true := by
  decide +kernel
theorem small_886830_right_covered : CoveredBy scale carrier boxes small_886830_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_886830_right_root small_886830_right_fuel small_886830_right_count small_886830_right_encoded small_886830_right_checked

theorem cover_886830 : CoveredBy scale carrier boxes root_886830 := by
  apply coveredBy_split_literal root_886830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_886835 small_886830_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_886835
  · exact small_886830_right_covered
#print axioms cover_886830

def root_883386 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_883386 : CoveredBy scale carrier boxes root_883386 := by
  apply coveredBy_split_literal root_883386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_883387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_886830 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_883387
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_886830
#print axioms cover_883386

def root_883381 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_883381_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_883381_right_fuel : Nat := 1
def small_883381_right_count : Nat := 1
def small_883381_right_encoded : String := "00000002"
theorem small_883381_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_883381_right_root small_883381_right_fuel small_883381_right_count small_883381_right_encoded = true := by
  decide +kernel
theorem small_883381_right_covered : CoveredBy scale carrier boxes small_883381_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_883381_right_root small_883381_right_fuel small_883381_right_count small_883381_right_encoded small_883381_right_checked

theorem cover_883381 : CoveredBy scale carrier boxes root_883381 := by
  apply coveredBy_split_literal root_883381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_883386 small_883381_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_883386
  · exact small_883381_right_covered
#print axioms cover_883381

def root_877717 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_877717 : CoveredBy scale carrier boxes root_877717 := by
  apply coveredBy_split_literal root_877717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_883381 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877718
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_883381
#print axioms cover_877717

def root_877712 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877712_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877712_right_fuel : Nat := 1
def small_877712_right_count : Nat := 1
def small_877712_right_encoded : String := "00000001"
theorem small_877712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_877712_right_root small_877712_right_fuel small_877712_right_count small_877712_right_encoded = true := by
  decide +kernel
theorem small_877712_right_covered : CoveredBy scale carrier boxes small_877712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_877712_right_root small_877712_right_fuel small_877712_right_count small_877712_right_encoded small_877712_right_checked

theorem cover_877712 : CoveredBy scale carrier boxes root_877712 := by
  apply coveredBy_split_literal root_877712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877717 small_877712_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877717
  · exact small_877712_right_covered
#print axioms cover_877712

def root_877711 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_877711 : CoveredBy scale carrier boxes root_877711 := by
  apply coveredBy_split_literal root_877711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877712 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0339.root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877712
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0339.covered
#print axioms cover_877711

def root_877706 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877706_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877706_right_fuel : Nat := 1
def small_877706_right_count : Nat := 1
def small_877706_right_encoded : String := "00000004"
theorem small_877706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_877706_right_root small_877706_right_fuel small_877706_right_count small_877706_right_encoded = true := by
  decide +kernel
theorem small_877706_right_covered : CoveredBy scale carrier boxes small_877706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_877706_right_root small_877706_right_fuel small_877706_right_count small_877706_right_encoded small_877706_right_checked

theorem cover_877706 : CoveredBy scale carrier boxes root_877706 := by
  apply coveredBy_split_literal root_877706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877711 small_877706_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877711
  · exact small_877706_right_covered
#print axioms cover_877706

def root_877136 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877136_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877136_left_fuel : Nat := 24
def small_877136_left_count : Nat := 273
def small_877136_left_encoded : String := "12073CFE00000004050000F8135D810305000104135D45050000000205000106135D450700000003045489F71386ACF6000000000CFD9BFF0F350CFE00000004000000050F34D0FE078000F8128A7D030280010413D7B105000000020280010613D7B10700000003067ECE770000000A000000090000000A13D7ED05028001060000000913D7ED07067ECE770000000500000009000000030000000200000001128A410300000001028001040000000A0000000900000004138670F60CFD9BFF000000090F34D0FE078000F8128A7D0302800104000000090000000900000001000000090000000400000000135D8107045489F71386ACF6000000000CFD9BFF000000050F34D0FE078000F8128A7D030280010413D7B1050000000207800106128A4107000000030000000A0000000A13D7ED0507800106128A410700000003067ECE770000000512EA58F60AD3577F0000000510D100FE08C000F811FC25030000000500000001000000050000000400000000000000050000000200000001128A410300000001028001040000000A13D7ED05000000050000000200000004138670F60CFD9BFF0000000A0F34D0FE078000F8128A7D03028001040000000A13D7ED0507800106128A410700000003022A45770000000A00000009128A7D07022A45770000000A0000000A000000030000000200000001128A4103000000010000000A000000040000000000000003135D810505000106135D450700000003045489F71386ACF6000000000CFD9BFF000000050F34D0FE078000F8128A7D0307800104128A410500000002028001060000000913D7ED07067ECE7700000005000000090000000300000009000000010000000900000004138670F60CFD9BFF000000090F34D0FE000000090000000400000000135D8107045489F700000005138670F60CFD9BFF000000050F34D0FE078000F8128A7D0307800104128A41050000000207800106128A410700000003022A457713E200F6000000000AD3577F0000000510D100FE000000090000000400000009128A7D07022A45770000000513E1C4F60AD3577F0000000510D100FE08C000F80000000611FBE9030000000100000009000000040000000000000003128A7D050780010600000009128A7D0700000005000000030000000200000001128A41030000000107800104128A4105000000020780010600000009128A7D07022A4577000000050000000900000003128A7D0500000009000000020000000400000000000000030000000200000001135D45030000000105000104135D45050000000205000106135D450700000003045489F71386ACF6000000000000000900000009135D8107045489F71386ACF6000000000CFD9BFF000000050F34D0FE028000F80000000A00000005000000040000000A00000003135D81050500010600000009135D8107045489F700000005138670F60CFD9BFF000000050F34D0FE0000000900000004000000000000000300000002"
theorem small_877136_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_877136_left_root small_877136_left_fuel small_877136_left_count small_877136_left_encoded = true := by
  decide +kernel
theorem small_877136_left_covered : CoveredBy scale carrier boxes small_877136_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_877136_left_root small_877136_left_fuel small_877136_left_count small_877136_left_encoded small_877136_left_checked

theorem cover_877136 : CoveredBy scale carrier boxes root_877136 := by
  apply coveredBy_split_literal root_877136 small_877136_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877706 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_877136_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877706
#print axioms cover_877136

def root_877131 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877131_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_877131_right_fuel : Nat := 1
def small_877131_right_count : Nat := 1
def small_877131_right_encoded : String := "00000000"
theorem small_877131_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_877131_right_root small_877131_right_fuel small_877131_right_count small_877131_right_encoded = true := by
  decide +kernel
theorem small_877131_right_covered : CoveredBy scale carrier boxes small_877131_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_877131_right_root small_877131_right_fuel small_877131_right_count small_877131_right_encoded small_877131_right_checked

theorem cover_877131 : CoveredBy scale carrier boxes root_877131 := by
  apply coveredBy_split_literal root_877131 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877136 small_877131_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877136
  · exact small_877131_right_covered
#print axioms cover_877131

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021

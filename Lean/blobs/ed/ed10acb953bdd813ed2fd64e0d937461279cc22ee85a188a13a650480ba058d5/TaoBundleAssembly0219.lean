import TaoBundleAssembly0205
import TaoBundleAssembly0209
import TaoBundleAssembly0214
import TaoBundleAssembly0217
import TaoBundleAssembly0218
import TaoBundleChunkBatch0855
import TaoBundleChunkBatch0856
import TaoBundleChunkBatch0857
import TaoBundleChunkBatch0858
import TaoBundleChunkBatch0859
import TaoBundleChunkBatch0860
import TaoBundleChunkBatch0861
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219
def root_9124162 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124162_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124162_right_fuel : Nat := 23
def small_9124162_right_count : Nat := 91
def small_9124162_right_encoded : String := "12073D0408A913090000000612073CFE00000004050000F8135D810305000106135D44FD0000000600000003135D80FD000000030CFD9C010F34D10000000000000000060F350D000CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09078000F800000006128A41030000000100000006000000040F87510900000004078000F8128A7D030780010600000008128A7CFD000000030AD357850000000A0000000500000001000000080F878D010C9A86FE000000060F87510900000004078000F8000000060000000800000000000000060000000000000001135D45030000000105000106135D44FD0000000600000003135D80FD000000030CFD9C010F34D10000000000000000060F350D000CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A8700000000080F878D010C9A86FE000000060000000500000000000000060000000000000002"
theorem small_9124162_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124162_right_root small_9124162_right_fuel small_9124162_right_count small_9124162_right_encoded = true := by
  decide +kernel
theorem small_9124162_right_covered : CoveredBy scale carrier boxes small_9124162_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124162_right_root small_9124162_right_fuel small_9124162_right_count small_9124162_right_encoded small_9124162_right_checked

theorem cover_9124162 : CoveredBy scale carrier boxes root_9124162 := by
  apply coveredBy_split_literal root_9124162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9124163 small_9124162_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9124163
  · exact small_9124162_right_covered
#print axioms cover_9124162

def root_9124157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124157_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124157_right_fuel : Nat := 1
def small_9124157_right_count : Nat := 1
def small_9124157_right_encoded : String := "00000000"
theorem small_9124157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124157_right_root small_9124157_right_fuel small_9124157_right_count small_9124157_right_encoded = true := by
  decide +kernel
theorem small_9124157_right_covered : CoveredBy scale carrier boxes small_9124157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124157_right_root small_9124157_right_fuel small_9124157_right_count small_9124157_right_encoded small_9124157_right_checked

theorem cover_9124157 : CoveredBy scale carrier boxes root_9124157 := by
  apply coveredBy_split_literal root_9124157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9124162 small_9124157_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9124162
  · exact small_9124157_right_covered
#print axioms cover_9124157

def root_9123965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123965_left_fuel : Nat := 25
def small_9123965_left_count : Nat := 91
def small_9123965_left_encoded : String := "120701000000000008A91305120701040000000208A913090000000612073CFE00000004050000F8135D810305000106135D44FD0000000600000003135D80FD0000000304548A01138671000000000004548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86FE000000060F87510900000004078000F80000000600000009000000061386AD0004548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000009000000040F87510900000004078000F8128A7D0307800106128A40FD0000000600000003128A7CFD00000003067ECE8112EA5900000000000000000912EA9500022A45850000000900000006000000000000000100000009000000060000000000000001135D45030000000105000106135D44FD0000000600000003135D80FD0000000304548A01138671000000000004548A0500000009000000061386AD0004548A0500000009000000060000000000000006"
theorem small_9123965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123965_left_root small_9123965_left_fuel small_9123965_left_count small_9123965_left_encoded = true := by
  decide +kernel
theorem small_9123965_left_covered : CoveredBy scale carrier boxes small_9123965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123965_left_root small_9123965_left_fuel small_9123965_left_count small_9123965_left_encoded small_9123965_left_checked

theorem cover_9123965 : CoveredBy scale carrier boxes root_9123965 := by
  apply coveredBy_split_literal root_9123965 small_9123965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9124157 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9123965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9124157
#print axioms cover_9123965

def root_9123960 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123960_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123960_right_fuel : Nat := 1
def small_9123960_right_count : Nat := 1
def small_9123960_right_encoded : String := "00000004"
theorem small_9123960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123960_right_root small_9123960_right_fuel small_9123960_right_count small_9123960_right_encoded = true := by
  decide +kernel
theorem small_9123960_right_covered : CoveredBy scale carrier boxes small_9123960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123960_right_root small_9123960_right_fuel small_9123960_right_count small_9123960_right_encoded small_9123960_right_checked

theorem cover_9123960 : CoveredBy scale carrier boxes root_9123960 := by
  apply coveredBy_split_literal root_9123960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123965 small_9123960_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123965
  · exact small_9123960_right_covered
#print axioms cover_9123960

def root_9123959 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9123959 : CoveredBy scale carrier boxes root_9123959 := by
  apply coveredBy_split_literal root_9123959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3419.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123960
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3419.covered
#print axioms cover_9123959

def root_9123954 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123954_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123954_right_fuel : Nat := 1
def small_9123954_right_count : Nat := 1
def small_9123954_right_encoded : String := "00000003"
theorem small_9123954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123954_right_root small_9123954_right_fuel small_9123954_right_count small_9123954_right_encoded = true := by
  decide +kernel
theorem small_9123954_right_covered : CoveredBy scale carrier boxes small_9123954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123954_right_root small_9123954_right_fuel small_9123954_right_count small_9123954_right_encoded small_9123954_right_checked

theorem cover_9123954 : CoveredBy scale carrier boxes root_9123954 := by
  apply coveredBy_split_literal root_9123954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123959 small_9123954_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123959
  · exact small_9123954_right_covered
#print axioms cover_9123954

def root_9123953 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9123953 : CoveredBy scale carrier boxes root_9123953 := by
  apply coveredBy_split_literal root_9123953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3420.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3420.covered
#print axioms cover_9123953

def root_9123948 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123948_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123948_right_fuel : Nat := 1
def small_9123948_right_count : Nat := 1
def small_9123948_right_encoded : String := "00000002"
theorem small_9123948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123948_right_root small_9123948_right_fuel small_9123948_right_count small_9123948_right_encoded = true := by
  decide +kernel
theorem small_9123948_right_covered : CoveredBy scale carrier boxes small_9123948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123948_right_root small_9123948_right_fuel small_9123948_right_count small_9123948_right_encoded small_9123948_right_checked

theorem cover_9123948 : CoveredBy scale carrier boxes root_9123948 := by
  apply coveredBy_split_literal root_9123948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123953 small_9123948_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123953
  · exact small_9123948_right_covered
#print axioms cover_9123948

def root_9123676 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123676_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123676_left_fuel : Nat := 20
def small_9123676_left_count : Nat := 127
def small_9123676_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE000000061151E9090000000408A9130112070100000000000000000612073D00050000F800000006135D450300000001000000060000000000000003115224FD000000030A0000FE1152250908A91301120701000000000008A912FD00000006120701060000000308A91309000000060000000712073D0008A912FD12073D0608A913090000000612073CFE00000004050000F8135D810305000104135D45050000000200000006135D81050CFD9C010F34D10000000000000000060F350D000CFD9BFD000000060F34D106000000030000000A000000000000000200000001135D45030000000105000104135D45050000000200000006135D81050CFD9C010F34D10000000000000000060F350D000CFD9BFD0000000600000005000000000000000200000003120701060000000308A91309120700FE050000F800000006135D4503000000010500010400000006135D81050CFD9C010F34D100000000000000000500000005000000020000000412073CFE00000004050000F8135D8103050001040000000700000005000000010000000500000000000000041151E9090000000408A9130112070100000000000000000712073D0008A912FD12073D06050000F8135D8103050001040000000A000000050000000100000005000000030000000500000000"
theorem small_9123676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123676_left_root small_9123676_left_fuel small_9123676_left_count small_9123676_left_encoded = true := by
  decide +kernel
theorem small_9123676_left_covered : CoveredBy scale carrier boxes small_9123676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123676_left_root small_9123676_left_fuel small_9123676_left_count small_9123676_left_encoded small_9123676_left_checked

theorem cover_9123676 : CoveredBy scale carrier boxes root_9123676 := by
  apply coveredBy_split_literal root_9123676 small_9123676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123948 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9123676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123948
#print axioms cover_9123676

def root_9123670 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123670_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9123670_left_fuel : Nat := 1
def small_9123670_left_count : Nat := 1
def small_9123670_left_encoded : String := "00000001"
theorem small_9123670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9123670_left_root small_9123670_left_fuel small_9123670_left_count small_9123670_left_encoded = true := by
  decide +kernel
theorem small_9123670_left_covered : CoveredBy scale carrier boxes small_9123670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9123670_left_root small_9123670_left_fuel small_9123670_left_count small_9123670_left_encoded small_9123670_left_checked

theorem cover_9123670 : CoveredBy scale carrier boxes root_9123670 := by
  apply coveredBy_split_literal root_9123670 small_9123670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123676 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9123670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123676
#print axioms cover_9123670

def root_9094838 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9094838 : CoveredBy scale carrier boxes root_9094838 := by
  apply coveredBy_split_literal root_9094838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9094839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9123670 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9094839
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9123670
#print axioms cover_9094838

def root_9094833 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094833_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094833_right_fuel : Nat := 1
def small_9094833_right_count : Nat := 1
def small_9094833_right_encoded : String := "00000000"
theorem small_9094833_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9094833_right_root small_9094833_right_fuel small_9094833_right_count small_9094833_right_encoded = true := by
  decide +kernel
theorem small_9094833_right_covered : CoveredBy scale carrier boxes small_9094833_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9094833_right_root small_9094833_right_fuel small_9094833_right_count small_9094833_right_encoded small_9094833_right_checked

theorem cover_9094833 : CoveredBy scale carrier boxes root_9094833 := by
  apply coveredBy_split_literal root_9094833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9094838 small_9094833_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9094838
  · exact small_9094833_right_covered
#print axioms cover_9094833

def root_9081921 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9081921 : CoveredBy scale carrier boxes root_9081921 := by
  apply coveredBy_split_literal root_9081921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.root_9081922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9094833 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.cover_9081922
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9094833
#print axioms cover_9081921

def root_9076507 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076507 : CoveredBy scale carrier boxes root_9076507 := by
  apply coveredBy_split_literal root_9076507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.root_9076508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9081921 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.cover_9076508
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9081921
#print axioms cover_9076507

def root_9138022 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9138022 : CoveredBy scale carrier boxes root_9138022 := by
  apply coveredBy_split_literal root_9138022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3421.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3422.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3421.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3422.covered
#print axioms cover_9138022

def root_9076506 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076506 : CoveredBy scale carrier boxes root_9076506 := by
  apply coveredBy_split_literal root_9076506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9076507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9138022 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9076507
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9138022
#print axioms cover_9076506

def root_9141380 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9141380 : CoveredBy scale carrier boxes root_9141380 := by
  apply coveredBy_split_literal root_9141380 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3423.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3424.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3423.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3424.covered
#print axioms cover_9141380

def root_9146410 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9146410 : CoveredBy scale carrier boxes root_9146410 := by
  apply coveredBy_split_literal root_9146410 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3425.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3426.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3425.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3426.covered
#print axioms cover_9146410

def root_9146409 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9146409_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9146409_right_fuel : Nat := 21
def small_9146409_right_count : Nat := 477
def small_9146409_right_encoded : String := "0A0001001151E901000000000A0000F8115225030A0001041151E905000000020A0001061151E9070000000300000005115225070A0001081151E90900000004000000051152250908A91303120700F808A913070000000A12073D0608A9130912070108000000040000000500000005000000030000000112073CF80000000108A91307120701060000000300000005000000050000000400000003115225050A0001061151E907000000030A0001081151E90900000004000000051152250908A91303120700F808A9130512070104000000020000000612073D0408A9130912070108000000040000000500000005000000020000000112073CF80000000108A913051207010400000002000000050000000500000004115225070A0001081151E9090000000408A91303120700F8000000070000000112073CF80000000108A91305120701040000000200000005000000051152250908A91303120700F808A91305120701040000000208A913070000000712073D0608A91309120701080000000400000005000000050000000312073D0408A9130712070106000000030000000A12073D0608A913090000000A0000000500000003000000020000000112073CF80000000108A91305120701040000000208A91307000000070000000512073D0408A913071207010600000003000000050000000500000002000000040000000300000002000000011151E903000000010A0001041151E9050000000200000005115225050A0001061151E9070000000300000005115225070A0001081151E9090000000400000005000000050000000300000002115225010A0000F8115225030A0001041151E905000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A91301120701000000000008A91303120700F808A9130912070108000000040000000500000005000000010000000512073D0008A91303120700F808A913091207010800000004000000050000000500000001000000050000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91303120700F808A9130712070106000000030000000500000005000000010000000512073D0008A91303120700F808A913070000000A000000050000000100000005000000001152250908A91301120701000000000008A91303120700F808A9130712070106000000030000000512073D0608A9130912070108000000040000000500000005000000030000000112073CF80000000108A913071207010600000003000000050000000512073D0008A91303120700F808A9130712070106000000030000000A12073D0608A913090000000A00000005000000030000000112073CF80000000108A9130712070106000000030000000500000005000000000000000400000003115225050A0001061151E907000000030A0001081151E9090000000408A91301120701000000000008A91303120700F808A913050000000600000005000000010000000512073D0008A913030000000600000005000000001152250908A91301120701000000000008A91303120700F808A9130512070104000000020000000512073D0408A9130912070108000000040000000500000005000000020000000112073CF80000000108A913051207010400000002000000050000000512073D0008A91303120700F808A91305120701040000000208A913091207010800000004000000050000000512073D0408A9130912070108000000040000000500000005000000020000000112073CF80000000108A91305120701040000000200000005000000050000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91303120700F808A9130512070104000000020000000512073D0408A9130712070106000000030000000500000005000000020000000112073CF80000000108A913051207010400000002000000050000000512073D0008A91303120700F808A9130512070104000000020000000712073D0408A9130712070106000000030000000500000005000000020000000112073CF80000000108A913050000000700000005000000001152250908A91301120701000000000008A91303120700F808A9130512070104000000020000000512073D0408A9130712070106000000030000000500000005000000020000000112073CF8000000010000000512073D0008A91303120700F808A91305120701040000000208A913071207010600000003000000050000000512073D0408A9130712070106000000030000000512073D0608A913091207010800000004000000050000000500000003000000020000000112073CF80000000108A913051207010400000002000000050000000500000000000000040000000300000002000000011151E903000000010A0001041151E905000000020A0001061151E9070000000300000005115225070A0001081151E90900000004000000050000000500000003115225050A0001061151E907000000030A0001081151E909000000040000000500000005115225070A0001081151E909000000040000000500000005000000030000000200000000"
theorem small_9146409_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9146409_right_root small_9146409_right_fuel small_9146409_right_count small_9146409_right_encoded = true := by
  decide +kernel
theorem small_9146409_right_covered : CoveredBy scale carrier boxes small_9146409_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9146409_right_root small_9146409_right_fuel small_9146409_right_count small_9146409_right_encoded small_9146409_right_checked

theorem cover_9146409 : CoveredBy scale carrier boxes root_9146409 := by
  apply coveredBy_split_literal root_9146409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9146410 small_9146409_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9146410
  · exact small_9146409_right_covered
#print axioms cover_9146409

def root_9141379 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9141379 : CoveredBy scale carrier boxes root_9141379 := by
  apply coveredBy_split_literal root_9141379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9141380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9146409 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9141380
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9146409
#print axioms cover_9141379

def root_9076505 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9076505 : CoveredBy scale carrier boxes root_9076505 := by
  apply coveredBy_split_literal root_9076505 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9076506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9141379 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9076506
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9141379
#print axioms cover_9076505

def root_8928759 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8928759 : CoveredBy scale carrier boxes root_8928759 := by
  apply coveredBy_split_literal root_8928759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.root_8928760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9076505 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.cover_8928760
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9076505
#print axioms cover_8928759

def root_8711293 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711293 : CoveredBy scale carrier boxes root_8711293 := by
  apply coveredBy_split_literal root_8711293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.root_8711294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_8928759 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0214.cover_8711294
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_8928759
#print axioms cover_8711293

def root_8529357 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529357 : CoveredBy scale carrier boxes root_8529357 := by
  apply coveredBy_split_literal root_8529357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8529358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_8711293 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8529358
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_8711293
#print axioms cover_8529357

def root_7759099 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759099 : CoveredBy scale carrier boxes root_7759099 := by
  apply coveredBy_split_literal root_7759099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_7759100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_8529357 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_7759100
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_8529357
#print axioms cover_7759099

def root_9152260 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9152260_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9152260_right_fuel : Nat := 25
def small_9152260_right_count : Nat := 491
def small_9152260_right_encoded : String := "115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE0000000404548A01000000080000000A00000008120700FC0000000A00000003120700FA08A912FD12073CFC0000000308A912FF0000000A000000080000000A0000000200000001120701020000000108A912FB0000000A120700FA000000080000000212073D0008A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9C010000000A0F350D000CFD9BF90000000A0000000A0000000000000007120700FC0000000A00000003120700FA08A912FD12073CFC0000000308A912FF12073CFE000000040CFD9C010F34D100000000000CFD9BF90F350D020000000A00000001000000080F350D000CFD9BF90F350D02045489FB000000070000000500000001000000050000000000000005000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FD000000070000000A120700FA0000000500000002000000001151E8FF08A91301120701000000000008A912F90000000A120701020000000108A912FB0000000A0000000A12073D0008A912F912073D0208A912FB12073CFA0000000208A912FD0000000A0000000A120700FA08A912FD12073CFC00000003050000FE135D80FF000000040CFD9C010000000A0F350D000CFD9BF90F350D020000000A000000010000000A00000000135D44FF0CFD9C010000000A0F350D000000000A0000000000000004120700FC0000000A000000030000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000A120700FC0000000A00000003120700FA08A912FD12073CFC00000003050000FE135D80FF000000040CFD9C010000000800000005135D44FF0CFD9C010000000A0F350D00045489F90000000A000000050000000000000004000000050000000200000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F90000000812070102000000010000000812073D0008A912F912073D0208A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D80FD000000030CFD9C010000000800000007135D44FD0CFD9C0100000008000000070000000300000007120700FA000000080000000200000001120701020000000100000008000000001151E8FF08A91301120701000000000008A912F912073D0200000008000000010000000812073D0008A912F912073D0208A912FB12073CFA00000002050000FC135D80FD00000003050000FE135D80FF000000040CFD9C0100000008000000080000000A00000008120700FA050000FC135D80FD00000003050000FE135D80FF0000000400000008135D44FF0CFD9C01000000080F350D000CFD9BF90F350D0200000006000000010000000600000000000000040000000800000002000000011207010200000001000000080000000000000004000000031151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FD12073CFC0000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A010000000A0000000A135D44FB04548A0113867100000000000CFD9BF90F350D020CFD9BFD000000050000000A000000010000000A1386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030CFD9BFF00000005000000070000000A000000010000000A0000000000000002120700FE0000000700000004120700FC08A912FF0000000A120700FE050000FA135D80FB0000000204548A010000000A00000007135D44FB04548A0113867100000000000CFD9BF90F350D02045489FD0000000700000009000000010F34D10200000001000000070000000700000002000000040000000300000001120701020000000108A912FD12073CFC0000000308A912FF0000000A000000070000000A12073D0008A912F912073D0208A912FD12073CFC0000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010000000A00000007135D44FB0CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFD000000070000000A000000010000000A000000070000000200000007120700FC08A912FF0000000A000000070000000300000001120701020000000108A912FD000000070000000A000000001151E8FF08A91301120701000000000008A912F90000000A12070102000000010000000A0000000A000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FF12073CFE00000004050000FA00000008135D44FB050000FC135D80FD0000000304548A01000000051386AD000CFD9BF90000000500000008000000000000000500000002120700FE00000007000000040000000112070102000000010000000812073D0008A912F912073D0208A912FF12073CFE00000004050000FA00000007135D44FB00000007000000020000000700000001120701020000000100000007000000001151E8FF08A913010000000A12073D0008A912F90000000A0000000A00000000000000040000000300000002"
theorem small_9152260_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9152260_right_root small_9152260_right_fuel small_9152260_right_count small_9152260_right_encoded = true := by
  decide +kernel
theorem small_9152260_right_covered : CoveredBy scale carrier boxes small_9152260_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9152260_right_root small_9152260_right_fuel small_9152260_right_count small_9152260_right_encoded small_9152260_right_checked

theorem cover_9152260 : CoveredBy scale carrier boxes root_9152260 := by
  apply coveredBy_split_literal root_9152260 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3427.root small_9152260_right_root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3427.covered
  · exact small_9152260_right_covered
#print axioms cover_9152260

def root_9152255 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9152255_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9152255_right_fuel : Nat := 1
def small_9152255_right_count : Nat := 1
def small_9152255_right_encoded : String := "00000000"
theorem small_9152255_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9152255_right_root small_9152255_right_fuel small_9152255_right_count small_9152255_right_encoded = true := by
  decide +kernel
theorem small_9152255_right_covered : CoveredBy scale carrier boxes small_9152255_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9152255_right_root small_9152255_right_fuel small_9152255_right_count small_9152255_right_encoded small_9152255_right_checked

theorem cover_9152255 : CoveredBy scale carrier boxes root_9152255 := by
  apply coveredBy_split_literal root_9152255 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9152260 small_9152255_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9152260
  · exact small_9152255_right_covered
#print axioms cover_9152255

def root_9151633 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9151633_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9151633_left_fuel : Nat := 21
def small_9151633_left_count : Nat := 293
def small_9151633_left_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040000000A000000070000000A120700FA08A912FD12073CFC0000000308A912FF12073CFE0000000405000100135D450100000000050001020000000A00000007135D8101050001020000000A000000070000000000000007120700FC0000000A00000003000000021151E8FF08A912FB0000000A120700FA08A912FD12073CFC00000003050001000000000A0000000A0000000A00000002000000041151E8FD0A0000FE115224FF0000000408A912FB12073CFA0000000208A912FF12073CFE000000040500010000000007135D810105000102135D44F90000000A00000001000000070000000000000007120700FA08A912FF12073CFE0000000405000100135D45010000000005000102135D44F9050000FC00000007135D44FD00000007000000030000000100000007135D810105000102135D44F9050000FC135D80FD00000003045489FB0000000700000007135D44FD000000080000000300000001000000070000000000000007000000021151E8FF08A912FB12073CFA0000000205000100000000090000000A0000000900000004000000031151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912FD12073CFC0000000308A912FF12073CFE000000040500010000000007135D810105000102135D44F9050000FA00000007135D44FB000000070000000200000001000000070000000000000007120700FC08A912FF0000000A00000007000000031151E8FF0000000A000000041151E8FD0A0000FE115224FF00000004000000071151E8FF0000000500000004000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD000000070000000500000002000000011207010200000001000000051151E8FF08A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC0000000305000100000000070000000A120700FC0000000A00000003120700FA08A912FD12073CFC0000000305000100135D45010000000000000005135D8101050000FE00000005135D44FF0CFD9BF900000007000000050000000400000000000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FD000000070000000500000005000000041151E8FD0A0000FE115224FF00000004000000071151E8FF08A912F912073D0208A912FB00000007120700FA0500010000000007135D8101050000FC00000007135D44FD050000FE00000007000000070000000300000000000000020000000112070102000000010000000700000004000000031151E8FB0A0000FC115224FD000000030A0000FE115224FF00000004000000071151E8FF08A912F90000000A120701020000000100000007000000041151E8FD000000070000000300000002"
theorem small_9151633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9151633_left_root small_9151633_left_fuel small_9151633_left_count small_9151633_left_encoded = true := by
  decide +kernel
theorem small_9151633_left_covered : CoveredBy scale carrier boxes small_9151633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9151633_left_root small_9151633_left_fuel small_9151633_left_count small_9151633_left_encoded small_9151633_left_checked

theorem cover_9151633 : CoveredBy scale carrier boxes root_9151633 := by
  apply coveredBy_split_literal root_9151633 small_9151633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9152255 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9151633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9152255
#print axioms cover_9151633

def root_9151632 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9151632_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9151632_right_fuel : Nat := 23
def small_9151632_right_count : Nat := 309
def small_9151632_right_encoded : String := "0A0001001151E901000000000A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0000FE1152250908A912FB00000007120700FA000000070000000200000004000000051151E8FD00000007000000031151E8FB0A0000FC000000071151E8FD00000007000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC000000071151E8FD00000007000000031151E8FB0000000700000002115225010A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A91309120700FE05000102135D44F904548A011386710000000000000000080000000700000001000000070000000400000007120700FC08A91309120700FE05000102135D44F9000000070000000100000005000000040000000500000003120700FA08A912FD00000008000000050000000212073D0008A912FB12073CFA0000000208A912FD00000007000000050000000500000000000000041151E90900000004000000051151E8FD0A0000FE1152250908A91301120701000000000008A912FB12073CFA0000000208A91309120700FE05000102135D44F9050000FC0000000700000008000000010000000700000004000000070000000812073D0008A912FB000000070000000500000000000000041151E9090000000408A9130112070100000000000000000700000007000000031151E8FB0A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A912FD12073CFC0000000308A91309120700FE05000102135D44F9050000FA000000070000000600000001000000070000000400000007120700FC08A91309120700FE05000102135D44F900000006000000010000000700000004000000050000000312073D0008A912FD000000070000000500000000000000041151E90900000004000000061151E8FD0A0000FE1152250908A91301120701000000000008A91309120700FE00000007000000040000000700000007000000041151E9090000000400000007000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FD00000007120700FC0000000500000003120700FA000000050000000200000001120701020000000108A912FB000000070000000512073D0008A912F912073D0208A912FB0000000700000005000000010000000500000000000000041151E9090000000408A91301120701000000000008A912F900000007120701020000000100000007000000071151E8FD0A0000FE1152250908A91301120701000000000008A912F912073D0208A912FB00000007120700FA00000007000000020000000112070102000000010000000700000007000000041151E9090000000400000007000000031151E8FB0A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073D0208A912FD00000007120700FC00000007000000030000000112070102000000010000000700000007000000041151E90900000004000000071151E8FD00000007000000030000000200000000"
theorem small_9151632_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9151632_right_root small_9151632_right_fuel small_9151632_right_count small_9151632_right_encoded = true := by
  decide +kernel
theorem small_9151632_right_covered : CoveredBy scale carrier boxes small_9151632_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9151632_right_root small_9151632_right_fuel small_9151632_right_count small_9151632_right_encoded small_9151632_right_checked

theorem cover_9151632 : CoveredBy scale carrier boxes root_9151632 := by
  apply coveredBy_split_literal root_9151632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9151633 small_9151632_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9151633
  · exact small_9151632_right_covered
#print axioms cover_9151632

def root_9156144 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9156144_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9156144_left_fuel : Nat := 22
def small_9156144_left_count : Nat := 367
def small_9156144_left_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A912FB12073CFA000000020000000A0000000A00000004115224FF0000000408A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000A00000009120700FC08A912FF12073D080000000A000000040000000700000003120700FA08A912FD00000009120700FC0000000500000003000000021151E8FD0A0001081151E8FF08A912FB0000000A00000009000000040000000A000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF0000000A00000004115224FF0000000408A912FD12073CFC0000000308A912FF12073D080000000A000000041207010800000004050001000000000700000007120700FC08A912FF12073D0805000100135D4501000000000000000A135D810105000102135D44F90000000A000000010000000A0000000000000004120701080000000400000007000000031151E8FD0000000A000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC000000030000000A120700FC05000100135D4501000000000500010800000005000000070000000A00000003120700FA08A912FD12073CFC0000000305000100135D450100000000050001080000000500000007135D81010000000A00000000000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC05000100000000050000000700000003120700FA08A912FD12073CFC00000003050001000000000500000007000000050000000200000004115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D0805000100135D4501000000000CFD9BF9000000070F34D10200000001000000070000000A0000000400000007120700FC08A912FF12073D08050001000000000700000007000000040000000700000003120700FA08A912FD12073CFC0000000308A912FF12073D080500010000000007000000070000000400000007120700FC00000005000000030000000200000001120701020000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08000000070000000400000007120700FC08A912FF12073D0800000007000000040000000700000003120700FA08A912FD12073CFC0000000308A912FF12073D08000000070000000400000007120700FC0000000500000003000000021151E8FD0A0001081151E8FF08A912F912073D0208A912FB12073CFA0000000205000100135D45010000000000000007135D8101050000FC0000000A135D44FD0000000A0000000300000000120700FA0500010000000009135D8101050000FC135D80FD0000000305000108000000070000000700000009000000000000000200000001120701020000000108A912FB00000007120700FA000000070000000200000004115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FF12073D080000000A0000000400000007120700FA000000090000000200000001120701020000000108A912FB00000007120700FA08A912FF12073D0800000007000000040000000700000002000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A912F90000000A120701020000000108A912FD00000007120700FC000000070000000300000004115224FF0000000408A912F912073D0208A912FD12073CFC0000000308A912FF0000000A00000007120700FC08A912FF12073D080000000A00000004000000070000000300000001120701020000000108A912FD00000007120700FC08A912FF12073D08000000070000000400000006000000031151E8FD0A0001080000000A115224FF000000040000000A0000000300000002"
theorem small_9156144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9156144_left_root small_9156144_left_fuel small_9156144_left_count small_9156144_left_encoded = true := by
  decide +kernel
theorem small_9156144_left_covered : CoveredBy scale carrier boxes small_9156144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9156144_left_root small_9156144_left_fuel small_9156144_left_count small_9156144_left_encoded small_9156144_left_checked

theorem cover_9156144 : CoveredBy scale carrier boxes root_9156144 := by
  apply coveredBy_split_literal root_9156144 small_9156144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3428.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9156144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3428.covered
#print axioms cover_9156144

def root_9156143 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9156143_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9156143_right_fuel : Nat := 21
def small_9156143_right_count : Nat := 399
def small_9156143_right_encoded : String := "0A0001001151E901000000000A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A000108000000051152250900000009000000041151E8FD0A0001081151E90900000004000000051152250908A912FB000000070000000700000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD0000000700000007000000041151E8FD00000007000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912F912073D0208A912FB000000070000000700000001120701020000000100000007000000041151E8FD00000007000000031151E8FB0A0000FC000000071151E8FD000000070000000300000002115225010A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000081152250908A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC000000030000000800000007120700FA000000070000000212073D0008A912FB12073CFA0000000208A912FD0000000700000007120700FA000000070000000200000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000000000007000000071152250908A91301120701000000000008A912FB12073CFA0000000208A913090000000800000007120700FA000000070000000212073D0008A912FB00000008120700FA00000007000000020000000000000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A9130100000006000000071152250908A91301120701000000000008A912FD000000080000000812073D0008A912FD12073CFC0000000308A9130912070108000000040000000700000007120700FC000000070000000300000000000000041151E8FD0A0001081151E909000000040000000700000008000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A912F900000007120701020000000100000007000000071152250908A91301120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A9130912070108000000040000000700000007120700FC0000000700000003120700FA000000070000000200000001120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007000000070000000212073D0008A912F912073D0208A912FB12073CFA0000000208A912FD0000000700000007120700FA000000070000000200000001120701020000000108A912FB00000007120700FA000000070000000200000000000000041151E8FD0A0001081151E90900000004000000071152250908A91301120701000000000008A912F912073D0208A912FB12073CFA0000000208A9130912070108000000040000000900000007120700FA08A913090000000A000000070000000200000001120701020000000108A912FB12073CFA0000000208A91309120701080000000400000007000000070000000912073D0008A912F912073D0208A912FB000000070000000900000001120701020000000108A912FB00000007000000070000000000000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000071152250908A91301120701000000000008A912F912073D0208A912FD12073CFC0000000308A9130900000008000000070000000800000001120701020000000108A912FD12073CFC0000000308A9130900000008000000060000000612073D0008A912F912073D0208A912FD00000007120700FC000000070000000300000001120701020000000108A912FD000000070000000700000000000000041151E8FD0A0001081151E90900000004000000071152250908A91301120701000000000008A912F912073D0208A91309000000080000000700000001120701020000000108A91309000000050000000712073D0008A912F9000000071207010200000001000000070000000000000004000000030000000200000000"
theorem small_9156143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9156143_right_root small_9156143_right_fuel small_9156143_right_count small_9156143_right_encoded = true := by
  decide +kernel
theorem small_9156143_right_covered : CoveredBy scale carrier boxes small_9156143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9156143_right_root small_9156143_right_fuel small_9156143_right_count small_9156143_right_encoded small_9156143_right_checked

theorem cover_9156143 : CoveredBy scale carrier boxes root_9156143 := by
  apply coveredBy_split_literal root_9156143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9156144 small_9156143_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9156144
  · exact small_9156143_right_covered
#print axioms cover_9156143

def root_9151631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151631 : CoveredBy scale carrier boxes root_9151631 := by
  apply coveredBy_split_literal root_9151631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9151632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9156143 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9151632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9156143
#print axioms cover_9151631

def root_9165785 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165785_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165785_right_fuel : Nat := 23
def small_9165785_right_count : Nat := 167
def small_9165785_right_encoded : String := "120701020000000108A912FF12073D0805000100135D450100000000050000FA135D80FB00000002050000FC00000006135D450700000003045489F91386AD020CFD9BFF0F350D0800000006000000040F34D108000000040280010013D7B10100000000078000FA128A7CFB000000020000000600000006000000060000000100000006135D44FB050000FC00000006135D450700000003045489F91386AD020CFD9BFF0000000600000006000000010000000600000002135D8101050000FA135D80FB00000002050000FC00000006135D45070000000300000006000000060000000000000004120701080000000405000100135D450100000000050000FA135D80FB00000002050000FC135D8107045489F9000000070000000600000003135D450700000003045489F91386AD02045489FF1386AD080280010013D7B10100000000078000FA00000007128A40FB028000FC0000000600000008000000020000000800000004000000070000000100000008135D44FB050000FC135D8107045489F91386AD02045489FF0000000600000006000000010000000600000003135D450700000003045489F91386AD02045489FF1386AD080280010013D7B10100000000028000FA13D7ECFB00000002028000FC0000000613D7B10700000003067ECE7912EA9502067ECE7F0000000600000007000000010000000613D7B0FB028000FC00000006000000050000000213D7ED01028000FA0000000600000005000000000000000413867108000000040280010013D7B10100000000028000FA000000070000000500000005000000011386710200000001045489FF000000060000000600000002135D8101050000FA135D80FB00000002050000FC0000000600000008135D44FB050000FC00000006000000050000000200000000"
theorem small_9165785_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165785_right_root small_9165785_right_fuel small_9165785_right_count small_9165785_right_encoded = true := by
  decide +kernel
theorem small_9165785_right_covered : CoveredBy scale carrier boxes small_9165785_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165785_right_root small_9165785_right_fuel small_9165785_right_count small_9165785_right_encoded small_9165785_right_checked

theorem cover_9165785 : CoveredBy scale carrier boxes root_9165785 := by
  apply coveredBy_split_literal root_9165785 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3431.root small_9165785_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3431.covered
  · exact small_9165785_right_covered
#print axioms cover_9165785

def root_9165779 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165779_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165779_left_fuel : Nat := 1
def small_9165779_left_count : Nat := 1
def small_9165779_left_encoded : String := "00000004"
theorem small_9165779_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165779_left_root small_9165779_left_fuel small_9165779_left_count small_9165779_left_encoded = true := by
  decide +kernel
theorem small_9165779_left_covered : CoveredBy scale carrier boxes small_9165779_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165779_left_root small_9165779_left_fuel small_9165779_left_count small_9165779_left_encoded small_9165779_left_checked

theorem cover_9165779 : CoveredBy scale carrier boxes root_9165779 := by
  apply coveredBy_split_literal root_9165779 small_9165779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9165785 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9165779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9165785
#print axioms cover_9165779

def root_9165687 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165687_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165687_left_fuel : Nat := 13
def small_9165687_left_count : Nat := 43
def small_9165687_left_encoded : String := "1151E8FF08A912F912073D0205000100135D450100000000050000FA135D80FB00000002050000FC00000005135D4507000000030000000800000008135D8101050000FA135D80FB00000002050000FC00000006135D4507000000030500010800000006135D80FF000000040CFD9BF90000000800000006135D44FB050000FC00000006135D4507000000030000000600000002000000000000000112070102000000010000000600000004"
theorem small_9165687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165687_left_root small_9165687_left_fuel small_9165687_left_count small_9165687_left_encoded = true := by
  decide +kernel
theorem small_9165687_left_covered : CoveredBy scale carrier boxes small_9165687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165687_left_root small_9165687_left_fuel small_9165687_left_count small_9165687_left_encoded small_9165687_left_checked

theorem cover_9165687 : CoveredBy scale carrier boxes root_9165687 := by
  apply coveredBy_split_literal root_9165687 small_9165687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9165779 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9165687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9165779
#print axioms cover_9165687

def root_9165681 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165681_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165681_left_fuel : Nat := 1
def small_9165681_left_count : Nat := 1
def small_9165681_left_encoded : String := "00000003"
theorem small_9165681_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165681_left_root small_9165681_left_fuel small_9165681_left_count small_9165681_left_encoded = true := by
  decide +kernel
theorem small_9165681_left_covered : CoveredBy scale carrier boxes small_9165681_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165681_left_root small_9165681_left_fuel small_9165681_left_count small_9165681_left_encoded small_9165681_left_checked

theorem cover_9165681 : CoveredBy scale carrier boxes root_9165681 := by
  apply coveredBy_split_literal root_9165681 small_9165681_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9165687 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9165681_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9165687
#print axioms cover_9165681

def root_9165213 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165213_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165213_left_fuel : Nat := 22
def small_9165213_left_count : Nat := 215
def small_9165213_left_encoded : String := "115225070A0001081151E8FF08A912F912073D0208A91307120700FC05000100135D450100000000050000FA00000005000000060000000A0000000312073CFC0000000305000100135D450100000000050000FA0000000500000006135D8101050000FA135D80FB000000020500010800000005135D80FF0000000400000006000000060000000000000001120701020000000108A91307120700FC00000006000000030000000600000004115224FF0000000408A912F912073D0208A91307120700FC08A912FF12073D0805000100135D450100000000050000FA135D80FB000000020CFD9BF9000000070000000500000006135D8101050000FA135D80FB000000020CFD9BF9000000070F34D1020000000100000006135D44FB000000060000000200000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D0805000100135D450100000000050000FA135D80FB000000020CFD9BF90F350D020CFD9C070F34D0FC000000050000000300000005000000010F34D102000000010CFD9C070000000600000006135D44FB0CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF000000080F34D108000000040C9A87020F8750F900000008000000010F878CF90000000100000006000000010F34D102000000010000000600000002135D8101050000FA135D80FB000000020CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D0800000006000000040F34D1080000000400000007000000010F34D1020000000100000006135D44FB0CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0000000600000006000000010F34D1020000000100000006000000020000000000000004120701080000000405000100135D450100000000050000FA00000007135D44FB0CFD9BF9000000070F34D102000000010000000700000002135D8101050000FA00000007135D44FB0CFD9BF9000000070F34D1020000000100000006000000020000000000000001120701020000000108A91307120700FC000000060000000312073CFC0000000308A912FF00000006120701080000000405000100135D450100000000050000FA00000006000000060000000600000003"
theorem small_9165213_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165213_left_root small_9165213_left_fuel small_9165213_left_count small_9165213_left_encoded = true := by
  decide +kernel
theorem small_9165213_left_covered : CoveredBy scale carrier boxes small_9165213_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165213_left_root small_9165213_left_fuel small_9165213_left_count small_9165213_left_encoded small_9165213_left_checked

theorem cover_9165213 : CoveredBy scale carrier boxes root_9165213 := by
  apply coveredBy_split_literal root_9165213 small_9165213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9165681 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9165213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9165681
#print axioms cover_9165213

def root_9165208 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165208_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165208_right_fuel : Nat := 1
def small_9165208_right_count : Nat := 1
def small_9165208_right_encoded : String := "00000002"
theorem small_9165208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165208_right_root small_9165208_right_fuel small_9165208_right_count small_9165208_right_encoded = true := by
  decide +kernel
theorem small_9165208_right_covered : CoveredBy scale carrier boxes small_9165208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165208_right_root small_9165208_right_fuel small_9165208_right_count small_9165208_right_encoded small_9165208_right_checked

theorem cover_9165208 : CoveredBy scale carrier boxes root_9165208 := by
  apply coveredBy_split_literal root_9165208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9165213 small_9165208_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9165213
  · exact small_9165208_right_covered
#print axioms cover_9165208

def root_9163704 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9163704 : CoveredBy scale carrier boxes root_9163704 := by
  apply coveredBy_split_literal root_9163704 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3430.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9165208 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3430.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9165208
#print axioms cover_9163704

def root_9163698 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9163698_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9163698_left_fuel : Nat := 1
def small_9163698_left_count : Nat := 1
def small_9163698_left_encoded : String := "00000001"
theorem small_9163698_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9163698_left_root small_9163698_left_fuel small_9163698_left_count small_9163698_left_encoded = true := by
  decide +kernel
theorem small_9163698_left_covered : CoveredBy scale carrier boxes small_9163698_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9163698_left_root small_9163698_left_fuel small_9163698_left_count small_9163698_left_encoded small_9163698_left_checked

theorem cover_9163698 : CoveredBy scale carrier boxes root_9163698 := by
  apply coveredBy_split_literal root_9163698 small_9163698_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9163704 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9163698_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9163704
#print axioms cover_9163698

def root_9162948 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162948_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162948_left_fuel : Nat := 26
def small_9162948_left_count : Nat := 353
def small_9162948_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073CFA0000000208A91307120700FC0000000500000003000000050000000500000004115224FF0000000408A912FB12073CFA0000000208A91307120700FC08A912FF12073D080000000500000004000000050000000312073CFC0000000308A912FF12073D08000000050000000400000005120700FA0000000500000002000000031151E907000000030A00010800000005115224FF0000000408A912FB12073CFA0000000208A912FF12073D080500010000000005135D81010500010200000005135D80F900000001050000FC00000005135D4507000000030CFD9BFB0F350CFA000000020CFD9BFF0F350D0800000005000000040F34D108000000040C9A86FA000000050F8750FB00000007000000020F34D0FA000000050000000200000000000000041207010800000004050001000000000500000007120700FA00000005000000021151E8FB0A0000FC115225070A0001081151E8FF08A913070000000A0000000800000004115224FF0000000408A91307120700FC08A912FF12073D0805000100135D45010000000005000102000000050000000A135D810105000102135D44F9050000FA00000007135D44FB04548A070000000A000000080000000200000001135D80F900000001050000FA000000070000000A00000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D0805000100135D4501000000000500010200000005135D80F900000001050000FA0000000500000008135D810105000102135D44F9050000FA135D80FB00000002000000050000000800000001135D80F900000001050000FA135D80FB000000020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D08000000050000000400000005135D44FB0CFD9C070000000A00000008000000020000000000000004120701080000000405000100135D450100000000050001020000000500000007135D810105000102135D44F900000007000000010000000700000000000000031151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912FF12073D0805000100135D4501000000000500010200000008135D80F900000001050000FA135D80FB00000002050000FC00000005135D4507000000030000000800000008135D810105000102135D44F9050000FA135D80FB00000002050000FC00000005135D450700000003000000080000000800000001135D80F900000001050000FA135D80FB00000002050000FC135D81070CFD9BFF000000080F34D1080000000407800100000000050000000700000003135D4507000000030CFD9BFF000000080F34D1080000000407800100128A41010000000007800102128A40F90000000800000001128A7CF900000001078000FA128A7CFB000000020000000700000008128A7D0107800102128A40F90000000A00000001128A7CF900000001078000FA000000070000000A00000000135D44FB050000FC00000008135D45070000000300000008000000020000000000000004120701080000000405000100135D4501000000000500010200000009135D80F900000001050000FA135D80FB00000002050000FC0000000500000009135D44FB050000FC135D8107045489FF0000000800000007000000030000000900000002135D810105000102135D44F9050000FA135D80FB00000002050000FC0000000500000009135D44FB050000FC135D81070000000900000003000000090000000200000001135D80F900000001050000FA135D80FB00000002050000FC00000007135D45070000000300000007135D44FB050000FC135D8107045489FF0000000A00000007000000030000000A00000002000000000000000200000001"
theorem small_9162948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9162948_left_root small_9162948_left_fuel small_9162948_left_count small_9162948_left_encoded = true := by
  decide +kernel
theorem small_9162948_left_covered : CoveredBy scale carrier boxes small_9162948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9162948_left_root small_9162948_left_fuel small_9162948_left_count small_9162948_left_encoded small_9162948_left_checked

theorem cover_9162948 : CoveredBy scale carrier boxes root_9162948 := by
  apply coveredBy_split_literal root_9162948 small_9162948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9163698 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9162948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9163698
#print axioms cover_9162948

def root_9162942 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162942_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162942_left_fuel : Nat := 1
def small_9162942_left_count : Nat := 1
def small_9162942_left_encoded : String := "00000000"
theorem small_9162942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9162942_left_root small_9162942_left_fuel small_9162942_left_count small_9162942_left_encoded = true := by
  decide +kernel
theorem small_9162942_left_covered : CoveredBy scale carrier boxes small_9162942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9162942_left_root small_9162942_left_fuel small_9162942_left_count small_9162942_left_encoded small_9162942_left_checked

theorem cover_9162942 : CoveredBy scale carrier boxes root_9162942 := by
  apply coveredBy_split_literal root_9162942 small_9162942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9162948 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9162942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9162948
#print axioms cover_9162942

def root_9169146 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9169146 : CoveredBy scale carrier boxes root_9169146 := by
  apply coveredBy_split_literal root_9169146 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3432.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3433.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3432.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3433.covered
#print axioms cover_9169146

def root_9169141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169141_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169141_right_fuel : Nat := 1
def small_9169141_right_count : Nat := 1
def small_9169141_right_encoded : String := "00000001"
theorem small_9169141_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9169141_right_root small_9169141_right_fuel small_9169141_right_count small_9169141_right_encoded = true := by
  decide +kernel
theorem small_9169141_right_covered : CoveredBy scale carrier boxes small_9169141_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9169141_right_root small_9169141_right_fuel small_9169141_right_count small_9169141_right_encoded small_9169141_right_checked

theorem cover_9169141 : CoveredBy scale carrier boxes root_9169141 := by
  apply coveredBy_split_literal root_9169141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9169146 small_9169141_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9169146
  · exact small_9169141_right_covered
#print axioms cover_9169141

def root_9172960 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9172960 : CoveredBy scale carrier boxes root_9172960 := by
  apply coveredBy_split_literal root_9172960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3434.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3435.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3434.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3435.covered
#print axioms cover_9172960

def root_9172954 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9172954_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9172954_left_fuel : Nat := 1
def small_9172954_left_count : Nat := 1
def small_9172954_left_encoded : String := "00000001"
theorem small_9172954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9172954_left_root small_9172954_left_fuel small_9172954_left_count small_9172954_left_encoded = true := by
  decide +kernel
theorem small_9172954_left_covered : CoveredBy scale carrier boxes small_9172954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9172954_left_root small_9172954_left_fuel small_9172954_left_count small_9172954_left_encoded small_9172954_left_checked

theorem cover_9172954 : CoveredBy scale carrier boxes root_9172954 := by
  apply coveredBy_split_literal root_9172954 small_9172954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9172960 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9172954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9172960
#print axioms cover_9172954

def root_9169140 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9169140 : CoveredBy scale carrier boxes root_9169140 := by
  apply coveredBy_split_literal root_9169140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9169141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9172954 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9169141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9172954
#print axioms cover_9169140

def root_9169135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169135_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169135_right_fuel : Nat := 1
def small_9169135_right_count : Nat := 1
def small_9169135_right_encoded : String := "00000000"
theorem small_9169135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9169135_right_root small_9169135_right_fuel small_9169135_right_count small_9169135_right_encoded = true := by
  decide +kernel
theorem small_9169135_right_covered : CoveredBy scale carrier boxes small_9169135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9169135_right_root small_9169135_right_fuel small_9169135_right_count small_9169135_right_encoded small_9169135_right_checked

theorem cover_9169135 : CoveredBy scale carrier boxes root_9169135 := by
  apply coveredBy_split_literal root_9169135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9169140 small_9169135_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9169140
  · exact small_9169135_right_covered
#print axioms cover_9169135

def root_9162941 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9162941 : CoveredBy scale carrier boxes root_9162941 := by
  apply coveredBy_split_literal root_9162941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9162942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9169135 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9162942
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9169135
#print axioms cover_9162941

def root_9162940 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9162940 : CoveredBy scale carrier boxes root_9162940 := by
  apply coveredBy_split_literal root_9162940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9162941 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3436.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9162941
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3436.covered
#print axioms cover_9162940

def root_9160796 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9160796 : CoveredBy scale carrier boxes root_9160796 := by
  apply coveredBy_split_literal root_9160796 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3429.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9162940 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3429.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9162940
#print axioms cover_9160796

def root_9151630 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151630 : CoveredBy scale carrier boxes root_9151630 := by
  apply coveredBy_split_literal root_9151630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9151631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9160796 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9151631
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9160796
#print axioms cover_9151630

def root_9179631 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179631 : CoveredBy scale carrier boxes root_9179631 := by
  apply coveredBy_split_literal root_9179631 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3437.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3438.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3437.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3438.covered
#print axioms cover_9179631

def root_9179626 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179626_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179626_right_fuel : Nat := 1
def small_9179626_right_count : Nat := 1
def small_9179626_right_encoded : String := "00000001"
theorem small_9179626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9179626_right_root small_9179626_right_fuel small_9179626_right_count small_9179626_right_encoded = true := by
  decide +kernel
theorem small_9179626_right_covered : CoveredBy scale carrier boxes small_9179626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9179626_right_root small_9179626_right_fuel small_9179626_right_count small_9179626_right_encoded small_9179626_right_checked

theorem cover_9179626 : CoveredBy scale carrier boxes root_9179626 := by
  apply coveredBy_split_literal root_9179626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9179631 small_9179626_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9179631
  · exact small_9179626_right_covered
#print axioms cover_9179626

def root_9192433 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9192433 : CoveredBy scale carrier boxes root_9192433 := by
  apply coveredBy_split_literal root_9192433 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3442.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3443.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3442.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3443.covered
#print axioms cover_9192433

def root_9192427 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9192427_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9192427_left_fuel : Nat := 1
def small_9192427_left_count : Nat := 1
def small_9192427_left_encoded : String := "00000003"
theorem small_9192427_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9192427_left_root small_9192427_left_fuel small_9192427_left_count small_9192427_left_encoded = true := by
  decide +kernel
theorem small_9192427_left_covered : CoveredBy scale carrier boxes small_9192427_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9192427_left_root small_9192427_left_fuel small_9192427_left_count small_9192427_left_encoded small_9192427_left_checked

theorem cover_9192427 : CoveredBy scale carrier boxes root_9192427 := by
  apply coveredBy_split_literal root_9192427 small_9192427_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9192433 coord3 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9192427_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9192433
#print axioms cover_9192427

def root_9191479 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191479_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191479_left_fuel : Nat := 24
def small_9191479_left_count : Nat := 443
def small_9191479_left_encoded : String := "13E201060DE7CA020E5FD8F90B4D43FA10804CFB000000020B4D43FE10804CFF000000040640010012FF710100000000033F67BD0000000713BBF506000000030D4128820EFA10F90BF3E57A000000051008ECFB0BF3E57E000000051008ECFF000000060000000400000002000000010000000712FFAD01033F67BD13BC31060D4128820EFA10F90BF3E57A000000061008ECFB0BF3E57E000000070000000600000002000000010EFA4CF900000001000000070000000313BBF506000000030D4128820EFA10F90BF3E57A100928FB000000020BF3E57E100928FF0000000400000005000000061008ECFB0BF3E57E100928FF0000000406E0010012C7E501000000000000000712C8210102B4D69D0000000700000009000000001008ECFF000000060000000400000002000000010EFA4CF9000000010BF3E57A100928FB000000020BF3E57E100928FF0000000400000007000000081008ECFB0BF3E57E100928FF00000004000000071008ECFF06E001000000000800000008000000040000000200000000108010FF0640010012FF710100000000033F67BD0000000613BBF506000000030D412882000000060EFA4CF9000000010000000812FFAD01033F67BD0000000613BBF506000000030D412882000000060EFA4CF900000001000000080000000000000004108010FB0B4D43FE10804CFF000000040640010012FF710100000000033F67BD0000000713BBF506000000030D4128820EFA10F90AA6A27A10EDACFB000000020BF3E57E000000071008ECFF05A00100000000071331710100000007000000000000000410ED70FB0000000700000002000000010000000712FFAD01033F67BD13BC31060D4128820EFA10F90AA6A27A10EDACFB000000020BF3E57E000000071008ECFF000000060000000410ED70FB000000070000000200000001000000070000000313BBF506000000030D4128820EFA10F90AA6A27A10EDACFB000000020BF3E57E100928FF0000000406E00100000000070000000A1008ECFF06E0010012C7E5010000000002B4D69D000000060000000A0000000A0000000410ED70FB0000000A00000002000000010EFA4CF9000000010AA6A27A10EDACFB000000020BF3E57E100928FF00000004000000071008ECFF06E0010012C7E501000000000000000712C8210102B4D69D0000000713D0D106000000030D9479420000000A0EAEE8F90000000100000008000000000000000410ED70FB0BF3E57E000000071008ECFF06E00100000000070000000A000000040000000200000000108010FF0640010012FF710100000000033F67BD13BC31060D412882000000060EFA4CF9000000010AA6A27A00000006000000070000000313BBF506000000030D4128820EFA10F90AA6A27A0000000610ED70FB0000000600000002000000010EFA4CF9000000010AA6A27A10EDACFB000000020AA6A27E10EDACFF0000000405A00100000000071331710102B4D69D0000000613D0D106000000030D9479420000000600000007000000000000000610ED70FB0AA6A27E10EDACFF000000040000000710ED70FF00000006000000040000000212FFAD01033F67BD13BC31060D4128820EFA10F900000006000000010EFA4CF9000000010AA6A27A0000000810ED70FB00000005000000020000000313BBF506000000030D4128820EFA10F90AA6A27A0000000610ED70FB0000000A00000002000000010EFA4CF9000000010AA6A27A10EDACFB000000020AA6A27E10EDACFF0000000406E001000000000812C8210100000008000000000000000610ED70FB0AA6A27E10EDACFF0000000406E0010012C7E5010000000002B4D69D000000070000000A0000000A10ED70FF000000050000000400000002000000000000000400000002000000010E6014F9000000010B4D43FA10804CFB000000020B4D43FE10804CFF00000004064001000000000712FFAD01033F67BD0000000713BBF506000000030DAED8790E9661020BF3E57A000000081008ECFB0000000700000002000000010000000800000000108010FF06400100000000080000000800000004108010FB0B4D43FE10804CFF00000004064001000000000712FFAD01033F67BD0000000713BBF506000000030DAED8790E9661020AA6A27A0000000700000007000000010000000700000000108010FF0640010012FF710100000000033F67BD0000000713BBF506000000030DAED8790E9661020AA6A27A10EDACFB000000020000000810ED70FB0000000700000002000000010E962502000000010000000712FFAD01033F67BD0000000813BBF506000000030DAED8790E9661020AA6A27A10EDACFB000000020000000810ED70FB0AA6A27E10EDACFF0000000406E0010000000007000000050000000500000002000000010E962502000000010000000800000000000000040000000200000003"
theorem small_9191479_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9191479_left_root small_9191479_left_fuel small_9191479_left_count small_9191479_left_encoded = true := by
  decide +kernel
theorem small_9191479_left_covered : CoveredBy scale carrier boxes small_9191479_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9191479_left_root small_9191479_left_fuel small_9191479_left_count small_9191479_left_encoded small_9191479_left_checked

theorem cover_9191479 : CoveredBy scale carrier boxes root_9191479 := by
  apply coveredBy_split_literal root_9191479 small_9191479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9192427 coord3 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_9191479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9192427
#print axioms cover_9191479

def root_9191473 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191473_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191473_left_fuel : Nat := 1
def small_9191473_left_count : Nat := 1
def small_9191473_left_encoded : String := "00000000"
theorem small_9191473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9191473_left_root small_9191473_left_fuel small_9191473_left_count small_9191473_left_encoded = true := by
  decide +kernel
theorem small_9191473_left_covered : CoveredBy scale carrier boxes small_9191473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9191473_left_root small_9191473_left_fuel small_9191473_left_count small_9191473_left_encoded small_9191473_left_checked

theorem cover_9191473 : CoveredBy scale carrier boxes root_9191473 := by
  apply coveredBy_split_literal root_9191473 small_9191473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9191479 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9191473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9191479
#print axioms cover_9191473

def root_9191472 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9191472 : CoveredBy scale carrier boxes root_9191472 := by
  apply coveredBy_split_literal root_9191472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9191473 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3444.root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9191473
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3444.covered
#print axioms cover_9191472

def root_9191467 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191467_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191467_right_fuel : Nat := 1
def small_9191467_right_count : Nat := 1
def small_9191467_right_encoded : String := "00000004"
theorem small_9191467_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9191467_right_root small_9191467_right_fuel small_9191467_right_count small_9191467_right_encoded = true := by
  decide +kernel
theorem small_9191467_right_covered : CoveredBy scale carrier boxes small_9191467_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9191467_right_root small_9191467_right_fuel small_9191467_right_count small_9191467_right_encoded small_9191467_right_checked

theorem cover_9191467 : CoveredBy scale carrier boxes root_9191467 := by
  apply coveredBy_split_literal root_9191467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9191472 small_9191467_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9191472
  · exact small_9191467_right_covered
#print axioms cover_9191467

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219

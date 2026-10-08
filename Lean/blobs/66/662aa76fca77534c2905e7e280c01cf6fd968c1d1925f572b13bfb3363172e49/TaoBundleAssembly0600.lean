import TaoBundleAssembly0599
import TaoBundleChunkBatch0819
import TaoBundleChunkBatch0820
import TaoBundleChunkBatch0821
import TaoBundleChunkBatch0822
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600
def root_8759933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759933_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759933_left_fuel : Nat := 22
def small_8759933_left_count : Nat := 319
def small_8759933_left_encoded : String := "115224FD000000030A0001081151E9090000000408A91301120701000000000008A912FD12073CFC00000003050000F8135D81030000000A00000001135D45030000000105000104135D44FB05000108000000050000000A00000002135D80FB0000000205000108135D4509000000040000000A0000000A120700FC0000000A0000000312073D0008A912FD12073CFC00000003050000F8135D81030500010400000005135D80FB000000020500010800000005135D81090CFD9C010F34D100000000000000000A0F350D000CFD9BFD0000000500000006000000000000000400000001135D45030000000105000104135D44FB0000000700000002135D80FB0000000205000108135D45090000000400000007135D81090CFD9C010F34D100000000000CFD9BFD00000007000000060000000700000004120700FC050000F8135D810305000104135D44FB0000000500000002135D80FB0000000205000108135D4509000000040000000A0000000600000001135D45030000000105000104135D44FB05000108000000050000000600000002135D80FB0000000205000108135D4509000000040CFD9C010F34D100000000000000000A000000060000000600000003000000001152250908A91301120701000000000008A912FD12073CFC0000000308A913091207010800000004050000F8000000080000000812073D08050000F8135D810305000104135D44FB0000000A000000020000000A00000001135D45030000000105000104135D44FB04548A010000000A1386AD000CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080000000A0000000A0000000000000002135D80FB0000000204548A010000000A1386AD000CFD9BFD0F350CFC000000030CFD9C09000000080000000A0F34D0FC00000008000000030000000000000004120700FC08A91309000000080000000A0000000312073D0008A912FD12073CFC0000000308A9130912070108000000040000000812073D08050000F8135D810305000104135D44FB0CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000050000000A0F34D0FC00000005000000030F350D000CFD9BFD000000050F34D0FC00000005000000030000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000080000000A0F34D0FC00000008000000030F350D000CFD9BFD000000080F34D0FC00000008000000030000000000000001135D45030000000105000104135D44FB0CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000080F350D080C9A86FC0F878CFD00000003000000080F8750FD0000000700000003000000040F34D0FC00000008000000030F350D000CFD9BFD0F350CFC000000030CFD9C0900000008000000070F34D0FC00000008000000030000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000080F350D0800000008000000040F34D0FC00000008000000030F350D00000000080000000000000004120700FC08A9130912070108000000040000000812073D08050000F8135D810305000104135D44FB0CFD9C01000000050F350D000000000A0000000000000002135D80FB000000020CFD9C010000000A0F350D00045489FD00000008000000060000000000000001135D4503000000010000000800000004000000030000000000000004"
theorem small_8759933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8759933_left_root small_8759933_left_fuel small_8759933_left_count small_8759933_left_encoded = true := by
  decide +kernel
theorem small_8759933_left_covered : CoveredBy scale carrier boxes small_8759933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8759933_left_root small_8759933_left_fuel small_8759933_left_count small_8759933_left_encoded small_8759933_left_checked

theorem cover_8759933 : CoveredBy scale carrier boxes root_8759933 := by
  apply coveredBy_split_literal root_8759933 small_8759933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8760625 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8759933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8760625
#print axioms cover_8759933

def root_8759928 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759928_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759928_right_fuel : Nat := 1
def small_8759928_right_count : Nat := 1
def small_8759928_right_encoded : String := "00000002"
theorem small_8759928_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8759928_right_root small_8759928_right_fuel small_8759928_right_count small_8759928_right_encoded = true := by
  decide +kernel
theorem small_8759928_right_covered : CoveredBy scale carrier boxes small_8759928_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8759928_right_root small_8759928_right_fuel small_8759928_right_count small_8759928_right_encoded small_8759928_right_checked

theorem cover_8759928 : CoveredBy scale carrier boxes root_8759928 := by
  apply coveredBy_split_literal root_8759928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8759933 small_8759928_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8759933
  · exact small_8759928_right_covered
#print axioms cover_8759928

def root_8759927 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8759927 : CoveredBy scale carrier boxes root_8759927 := by
  apply coveredBy_split_literal root_8759927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8759928 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3280.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8759928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3280.covered
#print axioms cover_8759927

def root_8759921 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759921_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759921_left_fuel : Nat := 1
def small_8759921_left_count : Nat := 1
def small_8759921_left_encoded : String := "00000001"
theorem small_8759921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8759921_left_root small_8759921_left_fuel small_8759921_left_count small_8759921_left_encoded = true := by
  decide +kernel
theorem small_8759921_left_covered : CoveredBy scale carrier boxes small_8759921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8759921_left_root small_8759921_left_fuel small_8759921_left_count small_8759921_left_encoded small_8759921_left_checked

theorem cover_8759921 : CoveredBy scale carrier boxes root_8759921 := by
  apply coveredBy_split_literal root_8759921 small_8759921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8759927 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8759921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8759927
#print axioms cover_8759921

def root_8755441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8755441 : CoveredBy scale carrier boxes root_8755441 := by
  apply coveredBy_split_literal root_8755441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8755442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8759921 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8755442
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8759921
#print axioms cover_8755441

def root_8755436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755436_right_fuel : Nat := 1
def small_8755436_right_count : Nat := 1
def small_8755436_right_encoded : String := "00000000"
theorem small_8755436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8755436_right_root small_8755436_right_fuel small_8755436_right_count small_8755436_right_encoded = true := by
  decide +kernel
theorem small_8755436_right_covered : CoveredBy scale carrier boxes small_8755436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8755436_right_root small_8755436_right_fuel small_8755436_right_count small_8755436_right_encoded small_8755436_right_checked

theorem cover_8755436 : CoveredBy scale carrier boxes root_8755436 := by
  apply coveredBy_split_literal root_8755436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8755441 small_8755436_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8755441
  · exact small_8755436_right_covered
#print axioms cover_8755436

def root_8752716 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8752716 : CoveredBy scale carrier boxes root_8752716 := by
  apply coveredBy_split_literal root_8752716 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3276.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8755436 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3276.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8755436
#print axioms cover_8752716

def root_8748502 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8748502 : CoveredBy scale carrier boxes root_8748502 := by
  apply coveredBy_split_literal root_8748502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8748503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8752716 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8748503
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8752716
#print axioms cover_8748502

def root_8711296 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711296 : CoveredBy scale carrier boxes root_8711296 := by
  apply coveredBy_split_literal root_8711296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8711297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8748502 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8711297
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8748502
#print axioms cover_8711296

def root_8769737 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769737_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769737_left_fuel : Nat := 19
def small_8769737_left_count : Nat := 129
def small_8769737_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91307120700FC08A91309120700FE05000100135D450100000000050000F8135D81030500010400000009000000050000000100000005000000050000000412073CFE0000000405000100135D450100000000050000F8135D81030500010400000007135D80FB0000000204548A0700000007000000060000000100000007135D8101050000F8135D81030500010400000009135D80FB0000000204548A07000000051386ACFC00000003000000090000000100000007000000000000000312073CFC0000000308A91309120700FE05000100135D45010000000000000008000000080000000412073CFE0000000405000100135D450100000000050000F800000009135D450300000001050001040000000600000009135D8101050000F8135D810305000104000000090000000800000001135D45030000000105000104135D44FB0CFD9C070F34D0FC0CFD9C090000000500000006000000030000000600000002135D80FB000000020CFD9C070F34D0FC0CFD9C090000000800000008000000030000000800000000000000041151E9090000000408A91307120700FC0500010000000006135D8101050000F80000000600000006000000000000000300000006000000031151E907000000030A0000FE1152250908A913090000000800000006000000040000000600000002"
theorem small_8769737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8769737_left_root small_8769737_left_fuel small_8769737_left_count small_8769737_left_encoded = true := by
  decide +kernel
theorem small_8769737_left_covered : CoveredBy scale carrier boxes small_8769737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8769737_left_root small_8769737_left_fuel small_8769737_left_count small_8769737_left_encoded small_8769737_left_checked

theorem cover_8769737 : CoveredBy scale carrier boxes root_8769737 := by
  apply coveredBy_split_literal root_8769737 small_8769737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3283.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8769737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3283.covered
#print axioms cover_8769737

def root_8769731 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769731_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769731_left_fuel : Nat := 1
def small_8769731_left_count : Nat := 1
def small_8769731_left_encoded : String := "00000001"
theorem small_8769731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8769731_left_root small_8769731_left_fuel small_8769731_left_count small_8769731_left_encoded = true := by
  decide +kernel
theorem small_8769731_left_covered : CoveredBy scale carrier boxes small_8769731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8769731_left_root small_8769731_left_fuel small_8769731_left_count small_8769731_left_encoded small_8769731_left_checked

theorem cover_8769731 : CoveredBy scale carrier boxes root_8769731 := by
  apply coveredBy_split_literal root_8769731 small_8769731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8769737 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8769731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8769737
#print axioms cover_8769731

def root_8768545 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8768545 : CoveredBy scale carrier boxes root_8768545 := by
  apply coveredBy_split_literal root_8768545 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3282.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8769731 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3282.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8769731
#print axioms cover_8768545

def root_8768539 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8768539_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8768539_left_fuel : Nat := 1
def small_8768539_left_count : Nat := 1
def small_8768539_left_encoded : String := "00000000"
theorem small_8768539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8768539_left_root small_8768539_left_fuel small_8768539_left_count small_8768539_left_encoded = true := by
  decide +kernel
theorem small_8768539_left_covered : CoveredBy scale carrier boxes small_8768539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8768539_left_root small_8768539_left_fuel small_8768539_left_count small_8768539_left_encoded small_8768539_left_checked

theorem cover_8768539 : CoveredBy scale carrier boxes root_8768539 := by
  apply coveredBy_split_literal root_8768539 small_8768539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8768545 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8768539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8768545
#print axioms cover_8768539

def root_8774157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774157_left_fuel : Nat := 22
def small_8774157_left_count : Nat := 311
def small_8774157_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A913070000000512073CFC0000000308A913090000000512073CFE00000004050000F8135D810305000104135D44FB0000000500000002135D80FB0000000204548A01000000050000000800000001135D45030000000105000104135D44FB04548A01000000051386AD000CFD9C0700000005000000080000000000000002135D80FB0000000204548A0113867100000000000CFD9C07000000050F350CFC00000003000000081386AD000CFD9C070F34D0FC0000000500000003000000080000000012073D0008A91307120700FC08A913090000000512073CFE00000004050000F8135D81030000000500000001135D4503000000010500010400000005135D80FB000000020CFD9C01000000050F350D0004548A07000000051386ACFC000000030CFD9C09000000050F350CFE0000000400000009000000000000000312073CFC0000000308A91309120700FE050000F800000008135D4503000000010500010400000005135D80FB000000020CFD9C0100000005000000080000000412073CFE00000004050000F8135D810305000104135D44FB0CFD9C010F34D10000000000000000080000000800000002135D80FB000000020CFD9C010F34D10000000000000000080000000800000001135D45030000000105000104135D44FB0CFD9C010F34D100000000000CFD9C070F34D0FC0000000500000003000000080F350D000CFD9C070F34D0FC0CFD9C09000000050000000800000003000000080000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9C070F34D0FC0CFD9C09000000050000000800000003000000080F350D000CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040000000900000003000000080000000000000000000000041151E9090000000408A91301120701000000000008A91307120700FC050000F800000005135D4503000000010500010400000005000000090000000312073CFC00000003050000F8135D81030000000900000001135D45030000000105000104135D44FB050000FE135D810904548A010000000900000009000000040000000900000002135D80FB00000002050000FE000000090000000912073D0008A91307120700FC050000F8135D810305000104135D44FB0000000900000002135D80FB00000002050000FE00000009135D4509000000040CFD9C01000000090000000600000001135D45030000000105000104135D44FB050000FE00000009135D4509000000040000000600000002135D80FB00000002050000FE135D81090CFD9C01000000090F350D00000000090000000000000004135D4509000000040CFD9C0100000009000000060000000312073CFC00000003050000F8135D810305000104000000090000000900000001135D45030000000105000104135D44FB050000FE135D81090CFD9C010000000900000006000000040000000600000002135D80FB00000002050000FE135D81090CFD9C01000000090000000900000004135D4509000000040000000600000000000000031151E907000000030A0000FE1152250908A9130112070100000000000000000812073D0008A91309000000080000000800000000000000041151E9090000000408A913011207010000000000000000080000000600000002"
theorem small_8774157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8774157_left_root small_8774157_left_fuel small_8774157_left_count small_8774157_left_encoded = true := by
  decide +kernel
theorem small_8774157_left_covered : CoveredBy scale carrier boxes small_8774157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8774157_left_root small_8774157_left_fuel small_8774157_left_count small_8774157_left_encoded small_8774157_left_checked

theorem cover_8774157 : CoveredBy scale carrier boxes root_8774157 := by
  apply coveredBy_split_literal root_8774157 small_8774157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3285.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8774157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3285.covered
#print axioms cover_8774157

def root_8774151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774151_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774151_left_fuel : Nat := 1
def small_8774151_left_count : Nat := 1
def small_8774151_left_encoded : String := "00000001"
theorem small_8774151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8774151_left_root small_8774151_left_fuel small_8774151_left_count small_8774151_left_encoded = true := by
  decide +kernel
theorem small_8774151_left_covered : CoveredBy scale carrier boxes small_8774151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8774151_left_root small_8774151_left_fuel small_8774151_left_count small_8774151_left_encoded small_8774151_left_checked

theorem cover_8774151 : CoveredBy scale carrier boxes root_8774151 := by
  apply coveredBy_split_literal root_8774151 small_8774151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8774157 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8774151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8774157
#print axioms cover_8774151

def root_8772939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8772939 : CoveredBy scale carrier boxes root_8772939 := by
  apply coveredBy_split_literal root_8772939 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3284.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8774151 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3284.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8774151
#print axioms cover_8772939

def root_8772934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8772934_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8772934_right_fuel : Nat := 1
def small_8772934_right_count : Nat := 1
def small_8772934_right_encoded : String := "00000000"
theorem small_8772934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8772934_right_root small_8772934_right_fuel small_8772934_right_count small_8772934_right_encoded = true := by
  decide +kernel
theorem small_8772934_right_covered : CoveredBy scale carrier boxes small_8772934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8772934_right_root small_8772934_right_fuel small_8772934_right_count small_8772934_right_encoded small_8772934_right_checked

theorem cover_8772934 : CoveredBy scale carrier boxes root_8772934 := by
  apply coveredBy_split_literal root_8772934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8772939 small_8772934_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8772939
  · exact small_8772934_right_covered
#print axioms cover_8772934

def root_8768538 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8768538 : CoveredBy scale carrier boxes root_8768538 := by
  apply coveredBy_split_literal root_8768538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8768539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8772934 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8768539
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8772934
#print axioms cover_8768538

def root_8767154 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8767154 : CoveredBy scale carrier boxes root_8767154 := by
  apply coveredBy_split_literal root_8767154 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3281.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8768538 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3281.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8768538
#print axioms cover_8767154

def root_8778643 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8778643 : CoveredBy scale carrier boxes root_8778643 := by
  apply coveredBy_split_literal root_8778643 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3286.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3287.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3286.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3287.covered
#print axioms cover_8778643

def root_8778637 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778637_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778637_left_fuel : Nat := 1
def small_8778637_left_count : Nat := 1
def small_8778637_left_encoded : String := "00000002"
theorem small_8778637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778637_left_root small_8778637_left_fuel small_8778637_left_count small_8778637_left_encoded = true := by
  decide +kernel
theorem small_8778637_left_covered : CoveredBy scale carrier boxes small_8778637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778637_left_root small_8778637_left_fuel small_8778637_left_count small_8778637_left_encoded small_8778637_left_checked

theorem cover_8778637 : CoveredBy scale carrier boxes root_8778637 := by
  apply coveredBy_split_literal root_8778637 small_8778637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8778643 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8778637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8778643
#print axioms cover_8778637

def root_8778251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778251_left_fuel : Nat := 18
def small_8778251_left_count : Nat := 181
def small_8778251_left_encoded : String := "1151E8FB0A0000FC115225070A0001081151E8FF08A91301120701000000000008A91303120700F808A913070000000700000005000000010000000712073D0008A91303120700F80000000500000001000000050000000000000004115224FF0000000408A91301120701000000000008A91303120700F808A91307120700FC08A912FF12073D0805000104000000050000000700000004000000050000000312073CFC0000000308A912FF12073D080500010400000005135D80FB000000020000000500000004000000050000000112073CF80000000108A91307120700FC08A912FF00000007000000050000000312073CFC0000000308A912FF12073D080500010400000005000000070000000412070108000000040000000A12073D0008A91303120700F808A91307120700FC0000000500000003000000050000000112073CF80000000108A91307120700FC000000050000000312073CFC0000000308A912FF12073D080500010400000005000000070000000412070108000000040000000A00000000000000031151E907000000030A0001081151E8FF08A91301120701000000000008A91303120700F80000000500000001000000070000000700000004115224FF0000000408A91301120701000000000008A91303120700F808A912FF12073D08050001040000000A135D80FB00000002050000FC0000000A135D45070000000304548A010000000A1386AD000000000A000000000000000412070108000000040000000A000000010000000A12073D0008A91303120700F808A912FF12073D080500010400000005135D80FB00000002050000FC00000005135D4507000000030CFD9C010000000700000007000000041207010800000004050001040000000A135D80FB00000002050000FC0000000A135D4507000000030000000A0000000112073CF80000000108A912FF12073D08000000070000000412070108000000040000000A0000000000000002"
theorem small_8778251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778251_left_root small_8778251_left_fuel small_8778251_left_count small_8778251_left_encoded = true := by
  decide +kernel
theorem small_8778251_left_covered : CoveredBy scale carrier boxes small_8778251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778251_left_root small_8778251_left_fuel small_8778251_left_count small_8778251_left_encoded small_8778251_left_checked

theorem cover_8778251 : CoveredBy scale carrier boxes root_8778251 := by
  apply coveredBy_split_literal root_8778251 small_8778251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8778637 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8778251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8778637
#print axioms cover_8778251

def root_8778246 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778246_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778246_right_fuel : Nat := 1
def small_8778246_right_count : Nat := 1
def small_8778246_right_encoded : String := "00000001"
theorem small_8778246_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778246_right_root small_8778246_right_fuel small_8778246_right_count small_8778246_right_encoded = true := by
  decide +kernel
theorem small_8778246_right_covered : CoveredBy scale carrier boxes small_8778246_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778246_right_root small_8778246_right_fuel small_8778246_right_count small_8778246_right_encoded small_8778246_right_checked

theorem cover_8778246 : CoveredBy scale carrier boxes root_8778246 := by
  apply coveredBy_split_literal root_8778246 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8778251 small_8778246_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8778251
  · exact small_8778246_right_covered
#print axioms cover_8778246

def root_8778245 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778245_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778245_right_fuel : Nat := 24
def small_8778245_right_count : Nat := 319
def small_8778245_right_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF08A913010000000712073D0008A91307120700FC0000000500000003000000070000000000000004115224FF0000000408A91301120701000000000008A91307120700FC08A912FF00000007120701080000000400000008000000030000000A12073D0008A91307120700FC08A912FF12073D08050000F80000000500000009000000041207010800000004050000F80000000A135D4503000000010000000A0000000312073CFC0000000308A912FF12073D08050000F800000007135D450300000001000000070000000412070108000000040000000A00000000000000031151E907000000030A00010800000007115224FF000000040000000700000002115224FB000000020A0000FC115225070A0001081151E8FF08A91301120701000000000008A912FB00000007120701040000000208A91307000000070000000712073D0008A912FB12073D040000000700000002000000070000000000000004115224FF0000000408A91301120701000000000008A912FB12073D0408A913070000000712073CFC0000000308A912FF000000070000000700000002120701040000000208A913070000000712073CFC0000000308A912FF12073D08050000F8135D810304548A011386710000000000045489FB00000007138671040000000200000007000000070000000100000007000000040000000712073D0008A912FB12073D0408A91307120700FC08A912FF000000071207010800000004050000F800000007135D4503000000010CFD9C0100000007000000090000000312073CFC0000000308A912FF0000000712070108000000040000000700000002120701040000000208A913070000000712073CFC0000000308A912FF000000070000000700000000000000031151E907000000030A0001081151E8FF08A91301120701000000000008A912FB12073D04050000F8135D8103050000FC00000007135D4507000000030500010800000007000000070000000100000007000000021207010400000002050000F8135D8103050000FC135D810705000108135D44FF04548A011386710000000000000000070000000700000004135D80FF0000000404548A011386710000000000000000070000000700000003135D45070000000305000108135D44FF04548A011386710000000000000000080000000800000004135D80FF0000000404548A011386710000000000045489FB1386AD04078000F8128A7D0300000007000000010000000500000002000000051386AD00000000070000000000000001135D450300000001050000FC00000007135D45070000000305000108135D44FF04548A011386710000000000045489FB000000070000000500000007000000040000000512073D0008A912FB000000071207010400000002050000F8135D8103050000FC00000007135D4507000000030000000800000001000000070000000000000004115224FF0000000408A91301120701000000000008A912FB12073D0408A912FF12073D0800000007000000040000000700000002120701040000000208A912FF12073D08050000F8135D8103050000FC135D810704548A011386710000000000045489FB00000007000000050000000700000003000000050000000100000005000000040000000512073D0008A912FB00000007120701040000000208A912FF12073D0800000007000000040000000700000000"
theorem small_8778245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778245_right_root small_8778245_right_fuel small_8778245_right_count small_8778245_right_encoded = true := by
  decide +kernel
theorem small_8778245_right_covered : CoveredBy scale carrier boxes small_8778245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778245_right_root small_8778245_right_fuel small_8778245_right_count small_8778245_right_encoded small_8778245_right_checked

theorem cover_8778245 : CoveredBy scale carrier boxes root_8778245 := by
  apply coveredBy_split_literal root_8778245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8778246 small_8778245_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8778246
  · exact small_8778245_right_covered
#print axioms cover_8778245

def root_8778240 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778240_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778240_right_fuel : Nat := 1
def small_8778240_right_count : Nat := 1
def small_8778240_right_encoded : String := "00000000"
theorem small_8778240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778240_right_root small_8778240_right_fuel small_8778240_right_count small_8778240_right_encoded = true := by
  decide +kernel
theorem small_8778240_right_covered : CoveredBy scale carrier boxes small_8778240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778240_right_root small_8778240_right_fuel small_8778240_right_count small_8778240_right_encoded small_8778240_right_checked

theorem cover_8778240 : CoveredBy scale carrier boxes root_8778240 := by
  apply coveredBy_split_literal root_8778240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.root_8778245 small_8778240_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600.cover_8778245
  · exact small_8778240_right_covered
#print axioms cover_8778240

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0600

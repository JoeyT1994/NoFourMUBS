import TaoBundleAssembly0323
import TaoBundleAssembly0325
import TaoBundleChunkBatch0422
import TaoBundleChunkBatch0428
import TaoBundleChunkBatch0429
import TaoBundleChunkBatch0430
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326
def root_4560345 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560345_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560345_left_fuel : Nat := 1
def small_4560345_left_count : Nat := 1
def small_4560345_left_encoded : String := "00000002"
theorem small_4560345_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560345_left_root small_4560345_left_fuel small_4560345_left_count small_4560345_left_encoded = true := by
  decide +kernel
theorem small_4560345_left_covered : CoveredBy scale carrier boxes small_4560345_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560345_left_root small_4560345_left_fuel small_4560345_left_count small_4560345_left_encoded small_4560345_left_checked

theorem cover_4560345 : CoveredBy scale carrier boxes root_4560345 := by
  apply coveredBy_split_literal root_4560345 small_4560345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4560351 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4560345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4560351
#print axioms cover_4560345

def root_4560187 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560187_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560187_left_fuel : Nat := 14
def small_4560187_left_count : Nat := 77
def small_4560187_left_encoded : String := "120700FA08A912FD12073CFC0000000308A913091207010800000004050000F6135D810105000102135D45030000000104548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0000000500000003135D810304548A05000000051386ACFA000000020CFD9BFD00000005000000070000000100000000135D45010000000005000102135D45030000000104548A05000000051386ACFA000000020CFD9BFD0000000500000008135D810304548A0500000005000000070000000112073D08050000F6000000070000000700000004120700FC08A913091207010800000004050000F6135D81010500010200000008135D810304548A0500000007000000070000000100000000135D4501000000000000000812073D08050000F60000000700000007000000040000000300000002"
theorem small_4560187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560187_left_root small_4560187_left_fuel small_4560187_left_count small_4560187_left_encoded = true := by
  decide +kernel
theorem small_4560187_left_covered : CoveredBy scale carrier boxes small_4560187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560187_left_root small_4560187_left_fuel small_4560187_left_count small_4560187_left_encoded small_4560187_left_checked

theorem cover_4560187 : CoveredBy scale carrier boxes root_4560187 := by
  apply coveredBy_split_literal root_4560187 small_4560187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560345 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4560187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560345
#print axioms cover_4560187

def root_4560182 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560182_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560182_right_fuel : Nat := 1
def small_4560182_right_count : Nat := 1
def small_4560182_right_encoded : String := "00000004"
theorem small_4560182_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560182_right_root small_4560182_right_fuel small_4560182_right_count small_4560182_right_encoded = true := by
  decide +kernel
theorem small_4560182_right_covered : CoveredBy scale carrier boxes small_4560182_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560182_right_root small_4560182_right_fuel small_4560182_right_count small_4560182_right_encoded small_4560182_right_checked

theorem cover_4560182 : CoveredBy scale carrier boxes root_4560182 := by
  apply coveredBy_split_literal root_4560182 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560187 small_4560182_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560187
  · exact small_4560182_right_covered
#print axioms cover_4560182

def root_4560150 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560150_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560150_left_fuel : Nat := 7
def small_4560150_left_count : Nat := 15
def small_4560150_left_encoded : String := "1151E9090000000408A91305120700FA000000070000000212073CFA0000000208A912FD12073CFC00000003050000F6000000070000000A00000005"
theorem small_4560150_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560150_left_root small_4560150_left_fuel small_4560150_left_count small_4560150_left_encoded = true := by
  decide +kernel
theorem small_4560150_left_covered : CoveredBy scale carrier boxes small_4560150_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560150_left_root small_4560150_left_fuel small_4560150_left_count small_4560150_left_encoded small_4560150_left_checked

theorem cover_4560150 : CoveredBy scale carrier boxes root_4560150 := by
  apply coveredBy_split_literal root_4560150 small_4560150_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560182 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4560150_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560182
#print axioms cover_4560150

def root_4560144 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560144_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560144_left_fuel : Nat := 1
def small_4560144_left_count : Nat := 1
def small_4560144_left_encoded : String := "00000003"
theorem small_4560144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560144_left_root small_4560144_left_fuel small_4560144_left_count small_4560144_left_encoded = true := by
  decide +kernel
theorem small_4560144_left_covered : CoveredBy scale carrier boxes small_4560144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560144_left_root small_4560144_left_fuel small_4560144_left_count small_4560144_left_encoded small_4560144_left_checked

theorem cover_4560144 : CoveredBy scale carrier boxes root_4560144 := by
  apply coveredBy_split_literal root_4560144 small_4560144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560150 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4560144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560150
#print axioms cover_4560144

def root_4560143 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560143_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560143_right_fuel : Nat := 27
def small_4560143_right_count : Nat := 299
def small_4560143_right_encoded : String := "1151E8FD0A0001081151E90900000004000000071152250908A91305120700FA08A913091207010800000004050000F600000005135D4501000000000500010200000005135D8103050000FC00000005135D44FD000000070000000300000001000000070000000212073CFA0000000208A913091207010800000004050000F6135D810105000102135D450300000001050000FC135D80FD000000030CFD9C050F34D0FA00000005000000020F350CFA0000000204548A0913867108000000040C9A86FA000000060F87510500000002000000061386AD080C9A86FA0F878D05078000F6128A7D010000000A000000000000000A000000020000000900000004135D44FD0CFD9C050F34D0FA00000005000000020F350CFA0000000204548A091386710800000004000000061386AD080C9A86FA0F878D05078000F6000000090000000600000002000000090000000400000003135D8103050000FC135D80FD000000030CFD9C050F34D0FA04548A090000000500000007000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D05078000F600000005128A4101000000000780010200000005128A7D030000000500000001000000020F87510500000002078000F6128A7D01078001020000000A128A7D03078000FC000000050000000A00000001000000000000000A1386AD080C9A86FA0F878D05078000F6000000070000000A000000020000000A00000004135D44FD0CFD9C050F34D0FA04548A090000000500000007000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D05078000F6128A7D010000000500000000128A41010000000000000006000000020F87510500000002078000F6128A7D010780010200000009128A7D03028000FC0000000A13D7B0FD022A45890000000600000009000000030000000100000000128A4101000000000000000A1386AD080C9A86FA0F878D05078000F6128A7D01078001020000000A00000007000000000000000A000000020000000A00000004000000030000000100000000135D45010000000005000102135D450300000001050000FC135D80FD000000030CFD9C050F34D0FA00000006000000020F350CFA000000020000000A135D44FD0CFD9C050F34D0FA00000006000000020000000600000003135D8103050000FC135D80FD000000030CFD9C050F34D0FA04548A0913867108000000040000000600000007000000020F350CFA0000000204548A0913867108000000040C9A86FA000000060000000A0000000A135D44FD0CFD9C050F34D0FA04548A090000000600000007000000020F350CFA0000000204548A091386710800000004000000060000000A000000030000000112073D08050000F6135D810105000102135D450300000001050000FC135D80FD000000030CFD9C050F34D0FA00000007000000020000000A135D44FD0CFD9C050000000A0000000A00000003135D8103050000FC135D80FD000000030CFD9C05000000070F350CFA000000020000000A135D44FD0CFD9C05000000070F350CFA000000020000000A000000030000000100000000135D450100000000050001020000000A135D8103050000FC0000000A0000000A00000001000000040000000400000003"
theorem small_4560143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560143_right_root small_4560143_right_fuel small_4560143_right_count small_4560143_right_encoded = true := by
  decide +kernel
theorem small_4560143_right_covered : CoveredBy scale carrier boxes small_4560143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560143_right_root small_4560143_right_fuel small_4560143_right_count small_4560143_right_encoded small_4560143_right_checked

theorem cover_4560143 : CoveredBy scale carrier boxes root_4560143 := by
  apply coveredBy_split_literal root_4560143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560144 small_4560143_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560144
  · exact small_4560143_right_covered
#print axioms cover_4560143

def root_4560138 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560138_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560138_right_fuel : Nat := 1
def small_4560138_right_count : Nat := 1
def small_4560138_right_encoded : String := "00000002"
theorem small_4560138_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560138_right_root small_4560138_right_fuel small_4560138_right_count small_4560138_right_encoded = true := by
  decide +kernel
theorem small_4560138_right_covered : CoveredBy scale carrier boxes small_4560138_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560138_right_root small_4560138_right_fuel small_4560138_right_count small_4560138_right_encoded small_4560138_right_checked

theorem cover_4560138 : CoveredBy scale carrier boxes root_4560138 := by
  apply coveredBy_split_literal root_4560138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560143 small_4560138_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560143
  · exact small_4560138_right_covered
#print axioms cover_4560138

def root_4560137 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4560137 : CoveredBy scale carrier boxes root_4560137 := by
  apply coveredBy_split_literal root_4560137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560138 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1710.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560138
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1710.covered
#print axioms cover_4560137

def root_4560131 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560131_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560131_left_fuel : Nat := 1
def small_4560131_left_count : Nat := 1
def small_4560131_left_encoded : String := "00000001"
theorem small_4560131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560131_left_root small_4560131_left_fuel small_4560131_left_count small_4560131_left_encoded = true := by
  decide +kernel
theorem small_4560131_left_covered : CoveredBy scale carrier boxes small_4560131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560131_left_root small_4560131_left_fuel small_4560131_left_count small_4560131_left_encoded small_4560131_left_checked

theorem cover_4560131 : CoveredBy scale carrier boxes root_4560131 := by
  apply coveredBy_split_literal root_4560131 small_4560131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560137 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4560131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560137
#print axioms cover_4560131

def root_4560130 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4560130 : CoveredBy scale carrier boxes root_4560130 := by
  apply coveredBy_split_literal root_4560130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560131 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1711.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560131
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1711.covered
#print axioms cover_4560130

def root_4560124 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560124_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4560124_left_fuel : Nat := 1
def small_4560124_left_count : Nat := 1
def small_4560124_left_encoded : String := "00000000"
theorem small_4560124_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4560124_left_root small_4560124_left_fuel small_4560124_left_count small_4560124_left_encoded = true := by
  decide +kernel
theorem small_4560124_left_covered : CoveredBy scale carrier boxes small_4560124_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4560124_left_root small_4560124_left_fuel small_4560124_left_count small_4560124_left_encoded small_4560124_left_checked

theorem cover_4560124 : CoveredBy scale carrier boxes root_4560124 := by
  apply coveredBy_split_literal root_4560124 small_4560124_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560130 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4560124_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560130
#print axioms cover_4560124

def root_4530900 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4530900 : CoveredBy scale carrier boxes root_4530900 := by
  apply coveredBy_split_literal root_4530900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.root_4530901 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4560124 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0325.cover_4530901
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4560124
#print axioms cover_4530900

def root_4496262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4496262 : CoveredBy scale carrier boxes root_4496262 := by
  apply coveredBy_split_literal root_4496262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4496263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4530900 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4496263
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4530900
#print axioms cover_4496262

def root_4493204 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4493204 : CoveredBy scale carrier boxes root_4493204 := by
  apply coveredBy_split_literal root_4493204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1685.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4496262 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1685.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4496262
#print axioms cover_4493204

def root_4569809 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4569809 : CoveredBy scale carrier boxes root_4569809 := by
  apply coveredBy_split_literal root_4569809 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1712.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1713.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1712.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1713.covered
#print axioms cover_4569809

def root_4569803 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569803_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569803_left_fuel : Nat := 1
def small_4569803_left_count : Nat := 1
def small_4569803_left_encoded : String := "00000004"
theorem small_4569803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4569803_left_root small_4569803_left_fuel small_4569803_left_count small_4569803_left_encoded = true := by
  decide +kernel
theorem small_4569803_left_covered : CoveredBy scale carrier boxes small_4569803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4569803_left_root small_4569803_left_fuel small_4569803_left_count small_4569803_left_encoded small_4569803_left_checked

theorem cover_4569803 : CoveredBy scale carrier boxes root_4569803 := by
  apply coveredBy_split_literal root_4569803 small_4569803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569809 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4569803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569809
#print axioms cover_4569803

def root_4569802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569802_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569802_right_fuel : Nat := 17
def small_4569802_right_count : Nat := 117
def small_4569802_right_encoded : String := "1151E8FF08A91301120700F608A9130312070102000000010000000512073D0208A91305120700FA08A91307000000050000000A0000000212073CFA0000000208A913070000000912073CFC000000030000000A000000010000000012073CF60000000008A91303120701020000000108A913050000000512073CFA0000000208A913070000000512073CFC00000003050000FE135D80FF000000040CFD9C01000000050000000A0000000512073D0208A91305120700FA08A91307120700FC050000FE135D80FF000000040CFD9C01000000050F350CF6000000000CFD9C03000000050F350D0204548A05000000050000000900000001000000050000000312073CFC000000030000000A0000000212073CFA0000000208A91307120700FC050000FE135D80FF000000040CFD9C01000000090F350CF6000000000CFD9C030000000900000009135D44FF0CFD9C01000000050F350CF6000000000CFD9C030000000500000009000000040000000312073CFC00000003050000FE135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C030F34D102000000010000000A0000000A135D44FF0CFD9C010F34D0F600000009000000000000000A000000040000000100000004"
theorem small_4569802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4569802_right_root small_4569802_right_fuel small_4569802_right_count small_4569802_right_encoded = true := by
  decide +kernel
theorem small_4569802_right_covered : CoveredBy scale carrier boxes small_4569802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4569802_right_root small_4569802_right_fuel small_4569802_right_count small_4569802_right_encoded small_4569802_right_checked

theorem cover_4569802 : CoveredBy scale carrier boxes root_4569802 := by
  apply coveredBy_split_literal root_4569802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569803 small_4569802_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569803
  · exact small_4569802_right_covered
#print axioms cover_4569802

def root_4569797 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569797_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569797_right_fuel : Nat := 1
def small_4569797_right_count : Nat := 1
def small_4569797_right_encoded : String := "00000003"
theorem small_4569797_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4569797_right_root small_4569797_right_fuel small_4569797_right_count small_4569797_right_encoded = true := by
  decide +kernel
theorem small_4569797_right_covered : CoveredBy scale carrier boxes small_4569797_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4569797_right_root small_4569797_right_fuel small_4569797_right_count small_4569797_right_encoded small_4569797_right_checked

theorem cover_4569797 : CoveredBy scale carrier boxes root_4569797 := by
  apply coveredBy_split_literal root_4569797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569802 small_4569797_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569802
  · exact small_4569797_right_covered
#print axioms cover_4569797

def root_4569796 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569796_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569796_right_fuel : Nat := 26
def small_4569796_right_count : Nat := 379
def small_4569796_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A91303120701020000000108A91305120700FA08A912FF0000000A120700FE050000FC135D810704548A01138670F60000000A00000000000000060000000300000006000000040000000212073CFA0000000208A912FF0000000A120700FE050000FC135D810704548A01138670F604548A0313867102000000010CFD9C050F34D0FA0000000A000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D0FA0000000A000000020000000A1386AD020CFD9C050000000A0000000A0000000100000003135D4507000000030000000A0000000412073D0208A91305120700FA08A912FF0000000A120700FE050000FC135D810704548A010000000A0000000A000000030000000A000000040000000212073CFA0000000208A912FF0000000A120700FE050000FC135D810704548A01138670F60CFD9C030F34D102000000010CFD9C050000000A0000000A0F350D020CFD9C050000000A0000000A00000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050000000A0000000A0F350D020CFD9C050F34D0FA0000000A000000020000000A0000000100000003135D45070000000304548A01138670F60000000A000000000000000A00000004000000010000000012073CF60000000008A91303120701020000000108A91305120700FA08A912FF0000000A120700FE050000FC135D81070CFD9C010F34D0F60000000600000000000000060000000300000006000000040000000212073CFA0000000208A912FF0000000A120700FE050000FC135D81070CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA00000006000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA00000002045489FF0000000A138670FE0C9A86F60000000A0F875101000000000C9A86FA000000060F875105000000020000000A000000041386AD020CFD9C050F34D0FA0000000A000000020F350CFA00000002045489FF0000000A138670FE0C9A86F60000000A0F875101000000000000000A000000040000000100000003135D4507000000030CFD9C010F34D0F60000000A000000000000000A0000000412073D0208A91305120700FA08A912FF0000000A120700FE050000FC135D81070CFD9C010F34D0F60CFD9C030F34D102000000010000000A00000008000000000F350CF6000000000CFD9C030F34D1020000000104548A05000000060000000A0F350D0204548A05138670FA0000000A000000020000000A0000000100000003135D4507000000030CFD9C010F34D0F60000000A000000000000000A000000040000000212073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9C010F34D0F60000000A000000000000000A000000030000000A120700FE050000FC135D81070CFD9C010F34D0F60CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050F34D0FA0000000A000000020F350CFA00000002045489FF000000090000000500000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020F350CFA00000002045489FF0000000A138670FE0C9A86F6000000090F8751010000000000000005000000040F350D020CFD9C050F34D0FA045489FF0000000900000005000000020F350CFA00000002000000090000000100000003135D4507000000030CFD9C010F34D0F60CFD9C030F34D102000000010000000A0000000A000000000F350CF6000000000CFD9C030F34D102000000010000000A0F350D020CFD9C050F34D0FA0000000A00000002000000050000000100000004000000011151E8FF08A91301120700F60000000A0000000012073CF60000000008A9130312070102000000010000000A0000000A00000004"
theorem small_4569796_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4569796_right_root small_4569796_right_fuel small_4569796_right_count small_4569796_right_encoded = true := by
  decide +kernel
theorem small_4569796_right_covered : CoveredBy scale carrier boxes small_4569796_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4569796_right_root small_4569796_right_fuel small_4569796_right_count small_4569796_right_encoded small_4569796_right_checked

theorem cover_4569796 : CoveredBy scale carrier boxes root_4569796 := by
  apply coveredBy_split_literal root_4569796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569797 small_4569796_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569797
  · exact small_4569796_right_covered
#print axioms cover_4569796

def root_4569791 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569791_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569791_right_fuel : Nat := 1
def small_4569791_right_count : Nat := 1
def small_4569791_right_encoded : String := "00000002"
theorem small_4569791_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4569791_right_root small_4569791_right_fuel small_4569791_right_count small_4569791_right_encoded = true := by
  decide +kernel
theorem small_4569791_right_covered : CoveredBy scale carrier boxes small_4569791_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4569791_right_root small_4569791_right_fuel small_4569791_right_count small_4569791_right_encoded small_4569791_right_checked

theorem cover_4569791 : CoveredBy scale carrier boxes root_4569791 := by
  apply coveredBy_split_literal root_4569791 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569796 small_4569791_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569796
  · exact small_4569791_right_covered
#print axioms cover_4569791

def root_4569790 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4569790 : CoveredBy scale carrier boxes root_4569790 := by
  apply coveredBy_split_literal root_4569790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569791 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1714.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569791
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1714.covered
#print axioms cover_4569790

def root_4569785 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569785_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4569785_right_fuel : Nat := 1
def small_4569785_right_count : Nat := 1
def small_4569785_right_encoded : String := "00000001"
theorem small_4569785_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4569785_right_root small_4569785_right_fuel small_4569785_right_count small_4569785_right_encoded = true := by
  decide +kernel
theorem small_4569785_right_covered : CoveredBy scale carrier boxes small_4569785_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4569785_right_root small_4569785_right_fuel small_4569785_right_count small_4569785_right_encoded small_4569785_right_checked

theorem cover_4569785 : CoveredBy scale carrier boxes root_4569785 := by
  apply coveredBy_split_literal root_4569785 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569790 small_4569785_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569790
  · exact small_4569785_right_covered
#print axioms cover_4569785

def root_4568955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4568955_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4568955_left_fuel : Nat := 25
def small_4568955_left_count : Nat := 389
def small_4568955_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91301120700F608A91305120700FA08A913070000000912073CFC0000000308A912FF12073CFE00000004050001020000000900000009120700FE0500010200000009135D810304548A01000000080000000900000001000000040000000212073CFA0000000208A91307120700FC000000090000000312073CFC0000000308A912FF12073CFE0000000400000009120700FE05000102135D45030000000100000009135D810304548A01138670F60CFD9C050000000900000009000000000000000900000001000000040000000012073CF60000000008A91305120700FA08A91307120700FC08A912FF12073CFE000000040500010200000009135D81030CFD9C01000000090000000900000001000000090000000312073CFC0000000308A912FF12073CFE0000000405000102135D4503000000010CFD9C010000000900000009135D81030CFD9C010F34D0F600000009000000000F350CF60000000004548A05138670FA0CFD9C070F34D0FC0CFD9BFF0000000A00000009000000030000000A000000021386ACFA000000020CFD9C07000000090000000A00000001120700FE050001020000000900000009000000040000000212073CFA0000000208A913070000000912073CFC0000000308A912FF12073CFE0000000400000009000000091151E8FF08A91301120700F608A91305120700FA0000000900000002000000090000000012073CF60000000008A91305120700FA08A91307120700FC0500010200000009135D8103050000FE135D80FF000000040000000900000009000000010000000312073CFC000000030000000A0000000212073CFA0000000208A913070000000912073CFC000000030500010200000007135D8103000000090000000100000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F608A91305120700FA08A912FF0000000A120700FE050001020000000A00000008000000040000000212073CFA0000000208A912FF12073CFE000000040000000A120700FE05000102135D450300000001050000FC135D810704548A01138670F60CFD9C050000000800000005000000000000000900000003135D4507000000030000000A135D8103050000FC135D810704548A01138670F60CFD9C050000000A0000000A000000001386ACF6000000000CFD9C05000000090000000A00000003135D4507000000030000000A00000001000000040000000012073CF60000000008A91305120700FA08A912FF12073CFE000000040000000A120700FE05000102135D450300000001050000FC00000009135D4507000000030000000A135D8103050000FC135D81070CFD9C010F34D0F600000008000000000000000900000003135D4507000000030000000A00000001000000040000000212073CFA0000000208A912FF12073CFE0000000405000102135D45030000000100000009135D8103050000FC135D810700000009000000030000000A00000001120700FE05000102135D450300000001050000FC00000009135D45070000000300000005135D8103050000FC135D81070CFD9C010F34D0F600000009000000000000000500000003135D4507000000030CFD9C010F34D0F60000000A000000000000000500000001000000041151E8FF08A91301120700F60000000A000000000000000A00000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F608A91307120700FC00000009000000030000000900000000000000091151E8FF08A913010000000912073CF60000000008A91307120700FC050001020000000700000009000000030000000700000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F608A912FF12073CFE0000000400000009120700FE05000102135D450300000001050000FA135D8105050000FC00000005000000070000000200000009135D8103050000FA135D8105050000FC00000009135D45070000000300000007000000020000000900000001000000040000000012073CF60000000008A912FF00000009000000051151E8FF0000000700000004"
theorem small_4568955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4568955_left_root small_4568955_left_fuel small_4568955_left_count small_4568955_left_encoded = true := by
  decide +kernel
theorem small_4568955_left_covered : CoveredBy scale carrier boxes small_4568955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4568955_left_root small_4568955_left_fuel small_4568955_left_count small_4568955_left_encoded small_4568955_left_checked

theorem cover_4568955 : CoveredBy scale carrier boxes root_4568955 := by
  apply coveredBy_split_literal root_4568955 small_4568955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4569785 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4568955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4569785
#print axioms cover_4568955

def root_4568950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4568950_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4568950_right_fuel : Nat := 1
def small_4568950_right_count : Nat := 1
def small_4568950_right_encoded : String := "00000000"
theorem small_4568950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4568950_right_root small_4568950_right_fuel small_4568950_right_count small_4568950_right_encoded = true := by
  decide +kernel
theorem small_4568950_right_covered : CoveredBy scale carrier boxes small_4568950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4568950_right_root small_4568950_right_fuel small_4568950_right_count small_4568950_right_encoded small_4568950_right_checked

theorem cover_4568950 : CoveredBy scale carrier boxes root_4568950 := by
  apply coveredBy_split_literal root_4568950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4568955 small_4568950_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4568955
  · exact small_4568950_right_covered
#print axioms cover_4568950

def root_4578353 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4578353 : CoveredBy scale carrier boxes root_4578353 := by
  apply coveredBy_split_literal root_4578353 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1716.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1717.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1716.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1717.covered
#print axioms cover_4578353

def root_4578347 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578347_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578347_left_fuel : Nat := 1
def small_4578347_left_count : Nat := 1
def small_4578347_left_encoded : String := "00000004"
theorem small_4578347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4578347_left_root small_4578347_left_fuel small_4578347_left_count small_4578347_left_encoded = true := by
  decide +kernel
theorem small_4578347_left_covered : CoveredBy scale carrier boxes small_4578347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4578347_left_root small_4578347_left_fuel small_4578347_left_count small_4578347_left_encoded small_4578347_left_checked

theorem cover_4578347 : CoveredBy scale carrier boxes root_4578347 := by
  apply coveredBy_split_literal root_4578347 small_4578347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4578353 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4578347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4578353
#print axioms cover_4578347

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326

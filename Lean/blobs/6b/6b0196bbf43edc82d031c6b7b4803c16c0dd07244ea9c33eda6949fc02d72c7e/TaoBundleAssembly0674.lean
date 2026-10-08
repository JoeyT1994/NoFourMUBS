import TaoBundleAssembly0673
import TaoBundleChunkBatch0940
import TaoBundleChunkBatch0941
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674
def root_10022156 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022156_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022156_left_fuel : Nat := 25
def small_10022156_left_count : Nat := 269
def small_10022156_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9BFB00000009000000081386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB000000020000000800000005000000090F34D0FA0000000700000002000000010F350D0004548A0313867102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F875101000000000C9A86FA000000080F8750FB078000FE128A7CFF000000040000000800000005000000020F878D0100000008000000001386AD060C9A87000F875101000000000C9A86FA000000090F8750FB078000FE00000006000000060000000200000009000000030F34D0FA00000008000000021386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F875101000000000C9A86FA0000000A0F8750FB078000FE128A7CFF00000004067ECE8312EA590200000001000000080000000A00000008000000020F878D010C9A86FA0F878CFB00000002000000080F8750FB078000FE128A7CFF00000004067ECE8312EA5902000000010000000812EA9502022A45870000000800000009000000010000000500000002000000001386AD060C9A87000F875101000000000000000A0F878D010C9A86FA000000090F8750FB078000FE00000009000000090000000200000000000000030F34D0FA0000000A000000020000000100000000135D44FF0CFD9C010F34D1000000000004548A0300000007000000080F350D0004548A0313867102000000010CFD9BFB0F350CFA0000000204548A07000000081386AD060C9A8700000000080000000500000003000000081386AD020CFD9BFB0F350CFA0000000204548A07000000081386AD060C9A87000000000800000007000000030000000800000001000000000000000412073D06050000FE135D80FF000000040CFD9C010F34D10000000000000000090F350D0004548A031386710200000001000000091386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87000F875101000000000000000A00000009000000090F34D0FA00000009000000020000000100000000135D44FF0CFD9C010F34D10000000000000000070F350D0004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9C0700000007000000070F34D0FA00000009000000021386AD020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000007000000070000000700000001000000000000000400000003120700FA08A913071207010600000003050000FE135D80FF000000040CFD9C01000000080000000A0000000812073D06050000FE135D80FF000000040CFD9C01000000090F350D000000000A00000000135D44FF0CFD9C01000000070000000A000000040000000300000002"
theorem small_10022156_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022156_left_root small_10022156_left_fuel small_10022156_left_count small_10022156_left_encoded = true := by
  decide +kernel
theorem small_10022156_left_covered : CoveredBy scale carrier boxes small_10022156_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022156_left_root small_10022156_left_fuel small_10022156_left_count small_10022156_left_encoded small_10022156_left_checked

theorem cover_10022156 : CoveredBy scale carrier boxes root_10022156 := by
  apply coveredBy_split_literal root_10022156 small_10022156_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10022730 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10022156_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10022730
#print axioms cover_10022156

def root_10022151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022151_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022151_right_fuel : Nat := 1
def small_10022151_right_count : Nat := 1
def small_10022151_right_encoded : String := "00000000"
theorem small_10022151_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022151_right_root small_10022151_right_fuel small_10022151_right_count small_10022151_right_encoded = true := by
  decide +kernel
theorem small_10022151_right_covered : CoveredBy scale carrier boxes small_10022151_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022151_right_root small_10022151_right_fuel small_10022151_right_count small_10022151_right_encoded small_10022151_right_checked

theorem cover_10022151 : CoveredBy scale carrier boxes root_10022151 := by
  apply coveredBy_split_literal root_10022151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10022156 small_10022151_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10022156
  · exact small_10022151_right_covered
#print axioms cover_10022151

def root_10021937 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021937_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021937_left_fuel : Nat := 21
def small_10021937_left_count : Nat := 105
def small_10021937_left_encoded : String := "120701000000000008A91303120701020000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A01000000091386AD0004548A03000000071386AD020CFD9BFB000000090000000700000001000000000000000500000007120700FA08A9130700000007000000070000000212073D0208A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A0113867100000000000CFD9C03000000070F350D020CFD9BFB0F350CFA000000020000000700000007000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000070000000500000007000000070F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A8702000000070F878D030C9A86FA00000007000000070000000100000007000000070000000100000000135D44FF04548A0100000007000000070000000412073D06050000FE135D80FF0000000404548A0100000007000000070000000700000003120700FA000000070000000200000001"
theorem small_10021937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10021937_left_root small_10021937_left_fuel small_10021937_left_count small_10021937_left_encoded = true := by
  decide +kernel
theorem small_10021937_left_covered : CoveredBy scale carrier boxes small_10021937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10021937_left_root small_10021937_left_fuel small_10021937_left_count small_10021937_left_encoded small_10021937_left_checked

theorem cover_10021937 : CoveredBy scale carrier boxes root_10021937 := by
  apply coveredBy_split_literal root_10021937 small_10021937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10022151 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10021937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10022151
#print axioms cover_10021937

def root_10021932 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021932_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021932_right_fuel : Nat := 1
def small_10021932_right_count : Nat := 1
def small_10021932_right_encoded : String := "00000004"
theorem small_10021932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10021932_right_root small_10021932_right_fuel small_10021932_right_count small_10021932_right_encoded = true := by
  decide +kernel
theorem small_10021932_right_covered : CoveredBy scale carrier boxes small_10021932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10021932_right_root small_10021932_right_fuel small_10021932_right_count small_10021932_right_encoded small_10021932_right_checked

theorem cover_10021932 : CoveredBy scale carrier boxes root_10021932 := by
  apply coveredBy_split_literal root_10021932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10021937 small_10021932_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10021937
  · exact small_10021932_right_covered
#print axioms cover_10021932

def root_10011474 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10011474 : CoveredBy scale carrier boxes root_10011474 := by
  apply coveredBy_split_literal root_10011474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10011475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10021932 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10011475
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10021932
#print axioms cover_10011474

def root_10011469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011469_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011469_right_fuel : Nat := 1
def small_10011469_right_count : Nat := 1
def small_10011469_right_encoded : String := "00000003"
theorem small_10011469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10011469_right_root small_10011469_right_fuel small_10011469_right_count small_10011469_right_encoded = true := by
  decide +kernel
theorem small_10011469_right_covered : CoveredBy scale carrier boxes small_10011469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10011469_right_root small_10011469_right_fuel small_10011469_right_count small_10011469_right_encoded small_10011469_right_checked

theorem cover_10011469 : CoveredBy scale carrier boxes root_10011469 := by
  apply coveredBy_split_literal root_10011469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10011474 small_10011469_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10011474
  · exact small_10011469_right_covered
#print axioms cover_10011469

def root_10010905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010905_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010905_left_fuel : Nat := 23
def small_10010905_left_count : Nat := 259
def small_10010905_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120701000000000008A913030000000912073D0208A912FB00000009120700FA00000009000000020000000112073D0008A91303120701020000000108A912FB00000009120700FA000000090000000212073D0208A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D020CFD9BFB000000050F34D0FA00000005000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D020CFD9BFB0F350CFA000000020CFD9BFF0F350CFE000000040C9A870000000005000000090F34D0FE00000005000000040F34D0FA0CFD9BFF000000050F34D0FE000000050000000400000002000000010000000000000003120700FE05000106135D4507000000030CFD9C01000000090F350D000CFD9C03000000090F350D020CFD9BFB000000060F34D0FA00000009000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C03000000060F350D020CFD9BFB000000060F34D0FA000000060000000200000001000000000000000300000004120700FA08A912FF12073CFE0000000405000106135D4507000000030CFD9C01000000090F350D000CFD9C03000000090F350D02045489FB00000009138670FA00000009000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D02045489FB1386ACFA000000020CFD9BFF000000050F34D0FE000000070000000400000007000000010000000000000003120700FE05000106135D45070000000300000009135D81070CFD9C01000000090F350D000CFD9C03000000090F350D02045489FB00000009138670FA0000000900000002000000010000000000000003000000040000000200000001000000001151E8FF08A91301120701000000000008A913030000000912073D02000000070000000112073D0008A91303120701020000000108A912FB00000009120700FA000000090000000212073D0208A912FB12073CFA0000000205000106135D450700000003050000FE135D80FF000000040CFD9C01000000070F350D000CFD9C03000000090000000700000000135D44FF0CFD9C01000000070F350D00000000070000000000000004135D8107050000FE135D80FF000000040CFD9C01000000070F350D000CFD9C03000000070F350D020000000700000001000000000000000700000003120700FA05000106135D450700000003050000FE00000007135D44FF00000007000000040000000700000002000000010000000000000004"
theorem small_10010905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10010905_left_root small_10010905_left_fuel small_10010905_left_count small_10010905_left_encoded = true := by
  decide +kernel
theorem small_10010905_left_covered : CoveredBy scale carrier boxes small_10010905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10010905_left_root small_10010905_left_fuel small_10010905_left_count small_10010905_left_encoded small_10010905_left_checked

theorem cover_10010905 : CoveredBy scale carrier boxes root_10010905 := by
  apply coveredBy_split_literal root_10010905 small_10010905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10011469 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10010905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10011469
#print axioms cover_10010905

def root_10010899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010899_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010899_left_fuel : Nat := 1
def small_10010899_left_count : Nat := 1
def small_10010899_left_encoded : String := "00000002"
theorem small_10010899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10010899_left_root small_10010899_left_fuel small_10010899_left_count small_10010899_left_encoded = true := by
  decide +kernel
theorem small_10010899_left_covered : CoveredBy scale carrier boxes small_10010899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10010899_left_root small_10010899_left_fuel small_10010899_left_count small_10010899_left_encoded small_10010899_left_checked

theorem cover_10010899 : CoveredBy scale carrier boxes root_10010899 := by
  apply coveredBy_split_literal root_10010899 small_10010899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10010905 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10010899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10010905
#print axioms cover_10010899

def root_10027175 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027175_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027175_right_fuel : Nat := 18
def small_10027175_right_count : Nat := 129
def small_10027175_right_encoded : String := "12073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9C070F34D1060000000300000006000000060F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F87510300000001000000080F878D030C9A86FE0000000600000006000000010F34D0FE00000006000000040F350D060CFD9BFF0F350CFE000000040C9A87020F8751030000000100000009000000060000000600000003000000010F350D000CFD9C030F34D102000000010CFD9C070F34D1060000000300000006000000060F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A87020F8751030000000100000008000000060F878D010C9A87020F87510300000001000000080F878D030000000600000001000000000F34D0FE00000006000000040F350D060CFD9BFF0F350CFE000000040C9A8700000000060F878D01000000060000000000000006000000030000000100000000135D44FB0CFD9C010F34D100000000000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010F350D000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010000000000000002120700FE050000FA00000006000000060000000400000003"
theorem small_10027175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10027175_right_root small_10027175_right_fuel small_10027175_right_count small_10027175_right_encoded = true := by
  decide +kernel
theorem small_10027175_right_covered : CoveredBy scale carrier boxes small_10027175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10027175_right_root small_10027175_right_fuel small_10027175_right_count small_10027175_right_encoded small_10027175_right_checked

theorem cover_10027175 : CoveredBy scale carrier boxes root_10027175 := by
  apply coveredBy_split_literal root_10027175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3758.root small_10027175_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3758.covered
  · exact small_10027175_right_covered
#print axioms cover_10027175

def root_10027170 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027170_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027170_right_fuel : Nat := 1
def small_10027170_right_count : Nat := 1
def small_10027170_right_encoded : String := "00000001"
theorem small_10027170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10027170_right_root small_10027170_right_fuel small_10027170_right_count small_10027170_right_encoded = true := by
  decide +kernel
theorem small_10027170_right_covered : CoveredBy scale carrier boxes small_10027170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10027170_right_root small_10027170_right_fuel small_10027170_right_count small_10027170_right_encoded small_10027170_right_checked

theorem cover_10027170 : CoveredBy scale carrier boxes root_10027170 := by
  apply coveredBy_split_literal root_10027170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10027175 small_10027170_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10027175
  · exact small_10027170_right_covered
#print axioms cover_10027170

def root_10026992 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026992_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026992_left_fuel : Nat := 19
def small_10026992_left_count : Nat := 85
def small_10026992_left_encoded : String := "120701020000000108A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D1000000000004548A031386710200000001000000061386AD0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE00000006000000050000000600000006000000010F350D0004548A03138671020000000104548A0713867106000000030CFD9BFF0F350CFE000000040000000600000006000000061386AD0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A8700000000060F878D010C9A86FE00000006000000060000000000000006000000060000000100000000135D44FB0CFD9C01000000060F350D000000000600000000000000020000000612073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9C01000000060F350D000000000600000000000000060000000600000003"
theorem small_10026992_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026992_left_root small_10026992_left_fuel small_10026992_left_count small_10026992_left_encoded = true := by
  decide +kernel
theorem small_10026992_left_covered : CoveredBy scale carrier boxes small_10026992_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026992_left_root small_10026992_left_fuel small_10026992_left_count small_10026992_left_encoded small_10026992_left_checked

theorem cover_10026992 : CoveredBy scale carrier boxes root_10026992 := by
  apply coveredBy_split_literal root_10026992 small_10026992_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10027170 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10026992_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10027170
#print axioms cover_10026992

def root_10026987 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026987_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026987_right_fuel : Nat := 1
def small_10026987_right_count : Nat := 1
def small_10026987_right_encoded : String := "00000000"
theorem small_10026987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026987_right_root small_10026987_right_fuel small_10026987_right_count small_10026987_right_encoded = true := by
  decide +kernel
theorem small_10026987_right_covered : CoveredBy scale carrier boxes small_10026987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026987_right_root small_10026987_right_fuel small_10026987_right_count small_10026987_right_encoded small_10026987_right_checked

theorem cover_10026987 : CoveredBy scale carrier boxes root_10026987 := by
  apply coveredBy_split_literal root_10026987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10026992 small_10026987_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10026992
  · exact small_10026987_right_covered
#print axioms cover_10026987

def root_10026325 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026325_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026325_left_fuel : Nat := 27
def small_10026325_left_count : Nat := 313
def small_10026325_left_encoded : String := "120701000000000008A91303120701020000000108A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A01000000091386AD0004548A03000000061386AD0204548A070000000A000000060000000100000000000000050000000612073D0608A912FF00000006000000060000000312073D0208A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A0113867100000000000CFD9C030F34D1020000000104548A070000000A000000090F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000080F8750FF078000FA128A7CFB000000020000000A00000005000000040F878D030000000A000000010000000A1386AD060CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000080F8750FF078000FA000000070000000700000004000000090F34D0FE000000080000000400000003000000011386AD000CFD9C030F34D1020000000104548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A000000050000000A1386AD060CFD9BFF0000000900000006000000030F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000080F8750FF078000FA128A7CFB00000002067ECE8112EA59000000000000000008000000080000000A000000040F878D030C9A86FE0F878CFF000000040000000A0F8750FF078000FA128A7CFB00000002067ECE8112EA5900000000000000000A12EA9500022A45870000000A00000009000000000000000500000004000000010000000A1386AD060CFD9BFF0F350CFE000000040C9A87020F87510300000001000000080F878D030C9A86FE000000090F8750FF078000FA000000090000000900000004000000010F34D0FE0000000800000004000000030000000100000000135D44FB04548A0113867100000000000CFD9C030000000A0F350D0204548A070000000A1386AD060CFD9BFF0F350CFE000000040C9A870200000008000000050000000600000003000000011386AD000CFD9C030F34D102000000010000000A0F350D0204548A070000000A1386AD060CFD9BFF0F350CFE000000040C9A870200000008000000060000000600000003000000010000000000000002120700FE050000FA135D80FB0000000204548A010000000A000000080000000A0000000412073D0608A912FF12073CFE00000004050000FA135D80FB0000000204548A011386710000000000000000091386AD000CFD9C030F34D10200000001000000090F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8751030000000100000008000000090F34D0FE0000000600000004000000090000000100000000135D44FB04548A0113867100000000000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030000000600000009000000011386AD000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010000000000000002120700FE050000FA135D80FB0000000204548A01000000091386AD000CFD9C03000000060000000800000000135D44FB04548A011386710000000000000000080000000800000002000000040000000300000001"
theorem small_10026325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026325_left_root small_10026325_left_fuel small_10026325_left_count small_10026325_left_encoded = true := by
  decide +kernel
theorem small_10026325_left_covered : CoveredBy scale carrier boxes small_10026325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026325_left_root small_10026325_left_fuel small_10026325_left_count small_10026325_left_encoded small_10026325_left_checked

theorem cover_10026325 : CoveredBy scale carrier boxes root_10026325 := by
  apply coveredBy_split_literal root_10026325 small_10026325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10026987 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10026325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10026987
#print axioms cover_10026325

def root_10026319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026319_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026319_left_fuel : Nat := 1
def small_10026319_left_count : Nat := 1
def small_10026319_left_encoded : String := "00000004"
theorem small_10026319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026319_left_root small_10026319_left_fuel small_10026319_left_count small_10026319_left_encoded = true := by
  decide +kernel
theorem small_10026319_left_covered : CoveredBy scale carrier boxes small_10026319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026319_left_root small_10026319_left_fuel small_10026319_left_count small_10026319_left_encoded small_10026319_left_checked

theorem cover_10026319 : CoveredBy scale carrier boxes root_10026319 := by
  apply coveredBy_split_literal root_10026319 small_10026319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10026325 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10026319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10026325
#print axioms cover_10026319

def root_10034888 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10034888 : CoveredBy scale carrier boxes root_10034888 := by
  apply coveredBy_split_literal root_10034888 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3760.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3761.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3760.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3761.covered
#print axioms cover_10034888

def root_10034883 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10034883_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10034883_right_fuel : Nat := 1
def small_10034883_right_count : Nat := 1
def small_10034883_right_encoded : String := "00000000"
theorem small_10034883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10034883_right_root small_10034883_right_fuel small_10034883_right_count small_10034883_right_encoded = true := by
  decide +kernel
theorem small_10034883_right_covered : CoveredBy scale carrier boxes small_10034883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10034883_right_root small_10034883_right_fuel small_10034883_right_count small_10034883_right_encoded small_10034883_right_checked

theorem cover_10034883 : CoveredBy scale carrier boxes root_10034883 := by
  apply coveredBy_split_literal root_10034883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10034888 small_10034883_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10034888
  · exact small_10034883_right_covered
#print axioms cover_10034883

def root_10032381 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10032381 : CoveredBy scale carrier boxes root_10032381 := by
  apply coveredBy_split_literal root_10032381 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3759.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10034883 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3759.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10034883
#print axioms cover_10032381

def root_10032375 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032375_left_fuel : Nat := 1
def small_10032375_left_count : Nat := 1
def small_10032375_left_encoded : String := "00000003"
theorem small_10032375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10032375_left_root small_10032375_left_fuel small_10032375_left_count small_10032375_left_encoded = true := by
  decide +kernel
theorem small_10032375_left_covered : CoveredBy scale carrier boxes small_10032375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10032375_left_root small_10032375_left_fuel small_10032375_left_count small_10032375_left_encoded small_10032375_left_checked

theorem cover_10032375 : CoveredBy scale carrier boxes root_10032375 := by
  apply coveredBy_split_literal root_10032375 small_10032375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10032381 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10032375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10032381
#print axioms cover_10032375

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674

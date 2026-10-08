import TaoBundleAssembly0201
import TaoBundleChunkBatch0785
import TaoBundleChunkBatch0786
import TaoBundleChunkBatch0787
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202
def root_8362029 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362029_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362029_left_fuel : Nat := 16
def small_8362029_left_count : Nat := 103
def small_8362029_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF80000000108A91305120701040000000208A912FD12073CFC000000030500010800000007135D80FF0000000404548A01000000091386AD000CFD9BF90000000900000007000000000000000912073D0408A912FD000000060000000900000002120700F808A91305120701040000000208A912FD00000006120700FC0500010800000005135D80FF0000000404548A011386710000000000000000060000000500000003000000060000000112073D0008A912F912073CF80000000108A9130512070104000000020000000812073D0408A912FD12073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000060000000800000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000100000009000000060F350D000CFD9BF9000000080F34D0F8000000050000000100000000120700FC000000050000000300000002120700F808A91305120701040000000208A912FD000000070000000812073D040000000500000002000000010000000000000004"
theorem small_8362029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362029_left_root small_8362029_left_fuel small_8362029_left_count small_8362029_left_encoded = true := by
  decide +kernel
theorem small_8362029_left_covered : CoveredBy scale carrier boxes small_8362029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362029_left_root small_8362029_left_fuel small_8362029_left_count small_8362029_left_encoded small_8362029_left_checked

theorem cover_8362029 : CoveredBy scale carrier boxes root_8362029 := by
  apply coveredBy_split_literal root_8362029 small_8362029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8362249 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8362029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8362249
#print axioms cover_8362029

def root_8362023 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362023_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362023_left_fuel : Nat := 1
def small_8362023_left_count : Nat := 1
def small_8362023_left_encoded : String := "00000003"
theorem small_8362023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362023_left_root small_8362023_left_fuel small_8362023_left_count small_8362023_left_encoded = true := by
  decide +kernel
theorem small_8362023_left_covered : CoveredBy scale carrier boxes small_8362023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362023_left_root small_8362023_left_fuel small_8362023_left_count small_8362023_left_encoded small_8362023_left_checked

theorem cover_8362023 : CoveredBy scale carrier boxes root_8362023 := by
  apply coveredBy_split_literal root_8362023 small_8362023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8362029 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8362023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8362029
#print axioms cover_8362023

def root_8381226 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381226_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381226_right_fuel : Nat := 17
def small_8381226_right_count : Nat := 121
def small_8381226_right_encoded : String := "135D44FD0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D04045489FF1386AD080C9A86F8000000060F8750F90C9A87040000000600000005000000010000000413867108000000040C9A86F80F878CF9000000010C9A8704000000060F878D0500000007000000020F8750F90C9A87040F87510500000002028000FC00000006000000050000000500000001000000020F34D0F80CFD9C050F34D10400000002000000070F350D040000000600000002000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D04045489FF1386AD080C9A8700000000070F878D010C9A86F8000000060F8750F90C9A8704000000060000000700000001000000000000000413867108000000040C9A87000F875101000000000C9A86F80F878CF900000001000000070F8750F90C9A87040F87510500000002028000FC000000060000000600000007000000010F878D010C9A86F80F878CF9000000010C9A870400000006000000070F8750F90C9A87040F87510500000002028000FC0000000600000006000000070000000100000000000000020F34D0F80CFD9C05000000070F350D04045489FF000000060000000700000002000000010000000000000003"
theorem small_8381226_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8381226_right_root small_8381226_right_fuel small_8381226_right_count small_8381226_right_encoded = true := by
  decide +kernel
theorem small_8381226_right_covered : CoveredBy scale carrier boxes small_8381226_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8381226_right_root small_8381226_right_fuel small_8381226_right_count small_8381226_right_encoded small_8381226_right_checked

theorem cover_8381226 : CoveredBy scale carrier boxes root_8381226 := by
  apply coveredBy_split_literal root_8381226 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3138.root small_8381226_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3138.covered
  · exact small_8381226_right_covered
#print axioms cover_8381226

def root_8381220 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381220_left_fuel : Nat := 1
def small_8381220_left_count : Nat := 1
def small_8381220_left_encoded : String := "00000004"
theorem small_8381220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8381220_left_root small_8381220_left_fuel small_8381220_left_count small_8381220_left_encoded = true := by
  decide +kernel
theorem small_8381220_left_covered : CoveredBy scale carrier boxes small_8381220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8381220_left_root small_8381220_left_fuel small_8381220_left_count small_8381220_left_encoded small_8381220_left_checked

theorem cover_8381220 : CoveredBy scale carrier boxes root_8381220 := by
  apply coveredBy_split_literal root_8381220 small_8381220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8381226 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8381220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8381226
#print axioms cover_8381220

def root_8380986 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380986_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380986_left_fuel : Nat := 17
def small_8380986_left_count : Nat := 109
def small_8380986_left_encoded : String := "12073D08050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFF00000007000000070F350D040CFD9BFF000000060F34D108000000040C9A86F8000000060F8750F90000000600000001000000020F34D0F80CFD9C050000000600000006000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D040CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F875101000000000C9A86F8000000060F8750F90C9A87040000000600000007000000010F878D010C9A86F8000000060F8750F9000000060000000100000000000000020F34D0F80CFD9C05000000070F350D0400000006000000020000000100000000135D44FD0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D040CFD9BFF000000060F34D1080000000400000006000000020F34D0F800000006000000010F350D000CFD9BF90F350CF8000000010CFD9C05000000070F350D040CFD9BFF00000006000000070000000200000007000000000000000300000004"
theorem small_8380986_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380986_left_root small_8380986_left_fuel small_8380986_left_count small_8380986_left_encoded = true := by
  decide +kernel
theorem small_8380986_left_covered : CoveredBy scale carrier boxes small_8380986_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380986_left_root small_8380986_left_fuel small_8380986_left_count small_8380986_left_encoded small_8380986_left_checked

theorem cover_8380986 : CoveredBy scale carrier boxes root_8380986 := by
  apply coveredBy_split_literal root_8380986 small_8380986_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8381220 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8380986_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8381220
#print axioms cover_8380986

def root_8380981 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380981_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380981_right_fuel : Nat := 1
def small_8380981_right_count : Nat := 1
def small_8380981_right_encoded : String := "00000002"
theorem small_8380981_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380981_right_root small_8380981_right_fuel small_8380981_right_count small_8380981_right_encoded = true := by
  decide +kernel
theorem small_8380981_right_covered : CoveredBy scale carrier boxes small_8380981_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380981_right_root small_8380981_right_fuel small_8380981_right_count small_8380981_right_encoded small_8380981_right_checked

theorem cover_8380981 : CoveredBy scale carrier boxes root_8380981 := by
  apply coveredBy_split_literal root_8380981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8380986 small_8380981_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8380986
  · exact small_8380981_right_covered
#print axioms cover_8380981

def root_8380903 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380903_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380903_left_fuel : Nat := 15
def small_8380903_left_count : Nat := 37
def small_8380903_left_encoded : String := "120701040000000208A912FF12073D08050000FC0000000700000007000000041207010800000004050000FC135D80FD000000030CFD9C010F34D10000000000000000070F350D000CFD9BF90F350CF80000000104548A051386710400000002000000071386AD04045489FF0000000713867108000000040C9A8700000000070000000700000002000000070000000000000007"
theorem small_8380903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380903_left_root small_8380903_left_fuel small_8380903_left_count small_8380903_left_encoded = true := by
  decide +kernel
theorem small_8380903_left_covered : CoveredBy scale carrier boxes small_8380903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380903_left_root small_8380903_left_fuel small_8380903_left_count small_8380903_left_encoded small_8380903_left_checked

theorem cover_8380903 : CoveredBy scale carrier boxes root_8380903 := by
  apply coveredBy_split_literal root_8380903 small_8380903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8380981 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8380903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8380981
#print axioms cover_8380903

def root_8380897 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380897_left_fuel : Nat := 1
def small_8380897_left_count : Nat := 1
def small_8380897_left_encoded : String := "00000001"
theorem small_8380897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380897_left_root small_8380897_left_fuel small_8380897_left_count small_8380897_left_encoded = true := by
  decide +kernel
theorem small_8380897_left_covered : CoveredBy scale carrier boxes small_8380897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380897_left_root small_8380897_left_fuel small_8380897_left_count small_8380897_left_encoded small_8380897_left_checked

theorem cover_8380897 : CoveredBy scale carrier boxes root_8380897 := by
  apply coveredBy_split_literal root_8380897 small_8380897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8380903 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8380897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8380903
#print axioms cover_8380897

def root_8380896 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380896_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380896_right_fuel : Nat := 14
def small_8380896_right_count : Nat := 69
def small_8380896_right_encoded : String := "120700F808A9130512070104000000020000000712073D0408A912FF12073D08050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD0CFD9C010F34D10000000000000000060000000600000003000000041207010800000004050000FC135D80FD000000030CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020000000700000006000000060F350D00045489F91386ACF8000000010CFD9C05000000070F350D0400000006000000020000000700000000135D44FD0CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050000000600000006000000060F350D000000000700000000000000030000000200000001"
theorem small_8380896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380896_right_root small_8380896_right_fuel small_8380896_right_count small_8380896_right_encoded = true := by
  decide +kernel
theorem small_8380896_right_covered : CoveredBy scale carrier boxes small_8380896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380896_right_root small_8380896_right_fuel small_8380896_right_count small_8380896_right_encoded small_8380896_right_checked

theorem cover_8380896 : CoveredBy scale carrier boxes root_8380896 := by
  apply coveredBy_split_literal root_8380896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8380897 small_8380896_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8380897
  · exact small_8380896_right_covered
#print axioms cover_8380896

def root_8380891 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380891_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380891_right_fuel : Nat := 1
def small_8380891_right_count : Nat := 1
def small_8380891_right_encoded : String := "00000000"
theorem small_8380891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380891_right_root small_8380891_right_fuel small_8380891_right_count small_8380891_right_encoded = true := by
  decide +kernel
theorem small_8380891_right_covered : CoveredBy scale carrier boxes small_8380891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380891_right_root small_8380891_right_fuel small_8380891_right_count small_8380891_right_encoded small_8380891_right_checked

theorem cover_8380891 : CoveredBy scale carrier boxes root_8380891 := by
  apply coveredBy_split_literal root_8380891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8380896 small_8380891_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8380896
  · exact small_8380891_right_covered
#print axioms cover_8380891

def root_8379971 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379971_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379971_left_fuel : Nat := 31
def small_8379971_left_count : Nat := 427
def small_8379971_left_encoded : String := "120701000000000008A912F912073CF80000000108A91305120701040000000208A912FF12073D08050000FC135D80FD0000000304548A01000000070000000700000007000000041207010800000004050000FC135D80FD0000000304548A011386710000000000000000051386AD000CFD9BF90F350CF8000000010000000500000007000000000000000512073D0408A912FF12073D08050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000090F350D0400000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFF000000090F34D108000000040C9A86F80F878CF90000000100000007000000050F350D040CFD9BFF000000060F34D1080000000400000006000000020F34D0F8000000060000000100000000135D44FD04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000050F350D0400000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D0400000006000000020F34D0F800000006000000010000000000000003000000041207010800000004050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A86F80F878CF900000001000000060F8750F90C9A87040000000900000005000000010000000413867108000000040C9A86F80F878CF9000000010C9A8704000000080F878D0500000008000000020F8750F90C9A87040F87510500000002078000FC128A7CFD00000003022A45810000000800000008000000050000000500000001000000020F34D0F80CFD9C050F34D10400000002045489FF1386AD08078000FC000000070000000700000004000000080F350D04045489FF000000060000000800000002000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FF1386AD080C9A86F80F878CF900000001078000FC128A7CFD00000003067ECE81000000070000000700000005000000050000000413867108000000040C9A86F80F878CF900000001078000FC128A7CFD00000003067ECE8112EA5900000000000000000512EA95000AD357850000000710D13D0400000007000000020000000000000005000000050F350D04045489FF1386AD080C9A86F80F878CF900000001000000060F8750F90C9A87040F87510500000002000000060F878D05078000FC128A7CFD00000003000000090000000500000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A87040F87510500000002000000060F878D05078000FC128A7CFD00000003067ECE810000000812EA9500022A457F00000006000000080000000000000008000000020F8750F90C9A87040F87510500000002078000FC128A7CFD00000003067ECE8112EA590000000000022A457F000000060000000812EA9500022A457F0000000613E1C508000000040000000800000000128A40FD067ECE810000000800000006000000030F878D05078000FC128A7CFD00000003067ECE8112EA5900000000000000000512EA9500022A457F13E201080B4D43F810804CF9000000010DE7CA040000000600000005000000050000000413E1C508000000040B4D43F8000000080000000500000000000000050000000200000001000000020F34D0F80CFD9C050F34D10400000002045489FF1386AD0800000007000000041386710800000004000000080F350D04045489FF00000006138671080000000400000008000000020000000100000000135D44FD04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C05000000050F350D04045489FF0000000500000008000000020F34D0F800000008000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A86F800000006000000050000000413867108000000040C9A86F80000000800000005000000020F34D0F80CFD9C05000000080F350D04000000060000000200000001000000000000000300000002120700F808A91305120701040000000208A912FF12073D0800000007000000040000000712073D0408A912FF000000061207010800000004050000FC135D80FD0000000304548A011386710000000000000000081386AD00045489F91386ACF8000000010CFD9C0500000008000000060000000600000000000000080000000200000001"
theorem small_8379971_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379971_left_root small_8379971_left_fuel small_8379971_left_count small_8379971_left_encoded = true := by
  decide +kernel
theorem small_8379971_left_covered : CoveredBy scale carrier boxes small_8379971_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379971_left_root small_8379971_left_fuel small_8379971_left_count small_8379971_left_encoded small_8379971_left_checked

theorem cover_8379971 : CoveredBy scale carrier boxes root_8379971 := by
  apply coveredBy_split_literal root_8379971 small_8379971_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8380891 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8379971_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8380891
#print axioms cover_8379971

def root_8379965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379965_left_fuel : Nat := 1
def small_8379965_left_count : Nat := 1
def small_8379965_left_encoded : String := "00000004"
theorem small_8379965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379965_left_root small_8379965_left_fuel small_8379965_left_count small_8379965_left_encoded = true := by
  decide +kernel
theorem small_8379965_left_covered : CoveredBy scale carrier boxes small_8379965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379965_left_root small_8379965_left_fuel small_8379965_left_count small_8379965_left_encoded small_8379965_left_checked

theorem cover_8379965 : CoveredBy scale carrier boxes root_8379965 := by
  apply coveredBy_split_literal root_8379965 small_8379965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8379971 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8379965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8379971
#print axioms cover_8379965

def root_8379899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379899_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379899_left_fuel : Nat := 13
def small_8379899_left_count : Nat := 33
def small_8379899_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF80000000108A9130500000007000000060000000612073D0008A912F912073CF80000000108A913050000000712073D04050000FC135D80FD000000030500010800000007135D80FF000000040CFD9C0100000007000000070000000700000002000000070000000000000004"
theorem small_8379899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379899_left_root small_8379899_left_fuel small_8379899_left_count small_8379899_left_encoded = true := by
  decide +kernel
theorem small_8379899_left_covered : CoveredBy scale carrier boxes small_8379899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379899_left_root small_8379899_left_fuel small_8379899_left_count small_8379899_left_encoded small_8379899_left_checked

theorem cover_8379899 : CoveredBy scale carrier boxes root_8379899 := by
  apply coveredBy_split_literal root_8379899 small_8379899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8379965 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8379899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8379965
#print axioms cover_8379899

def root_8379894 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379894_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379894_right_fuel : Nat := 1
def small_8379894_right_count : Nat := 1
def small_8379894_right_encoded : String := "00000003"
theorem small_8379894_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379894_right_root small_8379894_right_fuel small_8379894_right_count small_8379894_right_encoded = true := by
  decide +kernel
theorem small_8379894_right_covered : CoveredBy scale carrier boxes small_8379894_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379894_right_root small_8379894_right_fuel small_8379894_right_count small_8379894_right_encoded small_8379894_right_checked

theorem cover_8379894 : CoveredBy scale carrier boxes root_8379894 := by
  apply coveredBy_split_literal root_8379894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8379899 small_8379894_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8379899
  · exact small_8379894_right_covered
#print axioms cover_8379894

def root_8362022 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8362022 : CoveredBy scale carrier boxes root_8362022 := by
  apply coveredBy_split_literal root_8362022 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8362023 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8379894 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8362023
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8379894
#print axioms cover_8362022

def root_8362017 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362017_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362017_right_fuel : Nat := 1
def small_8362017_right_count : Nat := 1
def small_8362017_right_encoded : String := "00000002"
theorem small_8362017_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362017_right_root small_8362017_right_fuel small_8362017_right_count small_8362017_right_encoded = true := by
  decide +kernel
theorem small_8362017_right_covered : CoveredBy scale carrier boxes small_8362017_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362017_right_root small_8362017_right_fuel small_8362017_right_count small_8362017_right_encoded small_8362017_right_checked

theorem cover_8362017 : CoveredBy scale carrier boxes root_8362017 := by
  apply coveredBy_split_literal root_8362017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8362022 small_8362017_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8362022
  · exact small_8362017_right_covered
#print axioms cover_8362017

def root_8361097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361097_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361097_left_fuel : Nat := 32
def small_8361097_left_count : Nat := 427
def small_8361097_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A9130112070100000000000000000612073D00000000050000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000405000104135D45050000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0000000600000009000000061386AD000000000500000000135D810504548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F80F878CF900000001000000060F8750F900000009000000010F34D0FC00000009000000030F34D0F80CFD9BFD0000000600000005000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F80F878CF900000001000000060F8750F90C9A86FC000000070F8750FD0000000600000003000000010F34D0FC00000005000000030F34D0F800000005000000010000000000000002120700FC08A912FF000000090000000500000003120700F808A912FD00000006120700FC00000005000000030000000112073D0008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D080500010400000005135D81050CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0000000600000009000000060F350D000000000500000000000000020000000412070108000000040500010400000005135D81050CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F8000000050F8750F90C9A86FC0000000500000006000000010000000413867108000000040C9A86F8000000050F8750F90C9A86FC000000050F8750FD0780010400000005128A7D050AD3578110D101000000000000000006000000060000000200000003000000010F34D0FC00000005000000030F34D0F800000005000000010F350D000CFD9BF9000000050F34D0F800000005000000010000000000000002120700FC08A912FF0000000512070108000000040500010400000005135D8105000000050000000200000003120700F808A912FD12073CFC0000000308A912FF0000000512070108000000040500010400000005135D81050000000500000002120700FC08A912FF0000000512070108000000040500010400000005135D810500000005000000020000000300000001000000001151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FF00000006120701080000000405000104135D45050000000200000006135D8105050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F90000000600000001000000061386AD000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F900000006000000010000000600000000135D44FD04548A0113867100000000000CFD9BF900000006000000060000000600000003000000020000000612073D0008A912F912073CF80000000108A912FF12073D080500010400000006135D8105050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD00000006000000030000000200000004120701080000000405000104135D450500000002050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD0000000600000003135D8105050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F90780010400000006128A7D05000000060000000200000001000000060F350D000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A8700000000050F878D010C9A86F8000000050F8750F90780010400000005128A7D05000000060000000200000001000000000F34D0F8000000050000000100000000135D44FD0CFD9C010F34D100000000000CFD9BF900000006000000060F350D000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A87000F87510100000000000000060000000600000006000000000000000300000002120700F808A912FF00000006120701080000000400000006000000010000000000000003"
theorem small_8361097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8361097_left_root small_8361097_left_fuel small_8361097_left_count small_8361097_left_encoded = true := by
  decide +kernel
theorem small_8361097_left_covered : CoveredBy scale carrier boxes small_8361097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8361097_left_root small_8361097_left_fuel small_8361097_left_count small_8361097_left_encoded small_8361097_left_checked

theorem cover_8361097 : CoveredBy scale carrier boxes root_8361097 := by
  apply coveredBy_split_literal root_8361097 small_8361097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8362017 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8361097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8362017
#print axioms cover_8361097

def root_8361091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361091_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361091_left_fuel : Nat := 1
def small_8361091_left_count : Nat := 1
def small_8361091_left_encoded : String := "00000001"
theorem small_8361091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8361091_left_root small_8361091_left_fuel small_8361091_left_count small_8361091_left_encoded = true := by
  decide +kernel
theorem small_8361091_left_covered : CoveredBy scale carrier boxes small_8361091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8361091_left_root small_8361091_left_fuel small_8361091_left_count small_8361091_left_encoded small_8361091_left_checked

theorem cover_8361091 : CoveredBy scale carrier boxes root_8361091 := by
  apply coveredBy_split_literal root_8361091 small_8361091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8361097 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8361091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8361097
#print axioms cover_8361091

def root_8387776 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387776_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387776_right_fuel : Nat := 17
def small_8387776_right_count : Nat := 105
def small_8387776_right_encoded : String := "135D44F90CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350CFC0000000300000009000000090F350D0400000009000000020F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A8700000000080F878D010C9A86FC0000000800000009000000000000000413867108000000040C9A87000F875101000000000C9A86FC000000080F8750FD028000F80000000800000005000000030F878D010C9A86FC0F878CFD000000030000000600000005000000000F34D0FC00000008000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8751010000000000000008000000090000000413867108000000040C9A87000F875101000000000C9A87040F875105000000020C9A86FC000000070F8750FD028000F80000000800000008000000030F878D050C9A86FC000000080F8750FD028000F8000000080000000800000003000000020F878D010C9A8704000000090F878D050000000900000002000000000F34D0FC045489FF000000080000000900000003000000020000000000000001"
theorem small_8387776_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387776_right_root small_8387776_right_fuel small_8387776_right_count small_8387776_right_encoded = true := by
  decide +kernel
theorem small_8387776_right_covered : CoveredBy scale carrier boxes small_8387776_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387776_right_root small_8387776_right_fuel small_8387776_right_count small_8387776_right_encoded small_8387776_right_checked

theorem cover_8387776 : CoveredBy scale carrier boxes root_8387776 := by
  apply coveredBy_split_literal root_8387776 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3140.root small_8387776_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3140.covered
  · exact small_8387776_right_covered
#print axioms cover_8387776

def root_8387770 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387770_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387770_left_fuel : Nat := 1
def small_8387770_left_count : Nat := 1
def small_8387770_left_encoded : String := "00000004"
theorem small_8387770_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387770_left_root small_8387770_left_fuel small_8387770_left_count small_8387770_left_encoded = true := by
  decide +kernel
theorem small_8387770_left_covered : CoveredBy scale carrier boxes small_8387770_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387770_left_root small_8387770_left_fuel small_8387770_left_count small_8387770_left_encoded small_8387770_left_checked

theorem cover_8387770 : CoveredBy scale carrier boxes root_8387770 := by
  apply coveredBy_split_literal root_8387770 small_8387770_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8387776 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8387770_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8387776
#print axioms cover_8387770

def root_8387566 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387566_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387566_left_fuel : Nat := 16
def small_8387566_left_count : Nat := 95
def small_8387566_left_encoded : String := "12073D08050000F8135D80F9000000010CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0000000900000009000000090F350D0400000009000000020F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D108000000040C9A8700000000080F878D010000000800000000000000080F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F87510100000000000000080F878D010C9A8704000000090F878D050000000900000002000000000F34D0FC00000008000000030000000200000000135D44F90CFD9C010F34D100000000000CFD9C0500000009000000090F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D1080000000400000008000000080F350D040CFD9BFD0F350CFC000000030CFD9BFF00000008000000090000000900000002000000000000000100000004"
theorem small_8387566_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387566_left_root small_8387566_left_fuel small_8387566_left_count small_8387566_left_encoded = true := by
  decide +kernel
theorem small_8387566_left_covered : CoveredBy scale carrier boxes small_8387566_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387566_left_root small_8387566_left_fuel small_8387566_left_count small_8387566_left_encoded small_8387566_left_checked

theorem cover_8387566 : CoveredBy scale carrier boxes root_8387566 := by
  apply coveredBy_split_literal root_8387566 small_8387566_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8387770 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8387566_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8387770
#print axioms cover_8387566

def root_8387560 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387560_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387560_left_fuel : Nat := 1
def small_8387560_left_count : Nat := 1
def small_8387560_left_encoded : String := "00000003"
theorem small_8387560_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387560_left_root small_8387560_left_fuel small_8387560_left_count small_8387560_left_encoded = true := by
  decide +kernel
theorem small_8387560_left_covered : CoveredBy scale carrier boxes small_8387560_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387560_left_root small_8387560_left_fuel small_8387560_left_count small_8387560_left_encoded small_8387560_left_checked

theorem cover_8387560 : CoveredBy scale carrier boxes root_8387560 := by
  apply coveredBy_split_literal root_8387560 small_8387560_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8387566 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8387560_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8387566
#print axioms cover_8387560

def root_8387559 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387559_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387559_right_fuel : Nat := 11
def small_8387559_right_count : Nat := 49
def small_8387559_right_encoded : String := "120700FC08A912FF12073D08050000F8135D80F9000000010CFD9C010F34D100000000000000000900000008135D44F90CFD9C01000000080000000800000001000000041207010800000004050000F8135D80F9000000010CFD9C010F34D10000000000000000090F350D000CFD9C050F34D10400000002000000080F350D04045489FD00000008000000070000000200000000135D44F90CFD9C01000000090F350D000CFD9C050F34D104000000020000000600000008000000000000000100000003"
theorem small_8387559_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387559_right_root small_8387559_right_fuel small_8387559_right_count small_8387559_right_encoded = true := by
  decide +kernel
theorem small_8387559_right_covered : CoveredBy scale carrier boxes small_8387559_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387559_right_root small_8387559_right_fuel small_8387559_right_count small_8387559_right_encoded small_8387559_right_checked

theorem cover_8387559 : CoveredBy scale carrier boxes root_8387559 := by
  apply coveredBy_split_literal root_8387559 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8387560 small_8387559_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8387560
  · exact small_8387559_right_covered
#print axioms cover_8387559

def root_8387554 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387554_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387554_right_fuel : Nat := 1
def small_8387554_right_count : Nat := 1
def small_8387554_right_encoded : String := "00000002"
theorem small_8387554_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387554_right_root small_8387554_right_fuel small_8387554_right_count small_8387554_right_encoded = true := by
  decide +kernel
theorem small_8387554_right_covered : CoveredBy scale carrier boxes small_8387554_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387554_right_root small_8387554_right_fuel small_8387554_right_count small_8387554_right_encoded small_8387554_right_checked

theorem cover_8387554 : CoveredBy scale carrier boxes root_8387554 := by
  apply coveredBy_split_literal root_8387554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8387559 small_8387554_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8387559
  · exact small_8387554_right_covered
#print axioms cover_8387554

def root_8386754 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386754_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386754_left_fuel : Nat := 27
def small_8386754_left_count : Nat := 375
def small_8386754_left_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073D08050000F8135D80F9000000010CFD9C010F34D1000000000004548A0513867104000000020CFD9BFD0F350CFC00000003000000070F34D0FC00000008000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A86FC0F878CFD0000000300000009000000050F34D0FC0000000800000003000000020F350D0004548A051386710400000002000000081386AD040CFD9BFD0F350CFC000000030CFD9BFF000000080F34D1080000000400000008000000080000000200000000135D44F90CFD9C010F34D1000000000004548A0513867104000000020CFD9BFD0F350CFC0000000300000005000000091386AD040CFD9BFD0F350CFC000000030000000900000009000000020F350D0004548A051386710400000002000000081386AD040CFD9BFD0000000800000008000000020000000000000001000000041207010800000004050000F8135D80F9000000010CFD9C010F34D1000000000004548A0513867104000000020CFD9BFD0F350CFC00000003000000050F34D0FC045489FF1386AD08078000F800000009000000060000000400000006000000031386AD040CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003078000F8128A7CF9000000010AD357810000000910D13D00000000090000000000000005000000050000000413867108000000040C9A86FC0F878CFD00000003078000F8128A7CF9000000010AD357810000000910D13D00067ECE850000000612EA950400000009000000020000000000000005000000050F34D0FC045489FF1386AD08000000090000000413867108000000040000000600000003000000020F350D0004548A0513867104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F87510100000000000000080F878D010C9A86FC0F878CFD000000030000000800000005000000000000000413867108000000040C9A87000F875101000000000C9A86FC000000060F8750FD078000F8128A7CF900000001022A4585000000060000000600000005000000030F878D010C9A86FC0F878CFD000000030000000600000005000000000F34D0FC045489FF0000000800000006000000031386AD040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F87510100000000000000080F878D010C9A86FC0F878CFD00000003000000080F8750FD078000F8128A7CF900000001000000070000000500000003000000000000000413867108000000040C9A87000F875101000000000C9A86FC0F878CFD00000003000000080F8750FD078000F8128A7CF900000001067ECE8512EA590400000002022A457F000000070000000612EA9504022A457F0000000813E1C508000000040000000600000002128A40F9067ECE85000000060000000600000001000000030F878D010C9A86FC0F878CFD00000003078000F8128A7CF900000001067ECE850000000612EA9504022A457F000000080000000600000002000000060F8750FD078000F8128A7CF900000001067ECE8512EA5904000000020000000512EA9504022A457F13E201080DE7CA0000000007000000050000000413E1C508000000040DE7CA000000000600000005000000020000000500000003000000000F34D0FC045489FF00000008138671080000000400000006000000030000000200000000135D44F90CFD9C010F34D1000000000004548A05000000051386AD040CFD9BFD0000000500000009000000020F350D0004548A0513867104000000020CFD9BFD0F350CFC00000003045489FF0000000500000006000000061386AD040CFD9BFD0F350CFC00000003045489FF1386AD080C9A870000000008000000050000000413867108000000040C9A870000000006000000050F34D0FC0000000600000003000000020000000000000001120700FC08A912FF000000081207010800000004050000F8135D80F9000000010CFD9C010F34D1000000000004548A050000000600000006000000080000000600000003"
theorem small_8386754_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386754_left_root small_8386754_left_fuel small_8386754_left_count small_8386754_left_encoded = true := by
  decide +kernel
theorem small_8386754_left_covered : CoveredBy scale carrier boxes small_8386754_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386754_left_root small_8386754_left_fuel small_8386754_left_count small_8386754_left_encoded small_8386754_left_checked

theorem cover_8386754 : CoveredBy scale carrier boxes root_8386754 := by
  apply coveredBy_split_literal root_8386754 small_8386754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8387554 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8386754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8387554
#print axioms cover_8386754

def root_8386749 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386749_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386749_right_fuel : Nat := 1
def small_8386749_right_count : Nat := 1
def small_8386749_right_encoded : String := "00000000"
theorem small_8386749_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386749_right_root small_8386749_right_fuel small_8386749_right_count small_8386749_right_encoded = true := by
  decide +kernel
theorem small_8386749_right_covered : CoveredBy scale carrier boxes small_8386749_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386749_right_root small_8386749_right_fuel small_8386749_right_count small_8386749_right_encoded small_8386749_right_checked

theorem cover_8386749 : CoveredBy scale carrier boxes root_8386749 := by
  apply coveredBy_split_literal root_8386749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386754 small_8386749_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386754
  · exact small_8386749_right_covered
#print axioms cover_8386749

def root_8386555 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386555_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386555_left_fuel : Nat := 19
def small_8386555_left_count : Nat := 93
def small_8386555_left_encoded : String := "120701000000000008A91305120701040000000208A912FD12073CFC0000000308A912FF12073D08050000F8135D80F90000000104548A01000000091386AD0004548A0500000009000000090000000000000009000000041207010800000004050000F8135D80F90000000104548A01000000091386AD0004548A051386710400000002000000051386AD040CFD9BFD0F350CFC000000030000000500000009000000020000000000000005120700FC08A912FF12073D080000000900000004000000090000000312073D0408A912FD12073CFC0000000308A912FF12073D08050000F80000000900000009000000041207010800000004050000F8135D80F90000000104548A0113867100000000000CFD9C05000000090F350D0400000009000000021386AD000CFD9C05000000090F350D040CFD9BFD0F350CFC00000003045489FF0000000913867108000000040C9A87040000000900000009000000090000000200000000000000090000000900000002"
theorem small_8386555_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386555_left_root small_8386555_left_fuel small_8386555_left_count small_8386555_left_encoded = true := by
  decide +kernel
theorem small_8386555_left_covered : CoveredBy scale carrier boxes small_8386555_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386555_left_root small_8386555_left_fuel small_8386555_left_count small_8386555_left_encoded small_8386555_left_checked

theorem cover_8386555 : CoveredBy scale carrier boxes root_8386555 := by
  apply coveredBy_split_literal root_8386555 small_8386555_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386749 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8386555_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386749
#print axioms cover_8386555

def root_8386549 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386549_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386549_left_fuel : Nat := 1
def small_8386549_left_count : Nat := 1
def small_8386549_left_encoded : String := "00000004"
theorem small_8386549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386549_left_root small_8386549_left_fuel small_8386549_left_count small_8386549_left_encoded = true := by
  decide +kernel
theorem small_8386549_left_covered : CoveredBy scale carrier boxes small_8386549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386549_left_root small_8386549_left_fuel small_8386549_left_count small_8386549_left_encoded small_8386549_left_checked

theorem cover_8386549 : CoveredBy scale carrier boxes root_8386549 := by
  apply coveredBy_split_literal root_8386549 small_8386549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386555 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8386549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386555
#print axioms cover_8386549

def root_8386487 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386487_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386487_left_fuel : Nat := 13
def small_8386487_left_count : Nat := 29
def small_8386487_left_encoded : String := "1151E8FF08A9130112070100000000000000000912073D0008A9130512070104000000020000000812073D0408A912FD12073CFC00000003050000F8135D80F9000000010500010800000009135D80FF000000040CFD9C0100000009000000080000000900000008000000020000000000000004"
theorem small_8386487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386487_left_root small_8386487_left_fuel small_8386487_left_count small_8386487_left_encoded = true := by
  decide +kernel
theorem small_8386487_left_covered : CoveredBy scale carrier boxes small_8386487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386487_left_root small_8386487_left_fuel small_8386487_left_count small_8386487_left_encoded small_8386487_left_checked

theorem cover_8386487 : CoveredBy scale carrier boxes root_8386487 := by
  apply coveredBy_split_literal root_8386487 small_8386487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386549 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8386487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386549
#print axioms cover_8386487

def root_8386481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386481_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386481_left_fuel : Nat := 1
def small_8386481_left_count : Nat := 1
def small_8386481_left_encoded : String := "00000003"
theorem small_8386481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386481_left_root small_8386481_left_fuel small_8386481_left_count small_8386481_left_encoded = true := by
  decide +kernel
theorem small_8386481_left_covered : CoveredBy scale carrier boxes small_8386481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386481_left_root small_8386481_left_fuel small_8386481_left_count small_8386481_left_encoded small_8386481_left_checked

theorem cover_8386481 : CoveredBy scale carrier boxes root_8386481 := by
  apply coveredBy_split_literal root_8386481 small_8386481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386487 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8386481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386487
#print axioms cover_8386481

def root_8393267 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8393267_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8393267_left_fuel : Nat := 26
def small_8393267_left_count : Nat := 465
def small_8393267_left_encoded : String := "0F875101000000000C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010B4D44040000000A10804D0508C000F811FC24F9000000010000000A0000000A0000000200000000128A40FD022A457F0000000A13E1C508000000040B4D44000000000A10804D010B4D44040000000A10804D0508C000F80000000A0000000A000000020000000000000003128A40F9078000FC128A7CFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010B4D44040000000A10804D05064000F80000000A0000000A0000000200000000128A40FD022A457F0000000A13E1C508000000040B4D44000000000A10804D010B4D44040000000A10804D050000000A000000020000000000000003000000010F878D05078000F8128A7CF900000001078000FC128A7CFD00000003022A457F13E201080B4D440010801101000000000DE7CA040000000A0000000810804D010DE7CA040E5FD9050000000208C000F80000000A0000000A0E60150508C000F811FC24F90000000108C000FC000000080000000711FBE8F9000000080000000100000002000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD9050000000208C000F811FC24F9000000010000000A0000000A0E60150508C000F811FC24F9000000010000000911FBE8F908C000FC0000000811FBE8FD0115233F0000000813F85908000000040000000900000003000000010000000210804D010DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC11FC24FD000000030115233F0000000A13F85908000000040BF3E58000000005100929010D412884000000050EFA4D050000000A000000020000000011FBE8FD0115233F0000000A13F85908000000040BF3E58000000009100929010000000A000000000000000311FBE8F908C000FC11FC24FD000000030115233F0000000813F85908000000040BF3E58000000008100929010000000A0000000011FBE8FD0115233F0000000A13F85908000000040000000A00000003000000010E60150508C000F811FC24F90000000108C000FC11FC24FD000000030115233F13F895080DAED8850E9625040000000200000008000000080000000413F85908000000040DAED8850E962504000000020BF3E5800000000910092901096000F80000000911AA80F90000000800000001000000000E9661040BF3E5800000000910092901096000F80000000911AA80F90000000800000001000000000000000211FBE8FD0115233F0000000713F85908000000040DAED8850E9625040000000200000007000000090000000311FBE8F908C000FC11FC24FD000000030115233F0000000813F85908000000040DAED8850E96250400000002000000080000000811FBE8FD0115233F13F895080DAED8850E96250400000002000000070E9661040000000A000000020000000413F85908000000040DAED8850E962504000000020BF3E5801008ED0100000000082000F80000000700000005000000050E9661040BF3E5800000000A10092901082000F8124698F9000000010000000A00000005000000000000000200000003000000010000000200000000128A40FD022A457F13E201080B4D440010801101000000000DE7CA040000000A0000000710804D010DE7CA040E5FD905000000020000000A00000007000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD9050000000208C000F8000000090000000A0E60150508C000F80000000711FBE8F9064000FC12FFACFD000000030000000700000005000000010000000210804D010DE7CA040E5FD9050000000208C000F811FC24F900000001064000FC12FFACFD000000030000000A0000000711FBE8F9064000FC12FFACFD000000030000000A00000005000000010E60150508C000F80000000700000005000000020000000000000003128A40F9078000FC128A7CFD00000003022A457F13E201080B4D44000000000810804D010DE7CA040E5FD905000000020000000800000008000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD90500000002064000F800000008000000080E601505064000F800000008000000080000000210804D010DE7CA040E5FD90500000002064000F812FFACF90000000108C000FC11FC24FD00000003000000080000000A12FF70F908C000FC000000080000000A000000010E601505064000F812FFACF90000000108C000FC11FC24FD000000030000000800000005000000050000000200000000128A40FD022A457F13E201080B4D440010801101000000000DE7CA040000000A0E601505000000050000000210804D010DE7CA040E5FD905000000020000000A00000005000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD905000000020000000A0E601505000000050000000210804D010000000500000000000000030000000100000002"
theorem small_8393267_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8393267_left_root small_8393267_left_fuel small_8393267_left_count small_8393267_left_encoded = true := by
  decide +kernel
theorem small_8393267_left_covered : CoveredBy scale carrier boxes small_8393267_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8393267_left_root small_8393267_left_fuel small_8393267_left_count small_8393267_left_encoded small_8393267_left_checked

theorem cover_8393267 : CoveredBy scale carrier boxes root_8393267 := by
  apply coveredBy_split_literal root_8393267 small_8393267_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3141.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8393267_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3141.covered
#print axioms cover_8393267

def root_8393261 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8393261_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8393261_left_fuel : Nat := 1
def small_8393261_left_count : Nat := 1
def small_8393261_left_encoded : String := "00000004"
theorem small_8393261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8393261_left_root small_8393261_left_fuel small_8393261_left_count small_8393261_left_encoded = true := by
  decide +kernel
theorem small_8393261_left_covered : CoveredBy scale carrier boxes small_8393261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8393261_left_root small_8393261_left_fuel small_8393261_left_count small_8393261_left_encoded small_8393261_left_checked

theorem cover_8393261 : CoveredBy scale carrier boxes root_8393261 := by
  apply coveredBy_split_literal root_8393261 small_8393261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8393267 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8393261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8393267
#print axioms cover_8393261

def root_8392899 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392899_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392899_left_fuel : Nat := 18
def small_8392899_left_count : Nat := 173
def small_8392899_left_encoded : String := "1386AD080C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001078000FC0000000A0000000A128A40F9078000FC0000000A0000000A000000010F878D05078000F8128A7CF900000001078000FC128A7CFD00000003067ECE7F0000000812EA5908000000040B4D44000000000810804D010DE7CA040000000A0000000800000000128A40FD0000000700000003128A40F9078000FC128A7CFD0000000300000008128A40FD067ECE7F0000000712EA5908000000040B4D44000000000710804D010DE7CA040000000A00000005000000000000000300000001000000020F878D010C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040DE7CA000000000A00000006128A40FD0000000600000003128A40F9078000FC128A7CFD0000000300000009128A40FD067ECE7F0000000612EA5908000000040DE7CA000000000A0000000900000003000000010F878D05078000F8128A7CF900000001078000FC128A7CFD00000003067ECE7F12EA95080DE7CA000E5FD901000000000DE7CA040000000900000007000000090000000412EA5908000000040DE7CA000E5FD901000000000DE7CA040E5FD9050000000208C000F80000000A0000000A0E60150508C000F80000000711FBE8F90000000800000001000000020E6015010DE7CA040E5FD9050000000208C000F800000006000000090E60150508C000F811FC24F90000000100000007000000050000000200000000128A40FD067ECE7F0000000712EA5908000000040DE7CA00000000070E601501000000050000000000000003128A40F9078000FC128A7CFD00000003067ECE7F0000000912EA5908000000040DE7CA000E5FD9010000000000000009000000090000000500000001000000020000000000000004"
theorem small_8392899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8392899_left_root small_8392899_left_fuel small_8392899_left_count small_8392899_left_encoded = true := by
  decide +kernel
theorem small_8392899_left_covered : CoveredBy scale carrier boxes small_8392899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8392899_left_root small_8392899_left_fuel small_8392899_left_count small_8392899_left_encoded small_8392899_left_checked

theorem cover_8392899 : CoveredBy scale carrier boxes root_8392899 := by
  apply coveredBy_split_literal root_8392899 small_8392899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8393261 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8392899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8393261
#print axioms cover_8392899

def root_8392894 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392894_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392894_right_fuel : Nat := 1
def small_8392894_right_count : Nat := 1
def small_8392894_right_encoded : String := "00000002"
theorem small_8392894_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8392894_right_root small_8392894_right_fuel small_8392894_right_count small_8392894_right_encoded = true := by
  decide +kernel
theorem small_8392894_right_covered : CoveredBy scale carrier boxes small_8392894_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8392894_right_root small_8392894_right_fuel small_8392894_right_count small_8392894_right_encoded small_8392894_right_checked

theorem cover_8392894 : CoveredBy scale carrier boxes root_8392894 := by
  apply coveredBy_split_literal root_8392894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8392899 small_8392894_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8392899
  · exact small_8392894_right_covered
#print axioms cover_8392894

def root_8392394 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392394_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392394_left_fuel : Nat := 30
def small_8392394_left_count : Nat := 235
def small_8392394_left_encoded : String := "0F34D10400000002045489FF1386AD080C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD000000030000000700000007128A40F9078000FC128A7CFD000000030000000800000005000000010F878D01078000F8128A7CF900000001078000FC128A7CFD000000030AD3578500000007000000070000000500000005000000000000000413867108000000040C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D1010400000002022A457F0000000713E1C508000000040B4D44000000000710804D01000000070000000010D13D04022A457F13E201080B4D44000000000710804D0108C000F80000000711FBE8F908C000FC000000080000000500000001000000000000000413E1C508000000040B4D4400108011010000000008C000F811FC24F9000000010000000911FBE8F908C000FC0000000811FBE8FD00000007000000030000000110804D0108C000F811FC24F90000000108C000FC11FC24FD000000030BE879C51011710400000002000000071011AD040115233F0000000713F85908000000040BF3E5800000000710092901096000F80000000711AA80F9000000080000000100000000000000020000000711FBE8F908C000FC11FC24FD000000030BE879C51011710400000002000000080000000800000005000000010000000000000002128A40FD0AD35785000000070000000700000003128A40F9078000FC128A7CFD000000030AD3578510D10104000000020000000510D13D04022A457F13E201080B4D440000000008000000050000000413E1C508000000040B4D44001080110100000000064000F80000000800000005000000050000000200000005000000010F878D01078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D10104000000020000000510D13D04022A457F13E201080DE7CA000E5FD9010000000008C000F811FC24F9000000010000000700000005000000050000000413E1C508000000040DE7CA000E5FD9010000000008C000F811FC24F90000000108C000FC11FC24FD000000030BE879C51011710400000002000000051011AD040115233F0000000713F85908000000040D4128800EFA110100000000096000F811AABCF9000000010000000711AA80F9096000FC11AABCFD000000030000000800000005000000010EFA4D01096000F811AABCF9000000010000000700000005000000000000000200000005000000050000000500000002000000050000000500000000"
theorem small_8392394_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8392394_left_root small_8392394_left_fuel small_8392394_left_count small_8392394_left_encoded = true := by
  decide +kernel
theorem small_8392394_left_covered : CoveredBy scale carrier boxes small_8392394_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8392394_left_root small_8392394_left_fuel small_8392394_left_count small_8392394_left_encoded small_8392394_left_checked

theorem cover_8392394 : CoveredBy scale carrier boxes root_8392394 := by
  apply coveredBy_split_literal root_8392394 small_8392394_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8392894 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8392394_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8392894
#print axioms cover_8392394

def root_8392389 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392389_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8392389_right_fuel : Nat := 1
def small_8392389_right_count : Nat := 1
def small_8392389_right_encoded : String := "00000000"
theorem small_8392389_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8392389_right_root small_8392389_right_fuel small_8392389_right_count small_8392389_right_encoded = true := by
  decide +kernel
theorem small_8392389_right_covered : CoveredBy scale carrier boxes small_8392389_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8392389_right_root small_8392389_right_fuel small_8392389_right_count small_8392389_right_encoded small_8392389_right_checked

theorem cover_8392389 : CoveredBy scale carrier boxes root_8392389 := by
  apply coveredBy_split_literal root_8392389 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8392394 small_8392389_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8392394
  · exact small_8392389_right_covered
#print axioms cover_8392389

def root_8391887 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391887_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391887_left_fuel : Nat := 32
def small_8391887_left_count : Nat := 237
def small_8391887_left_encoded : String := "0F34D100000000000CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD0000000300000009128A40FD0000000600000003000000090F878D05078000F8128A7CF900000001078000FC128A7CFD000000030AD3578100000009000000090000000500000005000000020000000413867108000000040C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD000000030AD3578110D1010000000000022A457F0000000913E1C508000000040B4D44040000000910804D05000000090000000210D13D00022A457F13E201080B4D44040000000910804D0508C000F811FC24F9000000010000000600000009000000020000000413E1C508000000040B4D4404108011050000000208C000F811FC24F90000000108C000FC000000060000000611FBE8F9000000090000000110804D0508C000F811FC24F90000000108C000FC11FC24FD000000030BE879C11011710000000000000000091011AD000115233F0000000613F85908000000040BF3E5840000000710092905096000F811AABCF9000000010000000600000009000000020000000011FBE8FD0BE879C1101171000000000000000006000000060000000311FBE8F908C000FC0000000900000005000000010000000200000000128A40FD0AD3578110D10100000000000000000510D13D00022A457F13E201080B4D440400000006000000050000000413E1C508000000040B4D4404108011050000000208C000F80000000600000005000000050000000000000003128A40F9078000FC128A7CFD000000030AD35781000000090000000900000005000000010F878D05078000F8128A7CF900000001078000FC128A7CFD000000030AD3578110D10100000000000000000510D13D00022A457F13E201080DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC000000090000000500000005000000050000000413E1C508000000040DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC11FC24FD000000030BE879C11011710000000000000000051011AD000115233F0000000913F85908000000040D4128840EFA110500000002096000F811AABCF900000001096000FC0000000911AA80FD0000000600000003000000090EFA4D05096000F811AABCF900000001096000FC11AABCFD0000000300000009000000050000000500000002000000000000000500000005000000050000000000000005000000050000000200000002"
theorem small_8391887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391887_left_root small_8391887_left_fuel small_8391887_left_count small_8391887_left_encoded = true := by
  decide +kernel
theorem small_8391887_left_covered : CoveredBy scale carrier boxes small_8391887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391887_left_root small_8391887_left_fuel small_8391887_left_count small_8391887_left_encoded small_8391887_left_checked

theorem cover_8391887 : CoveredBy scale carrier boxes root_8391887 := by
  apply coveredBy_split_literal root_8391887 small_8391887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8392389 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8391887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8392389
#print axioms cover_8391887

def root_8391881 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391881_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391881_left_fuel : Nat := 1
def small_8391881_left_count : Nat := 1
def small_8391881_left_encoded : String := "00000003"
theorem small_8391881_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391881_left_root small_8391881_left_fuel small_8391881_left_count small_8391881_left_encoded = true := by
  decide +kernel
theorem small_8391881_left_covered : CoveredBy scale carrier boxes small_8391881_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391881_left_root small_8391881_left_fuel small_8391881_left_count small_8391881_left_encoded small_8391881_left_checked

theorem cover_8391881 : CoveredBy scale carrier boxes root_8391881 := by
  apply coveredBy_split_literal root_8391881 small_8391881_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391887 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8391881_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391887
#print axioms cover_8391881

def root_8391880 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391880_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391880_right_fuel : Nat := 22
def small_8391880_right_count : Nat := 139
def small_8391880_right_encoded : String := "135D44FD0CFD9C010F34D100000000000CFD9C05000000050F350D04045489FF00000005138671080000000400000005000000020F350D000CFD9C050F34D10400000002045489FF000000051386710800000004000000050F350D04045489FF1386AD080C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001000000060000000A000000070F878D010C9A87040F87510500000002078000F800000006128A40F9000000050000000100000007000000000000000413867108000000040C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001028000FC13D7ECFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A000000000000000A128A40F9028000FC13D7ECFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A0000000000000005000000010F878D05078000F8128A7CF900000001028000FC13D7ECFD00000003022A457F0000000713E1C508000000040B4D44000000000710804D0100000005000000000000000500000005000000020F878D010C9A87040F87510500000002078000F8128A7CF900000001028000FC13D7ECFD00000003022A457F0000000613E1C508000000040DE7CA000E5FD901000000000B4D44040000000610804D0500000005000000020E601501000000050000000000000005000000050000000500000000000000020000000000000003"
theorem small_8391880_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391880_right_root small_8391880_right_fuel small_8391880_right_count small_8391880_right_encoded = true := by
  decide +kernel
theorem small_8391880_right_covered : CoveredBy scale carrier boxes small_8391880_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391880_right_root small_8391880_right_fuel small_8391880_right_count small_8391880_right_encoded small_8391880_right_checked

theorem cover_8391880 : CoveredBy scale carrier boxes root_8391880 := by
  apply coveredBy_split_literal root_8391880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391881 small_8391880_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391881
  · exact small_8391880_right_covered
#print axioms cover_8391880

def root_8391874 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391874_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391874_left_fuel : Nat := 1
def small_8391874_left_count : Nat := 1
def small_8391874_left_encoded : String := "00000001"
theorem small_8391874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391874_left_root small_8391874_left_fuel small_8391874_left_count small_8391874_left_encoded = true := by
  decide +kernel
theorem small_8391874_left_covered : CoveredBy scale carrier boxes small_8391874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391874_left_root small_8391874_left_fuel small_8391874_left_count small_8391874_left_encoded small_8391874_left_checked

theorem cover_8391874 : CoveredBy scale carrier boxes root_8391874 := by
  apply coveredBy_split_literal root_8391874 small_8391874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391880 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8391874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391880
#print axioms cover_8391874

def root_8391873 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391873_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391873_right_fuel : Nat := 22
def small_8391873_right_count : Nat := 179
def small_8391873_right_encoded : String := "135D44F9050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C05000000050F350D04045489FF00000005138671080000000400000005000000020F350D000CFD9C050F34D10400000002045489FF000000051386710800000004000000050F350D04045489FF1386AD080C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001078000FC000000080000000A000000090F878D05028000F813D7ECF900000001078000FC00000008128A40FD000000050000000300000009000000020F878D010C9A8704000000090F878D050000000500000002000000000000000413867108000000040C9A87000F875101000000000C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD00000003022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A00000000128A40FD022A457F0000000A13E1C508000000040B4D44000000000A10804D010000000A000000000000000313D7B0F9078000FC128A7CFD000000030000000A00000005000000010F878D05028000F813D7ECF900000001078000FC128A7CFD00000003022A457F0000000813E1C508000000040B4D440010801101000000000000000810804D0100000005000000000000000500000005000000020F878D010C9A87040F87510500000002028000F813D7ECF900000001078000FC128A7CFD00000003022A457F0000000913E1C508000000040DE7CA000E5FD901000000000000000900000009000000050000000500000005000000000000000200000000135D44FD0CFD9C010F34D10000000000000000050F350D000CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A87000F875101000000000C9A87040F87510500000002028000F80000000A0000000500000005000000050000000413867108000000040000000500000002000000000000000300000001"
theorem small_8391873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391873_right_root small_8391873_right_fuel small_8391873_right_count small_8391873_right_encoded = true := by
  decide +kernel
theorem small_8391873_right_covered : CoveredBy scale carrier boxes small_8391873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391873_right_root small_8391873_right_fuel small_8391873_right_count small_8391873_right_encoded small_8391873_right_checked

theorem cover_8391873 : CoveredBy scale carrier boxes root_8391873 := by
  apply coveredBy_split_literal root_8391873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391874 small_8391873_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391874
  · exact small_8391873_right_covered
#print axioms cover_8391873

def root_8391867 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391867_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391867_left_fuel : Nat := 1
def small_8391867_left_count : Nat := 1
def small_8391867_left_encoded : String := "00000004"
theorem small_8391867_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391867_left_root small_8391867_left_fuel small_8391867_left_count small_8391867_left_encoded = true := by
  decide +kernel
theorem small_8391867_left_covered : CoveredBy scale carrier boxes small_8391867_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391867_left_root small_8391867_left_fuel small_8391867_left_count small_8391867_left_encoded small_8391867_left_checked

theorem cover_8391867 : CoveredBy scale carrier boxes root_8391867 := by
  apply coveredBy_split_literal root_8391867 small_8391867_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391873 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8391867_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391873
#print axioms cover_8391867

def root_8391505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391505_left_fuel : Nat := 18
def small_8391505_left_count : Nat := 169
def small_8391505_left_encoded : String := "12073D08050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFF00000007000000070F350D040CFD9BFF000000090F34D1080000000400000009000000020F350D000CFD9C050F34D104000000020CFD9BFF000000070F34D10800000004000000070F350D040CFD9BFF0F350D080C9A87000000000700000009000000040F34D108000000040C9A87000F875101000000000C9A87040F87510500000002078000F8000000060000000A0F878D05078000F800000007128A40F90000000800000001000000020F878D010C9A87040F87510500000002078000F800000006000000090F878D05078000F8128A7CF900000001000000070000000900000002000000000000000200000000135D44FD0CFD9C010F34D100000000000CFD9C050F34D10400000002000000050F350D040CFD9BFF000000090F34D108000000040C9A87040F875105000000020000000600000005000000020F350D000CFD9C050F34D10400000002000000070F350D040CFD9BFF000000070F34D108000000040C9A87000000000700000007000000020000000000000003135D44F9050000FC135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9C050F34D104000000020CFD9BFF000000070F34D108000000040C9A87000F8751010000000000000008000000050F350D040CFD9BFF000000090F34D108000000040C9A87000F8751010000000000000009000000090000000200000000135D44FD0CFD9C010F34D10000000000000000090F350D000CFD9C050F34D10400000002000000070F350D040CFD9BFF000000070F34D108000000040C9A87000F875101000000000C9A87040000000900000005000000050000000200000000000000030000000100000004"
theorem small_8391505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391505_left_root small_8391505_left_fuel small_8391505_left_count small_8391505_left_encoded = true := by
  decide +kernel
theorem small_8391505_left_covered : CoveredBy scale carrier boxes small_8391505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391505_left_root small_8391505_left_fuel small_8391505_left_count small_8391505_left_encoded small_8391505_left_checked

theorem cover_8391505 : CoveredBy scale carrier boxes root_8391505 := by
  apply coveredBy_split_literal root_8391505 small_8391505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391867 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8391505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391867
#print axioms cover_8391505

def root_8391500 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391500_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391500_right_fuel : Nat := 1
def small_8391500_right_count : Nat := 1
def small_8391500_right_encoded : String := "00000002"
theorem small_8391500_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391500_right_root small_8391500_right_fuel small_8391500_right_count small_8391500_right_encoded = true := by
  decide +kernel
theorem small_8391500_right_covered : CoveredBy scale carrier boxes small_8391500_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391500_right_root small_8391500_right_fuel small_8391500_right_count small_8391500_right_encoded small_8391500_right_checked

theorem cover_8391500 : CoveredBy scale carrier boxes root_8391500 := by
  apply coveredBy_split_literal root_8391500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391505 small_8391500_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391505
  · exact small_8391500_right_covered
#print axioms cover_8391500

def root_8391332 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391332_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391332_left_fuel : Nat := 20
def small_8391332_left_count : Nat := 79
def small_8391332_left_encoded : String := "120701040000000208A912FF12073D08050000F8135D80F900000001050000FC135D80FD000000030CFD9C01000000070F350D00000000070000000000000007135D44F9050000FC135D80FD000000030CFD9C01000000050F350D0004548A05000000051386AD040CFD9BFF000000050F34D108000000040000000500000002000000000000000500000001000000041207010800000004050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D10000000000000000050F350D0004548A051386710400000002000000051386AD04045489FF1386AD080C9A870000000007000000050000000413867108000000040C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD000000030000000700000005000000050000000500000002000000000000000500000005"
theorem small_8391332_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391332_left_root small_8391332_left_fuel small_8391332_left_count small_8391332_left_encoded = true := by
  decide +kernel
theorem small_8391332_left_covered : CoveredBy scale carrier boxes small_8391332_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391332_left_root small_8391332_left_fuel small_8391332_left_count small_8391332_left_encoded small_8391332_left_checked

theorem cover_8391332 : CoveredBy scale carrier boxes root_8391332 := by
  apply coveredBy_split_literal root_8391332 small_8391332_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391500 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8391332_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391500
#print axioms cover_8391332

def root_8391327 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391327_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391327_right_fuel : Nat := 1
def small_8391327_right_count : Nat := 1
def small_8391327_right_encoded : String := "00000000"
theorem small_8391327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391327_right_root small_8391327_right_fuel small_8391327_right_count small_8391327_right_encoded = true := by
  decide +kernel
theorem small_8391327_right_covered : CoveredBy scale carrier boxes small_8391327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391327_right_root small_8391327_right_fuel small_8391327_right_count small_8391327_right_encoded small_8391327_right_checked

theorem cover_8391327 : CoveredBy scale carrier boxes root_8391327 := by
  apply coveredBy_split_literal root_8391327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391332 small_8391327_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391332
  · exact small_8391327_right_covered
#print axioms cover_8391327

def root_8391159 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391159_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391159_left_fuel : Nat := 22
def small_8391159_left_count : Nat := 79
def small_8391159_left_encoded : String := "120701000000000008A9130512070104000000020000000512073D0408A912FF12073D08050000F8135D80F900000001050000FC135D80FD0000000304548A010000000900000009135D44FD04548A01000000051386AD000CFD9C05000000050F350D040CFD9BFF000000050F34D108000000040000000500000002000000000000000300000009000000041207010800000004050000F8135D80F900000001050000FC135D80FD0000000304548A011386710000000000000000051386AD000CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A870400000009000000050000000413867108000000040C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003000000090000000500000005000000050000000200000000000000050000000500000002"
theorem small_8391159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391159_left_root small_8391159_left_fuel small_8391159_left_count small_8391159_left_encoded = true := by
  decide +kernel
theorem small_8391159_left_covered : CoveredBy scale carrier boxes small_8391159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391159_left_root small_8391159_left_fuel small_8391159_left_count small_8391159_left_encoded small_8391159_left_checked

theorem cover_8391159 : CoveredBy scale carrier boxes root_8391159 := by
  apply coveredBy_split_literal root_8391159 small_8391159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391327 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8391159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391327
#print axioms cover_8391159

def root_8391153 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391153_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391153_left_fuel : Nat := 1
def small_8391153_left_count : Nat := 1
def small_8391153_left_encoded : String := "00000004"
theorem small_8391153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391153_left_root small_8391153_left_fuel small_8391153_left_count small_8391153_left_encoded = true := by
  decide +kernel
theorem small_8391153_left_covered : CoveredBy scale carrier boxes small_8391153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391153_left_root small_8391153_left_fuel small_8391153_left_count small_8391153_left_encoded small_8391153_left_checked

theorem cover_8391153 : CoveredBy scale carrier boxes root_8391153 := by
  apply coveredBy_split_literal root_8391153 small_8391153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391159 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8391153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391159
#print axioms cover_8391153

def root_8391107 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391107_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391107_left_fuel : Nat := 9
def small_8391107_left_count : Nat := 21
def small_8391107_left_encoded : String := "1151E8FF08A9130112070100000000000000000912073D0008A9130512070104000000020000000712073D04050000F8135D80F900000001050000FC000000070000000700000009000000020000000000000004"
theorem small_8391107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391107_left_root small_8391107_left_fuel small_8391107_left_count small_8391107_left_encoded = true := by
  decide +kernel
theorem small_8391107_left_covered : CoveredBy scale carrier boxes small_8391107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391107_left_root small_8391107_left_fuel small_8391107_left_count small_8391107_left_encoded small_8391107_left_checked

theorem cover_8391107 : CoveredBy scale carrier boxes root_8391107 := by
  apply coveredBy_split_literal root_8391107 small_8391107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391153 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8391107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391153
#print axioms cover_8391107

def root_8391102 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391102_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8391102_right_fuel : Nat := 1
def small_8391102_right_count : Nat := 1
def small_8391102_right_encoded : String := "00000003"
theorem small_8391102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8391102_right_root small_8391102_right_fuel small_8391102_right_count small_8391102_right_encoded = true := by
  decide +kernel
theorem small_8391102_right_covered : CoveredBy scale carrier boxes small_8391102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8391102_right_root small_8391102_right_fuel small_8391102_right_count small_8391102_right_encoded small_8391102_right_checked

theorem cover_8391102 : CoveredBy scale carrier boxes root_8391102 := by
  apply coveredBy_split_literal root_8391102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391107 small_8391102_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391107
  · exact small_8391102_right_covered
#print axioms cover_8391102

def root_8386480 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8386480 : CoveredBy scale carrier boxes root_8386480 := by
  apply coveredBy_split_literal root_8386480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8391102 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386481
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8391102
#print axioms cover_8386480

def root_8386475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386475_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8386475_right_fuel : Nat := 1
def small_8386475_right_count : Nat := 1
def small_8386475_right_encoded : String := "00000002"
theorem small_8386475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8386475_right_root small_8386475_right_fuel small_8386475_right_count small_8386475_right_encoded = true := by
  decide +kernel
theorem small_8386475_right_covered : CoveredBy scale carrier boxes small_8386475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8386475_right_root small_8386475_right_fuel small_8386475_right_count small_8386475_right_encoded small_8386475_right_checked

theorem cover_8386475 : CoveredBy scale carrier boxes root_8386475 := by
  apply coveredBy_split_literal root_8386475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386480 small_8386475_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386480
  · exact small_8386475_right_covered
#print axioms cover_8386475

def root_8384677 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8384677 : CoveredBy scale carrier boxes root_8384677 := by
  apply coveredBy_split_literal root_8384677 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3139.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8386475 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3139.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8386475
#print axioms cover_8384677

def root_8384672 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8384672_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8384672_right_fuel : Nat := 1
def small_8384672_right_count : Nat := 1
def small_8384672_right_encoded : String := "00000001"
theorem small_8384672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8384672_right_root small_8384672_right_fuel small_8384672_right_count small_8384672_right_encoded = true := by
  decide +kernel
theorem small_8384672_right_covered : CoveredBy scale carrier boxes small_8384672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8384672_right_root small_8384672_right_fuel small_8384672_right_count small_8384672_right_encoded small_8384672_right_checked

theorem cover_8384672 : CoveredBy scale carrier boxes root_8384672 := by
  apply coveredBy_split_literal root_8384672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8384677 small_8384672_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8384677
  · exact small_8384672_right_covered
#print axioms cover_8384672

def root_8361090 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8361090 : CoveredBy scale carrier boxes root_8361090 := by
  apply coveredBy_split_literal root_8361090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8361091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8384672 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8361091
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8384672
#print axioms cover_8361090

def root_8361085 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361085_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361085_right_fuel : Nat := 1
def small_8361085_right_count : Nat := 1
def small_8361085_right_encoded : String := "00000000"
theorem small_8361085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8361085_right_root small_8361085_right_fuel small_8361085_right_count small_8361085_right_encoded = true := by
  decide +kernel
theorem small_8361085_right_covered : CoveredBy scale carrier boxes small_8361085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8361085_right_root small_8361085_right_fuel small_8361085_right_count small_8361085_right_encoded small_8361085_right_checked

theorem cover_8361085 : CoveredBy scale carrier boxes root_8361085 := by
  apply coveredBy_split_literal root_8361085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8361090 small_8361085_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8361090
  · exact small_8361085_right_covered
#print axioms cover_8361085

def root_8357701 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8357701 : CoveredBy scale carrier boxes root_8357701 := by
  apply coveredBy_split_literal root_8357701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8357702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8361085 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8357702
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8361085
#print axioms cover_8357701

def root_8397360 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8397360 : CoveredBy scale carrier boxes root_8397360 := by
  apply coveredBy_split_literal root_8397360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3142.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3143.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3142.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3143.covered
#print axioms cover_8397360

def root_8397354 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397354_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397354_left_fuel : Nat := 1
def small_8397354_left_count : Nat := 1
def small_8397354_left_encoded : String := "00000001"
theorem small_8397354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8397354_left_root small_8397354_left_fuel small_8397354_left_count small_8397354_left_encoded = true := by
  decide +kernel
theorem small_8397354_left_covered : CoveredBy scale carrier boxes small_8397354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8397354_left_root small_8397354_left_fuel small_8397354_left_count small_8397354_left_encoded small_8397354_left_checked

theorem cover_8397354 : CoveredBy scale carrier boxes root_8397354 := by
  apply coveredBy_split_literal root_8397354 small_8397354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8397360 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8397354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8397360
#print axioms cover_8397354

def root_8402064 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8402064 : CoveredBy scale carrier boxes root_8402064 := by
  apply coveredBy_split_literal root_8402064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3144.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3145.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3144.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3145.covered
#print axioms cover_8402064

def root_8402059 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8402059_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8402059_right_fuel : Nat := 1
def small_8402059_right_count : Nat := 1
def small_8402059_right_encoded : String := "00000001"
theorem small_8402059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8402059_right_root small_8402059_right_fuel small_8402059_right_count small_8402059_right_encoded = true := by
  decide +kernel
theorem small_8402059_right_covered : CoveredBy scale carrier boxes small_8402059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8402059_right_root small_8402059_right_fuel small_8402059_right_count small_8402059_right_encoded small_8402059_right_checked

theorem cover_8402059 : CoveredBy scale carrier boxes root_8402059 := by
  apply coveredBy_split_literal root_8402059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8402064 small_8402059_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8402064
  · exact small_8402059_right_covered
#print axioms cover_8402059

def root_8397353 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8397353 : CoveredBy scale carrier boxes root_8397353 := by
  apply coveredBy_split_literal root_8397353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8397354 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8402059 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8397354
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8402059
#print axioms cover_8397353

def root_8397347 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397347_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8397347_left_fuel : Nat := 1
def small_8397347_left_count : Nat := 1
def small_8397347_left_encoded : String := "00000000"
theorem small_8397347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8397347_left_root small_8397347_left_fuel small_8397347_left_count small_8397347_left_encoded = true := by
  decide +kernel
theorem small_8397347_left_covered : CoveredBy scale carrier boxes small_8397347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8397347_left_root small_8397347_left_fuel small_8397347_left_count small_8397347_left_encoded small_8397347_left_checked

theorem cover_8397347 : CoveredBy scale carrier boxes root_8397347 := by
  apply coveredBy_split_literal root_8397347 small_8397347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8397353 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8397347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8397353
#print axioms cover_8397347

def root_8413613 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413613_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413613_right_fuel : Nat := 12
def small_8413613_right_count : Nat := 51
def small_8413613_right_encoded : String := "0F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000050F878D010C9A86FC000000050F8750FD0000000500000003000000001386AD080C9A8700000000050F878D010C9A86FC000000050F8750FD000000090000000300000000000000040F34D0FC00000005000000030F350D040CFD9BFD0F350CFC0000000304548A09000000051386AD080C9A8700000000050F878D010000000500000000000000040F34D0FC00000005000000030000000200000001"
theorem small_8413613_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8413613_right_root small_8413613_right_fuel small_8413613_right_count small_8413613_right_encoded = true := by
  decide +kernel
theorem small_8413613_right_covered : CoveredBy scale carrier boxes small_8413613_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8413613_right_root small_8413613_right_fuel small_8413613_right_count small_8413613_right_encoded small_8413613_right_checked

theorem cover_8413613 : CoveredBy scale carrier boxes root_8413613 := by
  apply coveredBy_split_literal root_8413613 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3148.root small_8413613_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3148.covered
  · exact small_8413613_right_covered
#print axioms cover_8413613

def root_8413608 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413608_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8413608_right_fuel : Nat := 1
def small_8413608_right_count : Nat := 1
def small_8413608_right_encoded : String := "00000000"
theorem small_8413608_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8413608_right_root small_8413608_right_fuel small_8413608_right_count small_8413608_right_encoded = true := by
  decide +kernel
theorem small_8413608_right_covered : CoveredBy scale carrier boxes small_8413608_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8413608_right_root small_8413608_right_fuel small_8413608_right_count small_8413608_right_encoded small_8413608_right_checked

theorem cover_8413608 : CoveredBy scale carrier boxes root_8413608 := by
  apply coveredBy_split_literal root_8413608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8413613 small_8413608_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8413613
  · exact small_8413608_right_covered
#print axioms cover_8413608

def root_8411210 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8411210 : CoveredBy scale carrier boxes root_8411210 := by
  apply coveredBy_split_literal root_8411210 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3147.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8413608 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3147.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8413608
#print axioms cover_8411210

def root_8411204 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411204_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8411204_left_fuel : Nat := 1
def small_8411204_left_count : Nat := 1
def small_8411204_left_encoded : String := "00000004"
theorem small_8411204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8411204_left_root small_8411204_left_fuel small_8411204_left_count small_8411204_left_encoded = true := by
  decide +kernel
theorem small_8411204_left_covered : CoveredBy scale carrier boxes small_8411204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8411204_left_root small_8411204_left_fuel small_8411204_left_count small_8411204_left_encoded small_8411204_left_checked

theorem cover_8411204 : CoveredBy scale carrier boxes root_8411204 := by
  apply coveredBy_split_literal root_8411204 small_8411204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.root_8411210 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8411204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202.cover_8411210
#print axioms cover_8411204

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0202

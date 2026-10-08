import TaoBundleAssembly0151
import TaoBundleChunkBatch0588
import TaoBundleChunkBatch0589
import TaoBundleChunkBatch0590
import TaoBundleChunkBatch0591
import TaoBundleChunkBatch0592
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152
def root_6258118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6258118_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6258118_left_fuel : Nat := 30
def small_6258118_left_count : Nat := 473
def small_6258118_left_encoded : String := "115224FF0000000408A912F712073D0008A912FB12073D0408A912FF12073CFE00000004050000F8135D810305000106135D45070000000300000005135D81070CFD9BF70F350D000CFD9BFB0F350D0400000005000000020F34D1040000000200000009000000000F34D100000000000CFD9BFB000000080F34D104000000020CFD9BFF00000008000000080000000300000001135D45030000000105000106135D4507000000030CFD9BF70F350D000CFD9BFB0F350D0400000005000000020F34D104000000020CFD9BFF0F350CFE000000040C9A8700000000050F878CF700000000000000050F34D0FE0000000500000004000000000F34D100000000000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000050F878CFB00000002000000050F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F80000000513D7B103000000010280010600000005000000080F8750FF028000F813D7ED030280010600000005000000080000000113D7B103000000010280010613D7B107000000030AD35777000000050000000813D7ED070AD3577710D13D000AD3577B0000000800000009000000000000000800000003000000040F34D0FE0000000500000004135D81070CFD9BF70F350D000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87000F8750F70C9A8704000000050F878CFB000000020C9A86FE0000000500000009000000000F878CF7000000000C9A87040F8750FB0C9A86FE000000050F8750FF028000F80000000513D7B103000000010780010600000005128A7D070DE7CA0000000005000000080000000300000004000000020F878CFB000000020C9A86FE0F878CFF00000004000000050F8750FF028000F80000000913D7B1030000000107800106128A41070000000300000005128A7D070DE7CA00000000090E6014F7000000000000000800000003000000040F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A8700000000090F878CF7000000000C9A86FE0F878CFF0000000400000009000000090F34D0FE0000000500000004000000000F34D100000000000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE000000080F8750FF0000000800000004000000020F878CFB000000020C9A86FE000000080F8750FF028000F80000000813D7B10300000001078001060000000800000008000000040F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F8000000080000000A0F8750FF028000F80000000913D7B1030000000107800106128A4107000000030AD3577710D13D00000000090000000000000008128A7D070000000900000003000000040F34D0FE000000080000000400000003120700FE050000F800000005135D4503000000010500010600000005135D81070CFD9BF70F350D0000000005000000000F34D1000000000000000008000000030000000400000002120701040000000208A912FF12073CFE00000004050000F8135D810305000106135D4507000000030CFD9BF70000000900000009135D81070CFD9BF70F350D000000000900000000000000090000000300000001135D45030000000105000106135D4507000000030CFD9BF70F350D00045489FB1386AD040CFD9BFF0F350CFE0000000400000009000000090000000200000009000000000F34D10000000000045489FB1386AD040CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000900000009000000090000000200000009135D81070CFD9BF70F350D0000000009000000000F34D10000000000045489FB1386AD040CFD9BFF0000000A00000009000000020000000900000003120700FE050000F8135D810305000106135D4507000000030CFD9BF70000000500000009135D81070CFD9BF70F350D00045489FB000000050000000900000000000000090000000300000001135D45030000000105000106135D4507000000030CFD9BF70000000600000009135D81070CFD9BF70F350D00045489FB00000009000000090000000000000009000000030000000400000000120701000000000008A912FB12073D0408A912FF12073CFE00000004050000F8135D810305000106135D450700000003000000080000000800000001135D45030000000105000106135D450700000003045489F71386AD000CFD9BFB0F350D040CFD9BFF0000000800000008000000020F34D104000000020CFD9BFF000000080000000800000000138671000000000000000008135D8107045489F71386AD000CFD9BFB000000080F34D104000000020CFD9BFF0000000800000008000000000000000800000003120700FE000000080000000400000002120701040000000208A912FF12073CFE00000004050000F8135D810305000106135D450700000003045489F71386AD00045489FB000000080000000900000000000000080000000A00000001135D4503000000010000000A120700FE050000F8000000080000000A00000004"
theorem small_6258118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6258118_left_root small_6258118_left_fuel small_6258118_left_count small_6258118_left_encoded = true := by
  decide +kernel
theorem small_6258118_left_covered : CoveredBy scale carrier boxes small_6258118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6258118_left_root small_6258118_left_fuel small_6258118_left_count small_6258118_left_encoded small_6258118_left_checked

theorem cover_6258118 : CoveredBy scale carrier boxes root_6258118 := by
  apply coveredBy_split_literal root_6258118 small_6258118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6259124 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6258118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6259124
#print axioms cover_6258118

def root_6258112 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6258112_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6258112_left_fuel : Nat := 1
def small_6258112_left_count : Nat := 1
def small_6258112_left_encoded : String := "00000003"
theorem small_6258112_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6258112_left_root small_6258112_left_fuel small_6258112_left_count small_6258112_left_encoded = true := by
  decide +kernel
theorem small_6258112_left_covered : CoveredBy scale carrier boxes small_6258112_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6258112_left_root small_6258112_left_fuel small_6258112_left_count small_6258112_left_encoded small_6258112_left_checked

theorem cover_6258112 : CoveredBy scale carrier boxes root_6258112 := by
  apply coveredBy_split_literal root_6258112 small_6258112_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6258118 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6258112_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6258118
#print axioms cover_6258112

def root_6258111 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6258111 : CoveredBy scale carrier boxes root_6258111 := by
  apply coveredBy_split_literal root_6258111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6258112 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2357.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6258112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2357.covered
#print axioms cover_6258111

def root_6258105 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6258105_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6258105_left_fuel : Nat := 1
def small_6258105_left_count : Nat := 1
def small_6258105_left_encoded : String := "00000002"
theorem small_6258105_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6258105_left_root small_6258105_left_fuel small_6258105_left_count small_6258105_left_encoded = true := by
  decide +kernel
theorem small_6258105_left_covered : CoveredBy scale carrier boxes small_6258105_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6258105_left_root small_6258105_left_fuel small_6258105_left_count small_6258105_left_encoded small_6258105_left_checked

theorem cover_6258105 : CoveredBy scale carrier boxes root_6258105 := by
  apply coveredBy_split_literal root_6258105 small_6258105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6258111 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6258105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6258111
#print axioms cover_6258105

def root_6256103 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6256103 : CoveredBy scale carrier boxes root_6256103 := by
  apply coveredBy_split_literal root_6256103 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2354.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6258105 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2354.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6258105
#print axioms cover_6256103

def root_6256097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6256097_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6256097_left_fuel : Nat := 1
def small_6256097_left_count : Nat := 1
def small_6256097_left_encoded : String := "00000001"
theorem small_6256097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6256097_left_root small_6256097_left_fuel small_6256097_left_count small_6256097_left_encoded = true := by
  decide +kernel
theorem small_6256097_left_covered : CoveredBy scale carrier boxes small_6256097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6256097_left_root small_6256097_left_fuel small_6256097_left_count small_6256097_left_encoded small_6256097_left_checked

theorem cover_6256097 : CoveredBy scale carrier boxes root_6256097 := by
  apply coveredBy_split_literal root_6256097 small_6256097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6256103 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6256097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6256103
#print axioms cover_6256097

def root_6252355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6252355 : CoveredBy scale carrier boxes root_6252355 := by
  apply coveredBy_split_literal root_6252355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.root_6252356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6256097 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0151.cover_6252356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6256097
#print axioms cover_6252355

def root_6252349 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6252349_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6252349_left_fuel : Nat := 1
def small_6252349_left_count : Nat := 1
def small_6252349_left_encoded : String := "00000000"
theorem small_6252349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6252349_left_root small_6252349_left_fuel small_6252349_left_count small_6252349_left_encoded = true := by
  decide +kernel
theorem small_6252349_left_covered : CoveredBy scale carrier boxes small_6252349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6252349_left_root small_6252349_left_fuel small_6252349_left_count small_6252349_left_encoded small_6252349_left_checked

theorem cover_6252349 : CoveredBy scale carrier boxes root_6252349 := by
  apply coveredBy_split_literal root_6252349 small_6252349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6252355 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6252349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6252355
#print axioms cover_6252349

def root_6249633 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6249633 : CoveredBy scale carrier boxes root_6249633 := by
  apply coveredBy_split_literal root_6249633 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2351.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6252349 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2351.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6252349
#print axioms cover_6249633

def root_6265313 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265313_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265313_left_fuel : Nat := 23
def small_6265313_left_count : Nat := 159
def small_6265313_left_encoded : String := "120701060000000308A91309120700FE000000050000000412073CFE0000000405000100135D44F70CFD9C030F34D0F800000005000000010F350CF800000001045489FB1386AD040000000500000002138671040000000204548A071386710600000003000000071386AD060CFD9C09000000050F350CFE000000040C9A86F8000000050F87510300000001000000070000000300000000135D80F7000000000CFD9C030F34D0F8045489FB00000005138671040000000204548A07000000051386AD060CFD9C09000000050F350CFE000000040000000600000003000000010F350CF800000001045489FB1386AD0404548A0713867106000000030CFD9C090F34D0FE00000005000000040F350CFE00000004000000061386AD060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F8000000060F875103000000010C9A86FE00000008000000060000000300000002138671040000000204548A0713867106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09000000050000000400000006000000010F875103000000010C9A86FE000000070F87510900000004000000061386AD060CFD9C090F34D0FE0C9A86F8000000050F8751030000000100000007000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090780010000000005000000080000000400000006000000010F875103000000010C9A86FE0F878D090780010000000007128A7CF700000000022A457B000000080000000A000000040F875109000000040780010000000006128A7CF700000000022A457B0000000613E1C50400000002067ECE87000000060000000600000003"
theorem small_6265313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265313_left_root small_6265313_left_fuel small_6265313_left_count small_6265313_left_encoded = true := by
  decide +kernel
theorem small_6265313_left_covered : CoveredBy scale carrier boxes small_6265313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265313_left_root small_6265313_left_fuel small_6265313_left_count small_6265313_left_encoded small_6265313_left_checked

theorem cover_6265313 : CoveredBy scale carrier boxes root_6265313 := by
  apply coveredBy_split_literal root_6265313 small_6265313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2358.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6265313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2358.covered
#print axioms cover_6265313

def root_6265307 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265307_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265307_left_fuel : Nat := 1
def small_6265307_left_count : Nat := 1
def small_6265307_left_encoded : String := "00000002"
theorem small_6265307_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265307_left_root small_6265307_left_fuel small_6265307_left_count small_6265307_left_encoded = true := by
  decide +kernel
theorem small_6265307_left_covered : CoveredBy scale carrier boxes small_6265307_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265307_left_root small_6265307_left_fuel small_6265307_left_count small_6265307_left_encoded small_6265307_left_checked

theorem cover_6265307 : CoveredBy scale carrier boxes root_6265307 := by
  apply coveredBy_split_literal root_6265307 small_6265307_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265313 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6265307_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265313
#print axioms cover_6265307

def root_6265135 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265135_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265135_left_fuel : Nat := 18
def small_6265135_left_count : Nat := 79
def small_6265135_left_encoded : String := "12073D0408A91307120701060000000308A91309120700FE0500010000000005135D80F700000000000000050000000412073CFE000000040500010000000005135D80F7000000000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFB000000080F34D1040000000204548A0713867106000000030CFD9C0900000006000000060000000812073D0608A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE0000000500000004000000080F350D060CFD9C09000000050F350CFE000000040C9A86F8000000050F8751030000000100000008000000030000000300000002"
theorem small_6265135_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265135_left_root small_6265135_left_fuel small_6265135_left_count small_6265135_left_encoded = true := by
  decide +kernel
theorem small_6265135_left_covered : CoveredBy scale carrier boxes small_6265135_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265135_left_root small_6265135_left_fuel small_6265135_left_count small_6265135_left_encoded small_6265135_left_checked

theorem cover_6265135 : CoveredBy scale carrier boxes root_6265135 := by
  apply coveredBy_split_literal root_6265135 small_6265135_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265307 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6265135_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265307
#print axioms cover_6265135

def root_6265129 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265129_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265129_left_fuel : Nat := 1
def small_6265129_left_count : Nat := 1
def small_6265129_left_encoded : String := "00000001"
theorem small_6265129_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265129_left_root small_6265129_left_fuel small_6265129_left_count small_6265129_left_encoded = true := by
  decide +kernel
theorem small_6265129_left_covered : CoveredBy scale carrier boxes small_6265129_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265129_left_root small_6265129_left_fuel small_6265129_left_count small_6265129_left_encoded small_6265129_left_checked

theorem cover_6265129 : CoveredBy scale carrier boxes root_6265129 := by
  apply coveredBy_split_literal root_6265129 small_6265129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265135 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6265129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265135
#print axioms cover_6265129

def root_6265069 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265069_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265069_left_fuel : Nat := 8
def small_6265069_left_count : Nat := 27
def small_6265069_left_encoded : String := "120700F808A912FB12073D0408A91307120701060000000308A91309000000060000000612073D06000000050000000300000002120701040000000208A91307120701060000000308A91309120700FE00000005000000040000000512073D06000000050000000300000001"
theorem small_6265069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265069_left_root small_6265069_left_fuel small_6265069_left_count small_6265069_left_encoded = true := by
  decide +kernel
theorem small_6265069_left_covered : CoveredBy scale carrier boxes small_6265069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265069_left_root small_6265069_left_fuel small_6265069_left_count small_6265069_left_encoded small_6265069_left_checked

theorem cover_6265069 : CoveredBy scale carrier boxes root_6265069 := by
  apply coveredBy_split_literal root_6265069 small_6265069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265129 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6265069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265129
#print axioms cover_6265069

def root_6265064 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265064_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265064_right_fuel : Nat := 1
def small_6265064_right_count : Nat := 1
def small_6265064_right_encoded : String := "00000004"
theorem small_6265064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265064_right_root small_6265064_right_fuel small_6265064_right_count small_6265064_right_encoded = true := by
  decide +kernel
theorem small_6265064_right_covered : CoveredBy scale carrier boxes small_6265064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265064_right_root small_6265064_right_fuel small_6265064_right_count small_6265064_right_encoded small_6265064_right_checked

theorem cover_6265064 : CoveredBy scale carrier boxes root_6265064 := by
  apply coveredBy_split_literal root_6265064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265069 small_6265064_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265069
  · exact small_6265064_right_covered
#print axioms cover_6265064

def root_6269078 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6269078 : CoveredBy scale carrier boxes root_6269078 := by
  apply coveredBy_split_literal root_6269078 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2359.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2360.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2359.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2360.covered
#print axioms cover_6269078

def root_6269073 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6269073_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6269073_right_fuel : Nat := 1
def small_6269073_right_count : Nat := 1
def small_6269073_right_encoded : String := "00000003"
theorem small_6269073_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6269073_right_root small_6269073_right_fuel small_6269073_right_count small_6269073_right_encoded = true := by
  decide +kernel
theorem small_6269073_right_covered : CoveredBy scale carrier boxes small_6269073_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6269073_right_root small_6269073_right_fuel small_6269073_right_count small_6269073_right_encoded small_6269073_right_checked

theorem cover_6269073 : CoveredBy scale carrier boxes root_6269073 := by
  apply coveredBy_split_literal root_6269073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6269078 small_6269073_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6269078
  · exact small_6269073_right_covered
#print axioms cover_6269073

def root_6269009 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6269009_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6269009_left_fuel : Nat := 11
def small_6269009_left_count : Nat := 31
def small_6269009_left_encoded : String := "120701060000000305000100135D44F7050000FE135D81090CFD9C03000000060F350CF80000000100000006000000040000000600000000135D80F700000000050000FE135D81090CFD9C03000000060F350CF800000001045489FB00000006138671040000000204548A0700000006000000060000000400000006"
theorem small_6269009_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6269009_left_root small_6269009_left_fuel small_6269009_left_count small_6269009_left_encoded = true := by
  decide +kernel
theorem small_6269009_left_covered : CoveredBy scale carrier boxes small_6269009_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6269009_left_root small_6269009_left_fuel small_6269009_left_count small_6269009_left_encoded small_6269009_left_checked

theorem cover_6269009 : CoveredBy scale carrier boxes root_6269009 := by
  apply coveredBy_split_literal root_6269009 small_6269009_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6269073 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6269009_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6269073
#print axioms cover_6269009

def root_6269003 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6269003_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6269003_left_fuel : Nat := 1
def small_6269003_left_count : Nat := 1
def small_6269003_left_encoded : String := "00000002"
theorem small_6269003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6269003_left_root small_6269003_left_fuel small_6269003_left_count small_6269003_left_encoded = true := by
  decide +kernel
theorem small_6269003_left_covered : CoveredBy scale carrier boxes small_6269003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6269003_left_root small_6269003_left_fuel small_6269003_left_count small_6269003_left_encoded small_6269003_left_checked

theorem cover_6269003 : CoveredBy scale carrier boxes root_6269003 := by
  apply coveredBy_split_literal root_6269003 small_6269003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6269009 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6269003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6269009
#print axioms cover_6269003

def root_6268781 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268781_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268781_left_fuel : Nat := 17
def small_6268781_left_count : Nat := 101
def small_6268781_left_encoded : String := "12073D0408A9130712070106000000030000000612073D0605000100135D44F7050000FE135D81090CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C070F34D10600000003000000060F350D060C9A86F8000000050F875103000000010000000A0000000300000004135D4509000000040CFD9C030F34D0F80CFD9BFB0000000600000006000000010F350CF8000000010CFD9BFB0000000A0F34D104000000020CFD9C07000000060000000A00000000135D80F700000000050000FE135D81090CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFB0F350D0400000006000000020F34D104000000020CFD9C070F34D10600000003000000060F350D060C9A86F8000000060F875103000000010C9A870600000009000000060000000300000004135D4509000000040CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFB0F350D0400000006000000020F34D104000000020CFD9C07000000060000000A0000000300000002"
theorem small_6268781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6268781_left_root small_6268781_left_fuel small_6268781_left_count small_6268781_left_encoded = true := by
  decide +kernel
theorem small_6268781_left_covered : CoveredBy scale carrier boxes small_6268781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6268781_left_root small_6268781_left_fuel small_6268781_left_count small_6268781_left_encoded small_6268781_left_checked

theorem cover_6268781 : CoveredBy scale carrier boxes root_6268781 := by
  apply coveredBy_split_literal root_6268781 small_6268781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6269003 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6268781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6269003
#print axioms cover_6268781

def root_6268775 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268775_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268775_left_fuel : Nat := 1
def small_6268775_left_count : Nat := 1
def small_6268775_left_encoded : String := "00000001"
theorem small_6268775_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6268775_left_root small_6268775_left_fuel small_6268775_left_count small_6268775_left_encoded = true := by
  decide +kernel
theorem small_6268775_left_covered : CoveredBy scale carrier boxes small_6268775_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6268775_left_root small_6268775_left_fuel small_6268775_left_count small_6268775_left_encoded small_6268775_left_checked

theorem cover_6268775 : CoveredBy scale carrier boxes root_6268775 := by
  apply coveredBy_split_literal root_6268775 small_6268775_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6268781 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6268775_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6268781
#print axioms cover_6268775

def root_6268695 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268695_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268695_left_fuel : Nat := 11
def small_6268695_left_count : Nat := 39
def small_6268695_left_encoded : String := "120700F808A912FB12073D0408A913070000000612073D060500010000000005135D80F700000000050000FE00000005000000060000000300000002120701040000000208A913070000000612073D0605000100135D44F7050000FE00000005135D45090000000404548A03000000060000000600000000135D80F700000000050000FE135D81090000000600000004000000060000000300000001"
theorem small_6268695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6268695_left_root small_6268695_left_fuel small_6268695_left_count small_6268695_left_encoded = true := by
  decide +kernel
theorem small_6268695_left_covered : CoveredBy scale carrier boxes small_6268695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6268695_left_root small_6268695_left_fuel small_6268695_left_count small_6268695_left_encoded small_6268695_left_checked

theorem cover_6268695 : CoveredBy scale carrier boxes root_6268695 := by
  apply coveredBy_split_literal root_6268695 small_6268695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6268775 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6268695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6268775
#print axioms cover_6268695

def root_6268689 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268689_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6268689_left_fuel : Nat := 1
def small_6268689_left_count : Nat := 1
def small_6268689_left_encoded : String := "00000004"
theorem small_6268689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6268689_left_root small_6268689_left_fuel small_6268689_left_count small_6268689_left_encoded = true := by
  decide +kernel
theorem small_6268689_left_covered : CoveredBy scale carrier boxes small_6268689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6268689_left_root small_6268689_left_fuel small_6268689_left_count small_6268689_left_encoded small_6268689_left_checked

theorem cover_6268689 : CoveredBy scale carrier boxes root_6268689 := by
  apply coveredBy_split_literal root_6268689 small_6268689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6268695 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6268689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6268695
#print axioms cover_6268689

def root_6265063 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6265063 : CoveredBy scale carrier boxes root_6265063 := by
  apply coveredBy_split_literal root_6265063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6268689 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265064
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6268689
#print axioms cover_6265063

def root_6265058 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265058_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6265058_right_fuel : Nat := 1
def small_6265058_right_count : Nat := 1
def small_6265058_right_encoded : String := "00000003"
theorem small_6265058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6265058_right_root small_6265058_right_fuel small_6265058_right_count small_6265058_right_encoded = true := by
  decide +kernel
theorem small_6265058_right_covered : CoveredBy scale carrier boxes small_6265058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6265058_right_root small_6265058_right_fuel small_6265058_right_count small_6265058_right_encoded small_6265058_right_checked

theorem cover_6265058 : CoveredBy scale carrier boxes root_6265058 := by
  apply coveredBy_split_literal root_6265058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265063 small_6265058_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265063
  · exact small_6265058_right_covered
#print axioms cover_6265058

def root_6264450 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264450_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264450_left_fuel : Nat := 31
def small_6264450_left_count : Nat := 283
def small_6264450_left_encoded : String := "1151E907000000030A0000FE1152250908A91303120700F8000000050000000112073CF80000000108A912FB12073D040000000500000002120701040000000208A91309120700FE000000050000000412073CFE0000000405000100135D44F70500010600000005135D81070CFD9C03000000050F350CF800000001045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86F8000000050F875103000000010C9A86FE000000050F87510900000004028001000000000513D7ECF7000000000780010600000005128A7D0700000005000000030000000300000000135D80F70000000005000106135D4507000000030CFD9C03000000050F350CF800000001045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86F80F878D0300000005000000010F8751030000000100000006135D81070CFD9C030F34D0F800000005000000010F350CF800000001045489FB1386AD040CFD9C09000000050F350CFE000000040C9A86F80F878D0300000005000000010F875103000000010C9A86FE0F878D090000000500000004000000090000000213867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0900000005000000040F8751090000000407800100128A40F70000000500000000128A7CF7000000000780010600000007128A7D07022A457B0000000813E1C504000000020DE7C9F80000000A0000000700000003000000010F875103000000010C9A86FE0F878D0907800100128A40F7000000050000000000000009000000040F8751090000000407800100128A40F70780010600000009128A7D07022A457B0000000913E1C504000000020000000900000003000000000000000900000003000000041151E9090000000408A91303120700F808A912FB0000000512070104000000020500010000000005135D80F7000000000500010600000005135D8107050000FE000000050000000A000000030000000112073CF80000000108A912FB12073D0405000100135D44F70000000A00000000135D80F700000000050001060000000A135D8107050000FE135D81090CFD9C030000000A0000000A000000040000000A0000000300000002120701040000000205000100135D44F705000106135D4507000000030000000A135D8107050000FE135D81090CFD9C030F34D0F800000005000000010F350CF800000001045489FB0000000A13867104000000020C9A86F80000000A0F875103000000010000000A00000004135D4509000000040000000A0000000300000000135D80F70000000005000106135D450700000003050000FE135D81090CFD9C03000000070000000A0000000400000007135D8107050000FE135D81090CFD9C030F34D0F80000000A000000010F350CF800000001045489FB0000000A13867104000000020C9A86F80F878D030000000A000000010F87510300000001078001000000000A0000000900000004135D4509000000040CFD9C030000000A0000000A00000003"
theorem small_6264450_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6264450_left_root small_6264450_left_fuel small_6264450_left_count small_6264450_left_encoded = true := by
  decide +kernel
theorem small_6264450_left_covered : CoveredBy scale carrier boxes small_6264450_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6264450_left_root small_6264450_left_fuel small_6264450_left_count small_6264450_left_encoded small_6264450_left_checked

theorem cover_6264450 : CoveredBy scale carrier boxes root_6264450 := by
  apply coveredBy_split_literal root_6264450 small_6264450_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6265058 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6264450_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6265058
#print axioms cover_6264450

def root_6264444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264444_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264444_left_fuel : Nat := 1
def small_6264444_left_count : Nat := 1
def small_6264444_left_encoded : String := "00000002"
theorem small_6264444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6264444_left_root small_6264444_left_fuel small_6264444_left_count small_6264444_left_encoded = true := by
  decide +kernel
theorem small_6264444_left_covered : CoveredBy scale carrier boxes small_6264444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6264444_left_root small_6264444_left_fuel small_6264444_left_count small_6264444_left_encoded small_6264444_left_checked

theorem cover_6264444 : CoveredBy scale carrier boxes root_6264444 := by
  apply coveredBy_split_literal root_6264444 small_6264444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6264450 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6264444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6264450
#print axioms cover_6264444

def root_6264352 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264352_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264352_left_fuel : Nat := 12
def small_6264352_left_count : Nat := 43
def small_6264352_left_encoded : String := "1151E8FB0A0001061151E9070000000300000005115225070A0000FE1152250908A91303120700F808A9130700000006000000050000000112073CF80000000108A91307120701060000000308A91309120700FE00000005000000040000000500000005000000041151E9090000000408A91303120700F8000000050000000112073CF80000000108A913070000000612073D06050001000000000500000006000000030000000300000002"
theorem small_6264352_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6264352_left_root small_6264352_left_fuel small_6264352_left_count small_6264352_left_encoded = true := by
  decide +kernel
theorem small_6264352_left_covered : CoveredBy scale carrier boxes small_6264352_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6264352_left_root small_6264352_left_fuel small_6264352_left_count small_6264352_left_encoded small_6264352_left_checked

theorem cover_6264352 : CoveredBy scale carrier boxes root_6264352 := by
  apply coveredBy_split_literal root_6264352 small_6264352_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6264444 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6264352_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6264444
#print axioms cover_6264352

def root_6264347 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264347_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264347_right_fuel : Nat := 1
def small_6264347_right_count : Nat := 1
def small_6264347_right_encoded : String := "00000001"
theorem small_6264347_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6264347_right_root small_6264347_right_fuel small_6264347_right_count small_6264347_right_encoded = true := by
  decide +kernel
theorem small_6264347_right_covered : CoveredBy scale carrier boxes small_6264347_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6264347_right_root small_6264347_right_fuel small_6264347_right_count small_6264347_right_encoded small_6264347_right_checked

theorem cover_6264347 : CoveredBy scale carrier boxes root_6264347 := by
  apply coveredBy_split_literal root_6264347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6264352 small_6264347_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6264352
  · exact small_6264347_right_covered
#print axioms cover_6264347

def root_6277286 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6277286_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6277286_right_fuel : Nat := 17
def small_6277286_right_count : Nat := 103
def small_6277286_right_encoded : String := "135D450300000001045489FB1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D0907800100000000070000000900000004000000090F350D060CFD9C090F34D0FE0C9A8706000000090F878D0707800100000000070000000900000003000000040F350CFE000000040C9A8706000000090F878D070C9A86FE0F878D0900000009000000040000000900000003000000030000000213867104000000020CFD9C070F34D106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D09078001000000000A0000000A000000040F8751090000000407800100128A40F7028000F813D7ED03022A457B0000000913E1C504000000020AD357870000000A0000000A000000010000000900000000128A7CF700000000000000050F350D060CFD9C090F34D0FE0C9A8706000000060F878D070000000A00000003000000040F350CFE000000040C9A8706000000090F878D070C9A86FE0F878D0907800100000000090000000900000004000000090000000300000003"
theorem small_6277286_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6277286_right_root small_6277286_right_fuel small_6277286_right_count small_6277286_right_encoded = true := by
  decide +kernel
theorem small_6277286_right_covered : CoveredBy scale carrier boxes small_6277286_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6277286_right_root small_6277286_right_fuel small_6277286_right_count small_6277286_right_encoded small_6277286_right_checked

theorem cover_6277286 : CoveredBy scale carrier boxes root_6277286 := by
  apply coveredBy_split_literal root_6277286 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2362.root small_6277286_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2362.covered
  · exact small_6277286_right_covered
#print axioms cover_6277286

def root_6277280 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6277280_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6277280_left_fuel : Nat := 1
def small_6277280_left_count : Nat := 1
def small_6277280_left_encoded : String := "00000000"
theorem small_6277280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6277280_left_root small_6277280_left_fuel small_6277280_left_count small_6277280_left_encoded = true := by
  decide +kernel
theorem small_6277280_left_covered : CoveredBy scale carrier boxes small_6277280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6277280_left_root small_6277280_left_fuel small_6277280_left_count small_6277280_left_encoded small_6277280_left_checked

theorem cover_6277280 : CoveredBy scale carrier boxes root_6277280 := by
  apply coveredBy_split_literal root_6277280 small_6277280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6277286 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6277280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6277286
#print axioms cover_6277280

def root_6274412 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6274412 : CoveredBy scale carrier boxes root_6274412 := by
  apply coveredBy_split_literal root_6274412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2361.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6277280 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2361.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6277280
#print axioms cover_6274412

def root_6274406 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6274406_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6274406_left_fuel : Nat := 1
def small_6274406_left_count : Nat := 1
def small_6274406_left_encoded : String := "00000004"
theorem small_6274406_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6274406_left_root small_6274406_left_fuel small_6274406_left_count small_6274406_left_encoded = true := by
  decide +kernel
theorem small_6274406_left_covered : CoveredBy scale carrier boxes small_6274406_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6274406_left_root small_6274406_left_fuel small_6274406_left_count small_6274406_left_encoded small_6274406_left_checked

theorem cover_6274406 : CoveredBy scale carrier boxes root_6274406 := by
  apply coveredBy_split_literal root_6274406 small_6274406_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6274412 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6274406_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6274412
#print axioms cover_6274406

def root_6274286 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6274286_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6274286_left_fuel : Nat := 14
def small_6274286_left_count : Nat := 55
def small_6274286_left_encoded : String := "120700FE05000100135D44F70000000700000000135D80F700000000050000F8135D8103045489FB1386AD040CFD9C07000000050F350D0600000005000000030000000213867104000000020CFD9C070F34D10600000003000000070F350D0604548A09000000051386ACFE000000040C9A8706000000050F878D0700000007000000030000000300000001135D450300000001045489FB1386AD040CFD9C07000000070F350D0604548A09000000071386ACFE000000040C9A87060000000900000007000000030000000213867104000000020000000A00000004"
theorem small_6274286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6274286_left_root small_6274286_left_fuel small_6274286_left_count small_6274286_left_encoded = true := by
  decide +kernel
theorem small_6274286_left_covered : CoveredBy scale carrier boxes small_6274286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6274286_left_root small_6274286_left_fuel small_6274286_left_count small_6274286_left_encoded small_6274286_left_checked

theorem cover_6274286 : CoveredBy scale carrier boxes root_6274286 := by
  apply coveredBy_split_literal root_6274286 small_6274286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6274406 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6274286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6274406
#print axioms cover_6274286

def root_6274281 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6274281_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6274281_right_fuel : Nat := 1
def small_6274281_right_count : Nat := 1
def small_6274281_right_encoded : String := "00000003"
theorem small_6274281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6274281_right_root small_6274281_right_fuel small_6274281_right_count small_6274281_right_encoded = true := by
  decide +kernel
theorem small_6274281_right_covered : CoveredBy scale carrier boxes small_6274281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6274281_right_root small_6274281_right_fuel small_6274281_right_count small_6274281_right_encoded small_6274281_right_checked

theorem cover_6274281 : CoveredBy scale carrier boxes root_6274281 := by
  apply coveredBy_split_literal root_6274281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6274286 small_6274281_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6274286
  · exact small_6274281_right_covered
#print axioms cover_6274281

def root_6273947 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273947_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273947_left_fuel : Nat := 23
def small_6273947_left_count : Nat := 157
def small_6273947_left_encoded : String := "120701060000000308A91309120700FE000000070000000412073CFE0000000405000100135D44F70000000700000000135D80F700000000050000F8135D8103045489FB1386AD0404548A071386710600000003000000071386AD060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D0900000007000000040F8751090000000407800100128A40F70000000700000000128A7CF700000000078000F800000006128A410300000001000000080000000300000002138671040000000204548A0713867106000000030CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040780010000000007128A7CF700000000078000F8128A7D03022A457B0000000600000007000000010000000A1386AD060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D090780010000000007128A7CF7000000000000000A000000040F8751090000000407800100128A40F7078000F8128A7D03022A457B0000000713E1C50400000002067ECE87000000070000000700000001128A4103000000010000000700000000128A7CF700000000078000F8128A7D03022A457B13E20104067ECE8700000006000000080000000213E1C50400000002067ECE870000000A0000000A00000001128A410300000001022A457B13E20104067ECE870000000A0000000A000000020000000A0000000300000001135D450300000001045489FB1386AD0404548A07000000071386AD060CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040780010000000007000000090000000300000002138671040000000204548A07000000070000000A"
theorem small_6273947_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6273947_left_root small_6273947_left_fuel small_6273947_left_count small_6273947_left_encoded = true := by
  decide +kernel
theorem small_6273947_left_covered : CoveredBy scale carrier boxes small_6273947_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6273947_left_root small_6273947_left_fuel small_6273947_left_count small_6273947_left_encoded small_6273947_left_checked

theorem cover_6273947 : CoveredBy scale carrier boxes root_6273947 := by
  apply coveredBy_split_literal root_6273947 small_6273947_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6274281 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6273947_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6274281
#print axioms cover_6273947

def root_6273941 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273941_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273941_left_fuel : Nat := 1
def small_6273941_left_count : Nat := 1
def small_6273941_left_encoded : String := "00000002"
theorem small_6273941_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6273941_left_root small_6273941_left_fuel small_6273941_left_count small_6273941_left_encoded = true := by
  decide +kernel
theorem small_6273941_left_covered : CoveredBy scale carrier boxes small_6273941_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6273941_left_root small_6273941_left_fuel small_6273941_left_count small_6273941_left_encoded small_6273941_left_checked

theorem cover_6273941 : CoveredBy scale carrier boxes root_6273941 := by
  apply coveredBy_split_literal root_6273941 small_6273941_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6273947 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6273941_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6273947
#print axioms cover_6273941

def root_6273163 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273163_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273163_left_fuel : Nat := 23
def small_6273163_left_count : Nat := 365
def small_6273163_left_encoded : String := "12073D0408A91307120701060000000308A91309120700FE000000070000000412073CFE0000000405000100135D44F7050000F8135D81030CFD9BFB000000070F34D104000000020000000700000001135D4503000000010CFD9BFB000000070F34D104000000020000000700000000135D80F700000000050000F8135D81030CFD9BFB000000080F34D1040000000204548A071386710600000003000000071386AD060CFD9C090F34D0FE0000000700000004000000080000000300000001135D4503000000010CFD9BFB0F350D0404548A071386710600000003000000071386AD060CFD9C090F34D0FE00000007000000040000000800000003000000020F34D1040000000204548A07000000071386AD060CFD9C09000000070F350CFE000000040C9A86FE00000007000000090000000312073D0608A91309120700FE0500010000000005135D80F700000000050000F800000005135D4503000000010CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C07000000070F350D0604548A09000000051386ACFE000000040C9A87060000000500000007000000030000000412073CFE0000000405000100135D44F7050000F8135D81030CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C070F34D106000000030CFD9C09000000070F350CFE000000040C9A86FE000000050F87510900000004028001000000000513D7ECF700000000078000F800000005128A410300000001000000090F350D060CFD9C09000000050F350CFE000000040C9A8706000000050F878D070C9A86FE000000050F87510900000004028001000000000513D7ECF700000000078000F80000000500000009000000030000000300000001135D4503000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040F8750FB00000005000000020F878CFB000000020C9A86FE00000007000000090F350D060CFD9C09000000050F350CFE000000040C9A8704000000050F878CFB000000020C9A8706000000050F878D070C9A86FE00000005000000090000000300000003000000020F34D104000000020CFD9C070F34D106000000030CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040280010000000007000000090F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8706000000090F878D070C9A86FE0F878D09000000090000000400000009000000030000000300000000135D80F700000000050000F8135D81030CFD9BFB0F350D040CFD9C070F34D10600000003000000080F350D060CFD9C090F34D0FE00000005000000040000000800000003000000020F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080F87510900000004000000080F350D060CFD9C090F34D0FE0C9A87060000000500000008000000040F350CFE000000040C9A87060F875107000000030C9A86FE00000008000000090F878D070C9A86FE000000080F8751090000000400000008000000030000000300000001135D4503000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9C090F34D0FE0000000800000004000000080F350D060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87040F8750FB00000008000000020F878CFB000000020C9A8706000000090000000800000003000000020F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D0907800100000000090000000800000004000000090F350D060CFD9C090F34D0FE0C9A8706000000090F878D0707800100000000090000000800000003000000040F350CFE000000040C9A8706000000090F878D070C9A86FE0F878D0900000009000000040000000900000003000000030000000300000002"
theorem small_6273163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6273163_left_root small_6273163_left_fuel small_6273163_left_count small_6273163_left_encoded = true := by
  decide +kernel
theorem small_6273163_left_covered : CoveredBy scale carrier boxes small_6273163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6273163_left_root small_6273163_left_fuel small_6273163_left_count small_6273163_left_encoded small_6273163_left_checked

theorem cover_6273163 : CoveredBy scale carrier boxes root_6273163 := by
  apply coveredBy_split_literal root_6273163 small_6273163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6273941 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6273163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6273941
#print axioms cover_6273163

def root_6273158 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273158_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6273158_right_fuel : Nat := 1
def small_6273158_right_count : Nat := 1
def small_6273158_right_encoded : String := "00000004"
theorem small_6273158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6273158_right_root small_6273158_right_fuel small_6273158_right_count small_6273158_right_encoded = true := by
  decide +kernel
theorem small_6273158_right_covered : CoveredBy scale carrier boxes small_6273158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6273158_right_root small_6273158_right_fuel small_6273158_right_count small_6273158_right_encoded small_6273158_right_checked

theorem cover_6273158 : CoveredBy scale carrier boxes root_6273158 := by
  apply coveredBy_split_literal root_6273158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6273163 small_6273158_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6273163
  · exact small_6273158_right_covered
#print axioms cover_6273158

def root_6285936 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285936_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285936_left_fuel : Nat := 20
def small_6285936_left_count : Nat := 207
def small_6285936_left_encoded : String := "13E201040DE7CA060E5FD9070000000303C0010013A510F708C000F80000000A11FBE90300000001000000090000000013A54CF70000000008C000F80000000A000000090E60150703C0010013A510F708C000F811FC250308C000FE11FC2509033F67BB13BC31040DAED8870E96250600000003000000060000000A0000000213BBF504000000020DAED8870E962506000000030320010013C108F7096000F80000000511AA810300000001096000FE00000005000000060000000013C144F700000000096000F80000000611AA810300000001096000FE11AABD090000000700000004000000060E9661060320010013C108F70000000A0000000013C144F700000000096000F80000000A11AA8103000000010000000A000000030000000411FBE90900000004033F67BB0000000A13BBF504000000020000000A0000000111FBE9030000000108C000FE11FC2509033F67BB0000000913BBF504000000020DAED8870E962506000000030320010013C108F7082000F80000000712465D0300000001000000070000000013C144F700000000082000F812469903096000FE000000070000000900000001000000090E96610600000009000000030000000411FBE90900000004033F67BB0000000913BBF504000000020DAED8870E962506000000030320010013C108F7082000F80000000A12465D03000000010000000A0000000013C144F700000000082000F80000000A000000090E9661060000000A000000030000000013A54CF70000000008C000F811FC250308C000FE11FC2509033F67BB13BC31040DAED8870E96250600000003000000060E96610600000009000000030000000213BBF504000000020DAED8870E96250600000003046001001383DCF7096000F80000000611AA810300000001096000FE11AABD0900000009000000040000000600000000138418F700000000096000F80000000611AA810300000001000000090E966106046001001383DCF7096000F80000000A000000090000000000000009000000030000000411FBE90900000004033F67BB0000000613BBF504000000020DAED8870000000A0000000A0000000111FBE9030000000108C000FE11FC25090000000900000004000000090000000300000002"
theorem small_6285936_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6285936_left_root small_6285936_left_fuel small_6285936_left_count small_6285936_left_encoded = true := by
  decide +kernel
theorem small_6285936_left_covered : CoveredBy scale carrier boxes small_6285936_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6285936_left_root small_6285936_left_fuel small_6285936_left_count small_6285936_left_encoded small_6285936_left_checked

theorem cover_6285936 : CoveredBy scale carrier boxes root_6285936 := by
  apply coveredBy_split_literal root_6285936 small_6285936_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2364.root coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_6285936_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2364.covered
#print axioms cover_6285936

def root_6285931 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285931_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285931_right_fuel : Nat := 1
def small_6285931_right_count : Nat := 1
def small_6285931_right_encoded : String := "00000004"
theorem small_6285931_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6285931_right_root small_6285931_right_fuel small_6285931_right_count small_6285931_right_encoded = true := by
  decide +kernel
theorem small_6285931_right_covered : CoveredBy scale carrier boxes small_6285931_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6285931_right_root small_6285931_right_fuel small_6285931_right_count small_6285931_right_encoded small_6285931_right_checked

theorem cover_6285931 : CoveredBy scale carrier boxes root_6285931 := by
  apply coveredBy_split_literal root_6285931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6285936 small_6285931_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6285936
  · exact small_6285931_right_covered
#print axioms cover_6285931

def root_6285930 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285930_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285930_right_fuel : Nat := 14
def small_6285930_right_count : Nat := 73
def small_6285930_right_encoded : String := "128A410900000004022A457B13E201040DE7CA060000000A0E60150703C0010013A510F70000000A0000000013A54CF70000000008C000F80000000A11FBE903000000010000000A000000030000000213E1C504000000020DE7CA060E5FD9070000000303C0010013A510F708C000F80000000A000000080000000013A54CF70000000008C000F80000000A000000050E60150703C0010013A510F708C000F811FC2503064000FE12FFAD090115233B0000000A0000000800000004000000080000000111FBE90300000001064000FE12FFAD090000000800000004000000050000000013A54CF70000000008C000F811FC2503064000FE12FFAD090115233B0000000A13F8590400000002000000050000000400000005000000010000000500000003"
theorem small_6285930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6285930_right_root small_6285930_right_fuel small_6285930_right_count small_6285930_right_encoded = true := by
  decide +kernel
theorem small_6285930_right_covered : CoveredBy scale carrier boxes small_6285930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6285930_right_root small_6285930_right_fuel small_6285930_right_count small_6285930_right_encoded small_6285930_right_checked

theorem cover_6285930 : CoveredBy scale carrier boxes root_6285930 := by
  apply coveredBy_split_literal root_6285930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6285931 small_6285930_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6285931
  · exact small_6285930_right_covered
#print axioms cover_6285930

def root_6285925 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285925_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285925_right_fuel : Nat := 1
def small_6285925_right_count : Nat := 1
def small_6285925_right_encoded : String := "00000001"
theorem small_6285925_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6285925_right_root small_6285925_right_fuel small_6285925_right_count small_6285925_right_encoded = true := by
  decide +kernel
theorem small_6285925_right_covered : CoveredBy scale carrier boxes small_6285925_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6285925_right_root small_6285925_right_fuel small_6285925_right_count small_6285925_right_encoded small_6285925_right_checked

theorem cover_6285925 : CoveredBy scale carrier boxes root_6285925 := by
  apply coveredBy_split_literal root_6285925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6285930 small_6285925_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6285930
  · exact small_6285925_right_covered
#print axioms cover_6285925

def root_6285924 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285924_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285924_right_fuel : Nat := 19
def small_6285924_right_count : Nat := 115
def small_6285924_right_encoded : String := "128A410300000001078000FE128A7D09022A457B13E201040DE7CA06000000090E60150703C0010013A510F7064000F812FFAD0308C000FE11FC250900000009000000040000000900000001000000090000000000000009000000030000000213E1C504000000020DE7CA060E5FD9070000000303C0010013A510F7064000F812FFAD0308C000FE0000000600000008000000010000000600000000000000090E60150703C0010013A510F7064000F812FFAD0308C000FE11FC25090115233B13F895040DAED8870E962506000000030320010000000008000000090E9661060000000600000003000000020000000800000004000000080000000112FF71030000000108C000FE00000006000000050000000013A54CF700000000064000F812FFAD0308C000FE11FC25090115233B0000000913F859040000000200000005000000040000000500000001000000050000000300000004128A410900000004022A457B13E201040DE7CA06000000090E60150703C0010013A510F7064000F812FFAD03064000FE12FFAD0900000009000000040000000500000001000000050000000000000005000000030000000213E1C504000000020DE7CA060E5FD907000000030000000500000005"
theorem small_6285924_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6285924_right_root small_6285924_right_fuel small_6285924_right_count small_6285924_right_encoded = true := by
  decide +kernel
theorem small_6285924_right_covered : CoveredBy scale carrier boxes small_6285924_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6285924_right_root small_6285924_right_fuel small_6285924_right_count small_6285924_right_encoded small_6285924_right_checked

theorem cover_6285924 : CoveredBy scale carrier boxes root_6285924 := by
  apply coveredBy_split_literal root_6285924 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6285925 small_6285924_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6285925
  · exact small_6285924_right_covered
#print axioms cover_6285924

def root_6285918 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285918_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6285918_left_fuel : Nat := 1
def small_6285918_left_count : Nat := 1
def small_6285918_left_encoded : String := "00000000"
theorem small_6285918_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6285918_left_root small_6285918_left_fuel small_6285918_left_count small_6285918_left_encoded = true := by
  decide +kernel
theorem small_6285918_left_covered : CoveredBy scale carrier boxes small_6285918_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6285918_left_root small_6285918_left_fuel small_6285918_left_count small_6285918_left_encoded small_6285918_left_checked

theorem cover_6285918 : CoveredBy scale carrier boxes root_6285918 := by
  apply coveredBy_split_literal root_6285918 small_6285918_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6285924 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_6285918_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6285924
#print axioms cover_6285918

def root_6284948 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284948_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284948_left_fuel : Nat := 25
def small_6284948_left_count : Nat := 461
def small_6284948_left_encoded : String := "13D7B0F7078000F8128A7D03078000FE128A7D09022A457B13E201040DE7CA060E5FD907000000030140010013F5D8F708C000F80000000A11FBE903000000010000000A0000000013F614F70000000008C000F80000000A11FBE9030000000108C000FE11FC2509033F67BB0000000913BBF504000000020D412886000000090EFA4D070000000A00000003000000040000000A0E6015070140010013F5D8F708C000F811FC250308C000FE0000000511FBE909000000040000000A0000000111FBE9030000000108C000FE11FC2509000000070000000411FBE90900000004033F67BB0000000A000000080000000013F614F70000000008C000F811FC250308C000FE11FC2509033F67BB0000000513BBF504000000020DAED887000000050E96610600000005000000030000000411FBE909000000040000000A0000000111FBE9030000000108C000FE11FC2509033F67BB13BC31040DAED8870E96250600000003000000070E96610600000009000000030000000213BBF504000000020DAED8870E96250600000003000000070E96610601E001000000000713E994F700000000082000F812469903096000FE000000050000000A0000000100000009000000030000000411FBE90900000004033F67BB0000000A13BBF504000000020DAED8870E9625060000000301E001000000000813E994F700000000082000F80000000A000000080E9661060000000A00000003000000030000000213E1C504000000020DE7CA060E5FD907000000030140010013F5D8F708C000F811FC250308C000FE11FC25090115233B0000000500000008000000040000000800000001000000080000000013F614F70000000008C000F811FC250308C000FE11FC25090115233B13F895040D412886000000050EFA4D0701E00100000000050000000A000000030000000213F85904000000020D412886000000080EFA4D0700000008000000030000000411FBE909000000040115233B0000000A000000080000000111FBE9030000000108C000FE11FC25090115233B13F895040D412886000000060EFA4D070000000800000003000000020000000600000004000000080E6015070140010013F5D8F708C000F811FC250308C000FE11FC25090115233B000000050000000800000004000000080000000111FBE90300000001000000080000000013F614F70000000008C000F811FC250308C000FE11FC25090115233B13F895040DAED8870E9625060000000301E001000000000513E994F700000000096000F80000000511AA810300000001000000070E96610601E001000000000513E994F700000000096000F80000000511AA810300000001096000FE0000000500000008000000030000000213F85904000000020DAED8870E9625060000000301E001000000000713E994F700000000096000F811AABD030000000800000001000000080E96610601E001000000000813E994F700000000096000F811AABD03000000080000000100000008000000030000000411FBE909000000040115233B13F895040DAED8870E9625060000000301E001000000000813E994F700000000096000F800000006000000080E9661060000000A0000000300000002000000080000000111FBE9030000000108C000FE11FC25090115233B13F895040DAED8870E96250600000003000000070E96610601E001000000000813E994F700000000082000F81246990300000008000000010000000800000003000000020000000800000004000000080000000300000004128A410900000004022A457B13E201040DE7CA060000000A0E601507014001000000000A0000000A000000030000000213E1C504000000020DE7CA06000000080E601507014001000000000813F614F70000000008C000F811FC25030000000800000001000000080000000300000001128A410300000001078000FE128A7D09022A457B13E201040DE7CA060E5FD907000000030140010013F5D8F7064000F812FFAD0308C000FE11FC2509000000090000000400000008000000010000000800000000000000090E6015070140010013F5D8F7064000F812FFAD0308C000FE00000007000000080000000112FF71030000000108C000FE00000007000000080000000013F614F700000000064000F812FFAD0308C000FE11FC2509033F67BB0000000913BBF504000000020DAED887000000070E96610600000009000000030000000411FBE90900000004033F67BB00000009000000080000000112FF71030000000108C000FE0000000900000009000000030000000213E1C504000000020DE7CA06000000080E601507014001000000000813F614F700000000064000F812FFAD030000000800000001000000080000000300000004128A410900000004022A457B13E201040DE7CA060E5FD907000000030000000A0E601507014001000000000813F614F700000000064000F812FFAD03064000FE12FFAD09033F67BB00000009000000080000000400000008000000010000000800000003000000020000000800000000"
theorem small_6284948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6284948_left_root small_6284948_left_fuel small_6284948_left_count small_6284948_left_encoded = true := by
  decide +kernel
theorem small_6284948_left_covered : CoveredBy scale carrier boxes small_6284948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6284948_left_root small_6284948_left_fuel small_6284948_left_count small_6284948_left_encoded small_6284948_left_checked

theorem cover_6284948 : CoveredBy scale carrier boxes root_6284948 := by
  apply coveredBy_split_literal root_6284948 small_6284948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6285918 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_6284948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6285918
#print axioms cover_6284948

def root_6284943 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284943_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284943_right_fuel : Nat := 1
def small_6284943_right_count : Nat := 1
def small_6284943_right_encoded : String := "00000003"
theorem small_6284943_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6284943_right_root small_6284943_right_fuel small_6284943_right_count small_6284943_right_encoded = true := by
  decide +kernel
theorem small_6284943_right_covered : CoveredBy scale carrier boxes small_6284943_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6284943_right_root small_6284943_right_fuel small_6284943_right_count small_6284943_right_encoded small_6284943_right_checked

theorem cover_6284943 : CoveredBy scale carrier boxes root_6284943 := by
  apply coveredBy_split_literal root_6284943 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6284948 small_6284943_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6284948
  · exact small_6284943_right_covered
#print axioms cover_6284943

def root_6284751 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284751_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284751_left_fuel : Nat := 19
def small_6284751_left_count : Nat := 91
def small_6284751_left_encoded : String := "0F875107000000030280010013D7B0F7078000F8128A7D03078000FE128A7D09022A457B0000000A13E1C504000000020B4D44060000000610804D070140010013F5D8F708C000F80000000A000000060000000013F614F70000000008C000F80000000A0000000600000003000000040000000A00000001128A410300000001078000FE00000006128A410900000004022A457B00000009000000080000000013D7ECF700000000078000F8128A7D03078000FE128A7D09022A457B0000000913E1C504000000020B4D440610801107000000030000000610804D0703C0010013A510F708C000F811FC25030000000A0000000111FBE90300000001000000060000000013A54CF70000000008C000F811FC250308C000FE11FC25090115233B0000000900000006000000040000000A00000001000000090000000300000004128A4109000000040000000A00000001128A410300000001078000FE128A7D09000000090000000400000009"
theorem small_6284751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6284751_left_root small_6284751_left_fuel small_6284751_left_count small_6284751_left_encoded = true := by
  decide +kernel
theorem small_6284751_left_covered : CoveredBy scale carrier boxes small_6284751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6284751_left_root small_6284751_left_fuel small_6284751_left_count small_6284751_left_encoded small_6284751_left_checked

theorem cover_6284751 : CoveredBy scale carrier boxes root_6284751 := by
  apply coveredBy_split_literal root_6284751 small_6284751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6284943 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6284751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6284943
#print axioms cover_6284751

def root_6284746 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284746_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6284746_right_fuel : Nat := 1
def small_6284746_right_count : Nat := 1
def small_6284746_right_encoded : String := "00000003"
theorem small_6284746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6284746_right_root small_6284746_right_fuel small_6284746_right_count small_6284746_right_encoded = true := by
  decide +kernel
theorem small_6284746_right_covered : CoveredBy scale carrier boxes small_6284746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6284746_right_root small_6284746_right_fuel small_6284746_right_count small_6284746_right_encoded small_6284746_right_checked

theorem cover_6284746 : CoveredBy scale carrier boxes root_6284746 := by
  apply coveredBy_split_literal root_6284746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6284751 small_6284746_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6284751
  · exact small_6284746_right_covered
#print axioms cover_6284746

def root_6282226 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6282226 : CoveredBy scale carrier boxes root_6282226 := by
  apply coveredBy_split_literal root_6282226 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2363.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6284746 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2363.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6284746
#print axioms cover_6282226

def root_6282220 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6282220_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6282220_left_fuel : Nat := 1
def small_6282220_left_count : Nat := 1
def small_6282220_left_encoded : String := "00000002"
theorem small_6282220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6282220_left_root small_6282220_left_fuel small_6282220_left_count small_6282220_left_encoded = true := by
  decide +kernel
theorem small_6282220_left_covered : CoveredBy scale carrier boxes small_6282220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6282220_left_root small_6282220_left_fuel small_6282220_left_count small_6282220_left_encoded small_6282220_left_checked

theorem cover_6282220 : CoveredBy scale carrier boxes root_6282220 := by
  apply coveredBy_split_literal root_6282220 small_6282220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6282226 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6282220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6282226
#print axioms cover_6282220

def root_6281538 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281538_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281538_left_fuel : Nat := 21
def small_6281538_left_count : Nat := 325
def small_6281538_left_encoded : String := "1386AD040CFD9C070F34D106000000030280010013D7B0F7078000F8128A7D03078000FE128A7D09067ECE7B0000000612EA5904000000020AD357870000000610D13D060140010013F5D8F708C000F80000000511FBE90300000001000000070000000013F614F70000000008C000F80000000611FBE9030000000108C000FE000000070000000600000003000000040000000600000001128A410300000001078000FE128A7D09067ECE7B0000000712EA5904000000020AD357870000000710D13D06014001000000000713F614F700000000064000F812FFAD0308C000FE0000000711FBE909000000040569AC3B00000006000000070000000112FF710300000001000000070000000300000004128A410900000004067ECE7B12EA95040AD357870000000610D13D06014001000000000A00000009000000030000000212EA5904000000020AD3578710D10106000000030000000610D13D060140010013F5D8F7064000F812FFAD03064000FE12FFAD090569AC3B000000060000000600000004000000060000000112FF710300000001064000FE12FFAD09000000070000000412FF7109000000040000000A0000000013F614F700000000064000F812FFAD03064000FE12FFAD090000000600000004000000060000000112FF710300000001064000FE12FFAD09000000090000000400000009000000030000000013D7ECF700000000078000F8128A7D03078000FE128A7D09067ECE7B0000000612EA5904000000020AD357870000000610D13D0603C0010013A510F708C000F80000000611FBE9030000000100000006000000000000000600000003000000040000000600000001128A410300000001078000FE128A7D09067ECE7B12EA95040AD3578700000006000000090000000212EA5904000000020AD3578710D101060000000303C001000000000713A54CF7000000000000000610D13D0603C0010013A510F7064000F812FFAD0308C000FE11FC2509000000070000000400000009000000010000000900000000000000090000000300000004128A410900000004067ECE7B12EA9504000000060000000212EA5904000000020AD357870000000610D13D0603C0010013A510F7064000F800000006000000090000000000000009000000030F350D060C9A87060F875107000000030280010013D7B0F7078000F80000000A0000000900000000000000090F878D070280010013D7B0F7078000F8128A7D03078000FE128A7D09067ECE7B0000000A12EA5904000000020DE7CA060E5FD907000000030000000A0E6015070140010013F5D8F708C000F80000000511FBE903000000010000000A0000000013F614F70000000008C000F80000000A11FBE903000000010000000A00000003000000040000000A00000001128A410300000001078000FE128A7D09067ECE7B0000000912EA5904000000020DE7CA06000000090E6015070140010013F5D8F7064000F812FFAD0308C000FE0000000700000009000000010000000900000000000000090000000300000004128A410900000004067ECE7B0000000912EA5904000000020000000A0000000013D7ECF700000000078000F8128A7D03078000FE128A7D09067ECE7B0000000912EA5904000000020DE7CA06000000090E60150703C0010013A510F708C000F80000000A11FBE90300000001000000090000000013A54CF70000000008C000F80000000A0000000900000003000000040000000A00000001128A410300000001078000FE0000000900000009000000030000000300000002"
theorem small_6281538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281538_left_root small_6281538_left_fuel small_6281538_left_count small_6281538_left_encoded = true := by
  decide +kernel
theorem small_6281538_left_covered : CoveredBy scale carrier boxes small_6281538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281538_left_root small_6281538_left_fuel small_6281538_left_count small_6281538_left_encoded small_6281538_left_checked

theorem cover_6281538 : CoveredBy scale carrier boxes root_6281538 := by
  apply coveredBy_split_literal root_6281538 small_6281538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6282220 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6281538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6282220
#print axioms cover_6281538

def root_6281533 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281533_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281533_right_fuel : Nat := 1
def small_6281533_right_count : Nat := 1
def small_6281533_right_encoded : String := "00000004"
theorem small_6281533_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281533_right_root small_6281533_right_fuel small_6281533_right_count small_6281533_right_encoded = true := by
  decide +kernel
theorem small_6281533_right_covered : CoveredBy scale carrier boxes small_6281533_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281533_right_root small_6281533_right_fuel small_6281533_right_count small_6281533_right_encoded small_6281533_right_checked

theorem cover_6281533 : CoveredBy scale carrier boxes root_6281533 := by
  apply coveredBy_split_literal root_6281533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281538 small_6281533_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281538
  · exact small_6281533_right_covered
#print axioms cover_6281533

def root_6281532 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281532_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281532_right_fuel : Nat := 17
def small_6281532_right_count : Nat := 129
def small_6281532_right_encoded : String := "135D450900000004045489FB1386AD040CFD9C070F34D106000000030280010013D7B0F7078000F800000006128A410300000001028000FE13D7ED09067ECE7B0000000612EA5904000000020AD357870000000610D13D060000000A0000000300000004000000060000000013D7ECF700000000078000F800000006128A410300000001028000FE13D7ED09067ECE7B000000060000000600000004000000050F350D060C9A87060000000A0F878D07028001000000000A0000000A00000003000000030000000213867104000000020CFD9C070F34D106000000030280010013D7B0F7078000F8128A7D03028000FE13D7ED0900000006000000040000000600000001128A410300000001028000FE13D7ED09022A457B13E201040AD357870000000610D13D060000000800000003000000020000000800000004000000050000000013D7ECF700000000078000F8128A7D030000000600000001000000050F350D060C9A87060F87510700000003028001000000000A0000000A0F878D070280010013D7B0F7078000F8128A7D03028000FE13D7ED09022A457B0000000A00000008000000040000000800000001000000080000000013D7ECF700000000078000F8128A7D03028000FE13D7ED09022A457B0000000A13E1C504000000020DE7CA060000000A00000005000000040000000500000001000000050000000300000003"
theorem small_6281532_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281532_right_root small_6281532_right_fuel small_6281532_right_count small_6281532_right_encoded = true := by
  decide +kernel
theorem small_6281532_right_covered : CoveredBy scale carrier boxes small_6281532_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281532_right_root small_6281532_right_fuel small_6281532_right_count small_6281532_right_encoded small_6281532_right_checked

theorem cover_6281532 : CoveredBy scale carrier boxes root_6281532 := by
  apply coveredBy_split_literal root_6281532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281533 small_6281532_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281533
  · exact small_6281532_right_covered
#print axioms cover_6281532

def root_6281527 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281527_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281527_right_fuel : Nat := 1
def small_6281527_right_count : Nat := 1
def small_6281527_right_encoded : String := "00000001"
theorem small_6281527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281527_right_root small_6281527_right_fuel small_6281527_right_count small_6281527_right_encoded = true := by
  decide +kernel
theorem small_6281527_right_covered : CoveredBy scale carrier boxes small_6281527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281527_right_root small_6281527_right_fuel small_6281527_right_count small_6281527_right_encoded small_6281527_right_checked

theorem cover_6281527 : CoveredBy scale carrier boxes root_6281527 := by
  apply coveredBy_split_literal root_6281527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281532 small_6281527_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281532
  · exact small_6281527_right_covered
#print axioms cover_6281527

def root_6281526 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281526_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281526_right_fuel : Nat := 23
def small_6281526_right_count : Nat := 259
def small_6281526_right_encoded : String := "135D450300000001050000FE135D8109045489FB1386AD040CFD9C070F34D106000000030280010013D7B0F7028000F813D7ED03078000FE128A7D09067ECE7B0000000712EA5904000000020000000700000004128A410900000004067ECE7B12EA95040AD3578710D101060000000300000007000000090000000212EA5904000000020AD3578710D10106000000030000000710D13D060140010013F5D8F703C000F813A54D03064000FE000000070000000800000001000000080000000000000009000000030000000113D7B10300000001078000FE128A7D090000000700000004128A410900000004067ECE7B0000000912EA590400000002000000090000000013D7ECF700000000028000F813D7ED03078000FE128A7D09067ECE7B0000000912EA5904000000020000000900000004128A410900000004067ECE7B0000000912EA5904000000020AD3578710D1010600000003000000050000000500000001000000090F350D0600000009000000030000000213867104000000020CFD9C070F34D106000000030280010013D7B0F7028000F813D7ED03078000FE128A7D09022A457B0000000713E1C504000000020AD357870000000710D13D06000000080000000300000004128A410900000004022A457B13E201040AD3578710D10106000000030000000510D13D06000000080000000300000002000000080000000113D7B10300000001078000FE128A7D09022A457B000000070000000800000004000000050000000013D7ECF700000000028000F813D7ED03078000FE128A7D09022A457B13E201040AD3578710D10106000000030000000710D13D0603C0010013A510F703C000F813A54D030000000900000001000000050000000000000005000000030000000213E1C504000000020AD3578710D10106000000030000000500000005000000040000000500000001000000050F350D060C9A87060F87510700000003000000060F878D070280010013D7B0F7028000F813D7ED03078000FE128A7D09022A457B0000000900000006000000040000000800000001000000080000000013D7ECF700000000028000F813D7ED03078000FE128A7D09022A457B000000090000000600000004000000050000000100000005000000030000000300000004135D450900000004045489FB1386AD040CFD9C070F34D106000000030280010013D7B0F7028000F813D7ED03028000FE13D7ED09067ECE7B12EA95040AD3578710D101060000000300000006000000090000000212EA5904000000020AD3578710D101060000000300000005000000050000000400000005000000010000000500000000000000050F350D0600000009000000030000000213867104000000020CFD9C070F34D10600000003000000050F350D060C9A8706000000080000000500000003"
theorem small_6281526_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281526_right_root small_6281526_right_fuel small_6281526_right_count small_6281526_right_encoded = true := by
  decide +kernel
theorem small_6281526_right_covered : CoveredBy scale carrier boxes small_6281526_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281526_right_root small_6281526_right_fuel small_6281526_right_count small_6281526_right_encoded small_6281526_right_checked

theorem cover_6281526 : CoveredBy scale carrier boxes root_6281526 := by
  apply coveredBy_split_literal root_6281526 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281527 small_6281526_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281527
  · exact small_6281526_right_covered
#print axioms cover_6281526

def root_6281521 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281521_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281521_right_fuel : Nat := 1
def small_6281521_right_count : Nat := 1
def small_6281521_right_encoded : String := "00000000"
theorem small_6281521_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281521_right_root small_6281521_right_fuel small_6281521_right_count small_6281521_right_encoded = true := by
  decide +kernel
theorem small_6281521_right_covered : CoveredBy scale carrier boxes small_6281521_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281521_right_root small_6281521_right_fuel small_6281521_right_count small_6281521_right_encoded small_6281521_right_checked

theorem cover_6281521 : CoveredBy scale carrier boxes root_6281521 := by
  apply coveredBy_split_literal root_6281521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281526 small_6281521_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281526
  · exact small_6281521_right_covered
#print axioms cover_6281521

def root_6281520 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6281520 : CoveredBy scale carrier boxes root_6281520 := by
  apply coveredBy_split_literal root_6281520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281521 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2365.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281521
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2365.covered
#print axioms cover_6281520

def root_6281515 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281515_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281515_right_fuel : Nat := 1
def small_6281515_right_count : Nat := 1
def small_6281515_right_encoded : String := "00000003"
theorem small_6281515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281515_right_root small_6281515_right_fuel small_6281515_right_count small_6281515_right_encoded = true := by
  decide +kernel
theorem small_6281515_right_covered : CoveredBy scale carrier boxes small_6281515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281515_right_root small_6281515_right_fuel small_6281515_right_count small_6281515_right_encoded small_6281515_right_checked

theorem cover_6281515 : CoveredBy scale carrier boxes root_6281515 := by
  apply coveredBy_split_literal root_6281515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281520 small_6281515_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281520
  · exact small_6281515_right_covered
#print axioms cover_6281515

def root_6281003 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281003_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6281003_left_fuel : Nat := 21
def small_6281003_left_count : Nat := 243
def small_6281003_left_encoded : String := "120701060000000305000100135D44F7050000F8135D8103050000FE135D8109045489FB1386AD0404548A07000000060000000600000002138671040000000204548A071386710600000003028001000000000613D7ECF700000000078000F800000006000000061386AD060280010013D7B0F7078000F8128A7D030000000600000001128A410300000001000000070000000013D7ECF700000000078000F8128A7D030000000600000001128A410300000001078000FE128A7D0900000007000000040000000600000003000000040000000600000001135D450300000001050000FE135D8109045489FB1386AD0404548A07000000071386AD06028001000000000713D7ECF700000000028000F813D7ED03078000FE00000007000000060000000113D7B10300000001078000FE00000007000000050000000300000002138671040000000204548A07000000071386AD06028001000000000713D7ECF700000000028000F813D7ED03078000FE000000070000000500000001000000050000000300000004135D450900000004045489FB1386AD0404548A07000000061386AD060280010013D7B0F7028000F800000006000000050000000000000005000000030000000213867104000000020000000500000000135D80F700000000050000F8135D8103050000FE135D8109045489FB1386AD0404548A07000000061386AD060780010000000006128A7CF700000000000000060000000300000002138671040000000204548A07138671060000000307800100128A40F7078000F800000006128A410300000001078000FE000000070000000500000000128A7CF700000000078000F800000006000000051386AD0607800100128A40F7078000F8128A7D03078000FE128A7D0900000006000000040000000600000001128A410300000001078000FE128A7D09022A457B13E20104067ECE8700000006000000060000000213E1C5040000000200000005000000040000000500000000128A7CF700000000078000F8128A7D03078000FE128A7D0900000006000000040000000500000001000000050000000300000004135D450900000004045489FB0000000613867104000000020000000500000001135D450300000001050000FE135D8109045489FB1386AD0404548A07138671060000000307800100128A40F70000000700000000000000051386AD0607800100128A40F7028000F813D7ED03078000FE128A7D09067ECE7B0000000612EA5904000000020000000500000004000000050000000100000005000000000000000500000003000000021386710400000002000000050000000400000005"
theorem small_6281003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6281003_left_root small_6281003_left_fuel small_6281003_left_count small_6281003_left_encoded = true := by
  decide +kernel
theorem small_6281003_left_covered : CoveredBy scale carrier boxes small_6281003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6281003_left_root small_6281003_left_fuel small_6281003_left_count small_6281003_left_encoded small_6281003_left_checked

theorem cover_6281003 : CoveredBy scale carrier boxes root_6281003 := by
  apply coveredBy_split_literal root_6281003 small_6281003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281515 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6281003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281515
#print axioms cover_6281003

def root_6280997 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6280997_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6280997_left_fuel : Nat := 1
def small_6280997_left_count : Nat := 1
def small_6280997_left_encoded : String := "00000002"
theorem small_6280997_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6280997_left_root small_6280997_left_fuel small_6280997_left_count small_6280997_left_encoded = true := by
  decide +kernel
theorem small_6280997_left_covered : CoveredBy scale carrier boxes small_6280997_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6280997_left_root small_6280997_left_fuel small_6280997_left_count small_6280997_left_encoded small_6280997_left_checked

theorem cover_6280997 : CoveredBy scale carrier boxes root_6280997 := by
  apply coveredBy_split_literal root_6280997 small_6280997_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.root_6281003 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6280997_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152.cover_6281003
#print axioms cover_6280997

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0152

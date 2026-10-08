import TaoBundleAssembly0432
import TaoBundleChunkBatch0588
import TaoBundleChunkBatch0589
import TaoBundleChunkBatch0590
import TaoBundleChunkBatch0591
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433
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
  apply coveredBy_split_literal root_6258118 small_6258118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0432.root_6259124 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6258118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0432.cover_6259124
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
  apply coveredBy_split_literal root_6258112 small_6258112_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6258118 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6258112_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6258118
#print axioms cover_6258112

def root_6258111 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6258111 : CoveredBy scale carrier boxes root_6258111 := by
  apply coveredBy_split_literal root_6258111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6258112 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2357.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6258112
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
  apply coveredBy_split_literal root_6258105 small_6258105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6258111 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6258105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6258111
#print axioms cover_6258105

def root_6256103 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6256103 : CoveredBy scale carrier boxes root_6256103 := by
  apply coveredBy_split_literal root_6256103 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2354.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6258105 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2354.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6258105
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
  apply coveredBy_split_literal root_6256097 small_6256097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6256103 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6256097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6256103
#print axioms cover_6256097

def root_6252355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6252355 : CoveredBy scale carrier boxes root_6252355 := by
  apply coveredBy_split_literal root_6252355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0432.root_6252356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6256097 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0432.cover_6252356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6256097
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
  apply coveredBy_split_literal root_6252349 small_6252349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6252355 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6252349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6252355
#print axioms cover_6252349

def root_6249633 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6249633 : CoveredBy scale carrier boxes root_6249633 := by
  apply coveredBy_split_literal root_6249633 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2351.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6252349 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2351.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6252349
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
  apply coveredBy_split_literal root_6265307 small_6265307_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265313 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6265307_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265313
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
  apply coveredBy_split_literal root_6265135 small_6265135_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265307 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6265135_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265307
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
  apply coveredBy_split_literal root_6265129 small_6265129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265135 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6265129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265135
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
  apply coveredBy_split_literal root_6265069 small_6265069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265129 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6265069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265129
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
  apply coveredBy_split_literal root_6265064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265069 small_6265064_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265069
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
  apply coveredBy_split_literal root_6269073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6269078 small_6269073_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6269078
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
  apply coveredBy_split_literal root_6269009 small_6269009_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6269073 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6269009_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6269073
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
  apply coveredBy_split_literal root_6269003 small_6269003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6269009 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6269003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6269009
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
  apply coveredBy_split_literal root_6268781 small_6268781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6269003 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6268781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6269003
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
  apply coveredBy_split_literal root_6268775 small_6268775_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6268781 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6268775_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6268781
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
  apply coveredBy_split_literal root_6268695 small_6268695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6268775 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6268695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6268775
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
  apply coveredBy_split_literal root_6268689 small_6268689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6268695 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6268689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6268695
#print axioms cover_6268689

def root_6265063 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6265063 : CoveredBy scale carrier boxes root_6265063 := by
  apply coveredBy_split_literal root_6265063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6268689 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265064
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6268689
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
  apply coveredBy_split_literal root_6265058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265063 small_6265058_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265063
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
  apply coveredBy_split_literal root_6264450 small_6264450_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6265058 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6264450_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6265058
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
  apply coveredBy_split_literal root_6264444 small_6264444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6264450 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6264444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6264450
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
  apply coveredBy_split_literal root_6264352 small_6264352_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6264444 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6264352_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6264444
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
  apply coveredBy_split_literal root_6264347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6264352 small_6264347_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6264352
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
  apply coveredBy_split_literal root_6277280 small_6277280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6277286 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6277280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6277286
#print axioms cover_6277280

def root_6274412 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6274412 : CoveredBy scale carrier boxes root_6274412 := by
  apply coveredBy_split_literal root_6274412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2361.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6277280 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2361.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6277280
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
  apply coveredBy_split_literal root_6274406 small_6274406_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6274412 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6274406_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6274412
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
  apply coveredBy_split_literal root_6274286 small_6274286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6274406 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6274286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6274406
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
  apply coveredBy_split_literal root_6274281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6274286 small_6274281_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6274286
  · exact small_6274281_right_covered
#print axioms cover_6274281

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433

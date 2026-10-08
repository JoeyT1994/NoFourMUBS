import TaoBundleAssembly0179
import TaoBundleChunkBatch0704
import TaoBundleChunkBatch0705
import TaoBundleChunkBatch0706
import TaoBundleChunkBatch0707
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180
def root_7478018 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7478018_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7478018_left_fuel : Nat := 31
def small_7478018_left_count : Nat := 489
def small_7478018_left_encoded : String := "115224FF0000000408A912F712073D0008A912FB12073D0408A912FF12073CFE0000000405000102135D450300000001050000FC00000005135D4507000000030CFD9BF70F350D000CFD9BFB0F350D0400000005000000020F34D104000000020CFD9BFF0F350CFE000000040C9A8700000000050F878CF700000000000000050F34D0FE0000000500000004000000000F34D100000000000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000050F878CFB00000002000000050F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010200000005000000060F8750FF0280010213D7B10300000001028000FC0000000513D7B107000000030AD357770000000510D10100000000000AD3577B000000050000000613D7ED03028000FC0000000613D7B107000000030AD357770000000610D10100000000000AD3577B000000070000000600000001000000040F34D0FE0000000500000004135D8103050000FC135D81070CFD9BF70F350D000CFD9BFB0F350D0400000005000000020F34D1040000000200000006000000000F34D100000000000CFD9BFB0F350D0400000007000000020F34D104000000020CFD9BFF000000060000000600000003135D4507000000030CFD9BF70F350D000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87000F8750F70C9A8704000000050F878CFB000000020C9A86FE000000050F8750FF0780010200000005128A7D03028000FC0000000513D7B107000000030B4D44000000000510804CF7000000000DE7CA0400000005000000060000000100000004000000000F878CF7000000000C9A87040F8750FB0C9A86FE0000000500000007000000020F878CFB000000020C9A86FE0F878CFF00000004000000050F8750FF07800102128A410300000001028000FC0000000513D7B1070000000300000005128A7D03028000FC0000000613D7B107000000030DE7CA00000000070000000700000001000000040F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE000000060F8750FF0000000600000004000000000F878CF7000000000C9A86FE000000060F8750FF078001020000000600000006000000040F34D0FE0000000500000004000000000F34D100000000000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000070F878CFB000000020C9A86FE0F878CFF0000000400000007000000070F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800102128A41030000000100000006000000060F8750FF07800102128A410300000001028000FC0000000613D7B107000000030AD357770000000600000007128A7D030000000700000001000000040F34D0FE000000060000000400000001120700FE0500010200000005135D8103050000FC00000005135D4507000000030CFD9BF70F350D0000000005000000000F34D100000000000CFD9BFB0F350D0400000005000000020F34D1040000000200000006000000010000000400000002120701040000000208A912FF12073CFE0000000405000102135D450300000001050000FC00000006135D4507000000030CFD9BF70F350D00045489FB1386AD040CFD9BFF00000006000000060000000200000006000000000F34D10000000000045489FB1386AD040CFD9BFF00000006000000060000000200000006135D8103050000FC00000006135D4507000000030CFD9BF7000000060F34D10000000000045489FB1386AD040CFD9BFF0000000600000006000000020000000600000001120700FE000000060000000400000000120701000000000008A912FB12073D0408A912FF12073CFE0000000405000102135D450300000001050000FC135D8107045489F71386AD000CFD9BFB0000000700000007000000000000000700000003135D450700000003045489F71386AD000CFD9BFB0F350D040CFD9BFF0F350CFE000000040000000700000007000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000700000007000000070000000013867100000000000CFD9BFB0000000700000007135D8103050000FC135D8107045489F7000000070000000700000003135D450700000003045489F71386AD000CFD9BFB0F350D0400000007000000020F34D104000000020CFD9BFF0000000A00000007000000000000000700000001120700FE05000102135D450300000001050000FC135D8107045489F7000000050000000700000003135D450700000003045489F70000000700000007135D8103050000FC135D8107045489F71386AD000CFD9BFB0F350D040000000500000002000000060000000013867100000000000000000700000003135D450700000003045489F71386AD000CFD9BFB0F350D04000000070000000200000007000000000000000A000000010000000400000002120701040000000208A912FF12073CFE0000000405000102135D450300000001050000FC135D8107045489F70000000600000007000000030000000A135D81030000000A00000001120700FE05000102135D450300000001050000FC000000060000000A0000000600000004"
theorem small_7478018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7478018_left_root small_7478018_left_fuel small_7478018_left_count small_7478018_left_encoded = true := by
  decide +kernel
theorem small_7478018_left_covered : CoveredBy scale carrier boxes small_7478018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7478018_left_root small_7478018_left_fuel small_7478018_left_count small_7478018_left_encoded small_7478018_left_checked

theorem cover_7478018 : CoveredBy scale carrier boxes root_7478018 := by
  apply coveredBy_split_literal root_7478018 small_7478018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7479056 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7478018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7479056
#print axioms cover_7478018

def root_7478012 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7478012_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7478012_left_fuel : Nat := 1
def small_7478012_left_count : Nat := 1
def small_7478012_left_encoded : String := "00000003"
theorem small_7478012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7478012_left_root small_7478012_left_fuel small_7478012_left_count small_7478012_left_encoded = true := by
  decide +kernel
theorem small_7478012_left_covered : CoveredBy scale carrier boxes small_7478012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7478012_left_root small_7478012_left_fuel small_7478012_left_count small_7478012_left_encoded small_7478012_left_checked

theorem cover_7478012 : CoveredBy scale carrier boxes root_7478012 := by
  apply coveredBy_split_literal root_7478012 small_7478012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7478018 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7478012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7478018
#print axioms cover_7478012

def root_7477346 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7477346_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7477346_left_fuel : Nat := 22
def small_7477346_left_count : Nat := 305
def small_7477346_left_encoded : String := "115225070A0000FE115224FF0000000408A912F712073D0008A912FB12073D0408A91307120700FC08A912FF12073CFE000000040500010200000005135D81030CFD9BF7000000060000000500000001000000050000000312073CFC0000000308A912FF12073CFE000000040500010200000005135D81030CFD9BF70F350D000CFD9BFB0F350D04000000050000000200000005000000000F34D100000000000CFD9BFB0F350D0400000005000000020F34D104000000020000000600000001120700FE000000050000000400000002120701040000000208A91307120700FC000000050000000312073CFC0000000308A912FF12073CFE000000040500010200000005000000060000000600000000120701000000000008A912FB12073D0408A91307120700FC000000050000000312073CFC0000000308A912FF12073CFE000000040500010200000005135D8103045489F71386AD000CFD9BFB0F350D0400000005000000020F34D10400000002000000070000000013867100000000000CFD9BFB0F350D0400000005000000020000000700000001120700FE0500010200000005135D810300000005000000010000000400000002120701040000000208A91307120700FC000000060000000312073CFC0000000308A912FF12073CFE0000000405000102135D4503000000010000000600000006120700FE00000006000000041151E8FF08A912F712073D0008A912FB12073D0408A91307120700FC05000102135D450300000001050000FE135D80FF000000040CFD9BF7000000060000000500000007135D8103050000FE135D80FF000000040CFD9BF7000000060F34D1000000000000000006135D44FF0000000700000004000000010000000312073CFC0000000305000102135D450300000001050000FE135D80FF000000040CFD9BF70F350D000CFD9BFB0F350D04000000050000000200000005000000000F34D100000000000CFD9BFB0000000700000007135D44FF0CFD9BF70F350D000CFD9BFB0F350D040000000A000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87000F8750F70000000A000000000F878CF70000000000000007000000000F34D100000000000000000700000004135D8103050000FE135D80FF000000040CFD9BF70F350D000CFD9BFB0F350D040CFD9C070000000700000007000000020F34D104000000020CFD9C070000000600000006000000000F34D1000000000000000007135D44FF0CFD9BF70F350D000CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C070000000700000007000000000F34D1000000000000000007000000040000000100000002120701040000000208A91307120700FC000000060000000312073CFC0000000305000102135D450300000001050000FE00000006135D44FF0CFD9BF7000000060F34D100000000000000000600000004135D8103050000FE00000006135D44FF0CFD9BF7000000060F34D1000000000000000006000000040000000100000000120701000000000008A912FB12073D0408A91307120700FC00000007000000030000000700000002120701040000000208A913070000000712073CFC0000000305000102135D450300000001050000FE0000000600000007000000070000000400000003"
theorem small_7477346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7477346_left_root small_7477346_left_fuel small_7477346_left_count small_7477346_left_encoded = true := by
  decide +kernel
theorem small_7477346_left_covered : CoveredBy scale carrier boxes small_7477346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7477346_left_root small_7477346_left_fuel small_7477346_left_count small_7477346_left_encoded small_7477346_left_checked

theorem cover_7477346 : CoveredBy scale carrier boxes root_7477346 := by
  apply coveredBy_split_literal root_7477346 small_7477346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7478012 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7477346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7478012
#print axioms cover_7477346

def root_7477340 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7477340_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7477340_left_fuel : Nat := 1
def small_7477340_left_count : Nat := 1
def small_7477340_left_encoded : String := "00000002"
theorem small_7477340_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7477340_left_root small_7477340_left_fuel small_7477340_left_count small_7477340_left_encoded = true := by
  decide +kernel
theorem small_7477340_left_covered : CoveredBy scale carrier boxes small_7477340_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7477340_left_root small_7477340_left_fuel small_7477340_left_count small_7477340_left_encoded small_7477340_left_checked

theorem cover_7477340 : CoveredBy scale carrier boxes root_7477340 := by
  apply coveredBy_split_literal root_7477340 small_7477340_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7477346 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7477340_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7477346
#print axioms cover_7477340

def root_7477000 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7477000_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7477000_left_fuel : Nat := 18
def small_7477000_left_count : Nat := 159
def small_7477000_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A912F712073D0008A91307120700FC00000005000000030000000500000000120701000000000008A91307120700FC0000000500000003000000051151E8FF08A912F712073D0008A91307120700FC05000102135D4503000000010500010400000005135D80FB00000002050000FE0000000500000007000000080000000312073CFC0000000305000102135D4503000000010500010400000005135D80FB0000000200000007135D81030500010400000007135D80FB00000002050000FE135D80FF0000000400000007000000070000000100000000120701000000000008A91307120700FC00000007000000030000000700000004000000031151E907000000030A0000FE115224FF0000000408A912F712073D0008A912FF12073CFE000000040500010200000005135D81030500010400000005135D80FB00000002050000FC00000005135D4507000000030CFD9BF70F350D0000000005000000000F34D100000000000000000700000001120700FE000000050000000400000000120701000000000008A912FF12073CFE000000040500010200000005135D81030500010400000005135D80FB00000002050000FC000000050000000700000001120700FE00000005000000041151E8FF08A912F712073D0005000102135D450300000001050001040000000A135D80FB00000002050000FC0000000A135D4507000000030000000A135D81030500010400000007135D80FB00000002050000FC00000007135D450700000003050000FE135D80FF000000040CFD9BF70000000A000000070000000700000001000000001207010000000000000000070000000400000002"
theorem small_7477000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7477000_left_root small_7477000_left_fuel small_7477000_left_count small_7477000_left_encoded = true := by
  decide +kernel
theorem small_7477000_left_covered : CoveredBy scale carrier boxes small_7477000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7477000_left_root small_7477000_left_fuel small_7477000_left_count small_7477000_left_encoded small_7477000_left_checked

theorem cover_7477000 : CoveredBy scale carrier boxes root_7477000 := by
  apply coveredBy_split_literal root_7477000 small_7477000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7477340 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7477000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7477340
#print axioms cover_7477000

def root_7476994 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7476994_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7476994_left_fuel : Nat := 1
def small_7476994_left_count : Nat := 1
def small_7476994_left_encoded : String := "00000001"
theorem small_7476994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7476994_left_root small_7476994_left_fuel small_7476994_left_count small_7476994_left_encoded = true := by
  decide +kernel
theorem small_7476994_left_covered : CoveredBy scale carrier boxes small_7476994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7476994_left_root small_7476994_left_fuel small_7476994_left_count small_7476994_left_encoded small_7476994_left_checked

theorem cover_7476994 : CoveredBy scale carrier boxes root_7476994 := by
  apply coveredBy_split_literal root_7476994 small_7476994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7477000 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7476994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7477000
#print axioms cover_7476994

def root_7483826 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7483826 : CoveredBy scale carrier boxes root_7483826 := by
  apply coveredBy_split_literal root_7483826 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2817.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2818.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2817.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2818.covered
#print axioms cover_7483826

def root_7483820 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7483820_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7483820_left_fuel : Nat := 1
def small_7483820_left_count : Nat := 1
def small_7483820_left_encoded : String := "00000002"
theorem small_7483820_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7483820_left_root small_7483820_left_fuel small_7483820_left_count small_7483820_left_encoded = true := by
  decide +kernel
theorem small_7483820_left_covered : CoveredBy scale carrier boxes small_7483820_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7483820_left_root small_7483820_left_fuel small_7483820_left_count small_7483820_left_encoded small_7483820_left_checked

theorem cover_7483820 : CoveredBy scale carrier boxes root_7483820 := by
  apply coveredBy_split_literal root_7483820 small_7483820_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7483826 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7483820_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7483826
#print axioms cover_7483820

def root_7482532 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7482532 : CoveredBy scale carrier boxes root_7482532 := by
  apply coveredBy_split_literal root_7482532 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2816.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7483820 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2816.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7483820
#print axioms cover_7482532

def root_7482527 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7482527_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7482527_right_fuel : Nat := 1
def small_7482527_right_count : Nat := 1
def small_7482527_right_encoded : String := "00000001"
theorem small_7482527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7482527_right_root small_7482527_right_fuel small_7482527_right_count small_7482527_right_encoded = true := by
  decide +kernel
theorem small_7482527_right_covered : CoveredBy scale carrier boxes small_7482527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7482527_right_root small_7482527_right_fuel small_7482527_right_count small_7482527_right_encoded small_7482527_right_checked

theorem cover_7482527 : CoveredBy scale carrier boxes root_7482527 := by
  apply coveredBy_split_literal root_7482527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7482532 small_7482527_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7482532
  · exact small_7482527_right_covered
#print axioms cover_7482527

def root_7476993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7476993 : CoveredBy scale carrier boxes root_7476993 := by
  apply coveredBy_split_literal root_7476993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7476994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7482527 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7476994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7482527
#print axioms cover_7476993

def root_7476987 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7476987_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7476987_left_fuel : Nat := 1
def small_7476987_left_count : Nat := 1
def small_7476987_left_encoded : String := "00000000"
theorem small_7476987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7476987_left_root small_7476987_left_fuel small_7476987_left_count small_7476987_left_encoded = true := by
  decide +kernel
theorem small_7476987_left_covered : CoveredBy scale carrier boxes small_7476987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7476987_left_root small_7476987_left_fuel small_7476987_left_count small_7476987_left_encoded small_7476987_left_checked

theorem cover_7476987 : CoveredBy scale carrier boxes root_7476987 := by
  apply coveredBy_split_literal root_7476987 small_7476987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7476993 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7476987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7476993
#print axioms cover_7476987

def root_7472475 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7472475 : CoveredBy scale carrier boxes root_7472475 := by
  apply coveredBy_split_literal root_7472475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7472476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7476987 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7472476
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7476987
#print axioms cover_7472475

def root_7490825 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490825_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490825_left_fuel : Nat := 25
def small_7490825_left_count : Nat := 179
def small_7490825_left_encoded : String := "120701020000000108A91307120700FC08A91309120700FE0000000500000004000000050000000312073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000104135D44FB045489F71386AD000000000500000000138671000000000004548A0313867102000000010CFD9C0700000005000000091386AD020CFD9C07000000050F350CFC000000030CFD9C09000000050F350CFE000000040C9A86FC000000050F87510700000003000000090000000100000002135D80FB00000002045489F71386AD0004548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE00000004000000081386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FC000000060F875107000000030C9A86FE00000006000000080000000100000000138671000000000004548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000050000000400000008000000030F875107000000030C9A86FE000000090F87510900000004000000081386AD020CFD9C070F34D0FC0CFD9C09000000050F350CFE0000000400000008000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000050F8751070000000300000009000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090780010400000005000000060000000400000008000000030F875107000000030C9A86FE0F878D090780010400000009128A7CFB00000002022A4577000000060000000A000000040F875109000000040780010400000008128A7CFB00000002022A45770000000613E1C50000000000067ECE83000000080000000800000001"
theorem small_7490825_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490825_left_root small_7490825_left_fuel small_7490825_left_count small_7490825_left_encoded = true := by
  decide +kernel
theorem small_7490825_left_covered : CoveredBy scale carrier boxes small_7490825_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490825_left_root small_7490825_left_fuel small_7490825_left_count small_7490825_left_encoded small_7490825_left_checked

theorem cover_7490825 : CoveredBy scale carrier boxes root_7490825 := by
  apply coveredBy_split_literal root_7490825 small_7490825_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2820.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7490825_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2820.covered
#print axioms cover_7490825

def root_7490819 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490819_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490819_left_fuel : Nat := 1
def small_7490819_left_count : Nat := 1
def small_7490819_left_encoded : String := "00000000"
theorem small_7490819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490819_left_root small_7490819_left_fuel small_7490819_left_count small_7490819_left_encoded = true := by
  decide +kernel
theorem small_7490819_left_covered : CoveredBy scale carrier boxes small_7490819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490819_left_root small_7490819_left_fuel small_7490819_left_count small_7490819_left_encoded small_7490819_left_checked

theorem cover_7490819 : CoveredBy scale carrier boxes root_7490819 := by
  apply coveredBy_split_literal root_7490819 small_7490819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7490825 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7490819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7490825
#print axioms cover_7490819

def root_7490613 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490613_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490613_left_fuel : Nat := 19
def small_7490613_left_count : Nat := 97
def small_7490613_left_encoded : String := "12073D0008A91303120701020000000108A91307120700FC08A9130900000008000000080000000312073CFC0000000308A91309120700FE0500010400000005135D80FB00000002000000050000000412073CFE000000040500010400000005135D80FB000000020CFD9BF7000000060F34D1000000000004548A0313867102000000010CFD9C07000000080F350CFC000000030CFD9C0900000008000000061386AD020CFD9C0700000008000000060000000112073D0208A91307120700FC000000050000000312073CFC0000000308A91309120700FE000000050000000412073CFE000000040500010400000005135D80FB000000020CFD9BF70F350D0000000005000000000F34D100000000000CFD9C030F34D102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE0000000500000004000000060F350D020CFD9C07000000050F350CFC000000030CFD9C09000000050F350CFE000000040C9A87020000000500000006000000010000000100000000"
theorem small_7490613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490613_left_root small_7490613_left_fuel small_7490613_left_count small_7490613_left_encoded = true := by
  decide +kernel
theorem small_7490613_left_covered : CoveredBy scale carrier boxes small_7490613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490613_left_root small_7490613_left_fuel small_7490613_left_count small_7490613_left_encoded small_7490613_left_checked

theorem cover_7490613 : CoveredBy scale carrier boxes root_7490613 := by
  apply coveredBy_split_literal root_7490613 small_7490613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7490819 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7490613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7490819
#print axioms cover_7490613

def root_7490608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490608_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490608_right_fuel : Nat := 1
def small_7490608_right_count : Nat := 1
def small_7490608_right_encoded : String := "00000004"
theorem small_7490608_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490608_right_root small_7490608_right_fuel small_7490608_right_count small_7490608_right_encoded = true := by
  decide +kernel
theorem small_7490608_right_covered : CoveredBy scale carrier boxes small_7490608_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490608_right_root small_7490608_right_fuel small_7490608_right_count small_7490608_right_encoded small_7490608_right_checked

theorem cover_7490608 : CoveredBy scale carrier boxes root_7490608 := by
  apply coveredBy_split_literal root_7490608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7490613 small_7490608_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7490613
  · exact small_7490608_right_covered
#print axioms cover_7490608

def root_7494628 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7494628 : CoveredBy scale carrier boxes root_7494628 := by
  apply coveredBy_split_literal root_7494628 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2821.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2822.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2821.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2822.covered
#print axioms cover_7494628

def root_7494622 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494622_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494622_left_fuel : Nat := 1
def small_7494622_left_count : Nat := 1
def small_7494622_left_encoded : String := "00000003"
theorem small_7494622_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494622_left_root small_7494622_left_fuel small_7494622_left_count small_7494622_left_encoded = true := by
  decide +kernel
theorem small_7494622_left_covered : CoveredBy scale carrier boxes small_7494622_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494622_left_root small_7494622_left_fuel small_7494622_left_count small_7494622_left_encoded small_7494622_left_checked

theorem cover_7494622 : CoveredBy scale carrier boxes root_7494622 := by
  apply coveredBy_split_literal root_7494622 small_7494622_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494628 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7494622_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494628
#print axioms cover_7494622

def root_7494582 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494582_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494582_left_fuel : Nat := 7
def small_7494582_left_count : Nat := 19
def small_7494582_left_encoded : String := "120700FC05000104135D44FB050000FE00000005135D450900000004045489F7000000080000000800000002135D80FB00000002050000FE135D810900000008000000040000000800000003"
theorem small_7494582_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494582_left_root small_7494582_left_fuel small_7494582_left_count small_7494582_left_encoded = true := by
  decide +kernel
theorem small_7494582_left_covered : CoveredBy scale carrier boxes small_7494582_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494582_left_root small_7494582_left_fuel small_7494582_left_count small_7494582_left_encoded small_7494582_left_checked

theorem cover_7494582 : CoveredBy scale carrier boxes root_7494582 := by
  apply coveredBy_split_literal root_7494582 small_7494582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494622 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7494582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494622
#print axioms cover_7494582

def root_7494577 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494577_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494577_right_fuel : Nat := 1
def small_7494577_right_count : Nat := 1
def small_7494577_right_encoded : String := "00000001"
theorem small_7494577_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494577_right_root small_7494577_right_fuel small_7494577_right_count small_7494577_right_encoded = true := by
  decide +kernel
theorem small_7494577_right_covered : CoveredBy scale carrier boxes small_7494577_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494577_right_root small_7494577_right_fuel small_7494577_right_count small_7494577_right_encoded small_7494577_right_checked

theorem cover_7494577 : CoveredBy scale carrier boxes root_7494577 := by
  apply coveredBy_split_literal root_7494577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494582 small_7494577_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494582
  · exact small_7494577_right_covered
#print axioms cover_7494577

def root_7494513 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494513_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494513_left_fuel : Nat := 11
def small_7494513_left_count : Nat := 31
def small_7494513_left_encoded : String := "120701020000000108A913070000000812073CFC0000000305000104135D44FB050000FE135D8109045489F700000008138671000000000000000008000000040000000800000002135D80FB00000002050000FE135D8109045489F700000008138671000000000004548A0300000008000000080000000400000008"
theorem small_7494513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494513_left_root small_7494513_left_fuel small_7494513_left_count small_7494513_left_encoded = true := by
  decide +kernel
theorem small_7494513_left_covered : CoveredBy scale carrier boxes small_7494513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494513_left_root small_7494513_left_fuel small_7494513_left_count small_7494513_left_encoded small_7494513_left_checked

theorem cover_7494513 : CoveredBy scale carrier boxes root_7494513 := by
  apply coveredBy_split_literal root_7494513 small_7494513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494577 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7494513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494577
#print axioms cover_7494513

def root_7494507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494507_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494507_left_fuel : Nat := 1
def small_7494507_left_count : Nat := 1
def small_7494507_left_encoded : String := "00000000"
theorem small_7494507_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494507_left_root small_7494507_left_fuel small_7494507_left_count small_7494507_left_encoded = true := by
  decide +kernel
theorem small_7494507_left_covered : CoveredBy scale carrier boxes small_7494507_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494507_left_root small_7494507_left_fuel small_7494507_left_count small_7494507_left_encoded small_7494507_left_checked

theorem cover_7494507 : CoveredBy scale carrier boxes root_7494507 := by
  apply coveredBy_split_literal root_7494507 small_7494507_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494513 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7494507_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494513
#print axioms cover_7494507

def root_7494245 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494245_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494245_left_fuel : Nat := 20
def small_7494245_left_count : Nat := 121
def small_7494245_left_encoded : String := "12073D0008A91303120701020000000108A91307000000080000000812073D0208A91307120700FC0500010400000005135D80FB00000002050000FE00000005000000080000000312073CFC0000000305000104135D44FB050000FE135D81090CFD9BF70F350D0000000005000000000F34D100000000000CFD9C030F34D10200000001000000080F350D020CFD9C07000000050F350CFC000000030C9A8702000000050F878D030C9A86FC000000050F875107000000030000000A000000010000000100000004135D4509000000040CFD9BF70F350D000CFD9C03000000080000000A000000000F34D100000000000CFD9C030F34D10200000001000000080F350D020000000A0000000100000002135D80FB00000002050000FE135D81090CFD9BF70F350D000CFD9C03000000080F350D020CFD9C07000000080000000600000001000000000F34D100000000000CFD9C030F34D10200000001000000080F350D020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020F875103000000010000000A0F878D0300000008000000010000000100000004135D4509000000040CFD9BF70F350D0000000008000000000F34D100000000000CFD9C03000000080F350D020CFD9C070000000800000008000000010000000100000000"
theorem small_7494245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494245_left_root small_7494245_left_fuel small_7494245_left_count small_7494245_left_encoded = true := by
  decide +kernel
theorem small_7494245_left_covered : CoveredBy scale carrier boxes small_7494245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494245_left_root small_7494245_left_fuel small_7494245_left_count small_7494245_left_encoded small_7494245_left_checked

theorem cover_7494245 : CoveredBy scale carrier boxes root_7494245 := by
  apply coveredBy_split_literal root_7494245 small_7494245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494507 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7494245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494507
#print axioms cover_7494245

def root_7494239 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494239_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7494239_left_fuel : Nat := 1
def small_7494239_left_count : Nat := 1
def small_7494239_left_encoded : String := "00000004"
theorem small_7494239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7494239_left_root small_7494239_left_fuel small_7494239_left_count small_7494239_left_encoded = true := by
  decide +kernel
theorem small_7494239_left_covered : CoveredBy scale carrier boxes small_7494239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7494239_left_root small_7494239_left_fuel small_7494239_left_count small_7494239_left_encoded small_7494239_left_checked

theorem cover_7494239 : CoveredBy scale carrier boxes root_7494239 := by
  apply coveredBy_split_literal root_7494239 small_7494239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494245 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7494239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494245
#print axioms cover_7494239

def root_7490607 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7490607 : CoveredBy scale carrier boxes root_7490607 := by
  apply coveredBy_split_literal root_7490607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7490608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7494239 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7490608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7494239
#print axioms cover_7490607

def root_7490602 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490602_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490602_right_fuel : Nat := 1
def small_7490602_right_count : Nat := 1
def small_7490602_right_encoded : String := "00000003"
theorem small_7490602_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490602_right_root small_7490602_right_fuel small_7490602_right_count small_7490602_right_encoded = true := by
  decide +kernel
theorem small_7490602_right_covered : CoveredBy scale carrier boxes small_7490602_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490602_right_root small_7490602_right_fuel small_7490602_right_count small_7490602_right_encoded small_7490602_right_checked

theorem cover_7490602 : CoveredBy scale carrier boxes root_7490602 := by
  apply coveredBy_split_literal root_7490602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7490607 small_7490602_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7490607
  · exact small_7490602_right_covered
#print axioms cover_7490602

def root_7502024 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7502024_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7502024_right_fuel : Nat := 17
def small_7502024_right_count : Nat := 103
def small_7502024_right_encoded : String := "135D450700000003045489F71386AD000CFD9C030F34D102000000010CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D0907800104000000070000000700000004000000070F350D020CFD9C090F34D0FE0C9A8702000000070F878D0307800104000000070000000700000001000000040F350CFE000000040C9A8702000000070F878D030C9A86FE0F878D0900000007000000040000000700000001000000010000000013867100000000000CFD9C030F34D102000000010CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D09078001040000000A0000000A000000040F8751090000000407800104128A40FB028000FC13D7ED07022A45770000000713E1C500000000000AD357830000000A0000000A000000030000000700000002128A7CFB00000002000000050F350D020CFD9C090F34D0FE0C9A8702000000070F878D030000000A00000001000000040F350CFE000000040C9A8702000000070F878D030C9A86FE0F878D0907800104000000070000000700000004000000070000000100000001"
theorem small_7502024_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7502024_right_root small_7502024_right_fuel small_7502024_right_count small_7502024_right_encoded = true := by
  decide +kernel
theorem small_7502024_right_covered : CoveredBy scale carrier boxes small_7502024_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7502024_right_root small_7502024_right_fuel small_7502024_right_count small_7502024_right_encoded small_7502024_right_checked

theorem cover_7502024 : CoveredBy scale carrier boxes root_7502024 := by
  apply coveredBy_split_literal root_7502024 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2824.root small_7502024_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2824.covered
  · exact small_7502024_right_covered
#print axioms cover_7502024

def root_7502018 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7502018_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7502018_left_fuel : Nat := 1
def small_7502018_left_count : Nat := 1
def small_7502018_left_encoded : String := "00000002"
theorem small_7502018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7502018_left_root small_7502018_left_fuel small_7502018_left_count small_7502018_left_encoded = true := by
  decide +kernel
theorem small_7502018_left_covered : CoveredBy scale carrier boxes small_7502018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7502018_left_root small_7502018_left_fuel small_7502018_left_count small_7502018_left_encoded small_7502018_left_checked

theorem cover_7502018 : CoveredBy scale carrier boxes root_7502018 := by
  apply coveredBy_split_literal root_7502018 small_7502018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7502024 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7502018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7502024
#print axioms cover_7502018

def root_7499150 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7499150 : CoveredBy scale carrier boxes root_7499150 := by
  apply coveredBy_split_literal root_7499150 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2823.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7502018 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2823.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7502018
#print axioms cover_7499150

def root_7499144 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7499144_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7499144_left_fuel : Nat := 1
def small_7499144_left_count : Nat := 1
def small_7499144_left_encoded : String := "00000004"
theorem small_7499144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7499144_left_root small_7499144_left_fuel small_7499144_left_count small_7499144_left_encoded = true := by
  decide +kernel
theorem small_7499144_left_covered : CoveredBy scale carrier boxes small_7499144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7499144_left_root small_7499144_left_fuel small_7499144_left_count small_7499144_left_encoded small_7499144_left_checked

theorem cover_7499144 : CoveredBy scale carrier boxes root_7499144 := by
  apply coveredBy_split_literal root_7499144 small_7499144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7499150 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7499144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7499150
#print axioms cover_7499144

def root_7499024 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7499024_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7499024_left_fuel : Nat := 14
def small_7499024_left_count : Nat := 55
def small_7499024_left_encoded : String := "120700FE05000104135D44FB0000000900000002135D80FB00000002050000FC135D8107045489F71386AD000CFD9C03000000050F350D0200000005000000010000000013867100000000000CFD9C030F34D10200000001000000090F350D0204548A09000000051386ACFE000000040C9A8702000000050F878D0300000009000000010000000100000003135D450700000003045489F71386AD000CFD9C03000000090F350D0204548A09000000071386ACFE000000040C9A87020000000700000009000000010000000013867100000000000000000A00000004"
theorem small_7499024_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7499024_left_root small_7499024_left_fuel small_7499024_left_count small_7499024_left_encoded = true := by
  decide +kernel
theorem small_7499024_left_covered : CoveredBy scale carrier boxes small_7499024_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7499024_left_root small_7499024_left_fuel small_7499024_left_count small_7499024_left_encoded small_7499024_left_checked

theorem cover_7499024 : CoveredBy scale carrier boxes root_7499024 := by
  apply coveredBy_split_literal root_7499024 small_7499024_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7499144 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7499024_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7499144
#print axioms cover_7499024

def root_7499019 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7499019_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7499019_right_fuel : Nat := 1
def small_7499019_right_count : Nat := 1
def small_7499019_right_encoded : String := "00000001"
theorem small_7499019_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7499019_right_root small_7499019_right_fuel small_7499019_right_count small_7499019_right_encoded = true := by
  decide +kernel
theorem small_7499019_right_covered : CoveredBy scale carrier boxes small_7499019_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7499019_right_root small_7499019_right_fuel small_7499019_right_count small_7499019_right_encoded small_7499019_right_checked

theorem cover_7499019 : CoveredBy scale carrier boxes root_7499019 := by
  apply coveredBy_split_literal root_7499019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7499024 small_7499019_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7499024
  · exact small_7499019_right_covered
#print axioms cover_7499019

def root_7498685 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7498685_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7498685_left_fuel : Nat := 23
def small_7498685_left_count : Nat := 157
def small_7498685_left_encoded : String := "120701020000000108A91309120700FE000000090000000412073CFE0000000405000104135D44FB0000000900000002135D80FB00000002050000FC135D8107045489F71386AD0004548A031386710200000001000000091386AD020CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D0900000009000000040F8751090000000407800104128A40FB0000000900000002128A7CFB00000002078000FC00000006128A410700000003000000060000000100000000138671000000000004548A0313867102000000010CFD9C09000000090F350CFE000000040C9A86FE000000090F875109000000040780010400000009128A7CFB00000002078000FC128A7D07022A45770000000800000009000000030000000A1386AD020CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D090780010400000009128A7CFB000000020000000A000000040F8751090000000407800104128A40FB078000FC128A7D07022A45770000000913E1C50000000000067ECE83000000090000000900000003128A4107000000030000000900000002128A7CFB00000002078000FC128A7D07022A457713E20100067ECE8300000008000000060000000013E1C50000000000067ECE830000000A0000000A00000003128A410700000003022A457713E20100067ECE830000000A0000000A000000000000000A0000000100000003135D450700000003045489F71386AD0004548A03000000091386AD020CFD9C09000000090F350CFE000000040C9A86FE000000090F875109000000040780010400000009000000070000000100000000138671000000000004548A03000000090000000A"
theorem small_7498685_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7498685_left_root small_7498685_left_fuel small_7498685_left_count small_7498685_left_encoded = true := by
  decide +kernel
theorem small_7498685_left_covered : CoveredBy scale carrier boxes small_7498685_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7498685_left_root small_7498685_left_fuel small_7498685_left_count small_7498685_left_encoded small_7498685_left_checked

theorem cover_7498685 : CoveredBy scale carrier boxes root_7498685 := by
  apply coveredBy_split_literal root_7498685 small_7498685_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7499019 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7498685_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7499019
#print axioms cover_7498685

def root_7498679 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7498679_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7498679_left_fuel : Nat := 1
def small_7498679_left_count : Nat := 1
def small_7498679_left_encoded : String := "00000000"
theorem small_7498679_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7498679_left_root small_7498679_left_fuel small_7498679_left_count small_7498679_left_encoded = true := by
  decide +kernel
theorem small_7498679_left_covered : CoveredBy scale carrier boxes small_7498679_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7498679_left_root small_7498679_left_fuel small_7498679_left_count small_7498679_left_encoded small_7498679_left_checked

theorem cover_7498679 : CoveredBy scale carrier boxes root_7498679 := by
  apply coveredBy_split_literal root_7498679 small_7498679_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7498685 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7498679_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7498685
#print axioms cover_7498679

def root_7497901 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497901_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497901_left_fuel : Nat := 23
def small_7497901_left_count : Nat := 365
def small_7497901_left_encoded : String := "12073D0008A91303120701020000000108A91309120700FE000000090000000412073CFE0000000405000104135D44FB050000FC135D81070CFD9BF7000000090F34D100000000000000000900000003135D4507000000030CFD9BF7000000090F34D100000000000000000900000002135D80FB00000002050000FC135D81070CFD9BF7000000060F34D1000000000004548A031386710200000001000000091386AD020CFD9C090F34D0FE0000000600000004000000060000000100000003135D4507000000030CFD9BF70F350D0004548A031386710200000001000000091386AD020CFD9C090F34D0FE00000006000000040000000600000001000000000F34D1000000000004548A03000000091386AD020CFD9C09000000090F350CFE000000040C9A86FE00000009000000070000000112073D0208A91309120700FE0500010400000005135D80FB00000002050000FC00000005135D4507000000030CFD9BF70F350D0000000005000000000F34D100000000000CFD9C03000000090F350D0204548A09000000051386ACFE000000040C9A87020000000500000009000000010000000412073CFE0000000405000104135D44FB050000FC135D81070CFD9BF70F350D0000000005000000000F34D100000000000CFD9C030F34D102000000010CFD9C09000000090F350CFE000000040C9A86FE000000050F87510900000004028001040000000513D7ECFB00000002078000FC00000005128A410700000003000000070F350D020CFD9C09000000050F350CFE000000040C9A8702000000050F878D030C9A86FE000000050F87510900000004028001040000000513D7ECFB00000002078000FC0000000500000007000000010000000100000003135D4507000000030CFD9BF70F350D000CFD9C030F34D102000000010CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F8750F700000005000000000F878CF7000000000C9A86FE00000009000000070F350D020CFD9C09000000050F350CFE000000040C9A8700000000050F878CF7000000000C9A8702000000050F878D030C9A86FE00000005000000070000000100000001000000000F34D100000000000CFD9C030F34D102000000010CFD9C09000000090F350CFE000000040C9A86FE000000090F875109000000040280010400000007000000070F350D020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000070F878D030C9A86FE0F878D09000000070000000400000007000000010000000100000002135D80FB00000002050000FC135D81070CFD9BF70F350D000CFD9C030F34D10200000001000000060F350D020CFD9C090F34D0FE00000005000000040000000600000001000000000F34D100000000000CFD9C030F34D102000000010CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE000000060F87510900000004000000060F350D020CFD9C090F34D0FE0C9A87020000000500000006000000040F350CFE000000040C9A87020F875103000000010C9A86FE00000006000000070F878D030C9A86FE000000060F8751090000000400000006000000010000000100000003135D4507000000030CFD9BF70F350D000CFD9C030F34D102000000010CFD9C090F34D0FE0000000600000004000000060F350D020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87000F8750F700000006000000000F878CF7000000000C9A8702000000070000000600000001000000000F34D100000000000CFD9C030F34D102000000010CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D0907800104000000070000000600000004000000070F350D020CFD9C090F34D0FE0C9A8702000000070F878D0307800104000000070000000600000001000000040F350CFE000000040C9A8702000000070F878D030C9A86FE0F878D0900000007000000040000000700000001000000010000000100000000"
theorem small_7497901_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7497901_left_root small_7497901_left_fuel small_7497901_left_count small_7497901_left_encoded = true := by
  decide +kernel
theorem small_7497901_left_covered : CoveredBy scale carrier boxes small_7497901_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7497901_left_root small_7497901_left_fuel small_7497901_left_count small_7497901_left_encoded small_7497901_left_checked

theorem cover_7497901 : CoveredBy scale carrier boxes root_7497901 := by
  apply coveredBy_split_literal root_7497901 small_7497901_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7498679 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7497901_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7498679
#print axioms cover_7497901

def root_7497896 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497896_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497896_right_fuel : Nat := 1
def small_7497896_right_count : Nat := 1
def small_7497896_right_encoded : String := "00000004"
theorem small_7497896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7497896_right_root small_7497896_right_fuel small_7497896_right_count small_7497896_right_encoded = true := by
  decide +kernel
theorem small_7497896_right_covered : CoveredBy scale carrier boxes small_7497896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7497896_right_root small_7497896_right_fuel small_7497896_right_count small_7497896_right_encoded small_7497896_right_checked

theorem cover_7497896 : CoveredBy scale carrier boxes root_7497896 := by
  apply coveredBy_split_literal root_7497896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7497901 small_7497896_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7497901
  · exact small_7497896_right_covered
#print axioms cover_7497896

def root_7510674 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510674_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510674_left_fuel : Nat := 20
def small_7510674_left_count : Nat := 207
def small_7510674_left_encoded : String := "13E201000DE7CA020E5FD9030000000103C0010413A510FB08C000FC0000000A11FBE90700000003000000070000000213A54CFB0000000208C000FC0000000A000000070E60150303C0010413A510FB08C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED8830E96250200000001000000080000000A0000000013BBF500000000000DAED8830E962502000000010320010413C108FB096000FC0000000511AA810700000003096000FE00000005000000080000000213C144FB00000002096000FC0000000811AA810700000003096000FE11AABD090000000900000004000000080E9661020320010413C108FB0000000A0000000213C144FB00000002096000FC0000000A11AA8107000000030000000A000000010000000411FBE90900000004033F67B70000000A13BBF500000000000000000A0000000311FBE9070000000308C000FE11FC2509033F67B70000000713BBF500000000000DAED8830E962502000000010320010413C108FB082000FC0000000912465D0700000003000000090000000213C144FB00000002082000FC12469907096000FE000000090000000700000003000000070E96610200000007000000010000000411FBE90900000004033F67B70000000713BBF500000000000DAED8830E962502000000010320010413C108FB082000FC0000000A12465D07000000030000000A0000000213C144FB00000002082000FC0000000A000000070E9661020000000A000000010000000213A54CFB0000000208C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED8830E96250200000001000000080E96610200000007000000010000000013BBF500000000000DAED8830E96250200000001046001041383DCFB096000FC0000000811AA810700000003096000FE11AABD0900000007000000040000000800000002138418FB00000002096000FC0000000811AA810700000003000000070E966102046001041383DCFB096000FC0000000A000000070000000200000007000000010000000411FBE90900000004033F67B70000000813BBF500000000000DAED8830000000A0000000A0000000311FBE9070000000308C000FE11FC25090000000700000004000000070000000100000000"
theorem small_7510674_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7510674_left_root small_7510674_left_fuel small_7510674_left_count small_7510674_left_encoded = true := by
  decide +kernel
theorem small_7510674_left_covered : CoveredBy scale carrier boxes small_7510674_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7510674_left_root small_7510674_left_fuel small_7510674_left_count small_7510674_left_encoded small_7510674_left_checked

theorem cover_7510674 : CoveredBy scale carrier boxes root_7510674 := by
  apply coveredBy_split_literal root_7510674 small_7510674_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2826.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_7510674_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2826.covered
#print axioms cover_7510674

def root_7510669 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510669_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510669_right_fuel : Nat := 1
def small_7510669_right_count : Nat := 1
def small_7510669_right_encoded : String := "00000004"
theorem small_7510669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7510669_right_root small_7510669_right_fuel small_7510669_right_count small_7510669_right_encoded = true := by
  decide +kernel
theorem small_7510669_right_covered : CoveredBy scale carrier boxes small_7510669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7510669_right_root small_7510669_right_fuel small_7510669_right_count small_7510669_right_encoded small_7510669_right_checked

theorem cover_7510669 : CoveredBy scale carrier boxes root_7510669 := by
  apply coveredBy_split_literal root_7510669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7510674 small_7510669_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7510674
  · exact small_7510669_right_covered
#print axioms cover_7510669

def root_7510668 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510668_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510668_right_fuel : Nat := 14
def small_7510668_right_count : Nat := 73
def small_7510668_right_encoded : String := "128A410900000004022A457713E201000DE7CA020000000A0E60150303C0010413A510FB0000000A0000000213A54CFB0000000208C000FC0000000A11FBE907000000030000000A000000010000000013E1C500000000000DE7CA020E5FD9030000000103C0010413A510FB08C000FC0000000A000000060000000213A54CFB0000000208C000FC0000000A000000050E60150303C0010413A510FB08C000FC11FC2507064000FE12FFAD09011523370000000A0000000600000004000000060000000311FBE90700000003064000FE12FFAD090000000600000004000000050000000213A54CFB0000000208C000FC11FC2507064000FE12FFAD09011523370000000A13F8590000000000000000050000000400000005000000030000000500000001"
theorem small_7510668_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7510668_right_root small_7510668_right_fuel small_7510668_right_count small_7510668_right_encoded = true := by
  decide +kernel
theorem small_7510668_right_covered : CoveredBy scale carrier boxes small_7510668_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7510668_right_root small_7510668_right_fuel small_7510668_right_count small_7510668_right_encoded small_7510668_right_checked

theorem cover_7510668 : CoveredBy scale carrier boxes root_7510668 := by
  apply coveredBy_split_literal root_7510668 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7510669 small_7510668_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7510669
  · exact small_7510668_right_covered
#print axioms cover_7510668

def root_7510663 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510663_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510663_right_fuel : Nat := 1
def small_7510663_right_count : Nat := 1
def small_7510663_right_encoded : String := "00000003"
theorem small_7510663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7510663_right_root small_7510663_right_fuel small_7510663_right_count small_7510663_right_encoded = true := by
  decide +kernel
theorem small_7510663_right_covered : CoveredBy scale carrier boxes small_7510663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7510663_right_root small_7510663_right_fuel small_7510663_right_count small_7510663_right_encoded small_7510663_right_checked

theorem cover_7510663 : CoveredBy scale carrier boxes root_7510663 := by
  apply coveredBy_split_literal root_7510663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7510668 small_7510663_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7510668
  · exact small_7510663_right_covered
#print axioms cover_7510663

def root_7510662 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510662_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510662_right_fuel : Nat := 19
def small_7510662_right_count : Nat := 115
def small_7510662_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E201000DE7CA02000000070E60150303C0010413A510FB064000FC12FFAD0708C000FE11FC250900000007000000040000000700000003000000070000000200000007000000010000000013E1C500000000000DE7CA020E5FD9030000000103C0010413A510FB064000FC12FFAD0708C000FE0000000800000006000000030000000600000002000000070E60150303C0010413A510FB064000FC12FFAD0708C000FE11FC25090115233713F895000DAED8830E962502000000010320010400000006000000070E9661020000000700000001000000000000000600000004000000060000000312FF71070000000308C000FE00000008000000050000000213A54CFB00000002064000FC12FFAD0708C000FE11FC2509011523370000000713F859000000000000000005000000040000000500000003000000050000000100000004128A410900000004022A457713E201000DE7CA02000000070E60150303C0010413A510FB064000FC12FFAD07064000FE12FFAD0900000007000000040000000500000003000000050000000200000005000000010000000013E1C500000000000DE7CA020E5FD903000000010000000500000005"
theorem small_7510662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7510662_right_root small_7510662_right_fuel small_7510662_right_count small_7510662_right_encoded = true := by
  decide +kernel
theorem small_7510662_right_covered : CoveredBy scale carrier boxes small_7510662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7510662_right_root small_7510662_right_fuel small_7510662_right_count small_7510662_right_encoded small_7510662_right_checked

theorem cover_7510662 : CoveredBy scale carrier boxes root_7510662 := by
  apply coveredBy_split_literal root_7510662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7510663 small_7510662_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7510663
  · exact small_7510662_right_covered
#print axioms cover_7510662

def root_7510656 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510656_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7510656_left_fuel : Nat := 1
def small_7510656_left_count : Nat := 1
def small_7510656_left_encoded : String := "00000002"
theorem small_7510656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7510656_left_root small_7510656_left_fuel small_7510656_left_count small_7510656_left_encoded = true := by
  decide +kernel
theorem small_7510656_left_covered : CoveredBy scale carrier boxes small_7510656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7510656_left_root small_7510656_left_fuel small_7510656_left_count small_7510656_left_encoded small_7510656_left_checked

theorem cover_7510656 : CoveredBy scale carrier boxes root_7510656 := by
  apply coveredBy_split_literal root_7510656 small_7510656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7510662 coord2 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_7510656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7510662
#print axioms cover_7510656

def root_7509686 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509686_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509686_left_fuel : Nat := 25
def small_7509686_left_count : Nat := 461
def small_7509686_left_encoded : String := "13D7B0FB078000FC128A7D07078000FE128A7D09022A457713E201000DE7CA020E5FD903000000010140010413F5D8FB08C000FC0000000A11FBE907000000030000000A0000000213F614FB0000000208C000FC0000000A11FBE9070000000308C000FE11FC2509033F67B70000000713BBF500000000000D412882000000070EFA4D030000000A00000001000000040000000A0E6015030140010413F5D8FB08C000FC11FC250708C000FE0000000511FBE909000000040000000A0000000311FBE9070000000308C000FE11FC2509000000090000000411FBE90900000004033F67B70000000A000000060000000213F614FB0000000208C000FC11FC250708C000FE11FC2509033F67B70000000513BBF500000000000DAED883000000050E96610200000005000000010000000411FBE909000000040000000A0000000311FBE9070000000308C000FE11FC2509033F67B713BC31000DAED8830E96250200000001000000090E96610200000007000000010000000013BBF500000000000DAED8830E96250200000001000000090E96610201E001040000000913E994FB00000002082000FC12469907096000FE000000050000000A0000000300000007000000010000000411FBE90900000004033F67B70000000A13BBF500000000000DAED8830E9625020000000101E001040000000613E994FB00000002082000FC0000000A000000060E9661020000000A00000001000000010000000013E1C500000000000DE7CA020E5FD903000000010140010413F5D8FB08C000FC11FC250708C000FE11FC2509011523370000000500000006000000040000000600000003000000060000000213F614FB0000000208C000FC11FC250708C000FE11FC25090115233713F895000D412882000000050EFA4D0301E00104000000050000000A000000010000000013F85900000000000D412882000000060EFA4D0300000006000000010000000411FBE90900000004011523370000000A000000060000000311FBE9070000000308C000FE11FC25090115233713F895000D412882000000060EFA4D030000000600000001000000000000000600000004000000060E6015030140010413F5D8FB08C000FC11FC250708C000FE11FC250901152337000000050000000600000004000000060000000311FBE90700000003000000060000000213F614FB0000000208C000FC11FC250708C000FE11FC25090115233713F895000DAED8830E9625020000000101E001040000000513E994FB00000002096000FC0000000511AA810700000003000000090E96610201E001040000000513E994FB00000002096000FC0000000511AA810700000003096000FE0000000500000006000000010000000013F85900000000000DAED8830E9625020000000101E001040000000613E994FB00000002096000FC11AABD070000000600000003000000060E96610201E001040000000613E994FB00000002096000FC11AABD07000000060000000300000006000000010000000411FBE909000000040115233713F895000DAED8830E9625020000000101E001040000000613E994FB00000002096000FC00000008000000060E9661020000000A0000000100000000000000060000000311FBE9070000000308C000FE11FC25090115233713F895000DAED8830E96250200000001000000090E96610201E001040000000613E994FB00000002082000FC1246990700000006000000030000000600000001000000000000000600000004000000060000000100000004128A410900000004022A457713E201000DE7CA020000000A0E601503014001040000000A0000000A000000010000000013E1C500000000000DE7CA02000000060E601503014001040000000613F614FB0000000208C000FC11FC25070000000600000003000000060000000100000003128A410700000003078000FE128A7D09022A457713E201000DE7CA020E5FD903000000010140010413F5D8FB064000FC12FFAD0708C000FE11FC2509000000070000000400000006000000030000000600000002000000070E6015030140010413F5D8FB064000FC12FFAD0708C000FE00000009000000060000000312FF71070000000308C000FE00000009000000060000000213F614FB00000002064000FC12FFAD0708C000FE11FC2509033F67B70000000713BBF500000000000DAED883000000090E96610200000007000000010000000411FBE90900000004033F67B700000007000000060000000312FF71070000000308C000FE0000000700000007000000010000000013E1C500000000000DE7CA02000000060E601503014001040000000613F614FB00000002064000FC12FFAD070000000600000003000000060000000100000004128A410900000004022A457713E201000DE7CA020E5FD903000000010000000A0E601503014001040000000613F614FB00000002064000FC12FFAD07064000FE12FFAD09033F67B700000007000000060000000400000006000000030000000600000001000000000000000600000002"
theorem small_7509686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7509686_left_root small_7509686_left_fuel small_7509686_left_count small_7509686_left_encoded = true := by
  decide +kernel
theorem small_7509686_left_covered : CoveredBy scale carrier boxes small_7509686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7509686_left_root small_7509686_left_fuel small_7509686_left_count small_7509686_left_encoded small_7509686_left_checked

theorem cover_7509686 : CoveredBy scale carrier boxes root_7509686 := by
  apply coveredBy_split_literal root_7509686 small_7509686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7510656 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7509686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7510656
#print axioms cover_7509686

def root_7509681 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509681_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509681_right_fuel : Nat := 1
def small_7509681_right_count : Nat := 1
def small_7509681_right_encoded : String := "00000001"
theorem small_7509681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7509681_right_root small_7509681_right_fuel small_7509681_right_count small_7509681_right_encoded = true := by
  decide +kernel
theorem small_7509681_right_covered : CoveredBy scale carrier boxes small_7509681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7509681_right_root small_7509681_right_fuel small_7509681_right_count small_7509681_right_encoded small_7509681_right_checked

theorem cover_7509681 : CoveredBy scale carrier boxes root_7509681 := by
  apply coveredBy_split_literal root_7509681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7509686 small_7509681_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7509686
  · exact small_7509681_right_covered
#print axioms cover_7509681

def root_7509489 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509489_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509489_left_fuel : Nat := 19
def small_7509489_left_count : Nat := 91
def small_7509489_left_encoded : String := "0F875103000000010280010413D7B0FB078000FC128A7D07078000FE128A7D09022A45770000000A13E1C500000000000B4D44020000000810804D030140010413F5D8FB08C000FC0000000A000000060000000213F614FB0000000208C000FC0000000A0000000800000001000000040000000A00000003128A410700000003078000FE00000008128A410900000004022A457700000007000000060000000213D7ECFB00000002078000FC128A7D07078000FE128A7D09022A45770000000713E1C500000000000B4D440210801103000000010000000810804D0303C0010413A510FB08C000FC11FC25070000000A0000000311FBE90700000003000000080000000213A54CFB0000000208C000FC11FC250708C000FE11FC2509011523370000000700000008000000040000000A00000003000000070000000100000004128A4109000000040000000A00000003128A410700000003078000FE128A7D09000000070000000400000007"
theorem small_7509489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7509489_left_root small_7509489_left_fuel small_7509489_left_count small_7509489_left_encoded = true := by
  decide +kernel
theorem small_7509489_left_covered : CoveredBy scale carrier boxes small_7509489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7509489_left_root small_7509489_left_fuel small_7509489_left_count small_7509489_left_encoded small_7509489_left_checked

theorem cover_7509489 : CoveredBy scale carrier boxes root_7509489 := by
  apply coveredBy_split_literal root_7509489 small_7509489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7509681 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7509489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7509681
#print axioms cover_7509489

def root_7509484 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509484_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7509484_right_fuel : Nat := 1
def small_7509484_right_count : Nat := 1
def small_7509484_right_encoded : String := "00000001"
theorem small_7509484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7509484_right_root small_7509484_right_fuel small_7509484_right_count small_7509484_right_encoded = true := by
  decide +kernel
theorem small_7509484_right_covered : CoveredBy scale carrier boxes small_7509484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7509484_right_root small_7509484_right_fuel small_7509484_right_count small_7509484_right_encoded small_7509484_right_checked

theorem cover_7509484 : CoveredBy scale carrier boxes root_7509484 := by
  apply coveredBy_split_literal root_7509484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7509489 small_7509484_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7509489
  · exact small_7509484_right_covered
#print axioms cover_7509484

def root_7506964 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7506964 : CoveredBy scale carrier boxes root_7506964 := by
  apply coveredBy_split_literal root_7506964 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2825.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7509484 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2825.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7509484
#print axioms cover_7506964

def root_7506958 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506958_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506958_left_fuel : Nat := 1
def small_7506958_left_count : Nat := 1
def small_7506958_left_encoded : String := "00000000"
theorem small_7506958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506958_left_root small_7506958_left_fuel small_7506958_left_count small_7506958_left_encoded = true := by
  decide +kernel
theorem small_7506958_left_covered : CoveredBy scale carrier boxes small_7506958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506958_left_root small_7506958_left_fuel small_7506958_left_count small_7506958_left_encoded small_7506958_left_checked

theorem cover_7506958 : CoveredBy scale carrier boxes root_7506958 := by
  apply coveredBy_split_literal root_7506958 small_7506958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506964 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7506958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506964
#print axioms cover_7506958

def root_7506276 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506276_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506276_left_fuel : Nat := 21
def small_7506276_left_count : Nat := 325
def small_7506276_left_encoded : String := "1386AD000CFD9C030F34D102000000010280010413D7B0FB078000FC128A7D07078000FE128A7D09067ECE770000000812EA5900000000000AD357830000000810D13D020140010413F5D8FB08C000FC0000000511FBE90700000003000000090000000213F614FB0000000208C000FC0000000811FBE9070000000308C000FE000000090000000800000001000000040000000800000003128A410700000003078000FE128A7D09067ECE770000000912EA5900000000000AD357830000000910D13D02014001040000000913F614FB00000002064000FC12FFAD0708C000FE0000000911FBE909000000040569AC3700000007000000090000000312FF710700000003000000090000000100000004128A410900000004067ECE7712EA95000AD357830000000810D13D02014001040000000A00000007000000010000000012EA5900000000000AD3578310D10102000000010000000810D13D020140010413F5D8FB064000FC12FFAD07064000FE12FFAD090569AC37000000080000000800000004000000080000000312FF710700000003064000FE12FFAD09000000090000000412FF7109000000040000000A0000000213F614FB00000002064000FC12FFAD07064000FE12FFAD090000000800000004000000080000000312FF710700000003064000FE12FFAD09000000070000000400000007000000010000000213D7ECFB00000002078000FC128A7D07078000FE128A7D09067ECE770000000812EA5900000000000AD357830000000810D13D0203C0010413A510FB08C000FC0000000811FBE9070000000300000008000000020000000800000001000000040000000800000003128A410700000003078000FE128A7D09067ECE7712EA95000AD3578300000008000000070000000012EA5900000000000AD3578310D101020000000103C001040000000913A54CFB000000020000000810D13D0203C0010413A510FB064000FC12FFAD0708C000FE11FC2509000000070000000400000007000000030000000700000002000000070000000100000004128A410900000004067ECE7712EA9500000000080000000012EA5900000000000AD357830000000810D13D0203C0010413A510FB064000FC00000008000000070000000200000007000000010F350D020C9A87020F875103000000010280010413D7B0FB078000FC0000000A0000000700000002000000070F878D030280010413D7B0FB078000FC128A7D07078000FE128A7D09067ECE770000000A12EA5900000000000DE7CA020E5FD903000000010000000A0E6015030140010413F5D8FB08C000FC0000000511FBE907000000030000000A0000000213F614FB0000000208C000FC0000000A11FBE907000000030000000A00000001000000040000000A00000003128A410700000003078000FE128A7D09067ECE770000000712EA5900000000000DE7CA02000000070E6015030140010413F5D8FB064000FC12FFAD0708C000FE0000000900000007000000030000000700000002000000070000000100000004128A410900000004067ECE770000000712EA5900000000000000000A0000000213D7ECFB00000002078000FC128A7D07078000FE128A7D09067ECE770000000712EA5900000000000DE7CA02000000070E60150303C0010413A510FB08C000FC0000000A11FBE90700000003000000070000000213A54CFB0000000208C000FC0000000A0000000700000001000000040000000A00000003128A410700000003078000FE0000000700000007000000010000000100000000"
theorem small_7506276_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506276_left_root small_7506276_left_fuel small_7506276_left_count small_7506276_left_encoded = true := by
  decide +kernel
theorem small_7506276_left_covered : CoveredBy scale carrier boxes small_7506276_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506276_left_root small_7506276_left_fuel small_7506276_left_count small_7506276_left_encoded small_7506276_left_checked

theorem cover_7506276 : CoveredBy scale carrier boxes root_7506276 := by
  apply coveredBy_split_literal root_7506276 small_7506276_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506958 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_7506276_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506958
#print axioms cover_7506276

def root_7506271 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506271_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506271_right_fuel : Nat := 1
def small_7506271_right_count : Nat := 1
def small_7506271_right_encoded : String := "00000004"
theorem small_7506271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506271_right_root small_7506271_right_fuel small_7506271_right_count small_7506271_right_encoded = true := by
  decide +kernel
theorem small_7506271_right_covered : CoveredBy scale carrier boxes small_7506271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506271_right_root small_7506271_right_fuel small_7506271_right_count small_7506271_right_encoded small_7506271_right_checked

theorem cover_7506271 : CoveredBy scale carrier boxes root_7506271 := by
  apply coveredBy_split_literal root_7506271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506276 small_7506271_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506276
  · exact small_7506271_right_covered
#print axioms cover_7506271

def root_7506270 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506270_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506270_right_fuel : Nat := 17
def small_7506270_right_count : Nat := 129
def small_7506270_right_encoded : String := "135D450900000004045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB078000FC00000008128A410700000003028000FE13D7ED09067ECE770000000812EA5900000000000AD357830000000810D13D020000000A0000000100000004000000080000000213D7ECFB00000002078000FC00000008128A410700000003028000FE13D7ED09067ECE77000000080000000800000004000000050F350D020C9A87020000000A0F878D03028001040000000A0000000A00000001000000010000000013867100000000000CFD9C030F34D102000000010280010413D7B0FB078000FC128A7D07028000FE13D7ED0900000008000000040000000800000003128A410700000003028000FE13D7ED09022A457713E201000AD357830000000810D13D020000000600000001000000000000000600000004000000050000000213D7ECFB00000002078000FC128A7D070000000800000003000000050F350D020C9A87020F87510300000001028001040000000A0000000A0F878D030280010413D7B0FB078000FC128A7D07028000FE13D7ED09022A45770000000A00000006000000040000000600000003000000060000000213D7ECFB00000002078000FC128A7D07028000FE13D7ED09022A45770000000A13E1C500000000000DE7CA020000000A00000005000000040000000500000003000000050000000100000001"
theorem small_7506270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506270_right_root small_7506270_right_fuel small_7506270_right_count small_7506270_right_encoded = true := by
  decide +kernel
theorem small_7506270_right_covered : CoveredBy scale carrier boxes small_7506270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506270_right_root small_7506270_right_fuel small_7506270_right_count small_7506270_right_encoded small_7506270_right_checked

theorem cover_7506270 : CoveredBy scale carrier boxes root_7506270 := by
  apply coveredBy_split_literal root_7506270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506271 small_7506270_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506271
  · exact small_7506270_right_covered
#print axioms cover_7506270

def root_7506265 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506265_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506265_right_fuel : Nat := 1
def small_7506265_right_count : Nat := 1
def small_7506265_right_encoded : String := "00000003"
theorem small_7506265_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506265_right_root small_7506265_right_fuel small_7506265_right_count small_7506265_right_encoded = true := by
  decide +kernel
theorem small_7506265_right_covered : CoveredBy scale carrier boxes small_7506265_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506265_right_root small_7506265_right_fuel small_7506265_right_count small_7506265_right_encoded small_7506265_right_checked

theorem cover_7506265 : CoveredBy scale carrier boxes root_7506265 := by
  apply coveredBy_split_literal root_7506265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506270 small_7506265_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506270
  · exact small_7506265_right_covered
#print axioms cover_7506265

def root_7506264 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506264_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506264_right_fuel : Nat := 23
def small_7506264_right_count : Nat := 259
def small_7506264_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07078000FE128A7D09067ECE770000000912EA5900000000000000000900000004128A410900000004067ECE7712EA95000AD3578310D101020000000100000009000000070000000012EA5900000000000AD3578310D10102000000010000000910D13D020140010413F5D8FB03C000FC13A54D07064000FE000000070000000600000003000000060000000200000007000000010000000313D7B10700000003078000FE128A7D090000000700000004128A410900000004067ECE770000000712EA590000000000000000070000000213D7ECFB00000002028000FC13D7ED07078000FE128A7D09067ECE770000000712EA5900000000000000000700000004128A410900000004067ECE770000000712EA5900000000000AD3578310D1010200000001000000050000000500000003000000070F350D0200000007000000010000000013867100000000000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000AD357830000000610D13D02000000060000000100000004128A410900000004022A457713E201000AD3578310D10102000000010000000510D13D02000000060000000100000000000000060000000313D7B10700000003078000FE128A7D09022A4577000000090000000600000004000000050000000213D7ECFB00000002028000FC13D7ED07078000FE128A7D09022A457713E201000AD3578310D10102000000010000000910D13D0203C0010413A510FB03C000FC13A54D070000000700000003000000050000000200000005000000010000000013E1C500000000000AD3578310D10102000000010000000500000005000000040000000500000003000000050F350D020C9A87020F87510300000001000000080F878D030280010413D7B0FB028000FC13D7ED07078000FE128A7D09022A45770000000700000006000000040000000600000003000000060000000213D7ECFB00000002028000FC13D7ED07078000FE128A7D09022A4577000000070000000800000004000000050000000300000005000000010000000100000004135D450900000004045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07028000FE13D7ED09067ECE7712EA95000AD3578310D101020000000100000008000000070000000012EA5900000000000AD3578310D101020000000100000005000000050000000400000005000000030000000500000002000000050F350D0200000007000000010000000013867100000000000CFD9C030F34D10200000001000000050F350D020C9A8702000000060000000500000001"
theorem small_7506264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506264_right_root small_7506264_right_fuel small_7506264_right_count small_7506264_right_encoded = true := by
  decide +kernel
theorem small_7506264_right_covered : CoveredBy scale carrier boxes small_7506264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506264_right_root small_7506264_right_fuel small_7506264_right_count small_7506264_right_encoded small_7506264_right_checked

theorem cover_7506264 : CoveredBy scale carrier boxes root_7506264 := by
  apply coveredBy_split_literal root_7506264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506265 small_7506264_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506265
  · exact small_7506264_right_covered
#print axioms cover_7506264

def root_7506259 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506259_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506259_right_fuel : Nat := 1
def small_7506259_right_count : Nat := 1
def small_7506259_right_encoded : String := "00000002"
theorem small_7506259_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506259_right_root small_7506259_right_fuel small_7506259_right_count small_7506259_right_encoded = true := by
  decide +kernel
theorem small_7506259_right_covered : CoveredBy scale carrier boxes small_7506259_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506259_right_root small_7506259_right_fuel small_7506259_right_count small_7506259_right_encoded small_7506259_right_checked

theorem cover_7506259 : CoveredBy scale carrier boxes root_7506259 := by
  apply coveredBy_split_literal root_7506259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506264 small_7506259_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506264
  · exact small_7506259_right_covered
#print axioms cover_7506259

def root_7506258 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7506258 : CoveredBy scale carrier boxes root_7506258 := by
  apply coveredBy_split_literal root_7506258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2827.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506259
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2827.covered
#print axioms cover_7506258

def root_7506253 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506253_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7506253_right_fuel : Nat := 1
def small_7506253_right_count : Nat := 1
def small_7506253_right_encoded : String := "00000001"
theorem small_7506253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7506253_right_root small_7506253_right_fuel small_7506253_right_count small_7506253_right_encoded = true := by
  decide +kernel
theorem small_7506253_right_covered : CoveredBy scale carrier boxes small_7506253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7506253_right_root small_7506253_right_fuel small_7506253_right_count small_7506253_right_encoded small_7506253_right_checked

theorem cover_7506253 : CoveredBy scale carrier boxes root_7506253 := by
  apply coveredBy_split_literal root_7506253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506258 small_7506253_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506258
  · exact small_7506253_right_covered
#print axioms cover_7506253

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180

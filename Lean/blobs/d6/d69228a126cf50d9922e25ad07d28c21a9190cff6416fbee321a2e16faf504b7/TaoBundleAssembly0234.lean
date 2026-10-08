import TaoBundleAssembly0233
import TaoBundleChunkBatch0927
import TaoBundleChunkBatch0928
import TaoBundleChunkBatch0929
import TaoBundleChunkBatch0930
import TaoBundleChunkBatch0931
import TaoBundleChunkBatch0932
import TaoBundleChunkBatch0933
import TaoBundleChunkBatch0934
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234
def root_9869702 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869702_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869702_left_fuel : Nat := 24
def small_9869702_left_count : Nat := 281
def small_9869702_left_encoded : String := "12073CFE0000000405000100135D45010000000005000102135D450300000001050000FC135D8107045489FB1386ACFA000000020CFD9BFF0F350CFE00000004000000050F34D0FE0280010013D7B101000000000280010213D7B10300000001078000FC128A7D07067ECE7B0000000A00000007000000030000000713D7ED03078000FC0000000A0000000A0000000113D7ED01028001020000000713D7ED03078000FC128A7D07067ECE7B000000050000000700000003128A41070000000300000007000000010000000000000004138670FA0CFD9BFF000000070F34D0FE028001000000000700000007000000040000000200000003135D450700000003045489FB1386ACFA000000020000000700000007135D8103050000FC135D8107045489FB1386ACFA000000020CFD9BFF000000050F34D0FE0280010013D7B1010000000007800102128A410300000001078000FC0000000A0000000A128A7D03078000FC0000000A000000050000000113D7ED0107800102128A410300000001078000FC128A7D07067ECE7B0000000512EA58FA0AD3577F0000000510D100FE03C001000000000A0000000500000004000000020000000300000005000000050000000000000004138670FA0CFD9BFF0000000A0F34D0FE0280010013D7B10100000000078001020000000A0000000A13D7ED0107800102128A410300000001078000FC128A7D07022A457B0000000A000000070000000300000007128A7D03078000FC128A7D07022A457B0000000A0000000A000000030000000A0000000100000000000000040000000200000003135D450700000003045489FB1386ACFA000000020CFD9BFF000000050F34D0FE028001000000000A00000005000000040000000A00000001135D810105000102135D450300000001050000FC135D8107045489FB1386ACFA000000020CFD9BFF000000050F34D0FE07800100128A410100000000028001020000000713D7ED03078000FC128A7D07067ECE7B0000000500000007000000030000000500000001128A7D01000000070000000000000004138670FA0CFD9BFF000000070F34D0FE00000007000000040000000200000003135D45070000000300000007135D8103050000FC135D8107045489FB00000005138670FA0CFD9BFF000000050F34D0FE07800100128A41010000000007800102128A410300000001078000FC128A7D07022A457B13E200FA000000020AD3577F0000000510D100FE0000000700000004000000070000000300000007128A7D03078000FC128A7D07022A457B0000000513E1C4FA0AD3577F0000000510D100FE064001000000000812FFAD010000000800000000000000040000000200000003128A410700000003022A457B000000050000000700000001128A7D010780010200000007128A7D03078000FC128A7D070000000500000003000000050000000100000000000000040000000200000003135D450700000003045489FB00000005138670FA0CFD9BFF000000050F34D0FE0000000700000004000000020000000100000000"
theorem small_9869702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869702_left_root small_9869702_left_fuel small_9869702_left_count small_9869702_left_encoded = true := by
  decide +kernel
theorem small_9869702_left_covered : CoveredBy scale carrier boxes small_9869702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869702_left_root small_9869702_left_fuel small_9869702_left_count small_9869702_left_encoded small_9869702_left_checked

theorem cover_9869702 : CoveredBy scale carrier boxes root_9869702 := by
  apply coveredBy_split_literal root_9869702 small_9869702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9870284 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9869702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9870284
#print axioms cover_9869702

def root_9869697 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869697_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869697_right_fuel : Nat := 1
def small_9869697_right_count : Nat := 1
def small_9869697_right_encoded : String := "00000002"
theorem small_9869697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869697_right_root small_9869697_right_fuel small_9869697_right_count small_9869697_right_encoded = true := by
  decide +kernel
theorem small_9869697_right_covered : CoveredBy scale carrier boxes small_9869697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869697_right_root small_9869697_right_fuel small_9869697_right_count small_9869697_right_encoded small_9869697_right_checked

theorem cover_9869697 : CoveredBy scale carrier boxes root_9869697 := by
  apply coveredBy_split_literal root_9869697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9869702 small_9869697_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9869702
  · exact small_9869697_right_covered
#print axioms cover_9869697

def root_9869017 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869017_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869017_left_fuel : Nat := 26
def small_9869017_left_count : Nat := 331
def small_9869017_left_encoded : String := "12073CFA0000000208A912FF12073CFE0000000405000100135D45010000000005000102135D450300000001050000FC135D81070CFD9BFB000000050F34D0FA0CFD9BFF000000050F34D0FE0280010013D7B101000000000280010213D7B10300000001078000FC128A7D070000000500000003000000050000000500000005000000040000000200000003000000050000000500000005120700FE05000100135D45010000000005000102135D450300000001050000FC135D81070CFD9BFB0F350CFA00000002000000060F34D0FA045489FF1386ACFE000000040280010013D7B101000000000280010213D7B10300000001078000FC128A7D070AD3577B0000000610D100FA000000060000000200000003000000060000000613D7ED010280010213D7B10300000001078000FC000000080000000813D7ED03078000FC128A7D070AD3577B0000000510D100FA067ECE7F00000005000000060000000200000003128A410700000003000000060000000100000000138670FE028001000000000613D7ED0102800102000000060000000600000000000000040000000200000003135D4507000000030CFD9BFB000000060F34D0FA0000000600000002135D8103050000FC135D81070CFD9BFB000000060F34D0FA045489FF1386ACFE00000004028001000000000613D7ED0107800102128A410300000001078000FC128A7D070AD3577B0000000510D100FA067ECE7F00000005000000060000000200000003000000050000000500000000000000060000000200000003135D4507000000030000000600000001135D810105000102135D450300000001050000FC135D81070CFD9BFB0F350CFA00000002045489FF00000005000000080F34D0FA045489FF1386ACFE0000000407800100128A4101000000000280010213D7B10300000001078000FC000000080000000813D7ED03078000FC128A7D070AD3577B0000000510D100FA067ECE7F0000000512EA58FE0640010012FF71010000000000000008000000050000000400000002000000030000000500000001128A7D010280010213D7B10300000001078000FC00000008000000050000000500000000138670FE07800100128A410100000000028001020000000813D7ED03078000FC128A7D070AD3577B0000000610D100FA022A457F000000080000000600000002000000030000000600000001128A7D01028001020000000813D7ED03078000FC128A7D070AD3577B0000000810D100FA022A457F00000008000000080000000200000003000000080000000100000000000000040000000200000003135D4507000000030CFD9BFB000000080F34D0FA045489FF1386ACFE000000040780010000000008000000050000000800000002135D8103050000FC135D81070CFD9BFB000000050F34D0FA045489FF00000005138670FE07800100128A41010000000007800102128A410300000001078000FC128A7D070AD3577B0000000610D100FA022A457F0000000600000006000000020000000300000006128A7D030000000600000001128A7D0107800102128A410300000001078000FC128A7D070AD3577B0000000510D100FA022A457F0000000513E1C4FE08C00100000000060000000A000000040000000200000003128A4107000000030AD3577B0000000510D100FA022A457F000000050000000600000002128A7D03078000FC128A7D070000000500000003000000050000000100000000000000040000000200000003135D4507000000030CFD9BFB000000050F34D0FA045489FF000000050000000600000002000000010000000000000004"
theorem small_9869017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869017_left_root small_9869017_left_fuel small_9869017_left_count small_9869017_left_encoded = true := by
  decide +kernel
theorem small_9869017_left_covered : CoveredBy scale carrier boxes small_9869017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869017_left_root small_9869017_left_fuel small_9869017_left_count small_9869017_left_encoded small_9869017_left_checked

theorem cover_9869017 : CoveredBy scale carrier boxes root_9869017 := by
  apply coveredBy_split_literal root_9869017 small_9869017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9869697 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9869017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9869697
#print axioms cover_9869017

def root_9869011 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869011_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869011_left_fuel : Nat := 1
def small_9869011_left_count : Nat := 1
def small_9869011_left_encoded : String := "00000004"
theorem small_9869011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869011_left_root small_9869011_left_fuel small_9869011_left_count small_9869011_left_encoded = true := by
  decide +kernel
theorem small_9869011_left_covered : CoveredBy scale carrier boxes small_9869011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869011_left_root small_9869011_left_fuel small_9869011_left_count small_9869011_left_encoded small_9869011_left_checked

theorem cover_9869011 : CoveredBy scale carrier boxes root_9869011 := by
  apply coveredBy_split_literal root_9869011 small_9869011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9869017 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9869011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9869017
#print axioms cover_9869011

def root_9869010 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869010_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869010_right_fuel : Nat := 4
def small_9869010_right_count : Nat := 7
def small_9869010_right_encoded : String := "1151E8FF08A912FB00000005120700FA000000050000000200000004"
theorem small_9869010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869010_right_root small_9869010_right_fuel small_9869010_right_count small_9869010_right_encoded = true := by
  decide +kernel
theorem small_9869010_right_covered : CoveredBy scale carrier boxes small_9869010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869010_right_root small_9869010_right_fuel small_9869010_right_count small_9869010_right_encoded small_9869010_right_checked

theorem cover_9869010 : CoveredBy scale carrier boxes root_9869010 := by
  apply coveredBy_split_literal root_9869010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9869011 small_9869010_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9869011
  · exact small_9869010_right_covered
#print axioms cover_9869010

def root_9869004 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869004_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9869004_left_fuel : Nat := 1
def small_9869004_left_count : Nat := 1
def small_9869004_left_encoded : String := "00000003"
theorem small_9869004_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9869004_left_root small_9869004_left_fuel small_9869004_left_count small_9869004_left_encoded = true := by
  decide +kernel
theorem small_9869004_left_covered : CoveredBy scale carrier boxes small_9869004_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9869004_left_root small_9869004_left_fuel small_9869004_left_count small_9869004_left_encoded small_9869004_left_checked

theorem cover_9869004 : CoveredBy scale carrier boxes root_9869004 := by
  apply coveredBy_split_literal root_9869004 small_9869004_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9869010 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9869004_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9869010
#print axioms cover_9869004

def root_9842872 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842872 : CoveredBy scale carrier boxes root_9842872 := by
  apply coveredBy_split_literal root_9842872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9842873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9869004 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9842873
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9869004
#print axioms cover_9842872

def root_9842866 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842866_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842866_left_fuel : Nat := 1
def small_9842866_left_count : Nat := 1
def small_9842866_left_encoded : String := "00000002"
theorem small_9842866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842866_left_root small_9842866_left_fuel small_9842866_left_count small_9842866_left_encoded = true := by
  decide +kernel
theorem small_9842866_left_covered : CoveredBy scale carrier boxes small_9842866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842866_left_root small_9842866_left_fuel small_9842866_left_count small_9842866_left_encoded small_9842866_left_checked

theorem cover_9842866 : CoveredBy scale carrier boxes root_9842866 := by
  apply coveredBy_split_literal root_9842866 small_9842866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842872 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9842866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842872
#print axioms cover_9842866

def root_9842865 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842865_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842865_right_fuel : Nat := 8
def small_9842865_right_count : Nat := 29
def small_9842865_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A913070000000512073CFC00000003000000051151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF00000005120700FE00000005000000041151E8FF000000050000000400000002"
theorem small_9842865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842865_right_root small_9842865_right_fuel small_9842865_right_count small_9842865_right_encoded = true := by
  decide +kernel
theorem small_9842865_right_covered : CoveredBy scale carrier boxes small_9842865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842865_right_root small_9842865_right_fuel small_9842865_right_count small_9842865_right_encoded small_9842865_right_checked

theorem cover_9842865 : CoveredBy scale carrier boxes root_9842865 := by
  apply coveredBy_split_literal root_9842865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842866 small_9842865_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842866
  · exact small_9842865_right_covered
#print axioms cover_9842865

def root_9842859 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842859_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842859_left_fuel : Nat := 1
def small_9842859_left_count : Nat := 1
def small_9842859_left_encoded : String := "00000001"
theorem small_9842859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842859_left_root small_9842859_left_fuel small_9842859_left_count small_9842859_left_encoded = true := by
  decide +kernel
theorem small_9842859_left_covered : CoveredBy scale carrier boxes small_9842859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842859_left_root small_9842859_left_fuel small_9842859_left_count small_9842859_left_encoded small_9842859_left_checked

theorem cover_9842859 : CoveredBy scale carrier boxes root_9842859 := by
  apply coveredBy_split_literal root_9842859 small_9842859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842865 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9842859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842865
#print axioms cover_9842859

def root_9842858 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842858 : CoveredBy scale carrier boxes root_9842858 := by
  apply coveredBy_split_literal root_9842858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842859 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3706.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842859
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3706.covered
#print axioms cover_9842858

def root_9842852 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842852_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842852_left_fuel : Nat := 1
def small_9842852_left_count : Nat := 1
def small_9842852_left_encoded : String := "00000000"
theorem small_9842852_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842852_left_root small_9842852_left_fuel small_9842852_left_count small_9842852_left_encoded = true := by
  decide +kernel
theorem small_9842852_left_covered : CoveredBy scale carrier boxes small_9842852_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842852_left_root small_9842852_left_fuel small_9842852_left_count small_9842852_left_encoded small_9842852_left_checked

theorem cover_9842852 : CoveredBy scale carrier boxes root_9842852 := by
  apply coveredBy_split_literal root_9842852 small_9842852_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842858 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9842852_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842858
#print axioms cover_9842852

def root_9893592 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9893592 : CoveredBy scale carrier boxes root_9893592 := by
  apply coveredBy_split_literal root_9893592 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3707.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3708.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3707.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3708.covered
#print axioms cover_9893592

def root_9893587 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9893587_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9893587_right_fuel : Nat := 1
def small_9893587_right_count : Nat := 1
def small_9893587_right_encoded : String := "00000000"
theorem small_9893587_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9893587_right_root small_9893587_right_fuel small_9893587_right_count small_9893587_right_encoded = true := by
  decide +kernel
theorem small_9893587_right_covered : CoveredBy scale carrier boxes small_9893587_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9893587_right_root small_9893587_right_fuel small_9893587_right_count small_9893587_right_encoded small_9893587_right_checked

theorem cover_9893587 : CoveredBy scale carrier boxes root_9893587 := by
  apply coveredBy_split_literal root_9893587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9893592 small_9893587_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9893592
  · exact small_9893587_right_covered
#print axioms cover_9893587

def root_9842851 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842851 : CoveredBy scale carrier boxes root_9842851 := by
  apply coveredBy_split_literal root_9842851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9893587 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842852
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9893587
#print axioms cover_9842851

def root_9903564 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903564_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903564_left_fuel : Nat := 25
def small_9903564_left_count : Nat := 345
def small_9903564_left_encoded : String := "12EA94FA000000020B4D43FC10804D070B4D43FE10804D090000000500000004108011090000000403C0010213A5110300000001011523410000000513F895000793F0BB00000005000000090000000013A54D03011523410000000513F895000793F0BB00000005128220FA0BF3E57C1009290700000005000000031008ED07000000030AA6A27E10EDAD09000000050000000410ED710900000004000000090000000200000000000000010000000310801107000000030B4D43FE10804D0903C0010213A5110300000001011523410000000513F895000793F0BB00000005128220FA0AA6A27C10EDAD070BF3E57E1009290900000005000000041008ED0900000004032001020000000813C1450300000005000000010000000310ED71070000000300000008000000020000000013A54D03011523410000000513F895000793F0BB00000005128220FA0AA6A27C10EDAD07000000050000000310ED7107000000030BF3E57E1009290900000005000000041008ED0900000004046001021383DD03000000010000000813841903019FB4610000000513EF350007095F9B000000050000000A000000000000000100000002000000000000000100000004108011090000000403C0010213A51103000000010115234113F85900000000000793F0BB00000005128220FA0AA6A27C10EDAD07000000050000000310ED7107000000030AA6A27E0000000810ED710900000004000000080000000213F895000793F0BB12825CFA000000020AA6A27C10EDAD07000000050000000300000008128220FA0AA6A27C10EDAD070AA6A27E10EDAD0903200102000000080000000900000004000000090000000310ED7107000000030AA6A27E0000000800000009000000020000000013A54D030115234113F85900000000000793F0BB00000005128220FA0AA6A27C10EDAD07000000050000000310ED7107000000030AA6A27E10EDAD09000000050000000410ED710900000004046001021383DD0300000001008A92210000000513FE350007095F9B00000005000000860000000013841903008A92210000000513FE350007095F9B000000050000008600000000000000010000000213F895000793F0BB12825CFA000000020AA6A27C10EDAD07000000050000000310ED7107000000030AA6A27E0000000810ED71090000000400000006128220FA0AA6A27C10EDAD070AA6A27E10EDAD09046001021383DD0300000001019FB4610000000513EF350007095F9B00000005000000090000000013841903019FB4610000000513EF350007095F9B000000050000000700000000000000010000000410ED710900000004046001020000000913841903019FB46113EEF9000000000007095F9B0000000512B880FA000000070000000200000007000000010000000310ED7107000000030AA6A27E10EDAD09046001021383DD0300000001019FB461000000080000000813841903019FB46113EEF9000000000007095F9B0000000512B880FA0A5351BC1121010700000005000000031120C50700000003000000080000000213EF350007095F9B0000000812B880FA0A5351BC112101070AF9F33E0000000700000007000000031120C50700000003000000080000000200000000000000010000000410ED710900000004046001021383DD0300000001019FB46113EEF9000000000007095F9B00000008000000090000000813841903019FB46113EEF9000000000007095F9B12B8BCFA000000020000000612B880FA0A5351BC112101070A5351BE0000000700000007000000031120C507000000030A5351BE00000008000000060000000213EF350007095F9B0000000612B880FA0A5351BC0000000700000006000000020000000000000001000000020000000000000001"
theorem small_9903564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9903564_left_root small_9903564_left_fuel small_9903564_left_count small_9903564_left_encoded = true := by
  decide +kernel
theorem small_9903564_left_covered : CoveredBy scale carrier boxes small_9903564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9903564_left_root small_9903564_left_fuel small_9903564_left_count small_9903564_left_encoded small_9903564_left_checked

theorem cover_9903564 : CoveredBy scale carrier boxes root_9903564 := by
  apply coveredBy_split_literal root_9903564 small_9903564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3711.root coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_9903564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3711.covered
#print axioms cover_9903564

def root_9903558 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903558_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903558_left_fuel : Nat := 1
def small_9903558_left_count : Nat := 1
def small_9903558_left_encoded : String := "00000000"
theorem small_9903558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9903558_left_root small_9903558_left_fuel small_9903558_left_count small_9903558_left_encoded = true := by
  decide +kernel
theorem small_9903558_left_covered : CoveredBy scale carrier boxes small_9903558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9903558_left_root small_9903558_left_fuel small_9903558_left_count small_9903558_left_encoded small_9903558_left_checked

theorem cover_9903558 : CoveredBy scale carrier boxes root_9903558 := by
  apply coveredBy_split_literal root_9903558 small_9903558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9903564 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9903558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9903564
#print axioms cover_9903558

def root_9903557 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903557_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903557_right_fuel : Nat := 23
def small_9903557_right_count : Nat := 429
def small_9903557_right_encoded : String := "13E20100067ECE7B12EA94FA000000020B4D43FC10804D070B4D43FE10804D0903C0010213A5110300000001033F67C113BBF500000000000793F0BB00000005128220FA0BF3E57C1009290700000009000000031008ED07000000030BF3E57E10092909032001020000000913C1450302B4D6A1000000050000000A0000000100000004000000090000000213BC31000793F0BB12825CFA000000020BF3E57C1009290700000007000000031008ED07000000030BF3E57E0000000800000009000000090000000013A54D03033F67C113BBF500000000000793F0BB00000005128220FA0BF3E57C1009290700000007000000031008ED07000000030BF3E57E0000000A1008ED0900000004000000070000000213BC31000793F0BB000000070000000A000000000000000100000004108011090000000403C001020000000913A54D03033F67C113BBF500000000000793F0BB00000007128220FA000000070000000200000007000000010000000310801107000000030B4D43FE10804D0903C0010213A5110300000001033F67C113BBF500000000000793F0BB00000008128220FA0AA6A27C10EDAD070BF3E57E000000081008ED0900000004032001020000000813C1450302B4D6A100000008000000080000000100000003000000080000000213BC31000793F0BB00000008128220FA0AA6A27C10EDAD070BF3E57E00000008000000090000000300000008000000020000000013A54D03033F67C113BBF500000000000793F0BB12825CFA000000020AA6A27C10EDAD070BF3E57E000000051008ED090000000404600102000000051384190300000005000000010000000310ED71070000000300000008128220FA0AA6A27C10EDAD070BF3E57E0000000A1008ED0900000004046001021383DD030000000102B4D6A113D0D1000000000007095F9B000000050000000A0000000A0000000A0000000310ED7107000000030BF3E57E0000000A1008ED090000000404600102000000080000000A0000000213BC31000793F0BB12825CFA000000020AA6A27C10EDAD070BF3E57E0000000A1008ED0900000004000000070000000310ED710700000003000000080000000A000000000000000100000004108011090000000403C0010213A5110300000001033F67C113BBF500000000000793F0BB00000008000000090000000913A54D03033F67C113BBF500000000000793F0BB12825CFA000000020AA6A27C10EDAD070AA6A27E10EDAD090460010200000008000000070000000410ED710900000004000000070000000310ED7107000000030AA6A27E0000000800000006128220FA0AA6A27C10EDAD070AA6A27E10EDAD0904600102000000090000000700000004000000090000000310ED7107000000030AA6A27E10EDAD09046001021383DD0300000001000000081384190302B4D6A113D0D1000000000007095F9B000000070000000A00000007000000010000000410ED7109000000040460010200000006000000070000000213BC31000793F0BB12825CFA000000020AA6A27C0000000700000006128220FA0AA6A27C0000000710ED7107000000030AA6A27E000000070000000600000002000000000000000112EA58FA0B4D43FC10804D070B4D43FE10804D0903C0010213A5110300000001033F67C113BBF500000000000569AC3B134110FA000000020BF3E57C1009290700000009000000031008ED07000000030BF3E57E0000000A000000091340D4FA0000000A0000000213BC3100000000090000000013A54D03033F67C113BBF500000000000569AC3B134110FA000000020000000A0000000A0000000A0000000100000004108011090000000403C001020000000913A54D03033F67C113BBF500000000000569AC3B000000070000000900000007000000010000000310801107000000030B4D43FE10804D0903C0010213A5110300000001033F67C113BBF500000000000569AC3B134110FA000000020AA6A27C10EDAD070BF3E57E0000000A1008ED0900000004000000090000000310ED7107000000030BF3E57E0000000A1008ED090000000403200102000000080000000A0000000A0000000A13A54D030000000A0000000100000004108011090000000403C0010213A5110300000001033F67C113BBF500000000000569AC3B00000009000000050000000513A54D03033F67C113BBF500000000000569AC3B134110FA000000020AA6A27C10EDAD070AA6A27E10EDAD0904600102000000090000000700000004000000090000000310ED7107000000030AA6A27E10EDAD090000000A0000000410ED7109000000040460010200000009000000050000000500000005000000010000000200000000"
theorem small_9903557_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9903557_right_root small_9903557_right_fuel small_9903557_right_count small_9903557_right_encoded = true := by
  decide +kernel
theorem small_9903557_right_covered : CoveredBy scale carrier boxes small_9903557_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9903557_right_root small_9903557_right_fuel small_9903557_right_count small_9903557_right_encoded small_9903557_right_checked

theorem cover_9903557 : CoveredBy scale carrier boxes root_9903557 := by
  apply coveredBy_split_literal root_9903557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9903558 small_9903557_right_root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9903558
  · exact small_9903557_right_covered
#print axioms cover_9903557

def root_9903552 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903552_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903552_right_fuel : Nat := 1
def small_9903552_right_count : Nat := 1
def small_9903552_right_encoded : String := "00000001"
theorem small_9903552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9903552_right_root small_9903552_right_fuel small_9903552_right_count small_9903552_right_encoded = true := by
  decide +kernel
theorem small_9903552_right_covered : CoveredBy scale carrier boxes small_9903552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9903552_right_root small_9903552_right_fuel small_9903552_right_count small_9903552_right_encoded small_9903552_right_checked

theorem cover_9903552 : CoveredBy scale carrier boxes root_9903552 := by
  apply coveredBy_split_literal root_9903552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9903557 small_9903552_right_root coord1 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9903557
  · exact small_9903552_right_covered
#print axioms cover_9903552

def root_9903088 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903088_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903088_left_fuel : Nat := 21
def small_9903088_left_count : Nat := 219
def small_9903088_left_encoded : String := "13D7B10300000001022A458113E1C50000000000067ECE7B12EA94FA000000020B4D43FC10804D070B4D43FE10804D0900000005000000041080110900000004000000090000000310801107000000030B4D43FE10804D09014001020000000813F6150301152341000000050000000800000001000000041080110900000004014001020000000813F615030115234113F85900000000000793F0BB00000005128220FA0AA6A27C000000090000000800000002000000090000000112EA58FA0B4D43FC10804D070B4D43FE10804D09014001020000000913F61503011523410000000613F895000569AC3B134110FA000000020000000900000006000000000000000100000004000000090000000310801107000000030B4D43FE10804D090140010213F5D903000000010115234113F85900000000000569AC3B000000080000000713F895000569AC3B00000008000000090000000013F615030115234113F85900000000000569AC3B134110FA000000020AA6A27C10EDAD070BF3E57E000000061008ED090000000401E0010200000006000000060000000310ED710700000003000000071340D4FA0AA6A27C0000000610ED710700000003000000060000000213F895000569AC3B134110FA000000020AA6A27C10EDAD070BF3E57E1009290901E00102000000060000000600000004000000090000000310ED710700000003000000081340D4FA0AA6A27C10EDAD07000000060000000310ED7107000000030BF3E57E1009290900000006000000041008ED090000000400000009000000020000000000000001000000041080110900000004014001020000000913F615030115234113F85900000000000569AC3B134110FA00000002000000090000000900000009000000010000000213E20100067ECE7B12EA94FA000000020B4D43FC10804D070B4D43FE10804D090000000900000004000000090000000310801107000000030B4D43FE10804D09014001020000000813F61503033F67C1000000080000000800000001000000040000000912EA58FA0B4D43FC10804D07000000090000000310801107000000030B4D43FE10804D09014001020000000913F61503033F67C113BBF500000000000569AC3B134110FA000000020AA6A27C10EDAD0700000009000000030000000800000009000000090000000100000004000000090000000200000000"
theorem small_9903088_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9903088_left_root small_9903088_left_fuel small_9903088_left_count small_9903088_left_encoded = true := by
  decide +kernel
theorem small_9903088_left_covered : CoveredBy scale carrier boxes small_9903088_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9903088_left_root small_9903088_left_fuel small_9903088_left_count small_9903088_left_encoded small_9903088_left_checked

theorem cover_9903088 : CoveredBy scale carrier boxes root_9903088 := by
  apply coveredBy_split_literal root_9903088 small_9903088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9903552 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9903088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9903552
#print axioms cover_9903088

def root_9903082 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903082_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9903082_left_fuel : Nat := 1
def small_9903082_left_count : Nat := 1
def small_9903082_left_encoded : String := "00000004"
theorem small_9903082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9903082_left_root small_9903082_left_fuel small_9903082_left_count small_9903082_left_encoded = true := by
  decide +kernel
theorem small_9903082_left_covered : CoveredBy scale carrier boxes small_9903082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9903082_left_root small_9903082_left_fuel small_9903082_left_count small_9903082_left_encoded small_9903082_left_checked

theorem cover_9903082 : CoveredBy scale carrier boxes root_9903082 := by
  apply coveredBy_split_literal root_9903082 small_9903082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9903088 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9903082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9903088
#print axioms cover_9903082

def root_9902492 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902492_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902492_left_fuel : Nat := 20
def small_9902492_left_count : Nat := 281
def small_9902492_left_encoded : String := "0F878D090280010213D7B10300000001022A458113E1C50000000000067ECE7B12EA94FA000000020B4D43FC10804D0700000005000000030000000512EA58FA0B4D43FC10804D07000000060000000310801107000000030DE7C9FE0E60150900000006000000040E5FD909000000040140010213F5D90300000001011523410000000613F895000569AC3B00000008000000060000000013F61503011523410000000613F895000569AC3B134110FA000000020AA6A27C00000006000000080000000600000000000000010000000213E20100067ECE7B12EA94FA000000020B4D43FC10804D070DE7C9FE0E6015090140010213F5D90300000001033F67C1000000050000000813F61503033F67C1000000050000000A00000001000000040E5FD909000000040140010213F5D90300000001033F67C113BBF50000000000000000080000000813F61503033F67C10000000513BC31000793F0BB00000005128220FA0BF3E57C1009290700000009000000030000000A0000000200000000000000010000000310801107000000030DE7C9FE000000080E5FD909000000040000000812EA58FA0B4D43FC10804D070DE7C9FE000000060E5FD909000000040140010213F5D903000000010000000613F61503033F67C1000000060000000A000000010000000310801107000000030DE7C9FE0000000A0E5FD909000000040140010213F5D90300000001033F67C113BBF500000000000569AC3B000000080000000613BC31000569AC3B00000008000000090000000013F61503033F67C113BBF500000000000569AC3B134110FA000000020AA6A27C10EDAD070000000A0000000300000008000000060000000A00000001000000020000000013D7ED03022A458113E1C50000000000067ECE7B0000000512EA58FA0B4D43FC10804D070DE7C9FE000000060E5FD90900000004000000060000000310801107000000030DE7C9FE0E60150900000006000000040E5FD9090000000403C0010213A5110300000001011523410000000613F895000569AC3B134110FA000000020AA6A27C000000060000000A000000060000000013A54D030115234113F85900000000000569AC3B00000005000000060000000A000000010000000213E20100067ECE7B12EA94FA000000020B4D43FC10804D070DE7C9FE0E60150900000005000000040E5FD9090000000403C0010213A5110300000001033F67C10000000513BC31000793F0BB000000050000000A0000000013A54D03033F67C1000000050000000A000000010000000310801107000000030DE7C9FE0E6015090000000A000000040E5FD9090000000403C0010213A5110300000001033F67C113BBF500000000000793F0BB00000005128220FA0AA6A27C10EDAD070000000A00000003000000080000000213BC31000793F0BB000000080000000A0000000013A54D03033F67C113BBF500000000000793F0BB000000050000000A0000000A0000000112EA58FA0B4D43FC10804D070000000A000000030000000A00000002000000000000000100000004"
theorem small_9902492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902492_left_root small_9902492_left_fuel small_9902492_left_count small_9902492_left_encoded = true := by
  decide +kernel
theorem small_9902492_left_covered : CoveredBy scale carrier boxes small_9902492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902492_left_root small_9902492_left_fuel small_9902492_left_count small_9902492_left_encoded small_9902492_left_checked

theorem cover_9902492 : CoveredBy scale carrier boxes root_9902492 := by
  apply coveredBy_split_literal root_9902492 small_9902492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9903082 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9902492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9903082
#print axioms cover_9902492

def root_9902486 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902486_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902486_left_fuel : Nat := 1
def small_9902486_left_count : Nat := 1
def small_9902486_left_encoded : String := "00000003"
theorem small_9902486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902486_left_root small_9902486_left_fuel small_9902486_left_count small_9902486_left_encoded = true := by
  decide +kernel
theorem small_9902486_left_covered : CoveredBy scale carrier boxes small_9902486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902486_left_root small_9902486_left_fuel small_9902486_left_count small_9902486_left_encoded small_9902486_left_checked

theorem cover_9902486 : CoveredBy scale carrier boxes root_9902486 := by
  apply coveredBy_split_literal root_9902486 small_9902486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9902492 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9902486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9902492
#print axioms cover_9902486

def root_9902084 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902084_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902084_left_fuel : Nat := 19
def small_9902084_left_count : Nat := 189
def small_9902084_left_encoded : String := "0F878D070C9A86FE0F878D090280010213D7B10300000001022A458113E1C50000000000067ECE7B000000050000000613E20100067ECE7B12EA94FA000000020DE7C9FC0E60150700000005000000030E5FD907000000030DE7C9FE0E60150900000005000000040E5FD90900000004014001020000000913F61503033F67C10000000513BC31000793F0BB0000000500000006000000000000000112EA58FA00000006000000020000000013D7ED03022A458113E1C50000000000067ECE7B000000050000000613E20100067ECE7B12EA94FA000000020DE7C9FC0E60150700000005000000030E5FD907000000030DE7C9FE0E60150900000005000000040000000512EA58FA0DE7C9FC000000060E5FD9070000000300000006000000020000000000000001000000040F875109000000040280010213D7B10300000001022A458113E1C50000000000067ECE7B12EA94FA000000020DE7C9FC0E60150700000005000000030000000512EA58FA0DE7C9FC000000090E5FD907000000030B4D43FE00000006000000090000000213E20100000000090000000013D7ED03022A458113E1C50000000000067ECE7B0000000512EA58FA0DE7C9FC0E60150700000006000000030E5FD907000000030B4D43FE10804D090000000600000004108011090000000403C001020000000913A54D030115234113F85900000000000569AC3B000000050000000600000009000000010000000213E20100067ECE7B12EA94FA000000020DE7C9FC0E6015070B4D43FE0000000700000007000000030E5FD907000000030B4D43FE10804D0903C0010213A5110300000001033F67C1000000050000000913A54D03033F67C100000005000000070000000100000004108011090000000403C00102000000090000000712EA58FA0DE7C9FC0E60150700000009000000030E5FD907000000030B4D43FE10804D0903C001020000000913A54D03033F67C113BBF50000000000000000060000000700000001000000040000000900000002000000000000000100000003"
theorem small_9902084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902084_left_root small_9902084_left_fuel small_9902084_left_count small_9902084_left_encoded = true := by
  decide +kernel
theorem small_9902084_left_covered : CoveredBy scale carrier boxes small_9902084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902084_left_root small_9902084_left_fuel small_9902084_left_count small_9902084_left_encoded small_9902084_left_checked

theorem cover_9902084 : CoveredBy scale carrier boxes root_9902084 := by
  apply coveredBy_split_literal root_9902084 small_9902084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9902486 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9902084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9902486
#print axioms cover_9902084

def root_9902078 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902078_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902078_left_fuel : Nat := 1
def small_9902078_left_count : Nat := 1
def small_9902078_left_encoded : String := "00000004"
theorem small_9902078_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902078_left_root small_9902078_left_fuel small_9902078_left_count small_9902078_left_encoded = true := by
  decide +kernel
theorem small_9902078_left_covered : CoveredBy scale carrier boxes small_9902078_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902078_left_root small_9902078_left_fuel small_9902078_left_count small_9902078_left_encoded small_9902078_left_checked

theorem cover_9902078 : CoveredBy scale carrier boxes root_9902078 := by
  apply coveredBy_split_literal root_9902078 small_9902078_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9902084 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9902078_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9902084
#print axioms cover_9902078

def root_9902006 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902006_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902006_left_fuel : Nat := 12
def small_9902006_left_count : Nat := 35
def small_9902006_left_encoded : String := "0F34D0FE0C9A86FC0F878D07028001020000000600000006000000030F875107000000030280010213D7B10300000001022A458113E1C50000000000067ECE7B000000050000000613E20100067ECE7B12EA94FA000000020AD357890000000510D13CFE0000000400000005000000060000000013D7ED03022A4581000000050000000A0000000100000004"
theorem small_9902006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902006_left_root small_9902006_left_fuel small_9902006_left_count small_9902006_left_encoded = true := by
  decide +kernel
theorem small_9902006_left_covered : CoveredBy scale carrier boxes small_9902006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902006_left_root small_9902006_left_fuel small_9902006_left_count small_9902006_left_encoded small_9902006_left_checked

theorem cover_9902006 : CoveredBy scale carrier boxes root_9902006 := by
  apply coveredBy_split_literal root_9902006 small_9902006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9902078 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9902006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9902078
#print axioms cover_9902006

def root_9902000 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902000_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902000_left_fuel : Nat := 1
def small_9902000_left_count : Nat := 1
def small_9902000_left_encoded : String := "00000003"
theorem small_9902000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902000_left_root small_9902000_left_fuel small_9902000_left_count small_9902000_left_encoded = true := by
  decide +kernel
theorem small_9902000_left_covered : CoveredBy scale carrier boxes small_9902000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902000_left_root small_9902000_left_fuel small_9902000_left_count small_9902000_left_encoded small_9902000_left_checked

theorem cover_9902000 : CoveredBy scale carrier boxes root_9902000 := by
  apply coveredBy_split_literal root_9902000 small_9902000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9902006 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9902000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9902006
#print axioms cover_9902000

def root_9901950 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901950_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901950_left_fuel : Nat := 11
def small_9901950_left_count : Nat := 25
def small_9901950_left_encoded : String := "0F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D09028001020000000600000006000000040F87510900000004028001020000000913D7ED03022A45810000000513E20100067ECE7B0000000500000009000000000000000100000003"
theorem small_9901950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901950_left_root small_9901950_left_fuel small_9901950_left_count small_9901950_left_encoded = true := by
  decide +kernel
theorem small_9901950_left_covered : CoveredBy scale carrier boxes small_9901950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901950_left_root small_9901950_left_fuel small_9901950_left_count small_9901950_left_encoded small_9901950_left_checked

theorem cover_9901950 : CoveredBy scale carrier boxes root_9901950 := by
  apply coveredBy_split_literal root_9901950 small_9901950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9902000 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9901950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9902000
#print axioms cover_9901950

def root_9901944 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901944_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901944_left_fuel : Nat := 1
def small_9901944_left_count : Nat := 1
def small_9901944_left_encoded : String := "00000002"
theorem small_9901944_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901944_left_root small_9901944_left_fuel small_9901944_left_count small_9901944_left_encoded = true := by
  decide +kernel
theorem small_9901944_left_covered : CoveredBy scale carrier boxes small_9901944_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901944_left_root small_9901944_left_fuel small_9901944_left_count small_9901944_left_encoded small_9901944_left_checked

theorem cover_9901944 : CoveredBy scale carrier boxes root_9901944 := by
  apply coveredBy_split_literal root_9901944 small_9901944_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901950 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9901944_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901950
#print axioms cover_9901944

def root_9901943 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901943_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901943_right_fuel : Nat := 32
def small_9901943_right_count : Nat := 247
def small_9901943_right_encoded : String := "138670FA0CFD9C070F34D0FC0CFD9C090000000600000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F875109000000040280010213D7B10300000001022A4581000000060000000913D7ED03022A458113E1C500000000000000000613E20100022A457B13E200FA000000020DE7C9FC000000060E5FD907000000030B4D43FE0000000600000009000000060000000000000001000000030F875107000000030C9A86FE0F878D090280010213D7B10300000001022A45810000000613E20100022A457B13E200FA000000020B4D43FC000000060000000A000000060000000013D7ED03022A458113E1C50000000000000000060000000A00000001000000040F875109000000040280010213D7B10300000001022A458113E1C50000000000022A457B13E200FA000000020B4D43FC10804D070B4D43FE00000006000000090000000310801107000000030B4D43FE10804D09014001020000000600000006000000041080110900000004014001020000000913F615030115234113F8590000000000033F67BB000000090000000500000005000000010000000613E20100022A457B13E200FA000000020B4D43FC10804D070000000900000003108011070000000300000005000000050000000013D7ED03022A458113E1C50000000000022A457B13E200FA000000020B4D43FC10804D070B4D43FE00000006108011090000000403C0010213A51103000000010000000613A54D03011523410000000613F89500033F67BB13BC30FA000000020BF3E57C000000060000000A0000000500000000000000010000000310801107000000030B4D43FE10804D0903C0010213A51103000000010000000613A54D030000000A0000000100000004108011090000000403C0010213A51103000000010115234113F8590000000000033F67BB13BC30FA000000020AA6A27C10EDAD07000000060000000310ED7107000000030AA6A27E0000000610ED71090000000400000005000000050000000513A54D030115234113F8590000000000033F67BB13BC30FA000000020AA6A27C10EDAD07000000060000000310ED7107000000030AA6A27E10EDAD09000000060000000410ED710900000004046001021383DD0300000001000000050000000500000005000000050000000113E1C4FA0B4D43FC000000061080110700000003000000050000000213E20100022A457B13E200FA000000020B4D43FC10804D070B4D43FE0000000A1080110900000004000000050000000310801107000000030000000500000005000000000000000100000002"
theorem small_9901943_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901943_right_root small_9901943_right_fuel small_9901943_right_count small_9901943_right_encoded = true := by
  decide +kernel
theorem small_9901943_right_covered : CoveredBy scale carrier boxes small_9901943_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901943_right_root small_9901943_right_fuel small_9901943_right_count small_9901943_right_encoded small_9901943_right_checked

theorem cover_9901943 : CoveredBy scale carrier boxes root_9901943 := by
  apply coveredBy_split_literal root_9901943 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901944 small_9901943_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901944
  · exact small_9901943_right_covered
#print axioms cover_9901943

def root_9901937 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901937_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901937_left_fuel : Nat := 1
def small_9901937_left_count : Nat := 1
def small_9901937_left_encoded : String := "00000000"
theorem small_9901937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901937_left_root small_9901937_left_fuel small_9901937_left_count small_9901937_left_encoded = true := by
  decide +kernel
theorem small_9901937_left_covered : CoveredBy scale carrier boxes small_9901937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901937_left_root small_9901937_left_fuel small_9901937_left_count small_9901937_left_encoded small_9901937_left_checked

theorem cover_9901937 : CoveredBy scale carrier boxes root_9901937 := by
  apply coveredBy_split_literal root_9901937 small_9901937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901943 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9901937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901943
#print axioms cover_9901937

def root_9901936 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901936_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901936_right_fuel : Nat := 27
def small_9901936_right_count : Nat := 383
def small_9901936_right_encoded : String := "1386AD00045489FB1386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE028001020000000600000006000000040F350CFE000000040C9A86FE0F878D090280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020AD3578700000005000000060000000612EA9500000000090000000013D7ED03067ECE8112EA590000000000067ECE7B00000007000000060000000700000001000000040F87510900000004028001020000000900000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D070280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020000000A000000060000000A0000000A000000030F875107000000030000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020DE7C9FC0E6015070DE7C9FE0E601509000000060000000400000009000000030E5FD907000000030DE7C9FE0E6015090140010213F5D903000000010569AC411340D5000000000000000006000000090000000A000000040E5FD909000000040000000912EA58FA0DE7C9FC0E60150700000006000000030E5FD907000000030000000A0000000212EA9500067ECE7B12EA94FA000000020DE7C9FC0E60150700000009000000030E5FD907000000030DE7C9FE0000000A00000009000000090000000013D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020DE7C9FC0E6015070DE7C9FE0000000A0E5FD9090000000400000007000000030E5FD907000000030000000A0000000A0000000A00000001000000040F87510900000004028001020000000913D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020DE7C9FC000000070E5FD9070000000300000007000000090000000700000001000000030F875107000000030C9A86FE0F878D090280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FC10804D070DE7C9FE0E60150901400102000000080000000A000000040E5FD90900000004014001020000000813F615030569AC411340D500000000000793F0BB000000080000000900000009000000010000000310801107000000030DE7C9FE000000080E5FD909000000040000000812EA58FA0B4D43FC10804D070000000A000000030000000A0000000212EA9500067ECE7B12EA94FA000000020B4D43FC10804D070000000A000000030000000A0000000A0000000013D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FC10804D070000000A000000030000000A0000000A0000000A00000001000000040F875109000000040280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA0000000200000009000000090000000913D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FC10804D070B4D43FE10804D0903C0010213A51103000000010000000900000007000000041080110900000004000000070000000310801107000000030B4D43FE10804D0903C0010213A51103000000010569AC411340D500000000000793F0BB00000008000000090000000A13A54D030569AC411340D500000000000000000A0000000A0000000100000004108011090000000403C001020000000913A54D030569AC411340D5000000000000000007000000050000000112EA58FA0B4D43FC10804D070B4D43FE0000000A00000009000000031080110700000003000000050000000212EA9500067ECE7B12EA94FA000000020B4D43FC00000007108011070000000300000005000000050000000000000001138670FA0CFD9C070F34D0FC0CFD9C09000000060F350CFE000000040C9A86FE0F878D09000000060000000400000009000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0000000A0F8751090000000400000009000000030F875107000000030C9A86FE0000000A0F87510900000004000000050000000200000000"
theorem small_9901936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901936_right_root small_9901936_right_fuel small_9901936_right_count small_9901936_right_encoded = true := by
  decide +kernel
theorem small_9901936_right_covered : CoveredBy scale carrier boxes small_9901936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901936_right_root small_9901936_right_fuel small_9901936_right_count small_9901936_right_encoded small_9901936_right_checked

theorem cover_9901936 : CoveredBy scale carrier boxes root_9901936 := by
  apply coveredBy_split_literal root_9901936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901937 small_9901936_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901937
  · exact small_9901936_right_covered
#print axioms cover_9901936

def root_9901930 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901930_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901930_left_fuel : Nat := 1
def small_9901930_left_count : Nat := 1
def small_9901930_left_encoded : String := "00000001"
theorem small_9901930_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901930_left_root small_9901930_left_fuel small_9901930_left_count small_9901930_left_encoded = true := by
  decide +kernel
theorem small_9901930_left_covered : CoveredBy scale carrier boxes small_9901930_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901930_left_root small_9901930_left_fuel small_9901930_left_count small_9901930_left_encoded small_9901930_left_checked

theorem cover_9901930 : CoveredBy scale carrier boxes root_9901930 := by
  apply coveredBy_split_literal root_9901930 small_9901930_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901936 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9901930_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901936
#print axioms cover_9901930

def root_9901929 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9901929 : CoveredBy scale carrier boxes root_9901929 := by
  apply coveredBy_split_literal root_9901929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901930 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3712.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901930
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3712.covered
#print axioms cover_9901929

def root_9901923 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901923_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901923_left_fuel : Nat := 1
def small_9901923_left_count : Nat := 1
def small_9901923_left_encoded : String := "00000004"
theorem small_9901923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901923_left_root small_9901923_left_fuel small_9901923_left_count small_9901923_left_encoded = true := by
  decide +kernel
theorem small_9901923_left_covered : CoveredBy scale carrier boxes small_9901923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901923_left_root small_9901923_left_fuel small_9901923_left_count small_9901923_left_encoded small_9901923_left_checked

theorem cover_9901923 : CoveredBy scale carrier boxes root_9901923 := by
  apply coveredBy_split_literal root_9901923 small_9901923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901929 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9901923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901929
#print axioms cover_9901923

def root_9901827 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901827_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901827_left_fuel : Nat := 11
def small_9901827_left_count : Nat := 47
def small_9901827_left_encoded : String := "120700FE05000102135D45030000000104548A011386710000000000045489FB1386ACFA000000020CFD9C070000000500000006000000061386AD00045489FB1386ACFA000000020CFD9C07000000060F350CFC0000000304548A09000000050000000A0000000600000000135D810304548A011386710000000000045489FB00000005000000061386AD00045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030000000A0000000A000000000000000100000004"
theorem small_9901827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901827_left_root small_9901827_left_fuel small_9901827_left_count small_9901827_left_encoded = true := by
  decide +kernel
theorem small_9901827_left_covered : CoveredBy scale carrier boxes small_9901827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901827_left_root small_9901827_left_fuel small_9901827_left_count small_9901827_left_encoded small_9901827_left_checked

theorem cover_9901827 : CoveredBy scale carrier boxes root_9901827 := by
  apply coveredBy_split_literal root_9901827 small_9901827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901923 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9901827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901923
#print axioms cover_9901827

def root_9901821 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901821_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901821_left_fuel : Nat := 1
def small_9901821_left_count : Nat := 1
def small_9901821_left_encoded : String := "00000003"
theorem small_9901821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901821_left_root small_9901821_left_fuel small_9901821_left_count small_9901821_left_encoded = true := by
  decide +kernel
theorem small_9901821_left_covered : CoveredBy scale carrier boxes small_9901821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901821_left_root small_9901821_left_fuel small_9901821_left_count small_9901821_left_encoded small_9901821_left_checked

theorem cover_9901821 : CoveredBy scale carrier boxes root_9901821 := by
  apply coveredBy_split_literal root_9901821 small_9901821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901827 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9901821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901827
#print axioms cover_9901821

def root_9901701 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901701_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901701_left_fuel : Nat := 15
def small_9901701_left_count : Nat := 59
def small_9901701_left_encoded : String := "120700FC08A91309120700FE000000060000000412073CFE0000000405000102135D45030000000104548A011386710000000000045489FB1386ACFA0000000204548A070000000500000006000000061386AD00045489FB1386ACFA0000000204548A07000000061386ACFC000000030CFD9C09000000060F350CFE000000040C9A86FE00000007000000070000000600000000135D810304548A011386710000000000045489FB00000005000000061386AD00045489FB1386ACFA0000000204548A07000000051386ACFC000000030CFD9C0900000005000000070000000A000000000000000100000003"
theorem small_9901701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901701_left_root small_9901701_left_fuel small_9901701_left_count small_9901701_left_encoded = true := by
  decide +kernel
theorem small_9901701_left_covered : CoveredBy scale carrier boxes small_9901701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901701_left_root small_9901701_left_fuel small_9901701_left_count small_9901701_left_encoded small_9901701_left_checked

theorem cover_9901701 : CoveredBy scale carrier boxes root_9901701 := by
  apply coveredBy_split_literal root_9901701 small_9901701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901821 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9901701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901821
#print axioms cover_9901701

def root_9901696 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901696_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901696_right_fuel : Nat := 1
def small_9901696_right_count : Nat := 1
def small_9901696_right_encoded : String := "00000002"
theorem small_9901696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901696_right_root small_9901696_right_fuel small_9901696_right_count small_9901696_right_encoded = true := by
  decide +kernel
theorem small_9901696_right_covered : CoveredBy scale carrier boxes small_9901696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901696_right_root small_9901696_right_fuel small_9901696_right_count small_9901696_right_encoded small_9901696_right_checked

theorem cover_9901696 : CoveredBy scale carrier boxes root_9901696 := by
  apply coveredBy_split_literal root_9901696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901701 small_9901696_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901701
  · exact small_9901696_right_covered
#print axioms cover_9901696

def root_9899712 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899712 : CoveredBy scale carrier boxes root_9899712 := by
  apply coveredBy_split_literal root_9899712 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3710.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9901696 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3710.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9901696
#print axioms cover_9899712

def root_9899706 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899706_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899706_left_fuel : Nat := 1
def small_9899706_left_count : Nat := 1
def small_9899706_left_encoded : String := "00000000"
theorem small_9899706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899706_left_root small_9899706_left_fuel small_9899706_left_count small_9899706_left_encoded = true := by
  decide +kernel
theorem small_9899706_left_covered : CoveredBy scale carrier boxes small_9899706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899706_left_root small_9899706_left_fuel small_9899706_left_count small_9899706_left_encoded small_9899706_left_checked

theorem cover_9899706 : CoveredBy scale carrier boxes root_9899706 := by
  apply coveredBy_split_literal root_9899706 small_9899706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899712 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9899706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899712
#print axioms cover_9899706

def root_9899705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899705 : CoveredBy scale carrier boxes root_9899705 := by
  apply coveredBy_split_literal root_9899705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3713.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3713.covered
#print axioms cover_9899705

def root_9899700 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899700_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899700_right_fuel : Nat := 1
def small_9899700_right_count : Nat := 1
def small_9899700_right_encoded : String := "00000004"
theorem small_9899700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899700_right_root small_9899700_right_fuel small_9899700_right_count small_9899700_right_encoded = true := by
  decide +kernel
theorem small_9899700_right_covered : CoveredBy scale carrier boxes small_9899700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899700_right_root small_9899700_right_fuel small_9899700_right_count small_9899700_right_encoded small_9899700_right_checked

theorem cover_9899700 : CoveredBy scale carrier boxes root_9899700 := by
  apply coveredBy_split_literal root_9899700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899705 small_9899700_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899705
  · exact small_9899700_right_covered
#print axioms cover_9899700

def root_9913980 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9913980 : CoveredBy scale carrier boxes root_9913980 := by
  apply coveredBy_split_literal root_9913980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3714.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3715.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3714.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3715.covered
#print axioms cover_9913980

def root_9913974 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913974_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913974_left_fuel : Nat := 1
def small_9913974_left_count : Nat := 1
def small_9913974_left_encoded : String := "00000000"
theorem small_9913974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9913974_left_root small_9913974_left_fuel small_9913974_left_count small_9913974_left_encoded = true := by
  decide +kernel
theorem small_9913974_left_covered : CoveredBy scale carrier boxes small_9913974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9913974_left_root small_9913974_left_fuel small_9913974_left_count small_9913974_left_encoded small_9913974_left_checked

theorem cover_9913974 : CoveredBy scale carrier boxes root_9913974 := by
  apply coveredBy_split_literal root_9913974 small_9913974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9913980 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9913974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9913980
#print axioms cover_9913974

def root_9913973 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913973_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913973_right_fuel : Nat := 18
def small_9913973_right_count : Nat := 155
def small_9913973_right_encoded : String := "12073D0008A912FB12073CFA0000000208A91307120700FC05000102135D450300000001050000FE0000000700000007000000070000000312073CFC0000000305000102135D450300000001050000FE135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003000000060F34D0FA0CFD9C07000000090F350CFC000000030C9A86FC0F878D0700000009000000030F8751070000000300000006000000020F350D000CFD9BFB0F350CFA000000020CFD9C0700000006000000060F34D0FA00000009000000020000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BFB0F350CFA0000000200000006000000090F350D000CFD9BFB000000060000000900000000135D8103050000FE135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C0700000007000000070F34D0FA00000007000000020F350D00000000070000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BFB000000070F34D0FA00000007000000020F350D00000000070000000000000001120700FA08A91307120700FC0500010200000009000000070000000312073CFC0000000305000102135D450300000001050000FE135D81090CFD9C0100000009000000050000000400000009135D8103050000FE135D81090CFD9C010F34D10000000000045489FB00000007138670FA0CFD9C070000000700000005000000020F350D00000000070000000000000004135D4509000000040CFD9C010F34D10000000000045489FB000000070000000500000005000000010000000200000000"
theorem small_9913973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9913973_right_root small_9913973_right_fuel small_9913973_right_count small_9913973_right_encoded = true := by
  decide +kernel
theorem small_9913973_right_covered : CoveredBy scale carrier boxes small_9913973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9913973_right_root small_9913973_right_fuel small_9913973_right_count small_9913973_right_encoded small_9913973_right_checked

theorem cover_9913973 : CoveredBy scale carrier boxes root_9913973 := by
  apply coveredBy_split_literal root_9913973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9913974 small_9913973_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9913974
  · exact small_9913973_right_covered
#print axioms cover_9913973

def root_9913967 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913967_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913967_left_fuel : Nat := 1
def small_9913967_left_count : Nat := 1
def small_9913967_left_encoded : String := "00000004"
theorem small_9913967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9913967_left_root small_9913967_left_fuel small_9913967_left_count small_9913967_left_encoded = true := by
  decide +kernel
theorem small_9913967_left_covered : CoveredBy scale carrier boxes small_9913967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9913967_left_root small_9913967_left_fuel small_9913967_left_count small_9913967_left_encoded small_9913967_left_checked

theorem cover_9913967 : CoveredBy scale carrier boxes root_9913967 := by
  apply coveredBy_split_literal root_9913967 small_9913967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9913973 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9913967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9913973
#print axioms cover_9913967

def root_9899699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899699 : CoveredBy scale carrier boxes root_9899699 := by
  apply coveredBy_split_literal root_9899699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9913967 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899700
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9913967
#print axioms cover_9899699

def root_9899694 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899694_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899694_right_fuel : Nat := 1
def small_9899694_right_count : Nat := 1
def small_9899694_right_encoded : String := "00000003"
theorem small_9899694_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899694_right_root small_9899694_right_fuel small_9899694_right_count small_9899694_right_encoded = true := by
  decide +kernel
theorem small_9899694_right_covered : CoveredBy scale carrier boxes small_9899694_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899694_right_root small_9899694_right_fuel small_9899694_right_count small_9899694_right_encoded small_9899694_right_checked

theorem cover_9899694 : CoveredBy scale carrier boxes root_9899694 := by
  apply coveredBy_split_literal root_9899694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899699 small_9899694_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899699
  · exact small_9899694_right_covered
#print axioms cover_9899694

def root_9919530 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919530_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919530_right_fuel : Nat := 22
def small_9919530_right_count : Nat := 117
def small_9919530_right_encoded : String := "1386AD00045489FB1386ACFA000000020CFD9C090F34D0FE0280010213D7B10300000001078000FC128A7D070000000A000000030000000813D7ED03078000FC0000000A0000000A00000001000000040F350CFE000000040C9A86FE0F878D090280010213D7B10300000001078000FC128A7D07067ECE8112EA590000000000067ECE7B000000080000000A12EA95000000000A00000000000000030000000813D7ED03078000FC128A7D07067ECE8112EA5900000000000000000A0000000A00000003128A410700000003067ECE8112EA5900000000000000000A0000000A00000001000000040F875109000000040280010213D7B10300000001078000FC128A7D07067ECE8112EA590000000000067ECE7B00000008000000050000000500000003128A4107000000030000000513D7ED03078000FC128A7D07067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FE10804D0903C001020000000813A54D0308C000FC11FC25070000000A00000003000000060000000100000004108011090000000403C001020000000600000006000000050000000500000003128A4107000000030000000500000001138670FA0CFD9C090F34D0FE0000000A00000004000000050000000200000000"
theorem small_9919530_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919530_right_root small_9919530_right_fuel small_9919530_right_count small_9919530_right_encoded = true := by
  decide +kernel
theorem small_9919530_right_covered : CoveredBy scale carrier boxes small_9919530_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919530_right_root small_9919530_right_fuel small_9919530_right_count small_9919530_right_encoded small_9919530_right_checked

theorem cover_9919530 : CoveredBy scale carrier boxes root_9919530 := by
  apply coveredBy_split_literal root_9919530 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3717.root small_9919530_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3717.covered
  · exact small_9919530_right_covered
#print axioms cover_9919530

def root_9919525 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919525_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919525_right_fuel : Nat := 1
def small_9919525_right_count : Nat := 1
def small_9919525_right_encoded : String := "00000003"
theorem small_9919525_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919525_right_root small_9919525_right_fuel small_9919525_right_count small_9919525_right_encoded = true := by
  decide +kernel
theorem small_9919525_right_covered : CoveredBy scale carrier boxes small_9919525_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919525_right_root small_9919525_right_fuel small_9919525_right_count small_9919525_right_encoded small_9919525_right_checked

theorem cover_9919525 : CoveredBy scale carrier boxes root_9919525 := by
  apply coveredBy_split_literal root_9919525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919530 small_9919525_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919530
  · exact small_9919525_right_covered
#print axioms cover_9919525

def root_9919524 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919524_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919524_right_fuel : Nat := 10
def small_9919524_right_count : Nat := 55
def small_9919524_right_encoded : String := "135D45070000000304548A011386710000000000045489FB1386ACFA000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE000000080F8751090000000400000008138670FA0CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F8751090000000400000005000000021386AD00045489FB1386ACFA000000020CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080F8751090000000400000005138670FA0CFD9C090F34D0FE0000000A00000004000000050000000200000000"
theorem small_9919524_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919524_right_root small_9919524_right_fuel small_9919524_right_count small_9919524_right_encoded = true := by
  decide +kernel
theorem small_9919524_right_covered : CoveredBy scale carrier boxes small_9919524_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919524_right_root small_9919524_right_fuel small_9919524_right_count small_9919524_right_encoded small_9919524_right_checked

theorem cover_9919524 : CoveredBy scale carrier boxes root_9919524 := by
  apply coveredBy_split_literal root_9919524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919525 small_9919524_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919525
  · exact small_9919524_right_covered
#print axioms cover_9919524

def root_9919518 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919518_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919518_left_fuel : Nat := 1
def small_9919518_left_count : Nat := 1
def small_9919518_left_encoded : String := "00000001"
theorem small_9919518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919518_left_root small_9919518_left_fuel small_9919518_left_count small_9919518_left_encoded = true := by
  decide +kernel
theorem small_9919518_left_covered : CoveredBy scale carrier boxes small_9919518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919518_left_root small_9919518_left_fuel small_9919518_left_count small_9919518_left_encoded small_9919518_left_checked

theorem cover_9919518 : CoveredBy scale carrier boxes root_9919518 := by
  apply coveredBy_split_literal root_9919518 small_9919518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919524 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9919518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919524
#print axioms cover_9919518

def root_9919517 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9919517 : CoveredBy scale carrier boxes root_9919517 := by
  apply coveredBy_split_literal root_9919517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3718.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919518
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3718.covered
#print axioms cover_9919517

def root_9919511 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919511_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919511_left_fuel : Nat := 1
def small_9919511_left_count : Nat := 1
def small_9919511_left_encoded : String := "00000004"
theorem small_9919511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919511_left_root small_9919511_left_fuel small_9919511_left_count small_9919511_left_encoded = true := by
  decide +kernel
theorem small_9919511_left_covered : CoveredBy scale carrier boxes small_9919511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919511_left_root small_9919511_left_fuel small_9919511_left_count small_9919511_left_encoded small_9919511_left_checked

theorem cover_9919511 : CoveredBy scale carrier boxes root_9919511 := by
  apply coveredBy_split_literal root_9919511 small_9919511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919517 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9919511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919517
#print axioms cover_9919511

def root_9919429 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919429_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919429_left_fuel : Nat := 13
def small_9919429_left_count : Nat := 41
def small_9919429_left_encoded : String := "120700FE05000102135D450300000001050000FC135D810704548A011386710000000000045489FB00000009000000071386AD00045489FB1386ACFA0000000204548A09000000091386ACFE00000004028001020000000A00000009138670FA04548A09000000060000000A000000020000000000000003135D45070000000304548A01000000071386AD00045489FB0000000700000007000000000000000900000004"
theorem small_9919429_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919429_left_root small_9919429_left_fuel small_9919429_left_count small_9919429_left_encoded = true := by
  decide +kernel
theorem small_9919429_left_covered : CoveredBy scale carrier boxes small_9919429_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919429_left_root small_9919429_left_fuel small_9919429_left_count small_9919429_left_encoded small_9919429_left_checked

theorem cover_9919429 : CoveredBy scale carrier boxes root_9919429 := by
  apply coveredBy_split_literal root_9919429 small_9919429_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919511 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9919429_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919511
#print axioms cover_9919429

def root_9919424 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919424_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919424_right_fuel : Nat := 1
def small_9919424_right_count : Nat := 1
def small_9919424_right_encoded : String := "00000002"
theorem small_9919424_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919424_right_root small_9919424_right_fuel small_9919424_right_count small_9919424_right_encoded = true := by
  decide +kernel
theorem small_9919424_right_covered : CoveredBy scale carrier boxes small_9919424_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919424_right_root small_9919424_right_fuel small_9919424_right_count small_9919424_right_encoded small_9919424_right_checked

theorem cover_9919424 : CoveredBy scale carrier boxes root_9919424 := by
  apply coveredBy_split_literal root_9919424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919429 small_9919424_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919429
  · exact small_9919424_right_covered
#print axioms cover_9919424

def root_9918298 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9918298 : CoveredBy scale carrier boxes root_9918298 := by
  apply coveredBy_split_literal root_9918298 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3716.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9919424 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3716.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9919424
#print axioms cover_9918298

def root_9918292 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918292_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918292_left_fuel : Nat := 1
def small_9918292_left_count : Nat := 1
def small_9918292_left_encoded : String := "00000000"
theorem small_9918292_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9918292_left_root small_9918292_left_fuel small_9918292_left_count small_9918292_left_encoded = true := by
  decide +kernel
theorem small_9918292_left_covered : CoveredBy scale carrier boxes small_9918292_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9918292_left_root small_9918292_left_fuel small_9918292_left_count small_9918292_left_encoded small_9918292_left_checked

theorem cover_9918292 : CoveredBy scale carrier boxes root_9918292 := by
  apply coveredBy_split_literal root_9918292 small_9918292_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9918298 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9918292_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9918298
#print axioms cover_9918292

def root_9918291 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9918291 : CoveredBy scale carrier boxes root_9918291 := by
  apply coveredBy_split_literal root_9918291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9918292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3719.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9918292
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3719.covered
#print axioms cover_9918291

def root_9918286 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918286_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918286_right_fuel : Nat := 1
def small_9918286_right_count : Nat := 1
def small_9918286_right_encoded : String := "00000004"
theorem small_9918286_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9918286_right_root small_9918286_right_fuel small_9918286_right_count small_9918286_right_encoded = true := by
  decide +kernel
theorem small_9918286_right_covered : CoveredBy scale carrier boxes small_9918286_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9918286_right_root small_9918286_right_fuel small_9918286_right_count small_9918286_right_encoded small_9918286_right_checked

theorem cover_9918286 : CoveredBy scale carrier boxes root_9918286 := by
  apply coveredBy_split_literal root_9918286 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9918291 small_9918286_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9918291
  · exact small_9918286_right_covered
#print axioms cover_9918286

def root_9918285 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9918285 : CoveredBy scale carrier boxes root_9918285 := by
  apply coveredBy_split_literal root_9918285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9918286 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3720.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9918286
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3720.covered
#print axioms cover_9918285

def root_9918279 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918279_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918279_left_fuel : Nat := 1
def small_9918279_left_count : Nat := 1
def small_9918279_left_encoded : String := "00000003"
theorem small_9918279_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9918279_left_root small_9918279_left_fuel small_9918279_left_count small_9918279_left_encoded = true := by
  decide +kernel
theorem small_9918279_left_covered : CoveredBy scale carrier boxes small_9918279_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9918279_left_root small_9918279_left_fuel small_9918279_left_count small_9918279_left_encoded small_9918279_left_checked

theorem cover_9918279 : CoveredBy scale carrier boxes root_9918279 := by
  apply coveredBy_split_literal root_9918279 small_9918279_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9918285 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9918279_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9918285
#print axioms cover_9918279

def root_9899693 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899693 : CoveredBy scale carrier boxes root_9899693 := by
  apply coveredBy_split_literal root_9899693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9918279 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9918279
#print axioms cover_9899693

def root_9899687 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899687_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899687_left_fuel : Nat := 1
def small_9899687_left_count : Nat := 1
def small_9899687_left_encoded : String := "00000002"
theorem small_9899687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899687_left_root small_9899687_left_fuel small_9899687_left_count small_9899687_left_encoded = true := by
  decide +kernel
theorem small_9899687_left_covered : CoveredBy scale carrier boxes small_9899687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899687_left_root small_9899687_left_fuel small_9899687_left_count small_9899687_left_encoded small_9899687_left_checked

theorem cover_9899687 : CoveredBy scale carrier boxes root_9899687 := by
  apply coveredBy_split_literal root_9899687 small_9899687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899693 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9899687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899693
#print axioms cover_9899687

def root_9899686 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899686 : CoveredBy scale carrier boxes root_9899686 := by
  apply coveredBy_split_literal root_9899686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899687 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3721.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899687
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3721.covered
#print axioms cover_9899686

def root_9899680 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899680_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899680_left_fuel : Nat := 1
def small_9899680_left_count : Nat := 1
def small_9899680_left_encoded : String := "00000001"
theorem small_9899680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899680_left_root small_9899680_left_fuel small_9899680_left_count small_9899680_left_encoded = true := by
  decide +kernel
theorem small_9899680_left_covered : CoveredBy scale carrier boxes small_9899680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899680_left_root small_9899680_left_fuel small_9899680_left_count small_9899680_left_encoded small_9899680_left_checked

theorem cover_9899680 : CoveredBy scale carrier boxes root_9899680 := by
  apply coveredBy_split_literal root_9899680 small_9899680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899686 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9899680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899686
#print axioms cover_9899680

def root_9930399 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9930399 : CoveredBy scale carrier boxes root_9930399 := by
  apply coveredBy_split_literal root_9930399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3722.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3723.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3722.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3723.covered
#print axioms cover_9930399

def root_9930393 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930393_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930393_left_fuel : Nat := 1
def small_9930393_left_count : Nat := 1
def small_9930393_left_encoded : String := "00000002"
theorem small_9930393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9930393_left_root small_9930393_left_fuel small_9930393_left_count small_9930393_left_encoded = true := by
  decide +kernel
theorem small_9930393_left_covered : CoveredBy scale carrier boxes small_9930393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9930393_left_root small_9930393_left_fuel small_9930393_left_count small_9930393_left_encoded small_9930393_left_checked

theorem cover_9930393 : CoveredBy scale carrier boxes root_9930393 := by
  apply coveredBy_split_literal root_9930393 small_9930393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9930399 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9930393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9930399
#print axioms cover_9930393

def root_9930392 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9930392 : CoveredBy scale carrier boxes root_9930392 := by
  apply coveredBy_split_literal root_9930392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9930393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3724.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9930393
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3724.covered
#print axioms cover_9930392

def root_9930387 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930387_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930387_right_fuel : Nat := 1
def small_9930387_right_count : Nat := 1
def small_9930387_right_encoded : String := "00000001"
theorem small_9930387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9930387_right_root small_9930387_right_fuel small_9930387_right_count small_9930387_right_encoded = true := by
  decide +kernel
theorem small_9930387_right_covered : CoveredBy scale carrier boxes small_9930387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9930387_right_root small_9930387_right_fuel small_9930387_right_count small_9930387_right_encoded small_9930387_right_checked

theorem cover_9930387 : CoveredBy scale carrier boxes root_9930387 := by
  apply coveredBy_split_literal root_9930387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9930392 small_9930387_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9930392
  · exact small_9930387_right_covered
#print axioms cover_9930387

def root_9899679 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899679 : CoveredBy scale carrier boxes root_9899679 := by
  apply coveredBy_split_literal root_9899679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9930387 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899680
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9930387
#print axioms cover_9899679

def root_9899674 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899674_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899674_right_fuel : Nat := 1
def small_9899674_right_count : Nat := 1
def small_9899674_right_encoded : String := "00000000"
theorem small_9899674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899674_right_root small_9899674_right_fuel small_9899674_right_count small_9899674_right_encoded = true := by
  decide +kernel
theorem small_9899674_right_covered : CoveredBy scale carrier boxes small_9899674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899674_right_root small_9899674_right_fuel small_9899674_right_count small_9899674_right_encoded small_9899674_right_checked

theorem cover_9899674 : CoveredBy scale carrier boxes root_9899674 := by
  apply coveredBy_split_literal root_9899674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899679 small_9899674_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899679
  · exact small_9899674_right_covered
#print axioms cover_9899674

def root_9897092 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9897092 : CoveredBy scale carrier boxes root_9897092 := by
  apply coveredBy_split_literal root_9897092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3709.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9899674 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3709.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9899674
#print axioms cover_9897092

def root_9842850 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842850 : CoveredBy scale carrier boxes root_9842850 := by
  apply coveredBy_split_literal root_9842850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9897092 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9897092
#print axioms cover_9842850

def root_9936694 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9936694 : CoveredBy scale carrier boxes root_9936694 := by
  apply coveredBy_split_literal root_9936694 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3725.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3726.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3725.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3726.covered
#print axioms cover_9936694

def root_9941003 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9941003_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9941003_left_fuel : Nat := 21
def small_9941003_left_count : Nat := 259
def small_9941003_left_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115224FB000000020A0000FC115225070A0001081151E9090000000408A912FB12073CFA0000000208A913070000000700000006000000091152250908A912FB12073CFA0000000208A91307120700FC000000080000000312073CFC0000000308A9130912070108000000040000000812073D080500010000000006135D810105000102135D4503000000010CFD9BFB0000000600000006000000060000000000000004120700FA08A9130700000008000000080000000200000004000000031151E907000000030A0001081151E90900000004000000051152250908A912FB12073CFA0000000208A9130912070108000000040000000A00000006120700FA08A91309000000080000000500000002000000041151E8FB0A0000FC115225070A0001081151E90900000004000000061152250908A91307120700FC08A913090000000800000006000000030000000600000004000000031151E907000000030A0001080000000611522509000000060000000400000002115225030A0000FA115224FB000000020A0000FC115225070A0001081151E9090000000408A9130312070102000000010000000612073D0208A912FB0000000600000008000000011152250908A91303120701020000000108A912FB12073CFA0000000208A913070000000700000006120700FA08A9130700000007000000060000000212073D0208A912FB12073CFA0000000208A913070000000812073CFC0000000308A913090000000800000006120700FA08A91307120700FC000000080000000300000008000000020000000100000004000000031151E907000000030A0001081151E90900000004000000061152250908A91303120701020000000108A912FB12073CFA0000000208A9130900000008000000080000000812073D0208A912FB12073CFA0000000208A913090000000612073D080000000600000004120700FA000000080000000200000001000000041151E8FB0A0000FC115225070A0001081151E90900000004000000071152250908A91303120701020000000108A913070000000612073CFC0000000308A91309000000060000000612073D0208A91307120700FC0000000600000003000000060000000100000004000000031151E907000000030A0001081151E9090000000408A91303120701020000000100000007000000061152250908A91303120701020000000108A91309120701080000000405000100000000080000000612073D0805000100135D45010000000000000007135D8101050000FA0000000600000006000000000000000412073D0208A913090000000612073D0805000100135D450100000000050000FA0000000600000006000000060000000400000001000000040000000200000001"
theorem small_9941003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9941003_left_root small_9941003_left_fuel small_9941003_left_count small_9941003_left_encoded = true := by
  decide +kernel
theorem small_9941003_left_covered : CoveredBy scale carrier boxes small_9941003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9941003_left_root small_9941003_left_fuel small_9941003_left_count small_9941003_left_encoded small_9941003_left_checked

theorem cover_9941003 : CoveredBy scale carrier boxes root_9941003 := by
  apply coveredBy_split_literal root_9941003 small_9941003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3727.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9941003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3727.covered
#print axioms cover_9941003

def root_9936693 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9936693 : CoveredBy scale carrier boxes root_9936693 := by
  apply coveredBy_split_literal root_9936693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9936694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9941003 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9936694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9941003
#print axioms cover_9936693

def root_9842849 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842849 : CoveredBy scale carrier boxes root_9842849 := by
  apply coveredBy_split_literal root_9842849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9936693 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842850
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9936693
#print axioms cover_9842849

def root_9831141 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831141 : CoveredBy scale carrier boxes root_9831141 := by
  apply coveredBy_split_literal root_9831141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9831142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9842849 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9831142
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9842849
#print axioms cover_9831141

def root_9944486 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944486_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944486_left_fuel : Nat := 22
def small_9944486_left_count : Nat := 293
def small_9944486_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD00000005120701060000000308A912FF00000005120700FE0000000500000004120700FA08A912FD00000005120701060000000308A912FF00000005120700FE0000000500000004000000021151E8FF08A912FB12073CFA0000000208A912FD12073D060500010000000005135D81010500010200000005135D8103050000FE00000005135D44FF000000060000000400000001000000000000000312070106000000030500010000000005135D81010500010200000005135D8103050000FE00000005135D44FF0CFD9BFB0F350CFA000000020000000900000009000000040000000100000000120700FA0000000500000002000000041151E8FB0A0001061151E8FD0A0000FE000000051151E8FF05000100135D450100000000050001020000000500000007135D81010500010200000006135D8103050000FA000000060000000A00000001000000000000000400000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF12073CFE000000040500010000000005135D81010500010200000005135D8103050000FA00000005135D44FB000000070000000200000001000000000000000900000003120701060000000308A912FF12073CFE000000040500010000000005135D81010500010200000005135D8103050000FA00000005135D44FB045489FD0000000713867106000000030CFD9BFF0F350CFE000000040000000900000007000000020000000100000000000000091151E8FF08A912FD12073D0605000100135D4501000000000500010200000009135D8103050000FA135D80FB0000000200000009135D44FB050000FE00000007000000090000000200000001135D810105000102135D450300000001050000FA135D80FB0000000200000009135D44FB050000FE000000090000000900000002135D8103050000FA135D80FB00000002050000FE135D80FF000000040CFD9BFD000000090F34D1060000000300000009135D44FF0CFD9BFD000000060F34D106000000030000000600000004135D44FB050000FE135D80FF000000040CFD9BFD000000070F34D1060000000300000007135D44FF0CFD9BFD0F350D060C9A87060000000600000006000000030F34D10600000003000000090000000400000002000000010000000000000003120701060000000305000100135D4501000000000500010200000009135D8103050000FA000000090000000900000001135D810105000102135D450300000001050000FA0000000900000009135D8103050000FA135D80FB00000002050000FE135D80FF00000004045489FD0000000913867106000000030780010000000005128A7D010000000900000000135D44FF045489FD0000000913867106000000030000000900000004135D44FB050000FE135D80FF00000004045489FD00000009138671060000000300000009135D44FF045489FD00000009138671060000000300000009000000040000000200000001000000000000000400000002"
theorem small_9944486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9944486_left_root small_9944486_left_fuel small_9944486_left_count small_9944486_left_encoded = true := by
  decide +kernel
theorem small_9944486_left_covered : CoveredBy scale carrier boxes small_9944486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9944486_left_root small_9944486_left_fuel small_9944486_left_count small_9944486_left_encoded small_9944486_left_checked

theorem cover_9944486 : CoveredBy scale carrier boxes root_9944486 := by
  apply coveredBy_split_literal root_9944486 small_9944486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3728.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9944486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3728.covered
#print axioms cover_9944486

def root_9944480 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944480_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9944480_left_fuel : Nat := 1
def small_9944480_left_count : Nat := 1
def small_9944480_left_encoded : String := "00000000"
theorem small_9944480_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9944480_left_root small_9944480_left_fuel small_9944480_left_count small_9944480_left_encoded = true := by
  decide +kernel
theorem small_9944480_left_covered : CoveredBy scale carrier boxes small_9944480_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9944480_left_root small_9944480_left_fuel small_9944480_left_count small_9944480_left_encoded small_9944480_left_checked

theorem cover_9944480 : CoveredBy scale carrier boxes root_9944480 := by
  apply coveredBy_split_literal root_9944480 small_9944480_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9944486 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9944480_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9944486
#print axioms cover_9944480

def root_9951014 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9951014 : CoveredBy scale carrier boxes root_9951014 := by
  apply coveredBy_split_literal root_9951014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3730.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3731.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3730.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3731.covered
#print axioms cover_9951014

def root_9951008 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951008_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951008_left_fuel : Nat := 1
def small_9951008_left_count : Nat := 1
def small_9951008_left_encoded : String := "00000000"
theorem small_9951008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9951008_left_root small_9951008_left_fuel small_9951008_left_count small_9951008_left_encoded = true := by
  decide +kernel
theorem small_9951008_left_covered : CoveredBy scale carrier boxes small_9951008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9951008_left_root small_9951008_left_fuel small_9951008_left_count small_9951008_left_encoded small_9951008_left_checked

theorem cover_9951008 : CoveredBy scale carrier boxes root_9951008 := by
  apply coveredBy_split_literal root_9951008 small_9951008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9951014 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9951008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9951014
#print axioms cover_9951008

def root_9957318 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9957318 : CoveredBy scale carrier boxes root_9957318 := by
  apply coveredBy_split_literal root_9957318 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3733.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3734.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3733.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3734.covered
#print axioms cover_9957318

def root_9957312 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957312_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957312_left_fuel : Nat := 1
def small_9957312_left_count : Nat := 1
def small_9957312_left_encoded : String := "00000000"
theorem small_9957312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957312_left_root small_9957312_left_fuel small_9957312_left_count small_9957312_left_encoded = true := by
  decide +kernel
theorem small_9957312_left_covered : CoveredBy scale carrier boxes small_9957312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957312_left_root small_9957312_left_fuel small_9957312_left_count small_9957312_left_encoded small_9957312_left_checked

theorem cover_9957312 : CoveredBy scale carrier boxes root_9957312 := by
  apply coveredBy_split_literal root_9957312 small_9957312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9957318 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9957312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9957318
#print axioms cover_9957312

def root_9963290 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9963290 : CoveredBy scale carrier boxes root_9963290 := by
  apply coveredBy_split_literal root_9963290 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3735.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3736.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3735.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3736.covered
#print axioms cover_9963290

def root_9963285 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9963285_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9963285_right_fuel : Nat := 1
def small_9963285_right_count : Nat := 1
def small_9963285_right_encoded : String := "00000000"
theorem small_9963285_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9963285_right_root small_9963285_right_fuel small_9963285_right_count small_9963285_right_encoded = true := by
  decide +kernel
theorem small_9963285_right_covered : CoveredBy scale carrier boxes small_9963285_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9963285_right_root small_9963285_right_fuel small_9963285_right_count small_9963285_right_encoded small_9963285_right_checked

theorem cover_9963285 : CoveredBy scale carrier boxes root_9963285 := by
  apply coveredBy_split_literal root_9963285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9963290 small_9963285_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9963290
  · exact small_9963285_right_covered
#print axioms cover_9963285

def root_9957311 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9957311 : CoveredBy scale carrier boxes root_9957311 := by
  apply coveredBy_split_literal root_9957311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9957312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9963285 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9957312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9963285
#print axioms cover_9957311

def root_9957305 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957305_left_fuel : Nat := 1
def small_9957305_left_count : Nat := 1
def small_9957305_left_encoded : String := "00000004"
theorem small_9957305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957305_left_root small_9957305_left_fuel small_9957305_left_count small_9957305_left_encoded = true := by
  decide +kernel
theorem small_9957305_left_covered : CoveredBy scale carrier boxes small_9957305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957305_left_root small_9957305_left_fuel small_9957305_left_count small_9957305_left_encoded small_9957305_left_checked

theorem cover_9957305 : CoveredBy scale carrier boxes root_9957305 := by
  apply coveredBy_split_literal root_9957305 small_9957305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9957311 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9957305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9957311
#print axioms cover_9957305

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234

import TaoBundleAssembly0134
import TaoBundleAssembly0136
import TaoBundleChunkBatch0516
import TaoBundleChunkBatch0517
import TaoBundleChunkBatch0518
import TaoBundleChunkBatch0519
import TaoBundleChunkBatch0520
import TaoBundleChunkBatch0521
import TaoBundleChunkBatch0522
import TaoBundleChunkBatch0523
import TaoBundleChunkBatch0525
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137
def root_5491239 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491239_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491239_right_fuel : Nat := 27
def small_5491239_right_count : Nat := 323
def small_5491239_right_encoded : String := "115224FF0000000408A912F912073CF80000000108A91305120700FA08A91307120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05138670FA0000000A000000021386ACFA0000000204548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF0000000900000004000000090F8750F90C9A87080F8750FF0280010013D7B0F7067ECE8500000009000000090000000013D7ECF700000000067ECE850000000900000009000000040F878CFF0000000402800100000000090000000900000001000000040F34D108000000040000000A000000031386ACFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF028001000000000A13D7ECF700000000067ECE850000000A00000005000000040000000A0000000100000004000000050F34D0F80000000A0000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA04548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010000000A0F8750F90C9A87080F8750FF07800100128A40F7022A4585000000090000000900000000128A7CF700000000022A45850000000900000009000000040F878CFF000000040000000900000001000000040F34D108000000040000000A000000031386ACFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078001000000000A0000000A000000040000000A00000001000000040000000A000000021386ACFA0000000204548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF0000000900000004000000090F8750F90C9A87080F8750FF07800100128A40F7067ECE85000000090000000900000000128A7CF700000000067ECE850000000900000005000000040F878CFF0000000407800100000000090000000700000001000000040F34D1080000000400000005000000031386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF900000001000000050000000500000004000000050F34D0F804548A050000000A1386ACFA0000000204548A07138670FC0CFD9BFF0000000900000005000000030000000500000001000000041207010800000004050001000000000A000000050000000312073CFC0000000308A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A050000000A000000050000000A00000000135D80F7000000000CFD9BF90F350CF800000001000000050000000500000004000000050000000212073CFA0000000208A91307120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF0000000900000004000000050F8750F90C9A87080F8750FF0280010013D7B0F70AD3578500000009000000050000000013D7ECF7000000000AD357850000000900000005000000040F878CFF0000000400000005000000010000000400000005000000030000000500000002000000050F34D0F80CFD9C050F34D0FA04548A07138670FC0CFD9BFF0000000900000005000000030000000500000002000000050000000100000000135D80F7000000000CFD9BF90F350CF800000001000000050000000500000004000000050000000300000005120700F808A91305120700FA08A91307120700FC0000000A0000000300000005000000020000000500000001"
theorem small_5491239_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491239_right_root small_5491239_right_fuel small_5491239_right_count small_5491239_right_encoded = true := by
  decide +kernel
theorem small_5491239_right_covered : CoveredBy scale carrier boxes small_5491239_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491239_right_root small_5491239_right_fuel small_5491239_right_count small_5491239_right_encoded small_5491239_right_checked

theorem cover_5491239 : CoveredBy scale carrier boxes root_5491239 := by
  apply coveredBy_split_literal root_5491239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5491240 small_5491239_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5491240
  · exact small_5491239_right_covered
#print axioms cover_5491239

def root_5491234 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491234_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491234_right_fuel : Nat := 1
def small_5491234_right_count : Nat := 1
def small_5491234_right_encoded : String := "00000003"
theorem small_5491234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491234_right_root small_5491234_right_fuel small_5491234_right_count small_5491234_right_encoded = true := by
  decide +kernel
theorem small_5491234_right_covered : CoveredBy scale carrier boxes small_5491234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491234_right_root small_5491234_right_fuel small_5491234_right_count small_5491234_right_encoded small_5491234_right_checked

theorem cover_5491234 : CoveredBy scale carrier boxes root_5491234 := by
  apply coveredBy_split_literal root_5491234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491239 small_5491234_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491239
  · exact small_5491234_right_covered
#print axioms cover_5491234

def root_5491233 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491233_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491233_right_fuel : Nat := 6
def small_5491233_right_count : Nat := 13
def small_5491233_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F912073CF800000001000000050000000500000004115224FF0000000400000005"
theorem small_5491233_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491233_right_root small_5491233_right_fuel small_5491233_right_count small_5491233_right_encoded = true := by
  decide +kernel
theorem small_5491233_right_covered : CoveredBy scale carrier boxes small_5491233_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491233_right_root small_5491233_right_fuel small_5491233_right_count small_5491233_right_encoded small_5491233_right_checked

theorem cover_5491233 : CoveredBy scale carrier boxes root_5491233 := by
  apply coveredBy_split_literal root_5491233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491234 small_5491233_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491234
  · exact small_5491233_right_covered
#print axioms cover_5491233

def root_5491228 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491228_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491228_right_fuel : Nat := 1
def small_5491228_right_count : Nat := 1
def small_5491228_right_encoded : String := "00000002"
theorem small_5491228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491228_right_root small_5491228_right_fuel small_5491228_right_count small_5491228_right_encoded = true := by
  decide +kernel
theorem small_5491228_right_covered : CoveredBy scale carrier boxes small_5491228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491228_right_root small_5491228_right_fuel small_5491228_right_count small_5491228_right_encoded small_5491228_right_checked

theorem cover_5491228 : CoveredBy scale carrier boxes root_5491228 := by
  apply coveredBy_split_literal root_5491228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491233 small_5491228_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491233
  · exact small_5491228_right_covered
#print axioms cover_5491228

def root_5491227 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491227_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491227_right_fuel : Nat := 8
def small_5491227_right_count : Nat := 19
def small_5491227_right_encoded : String := "1151E905000000020A0000FC115225070A0001081151E8FF08A912F912073CF800000001000000050000000500000004115224FF0000000400000005000000031151E9070000000300000005"
theorem small_5491227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491227_right_root small_5491227_right_fuel small_5491227_right_count small_5491227_right_encoded = true := by
  decide +kernel
theorem small_5491227_right_covered : CoveredBy scale carrier boxes small_5491227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491227_right_root small_5491227_right_fuel small_5491227_right_count small_5491227_right_encoded small_5491227_right_checked

theorem cover_5491227 : CoveredBy scale carrier boxes root_5491227 := by
  apply coveredBy_split_literal root_5491227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491228 small_5491227_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491228
  · exact small_5491227_right_covered
#print axioms cover_5491227

def root_5491221 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491221_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491221_left_fuel : Nat := 1
def small_5491221_left_count : Nat := 1
def small_5491221_left_encoded : String := "00000001"
theorem small_5491221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491221_left_root small_5491221_left_fuel small_5491221_left_count small_5491221_left_encoded = true := by
  decide +kernel
theorem small_5491221_left_covered : CoveredBy scale carrier boxes small_5491221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491221_left_root small_5491221_left_fuel small_5491221_left_count small_5491221_left_encoded small_5491221_left_checked

theorem cover_5491221 : CoveredBy scale carrier boxes root_5491221 := by
  apply coveredBy_split_literal root_5491221 small_5491221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491227 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5491221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491227
#print axioms cover_5491221

def root_5517506 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517506_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517506_left_fuel : Nat := 29
def small_5517506_left_count : Nat := 253
def small_5517506_left_encoded : String := "138670FA04548A07138670FC0280010013D7B0F7078000F8128A7CF90000000107800108128A40FF0000000500000004128A7CFF00000004022A45850000000513E200FA00000002022A45870000000500000006128A40F90780010800000005128A7CFF0000000400000006000000010000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF022A45850000000513E200FA00000002022A45870000000513E200FC0000000303C001000000000513A54CF70000000008C000F80000000511FBE8F9000000050000000100000004128A7CFF00000004022A458513E1C4FA022A4587000000050000000A0000000213E200FA00000002022A458713E1C4FC03C001000000000513A54CF70000000008C000F800000005000000090000000313E200FC0000000303C0010013A510F708C000F811FC24F9000000010000000A11FBE8F900000006000000010000000013A54CF70000000008C000F811FC24F90000000108C0010811FBE8FF033F67C50000000500000009000000040000000911FBE8F908C0010811FBE8FF033F67C50000000513BC30FA00000002033F67C700000005000000060000000411FC24FF000000040000000600000001128A40F907800108128A40FF0000000500000004128A7CFF00000004022A45850000000513E200FA00000002022A4587000000050000000600000001000000031386ACFC000000030280010013D7B0F7078000F8128A7CF900000001078001080000000600000006000000060000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF022A458513E1C4FA067ECE8712EA58FC03C001000000000613A54CF70000000008C000F80000000A0000000600000003000000060000000213E200FA00000002067ECE8712EA58FC03C0010013A510F708C000F811FC24F900000001064001080000000600000006000000060000000013A54CF70000000008C000F811FC24F9000000010640010812FF70FF033F67C513BBF4FA0569AC4700000005000000060000000213BC30FA000000020569AC471340D4FC046001001383DCF70000000500000000138418F700000000096000F811AABCF90000000105A00108000000050000000A11AA80F9000000050000000100000003000000060000000412FFACFF00000004033F67C50000000613BC30FA000000020569AC471340D4FC04600100000000060000000A000000030000000611FBE8F906400108000000060000000600000001000000030000000600000004128A7CFF00000004022A45850000000613E200FA00000002067ECE8712EA58FC03C001000000000613A54CF70000000008C000F80000000A000000060000000300000006128A40F9000000060000000100000002"
theorem small_5517506_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5517506_left_root small_5517506_left_fuel small_5517506_left_count small_5517506_left_encoded = true := by
  decide +kernel
theorem small_5517506_left_covered : CoveredBy scale carrier boxes small_5517506_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5517506_left_root small_5517506_left_fuel small_5517506_left_count small_5517506_left_encoded small_5517506_left_checked

theorem cover_5517506 : CoveredBy scale carrier boxes root_5517506 := by
  apply coveredBy_split_literal root_5517506 small_5517506_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2065.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5517506_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2065.covered
#print axioms cover_5517506

def root_5517500 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517500_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517500_left_fuel : Nat := 1
def small_5517500_left_count : Nat := 1
def small_5517500_left_encoded : String := "00000004"
theorem small_5517500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5517500_left_root small_5517500_left_fuel small_5517500_left_count small_5517500_left_encoded = true := by
  decide +kernel
theorem small_5517500_left_covered : CoveredBy scale carrier boxes small_5517500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5517500_left_root small_5517500_left_fuel small_5517500_left_count small_5517500_left_encoded small_5517500_left_checked

theorem cover_5517500 : CoveredBy scale carrier boxes root_5517500 := by
  apply coveredBy_split_literal root_5517500 small_5517500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5517506 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5517500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5517506
#print axioms cover_5517500

def root_5515462 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5515462 : CoveredBy scale carrier boxes root_5515462 := by
  apply coveredBy_split_literal root_5515462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2064.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5517500 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2064.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5517500
#print axioms cover_5515462

def root_5515456 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515456_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515456_left_fuel : Nat := 1
def small_5515456_left_count : Nat := 1
def small_5515456_left_encoded : String := "00000001"
theorem small_5515456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515456_left_root small_5515456_left_fuel small_5515456_left_count small_5515456_left_encoded = true := by
  decide +kernel
theorem small_5515456_left_covered : CoveredBy scale carrier boxes small_5515456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515456_left_root small_5515456_left_fuel small_5515456_left_count small_5515456_left_encoded small_5515456_left_checked

theorem cover_5515456 : CoveredBy scale carrier boxes root_5515456 := by
  apply coveredBy_split_literal root_5515456 small_5515456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515462 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5515456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515462
#print axioms cover_5515456

def root_5515455 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515455_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515455_right_fuel : Nat := 19
def small_5515455_right_count : Nat := 127
def small_5515455_right_encoded : String := "135D44F905000108135D44FF04548A05138670FA04548A070000000500000006000000021386ACFA0000000204548A070000000A1386ACFC000000030280010013D7B0F7028000F813D7ECF9000000010280010813D7B0FF067ECE8500000006000000080000000400000006000000060000000013D7ECF700000000028000F813D7ECF900000001028001080000000A13D7ECFF00000004067ECE85000000060000000A13D7B0F90000000A0000000100000004135D80FF0000000404548A05138670FA04548A07138670FC028001000000000613D7ECF700000000028000F813D7ECF90000000107800108128A40FF0000000500000004128A7CFF0000000400000006000000060000000300000006000000021386ACFA0000000204548A07138670FC0280010013D7B0F7028000F800000008000000080000000013D7ECF700000000028000F813D7ECF90000000107800108128A40FF067ECE8512EA58FA022A45870000000513E200FC0000000303C00100000000060000000A000000020000000800000004128A7CFF00000004067ECE8512EA58FA022A45870000000800000006000000020000000813D7B0F907800108000000080000000800000001000000031386ACFC00000003028001000000000613D7ECF700000000028000F813D7ECF9000000010780010800000006000000060000000600000001"
theorem small_5515455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515455_right_root small_5515455_right_fuel small_5515455_right_count small_5515455_right_encoded = true := by
  decide +kernel
theorem small_5515455_right_covered : CoveredBy scale carrier boxes small_5515455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515455_right_root small_5515455_right_fuel small_5515455_right_count small_5515455_right_encoded small_5515455_right_checked

theorem cover_5515455 : CoveredBy scale carrier boxes root_5515455 := by
  apply coveredBy_split_literal root_5515455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515456 small_5515455_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515456
  · exact small_5515455_right_covered
#print axioms cover_5515455

def root_5515450 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515450_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515450_right_fuel : Nat := 1
def small_5515450_right_count : Nat := 1
def small_5515450_right_encoded : String := "00000000"
theorem small_5515450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515450_right_root small_5515450_right_fuel small_5515450_right_count small_5515450_right_encoded = true := by
  decide +kernel
theorem small_5515450_right_covered : CoveredBy scale carrier boxes small_5515450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515450_right_root small_5515450_right_fuel small_5515450_right_count small_5515450_right_encoded small_5515450_right_checked

theorem cover_5515450 : CoveredBy scale carrier boxes root_5515450 := by
  apply coveredBy_split_literal root_5515450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515455 small_5515450_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515455
  · exact small_5515450_right_covered
#print axioms cover_5515450

def root_5521328 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5521328 : CoveredBy scale carrier boxes root_5521328 := by
  apply coveredBy_split_literal root_5521328 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2066.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2067.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2066.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2067.covered
#print axioms cover_5521328

def root_5521323 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521323_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521323_right_fuel : Nat := 1
def small_5521323_right_count : Nat := 1
def small_5521323_right_encoded : String := "00000004"
theorem small_5521323_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521323_right_root small_5521323_right_fuel small_5521323_right_count small_5521323_right_encoded = true := by
  decide +kernel
theorem small_5521323_right_covered : CoveredBy scale carrier boxes small_5521323_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521323_right_root small_5521323_right_fuel small_5521323_right_count small_5521323_right_encoded small_5521323_right_checked

theorem cover_5521323 : CoveredBy scale carrier boxes root_5521323 := by
  apply coveredBy_split_literal root_5521323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5521328 small_5521323_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5521328
  · exact small_5521323_right_covered
#print axioms cover_5521323

def root_5524772 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5524772 : CoveredBy scale carrier boxes root_5524772 := by
  apply coveredBy_split_literal root_5524772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2068.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2069.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2068.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2069.covered
#print axioms cover_5524772

def root_5524767 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524767_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524767_right_fuel : Nat := 1
def small_5524767_right_count : Nat := 1
def small_5524767_right_encoded : String := "00000002"
theorem small_5524767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5524767_right_root small_5524767_right_fuel small_5524767_right_count small_5524767_right_encoded = true := by
  decide +kernel
theorem small_5524767_right_covered : CoveredBy scale carrier boxes small_5524767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5524767_right_root small_5524767_right_fuel small_5524767_right_count small_5524767_right_encoded small_5524767_right_checked

theorem cover_5524767 : CoveredBy scale carrier boxes root_5524767 := by
  apply coveredBy_split_literal root_5524767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5524772 small_5524767_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5524772
  · exact small_5524767_right_covered
#print axioms cover_5524767

def root_5529860 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5529860 : CoveredBy scale carrier boxes root_5529860 := by
  apply coveredBy_split_literal root_5529860 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2070.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2071.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2070.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2071.covered
#print axioms cover_5529860

def root_5529854 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5529854_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5529854_left_fuel : Nat := 1
def small_5529854_left_count : Nat := 1
def small_5529854_left_encoded : String := "00000002"
theorem small_5529854_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5529854_left_root small_5529854_left_fuel small_5529854_left_count small_5529854_left_encoded = true := by
  decide +kernel
theorem small_5529854_left_covered : CoveredBy scale carrier boxes small_5529854_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5529854_left_root small_5529854_left_fuel small_5529854_left_count small_5529854_left_encoded small_5529854_left_checked

theorem cover_5529854 : CoveredBy scale carrier boxes root_5529854 := by
  apply coveredBy_split_literal root_5529854 small_5529854_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5529860 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5529854_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5529860
#print axioms cover_5529854

def root_5524766 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5524766 : CoveredBy scale carrier boxes root_5524766 := by
  apply coveredBy_split_literal root_5524766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5524767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5529854 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5524767
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5529854
#print axioms cover_5524766

def root_5524760 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524760_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5524760_left_fuel : Nat := 1
def small_5524760_left_count : Nat := 1
def small_5524760_left_encoded : String := "00000004"
theorem small_5524760_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5524760_left_root small_5524760_left_fuel small_5524760_left_count small_5524760_left_encoded = true := by
  decide +kernel
theorem small_5524760_left_covered : CoveredBy scale carrier boxes small_5524760_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5524760_left_root small_5524760_left_fuel small_5524760_left_count small_5524760_left_encoded small_5524760_left_checked

theorem cover_5524760 : CoveredBy scale carrier boxes root_5524760 := by
  apply coveredBy_split_literal root_5524760 small_5524760_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5524766 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5524760_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5524766
#print axioms cover_5524760

def root_5521322 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5521322 : CoveredBy scale carrier boxes root_5521322 := by
  apply coveredBy_split_literal root_5521322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5521323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5524760 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5521323
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5524760
#print axioms cover_5521322

def root_5521316 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521316_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521316_left_fuel : Nat := 1
def small_5521316_left_count : Nat := 1
def small_5521316_left_encoded : String := "00000001"
theorem small_5521316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521316_left_root small_5521316_left_fuel small_5521316_left_count small_5521316_left_encoded = true := by
  decide +kernel
theorem small_5521316_left_covered : CoveredBy scale carrier boxes small_5521316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521316_left_root small_5521316_left_fuel small_5521316_left_count small_5521316_left_encoded small_5521316_left_checked

theorem cover_5521316 : CoveredBy scale carrier boxes root_5521316 := by
  apply coveredBy_split_literal root_5521316 small_5521316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5521322 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5521316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5521322
#print axioms cover_5521316

def root_5521315 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521315_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521315_right_fuel : Nat := 25
def small_5521315_right_count : Nat := 401
def small_5521315_right_encoded : String := "135D44F905000108135D44FF04548A05138670FA04548A07138670FC07800100128A40F70000000500000000128A7CF7000000000000000A000000031386ACFC0000000307800100128A40F7028000F813D7ECF900000001028001080000000913D7ECFF00000004022A45850000000613E200FA00000002067ECE8712EA58FC06400100000000060000000900000003000000060000000900000000128A7CF700000000028000F813D7ECF900000001028001080000000913D7ECFF00000004022A4585000000090000000900000009000000021386ACFA0000000204548A070000000A1386ACFC00000003078001000000000A0000000A00000004135D80FF0000000404548A05138670FA04548A07138670FC07800100128A40F7028000F813D7ECF90000000107800108128A40FF022A45850000000513E200FA00000002022A45870000000513E200FC000000030640010012FF70F7000000060000000012FFACF70000000003C000F813A54CF900000001064001080000000A12FFACFF00000004033F67C5000000050000000A0000000A00000004128A7CFF00000004022A458513E1C4FA022A458700000005000000060000000213E200FA00000002022A458713E1C4FC064001000000000512FFACF70000000003C000F80000000513A510F90000000500000001000000030000000613D7B0F907800108128A40FF022A4585000000050000000A00000004128A7CFF00000004022A458500000005000000060000000100000000128A7CF700000000028000F813D7ECF90000000107800108128A40FF022A458513E1C4FA022A45870000000513E200FC0000000308C001000000000511FC24F70000000003C000F8000000050000000A0000000213E200FA00000002022A45870000000A0000000A00000004128A7CFF00000004022A458513E1C4FA022A458700000005000000070000000213E200FA00000002022A458713E1C4FC00000007000000030000000713D7B0F907800108128A40FF022A4585000000050000000A00000004128A7CFF00000004022A458513E1C4FA022A45870000000500000006000000020000000700000001000000031386ACFC0000000307800100128A40F7028000F813D7ECF9000000010780010800000006000000060000000600000000128A7CF700000000028000F813D7ECF90000000107800108128A40FF022A458513E1C4FA067ECE8712EA58FC08C001000000000611FC24F70000000003C000F813A54CF9000000010640010800000009000000060000000600000003000000060000000213E200FA00000002067ECE8712EA58FC08C0010011FBE8F703C000F813A54CF900000001064001080000000900000006000000060000000000000007000000030000000600000004128A7CFF00000004022A4585000000060000000713D7B0F907800108128A40FF022A45850000000613E200FA0000000200000006000000040000000600000001000000021386ACFA0000000204548A07138670FC07800100128A40F7028000F813D7ECF900000001078001080000000A128A7CFF00000004067ECE8512EA58FA022A458713E1C4FC0640010012FF70F703C000F813A54CF90000000108C00108000000080000000800000008000000000000000A0000000313E200FC000000030640010000000006000000070000000212EA94FA000000020000000A13D7B0F9078001080000000A128A7CFF00000004067ECE8512EA58FA022A45870000000A0000000600000002000000080000000100000000128A7CF700000000028000F813D7ECF900000001078001080000000A128A7CFF00000004067ECE8512EA58FA0000000700000002000000070000000A000000031386ACFC0000000307800100128A40F7028000F813D7ECF90000000107800108128A40FF067ECE8512EA58FA067ECE8712EA58FC06400100000000060000000A00000003000000060000000212EA94FA00000002067ECE870000000A0000000500000004128A7CFF00000004067ECE85000000060000000513D7B0F907800108128A40FF067ECE85000000060000000A00000004000000060000000100000000128A7CF700000000028000F813D7ECF90000000107800108128A40FF067ECE8512EA58FA067ECE870000000A000000050000000200000005000000040000000713D7B0F9078001080000000A000000070000000100000001"
theorem small_5521315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521315_right_root small_5521315_right_fuel small_5521315_right_count small_5521315_right_encoded = true := by
  decide +kernel
theorem small_5521315_right_covered : CoveredBy scale carrier boxes small_5521315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521315_right_root small_5521315_right_fuel small_5521315_right_count small_5521315_right_encoded small_5521315_right_checked

theorem cover_5521315 : CoveredBy scale carrier boxes root_5521315 := by
  apply coveredBy_split_literal root_5521315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5521316 small_5521315_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5521316
  · exact small_5521315_right_covered
#print axioms cover_5521315

def root_5521309 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521309_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5521309_left_fuel : Nat := 1
def small_5521309_left_count : Nat := 1
def small_5521309_left_encoded : String := "00000000"
theorem small_5521309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5521309_left_root small_5521309_left_fuel small_5521309_left_count small_5521309_left_encoded = true := by
  decide +kernel
theorem small_5521309_left_covered : CoveredBy scale carrier boxes small_5521309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5521309_left_root small_5521309_left_fuel small_5521309_left_count small_5521309_left_encoded small_5521309_left_checked

theorem cover_5521309 : CoveredBy scale carrier boxes root_5521309 := by
  apply coveredBy_split_literal root_5521309 small_5521309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5521315 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5521309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5521315
#print axioms cover_5521309

def root_5515449 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5515449 : CoveredBy scale carrier boxes root_5515449 := by
  apply coveredBy_split_literal root_5515449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5521309 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515450
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5521309
#print axioms cover_5515449

def root_5515444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515444_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515444_right_fuel : Nat := 1
def small_5515444_right_count : Nat := 1
def small_5515444_right_encoded : String := "00000003"
theorem small_5515444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515444_right_root small_5515444_right_fuel small_5515444_right_count small_5515444_right_encoded = true := by
  decide +kernel
theorem small_5515444_right_covered : CoveredBy scale carrier boxes small_5515444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515444_right_root small_5515444_right_fuel small_5515444_right_count small_5515444_right_encoded small_5515444_right_checked

theorem cover_5515444 : CoveredBy scale carrier boxes root_5515444 := by
  apply coveredBy_split_literal root_5515444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515449 small_5515444_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515449
  · exact small_5515444_right_covered
#print axioms cover_5515444

def root_5515443 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515443_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515443_right_fuel : Nat := 24
def small_5515443_right_count : Nat := 285
def small_5515443_right_encoded : String := "12073CFC0000000305000100135D44F7050000F8135D80F90000000105000108135D44FF04548A05138670FA0CFD9C070F34D0FC028001000000000613D7ECF700000000078000F8128A7CF900000001028001080000000600000006000000060000000300000006000000021386ACFA000000020CFD9C070F34D0FC0280010013D7B0F7078000F8128A7CF9000000010280010813D7B0FF067ECE8500000006000000090000000400000006000000060000000013D7ECF700000000078000F8128A7CF9000000010280010813D7B0FF000000090000000413D7ECFF00000004067ECE850000000600000005128A40F902800108000000090000000600000001000000030F350CFC000000030000000500000004135D80FF0000000404548A05138670FA0CFD9C070F34D0FC000000060000000300000006000000021386ACFA000000020CFD9C070F34D0FC028001000000000613D7ECF700000000078000F8128A7CF90000000107800108128A40FF067ECE8500000006000000050000000400000005000000050000000300000005135D44F905000108135D44FF04548A05000000061386ACFA000000020000000600000004000000060000000100000000135D80F700000000050000F8135D80F90000000105000108135D44FF04548A05138670FA0CFD9C070F34D0FC07800100128A40F7078000F8128A7CF900000001028001080000000913D7ECFF00000004022A458500000006000000090000000900000000128A7CF700000000078000F8128A7CF900000001028001080000000913D7ECFF00000004022A45850000000900000009000000090000000300000009000000021386ACFA000000020CFD9C070F34D0FC07800100128A40F7078000F8128A7CF900000001028001080000000913D7ECFF00000004067ECE8512EA58FA0AD3578710D100FC0640010012FF70F700000009000000000000000500000003000000050000000200000005128A40F9000000090000000100000000128A7CF700000000078000F8128A7CF9000000010000000500000005000000030000000500000004135D80FF0000000404548A05138670FA0CFD9C070F34D0FC07800100128A40F7078000F8128A7CF90000000107800108128A40FF022A45850000000613E200FA000000020AD3578710D100FC00000006000000030000000500000004128A7CFF00000004000000060000000600000000128A7CF700000000078000F8128A7CF90000000107800108128A40FF022A458513E1C4FA0AD3578710D100FC08C0010000000006000000080000000300000005000000020000000500000004128A7CFF0000000400000005128A40F907800108128A40FF022A4585000000060000000500000004128A7CFF00000004000000050000000100000003000000050000000200000005135D44F905000108135D44FF04548A05000000091386ACFA000000020CFD9C070F34D0FC078001000000000900000005000000030000000500000004135D80FF0000000404548A05138670FA0CFD9C070F34D0FC000000060000000300000005000000020000000500000001"
theorem small_5515443_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515443_right_root small_5515443_right_fuel small_5515443_right_count small_5515443_right_encoded = true := by
  decide +kernel
theorem small_5515443_right_covered : CoveredBy scale carrier boxes small_5515443_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515443_right_root small_5515443_right_fuel small_5515443_right_count small_5515443_right_encoded small_5515443_right_checked

theorem cover_5515443 : CoveredBy scale carrier boxes root_5515443 := by
  apply coveredBy_split_literal root_5515443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515444 small_5515443_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515444
  · exact small_5515443_right_covered
#print axioms cover_5515443

def root_5515438 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515438_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515438_right_fuel : Nat := 1
def small_5515438_right_count : Nat := 1
def small_5515438_right_encoded : String := "00000002"
theorem small_5515438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515438_right_root small_5515438_right_fuel small_5515438_right_count small_5515438_right_encoded = true := by
  decide +kernel
theorem small_5515438_right_covered : CoveredBy scale carrier boxes small_5515438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515438_right_root small_5515438_right_fuel small_5515438_right_count small_5515438_right_encoded small_5515438_right_checked

theorem cover_5515438 : CoveredBy scale carrier boxes root_5515438 := by
  apply coveredBy_split_literal root_5515438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515443 small_5515438_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515443
  · exact small_5515438_right_covered
#print axioms cover_5515438

def root_5515437 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515437_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515437_right_fuel : Nat := 26
def small_5515437_right_count : Nat := 319
def small_5515437_right_encoded : String := "12073CFA0000000208A91307120700FC05000100135D44F7050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA04548A07138670FC028001000000000A0000000A000000031386ACFC000000030280010013D7B0F7078000F8128A7CF9000000010280010813D7B0FF0AD3578510D100FA0000000A00000002000000080000000400000008128A40F900000008000000010000000013D7ECF700000000078000F8128A7CF900000001028001080000000A13D7ECFF000000040AD3578510D100FA067ECE870000000A000000050000000200000005128A40F90000000A00000001000000020F350CFA000000020000000A00000004135D80FF000000040CFD9C050F34D0FA04548A07138670FC0280010013D7B0F7078000F800000008000000080000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF0AD3578510D100FA022A45870000000800000008000000020000000800000004128A7CFF000000040AD3578510D100FA022A458700000008000000080000000200000008128A40F90000000800000001000000031386ACFC000000030280010013D7B0F7078000F8128A7CF90000000107800108128A40FF000000080000000400000008128A40F900000008000000010000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF0AD3578510D100FA067ECE8712EA58FC03C00100000000080000000500000003000000050000000200000005000000040000000500000005000000020F350CFA0000000204548A070000000800000005135D44F905000108135D44FF0CFD9C050F34D0FA0000000A000000020000000800000004135D80FF000000040CFD9C050F34D0FA04548A07000000081386ACFC0000000302800100000000080000000500000002000000080000000100000000135D80F700000000050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA04548A070000000A1386ACFC0000000307800100128A40F7078000F8128A7CF900000001028001080000000A13D7ECFF000000040AD3578510D100FA067ECE870000000A0000000500000002000000050000000A00000000128A7CF7000000000000000A000000020000000A00000004135D80FF000000040CFD9C050F34D0FA04548A07138670FC07800100128A40F7078000F8128A7CF90000000107800108128A40FF0AD3578510D100FA022A45870000000A0000000A000000020000000A00000004128A7CFF000000040AD3578510D100FA022A458713E1C4FC064001000000000912FFACF7000000000000000900000003000000050000000200000005128A40F9078001080000000A128A7CFF000000040AD3578510D100FA022A4587000000080000000500000002000000050000000100000000128A7CF700000000078000F8128A7CF900000001078001080000000A128A7CFF0000000400000005128A40F90000000A0000000100000003000000050000000200000005135D44F9050001080000000A135D80FF000000040CFD9C050F34D0FA04548A070000000A000000050000000200000005000000010000000312073CFC0000000305000100135D44F7050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA0CFD9C070F34D0FC0280010013D7B0F7078000F8128A7CF90000000100000005000000050000000000000005000000030000000500000002000000050000000400000005000000050000000000000005"
theorem small_5515437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515437_right_root small_5515437_right_fuel small_5515437_right_count small_5515437_right_encoded = true := by
  decide +kernel
theorem small_5515437_right_covered : CoveredBy scale carrier boxes small_5515437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515437_right_root small_5515437_right_fuel small_5515437_right_count small_5515437_right_encoded small_5515437_right_checked

theorem cover_5515437 : CoveredBy scale carrier boxes root_5515437 := by
  apply coveredBy_split_literal root_5515437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515438 small_5515437_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515438
  · exact small_5515437_right_covered
#print axioms cover_5515437

def root_5515432 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515432_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515432_right_fuel : Nat := 1
def small_5515432_right_count : Nat := 1
def small_5515432_right_encoded : String := "00000004"
theorem small_5515432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515432_right_root small_5515432_right_fuel small_5515432_right_count small_5515432_right_encoded = true := by
  decide +kernel
theorem small_5515432_right_covered : CoveredBy scale carrier boxes small_5515432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515432_right_root small_5515432_right_fuel small_5515432_right_count small_5515432_right_encoded small_5515432_right_checked

theorem cover_5515432 : CoveredBy scale carrier boxes root_5515432 := by
  apply coveredBy_split_literal root_5515432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515437 small_5515432_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515437
  · exact small_5515432_right_covered
#print axioms cover_5515432

def root_5515431 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5515431 : CoveredBy scale carrier boxes root_5515431 := by
  apply coveredBy_split_literal root_5515431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515432 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2072.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2072.covered
#print axioms cover_5515431

def root_5515426 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515426_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515426_right_fuel : Nat := 1
def small_5515426_right_count : Nat := 1
def small_5515426_right_encoded : String := "00000003"
theorem small_5515426_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515426_right_root small_5515426_right_fuel small_5515426_right_count small_5515426_right_encoded = true := by
  decide +kernel
theorem small_5515426_right_covered : CoveredBy scale carrier boxes small_5515426_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515426_right_root small_5515426_right_fuel small_5515426_right_count small_5515426_right_encoded small_5515426_right_checked

theorem cover_5515426 : CoveredBy scale carrier boxes root_5515426 := by
  apply coveredBy_split_literal root_5515426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515431 small_5515426_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515431
  · exact small_5515426_right_covered
#print axioms cover_5515426

def root_5515425 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515425_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515425_right_fuel : Nat := 11
def small_5515425_right_count : Nat := 37
def small_5515425_right_encoded : String := "1151E907000000030A0001081151E8FF08A91305120700FA00000005000000020000000500000004115224FF0000000408A91305120700FA08A912FF12073D080500010000000005135D80F700000000050000F8000000050000000600000004000000050000000212073CFA0000000208A912FF12073D080500010000000005135D80F700000000000000050000000400000005"
theorem small_5515425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515425_right_root small_5515425_right_fuel small_5515425_right_count small_5515425_right_encoded = true := by
  decide +kernel
theorem small_5515425_right_covered : CoveredBy scale carrier boxes small_5515425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515425_right_root small_5515425_right_fuel small_5515425_right_count small_5515425_right_encoded small_5515425_right_checked

theorem cover_5515425 : CoveredBy scale carrier boxes root_5515425 := by
  apply coveredBy_split_literal root_5515425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515426 small_5515425_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515426
  · exact small_5515425_right_covered
#print axioms cover_5515425

def root_5515420 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515420_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515420_right_fuel : Nat := 1
def small_5515420_right_count : Nat := 1
def small_5515420_right_encoded : String := "00000002"
theorem small_5515420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515420_right_root small_5515420_right_fuel small_5515420_right_count small_5515420_right_encoded = true := by
  decide +kernel
theorem small_5515420_right_covered : CoveredBy scale carrier boxes small_5515420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515420_right_root small_5515420_right_fuel small_5515420_right_count small_5515420_right_encoded small_5515420_right_checked

theorem cover_5515420 : CoveredBy scale carrier boxes root_5515420 := by
  apply coveredBy_split_literal root_5515420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515425 small_5515420_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515425
  · exact small_5515420_right_covered
#print axioms cover_5515420

def root_5515419 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515419_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515419_right_fuel : Nat := 15
def small_5515419_right_count : Nat := 61
def small_5515419_right_encoded : String := "1151E905000000020A0000FC115225070A0001081151E8FF08A91307120700FC00000005000000030000000500000004115224FF0000000408A91307120700FC08A912FF12073D080500010000000005135D80F700000000050000F800000005135D44F9050000FA00000005000000080000000100000004000000050000000312073CFC0000000308A912FF12073D080500010000000005135D80F700000000000000050000000400000005000000031151E907000000030A00010800000005115224FF0000000408A912FF12073D080500010000000005135D80F700000000050000F800000005000000060000000400000006"
theorem small_5515419_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515419_right_root small_5515419_right_fuel small_5515419_right_count small_5515419_right_encoded = true := by
  decide +kernel
theorem small_5515419_right_covered : CoveredBy scale carrier boxes small_5515419_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515419_right_root small_5515419_right_fuel small_5515419_right_count small_5515419_right_encoded small_5515419_right_checked

theorem cover_5515419 : CoveredBy scale carrier boxes root_5515419 := by
  apply coveredBy_split_literal root_5515419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515420 small_5515419_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515420
  · exact small_5515419_right_covered
#print axioms cover_5515419

def root_5515414 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515414_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515414_right_fuel : Nat := 1
def small_5515414_right_count : Nat := 1
def small_5515414_right_encoded : String := "00000001"
theorem small_5515414_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515414_right_root small_5515414_right_fuel small_5515414_right_count small_5515414_right_encoded = true := by
  decide +kernel
theorem small_5515414_right_covered : CoveredBy scale carrier boxes small_5515414_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515414_right_root small_5515414_right_fuel small_5515414_right_count small_5515414_right_encoded small_5515414_right_checked

theorem cover_5515414 : CoveredBy scale carrier boxes root_5515414 := by
  apply coveredBy_split_literal root_5515414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515419 small_5515414_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515419
  · exact small_5515414_right_covered
#print axioms cover_5515414

def root_5491220 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491220 : CoveredBy scale carrier boxes root_5491220 := by
  apply coveredBy_split_literal root_5491220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5515414 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491221
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5515414
#print axioms cover_5491220

def root_5491215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491215_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491215_right_fuel : Nat := 1
def small_5491215_right_count : Nat := 1
def small_5491215_right_encoded : String := "00000000"
theorem small_5491215_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491215_right_root small_5491215_right_fuel small_5491215_right_count small_5491215_right_encoded = true := by
  decide +kernel
theorem small_5491215_right_covered : CoveredBy scale carrier boxes small_5491215_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491215_right_root small_5491215_right_fuel small_5491215_right_count small_5491215_right_encoded small_5491215_right_checked

theorem cover_5491215 : CoveredBy scale carrier boxes root_5491215 := by
  apply coveredBy_split_literal root_5491215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491220 small_5491215_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491220
  · exact small_5491215_right_covered
#print axioms cover_5491215

def root_5538228 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5538228 : CoveredBy scale carrier boxes root_5538228 := by
  apply coveredBy_split_literal root_5538228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2073.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2074.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2073.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2074.covered
#print axioms cover_5538228

def root_5538222 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5538222_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5538222_left_fuel : Nat := 1
def small_5538222_left_count : Nat := 1
def small_5538222_left_encoded : String := "00000000"
theorem small_5538222_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5538222_left_root small_5538222_left_fuel small_5538222_left_count small_5538222_left_encoded = true := by
  decide +kernel
theorem small_5538222_left_covered : CoveredBy scale carrier boxes small_5538222_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5538222_left_root small_5538222_left_fuel small_5538222_left_count small_5538222_left_encoded small_5538222_left_checked

theorem cover_5538222 : CoveredBy scale carrier boxes root_5538222 := by
  apply coveredBy_split_literal root_5538222 small_5538222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5538228 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5538222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5538228
#print axioms cover_5538222

def root_5491214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491214 : CoveredBy scale carrier boxes root_5491214 := by
  apply coveredBy_split_literal root_5491214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5538222 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491215
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5538222
#print axioms cover_5491214

def root_5491213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491213 : CoveredBy scale carrier boxes root_5491213 := by
  apply coveredBy_split_literal root_5491213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491214 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2075.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2075.covered
#print axioms cover_5491213

def root_5473381 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5473381 : CoveredBy scale carrier boxes root_5473381 := by
  apply coveredBy_split_literal root_5473381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5473382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5491213 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5473382
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5491213
#print axioms cover_5473381

def root_5400063 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5400063 : CoveredBy scale carrier boxes root_5400063 := by
  apply coveredBy_split_literal root_5400063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.root_5400064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5473381 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0136.cover_5400064
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5473381
#print axioms cover_5400063

def root_5548310 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548310_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548310_right_fuel : Nat := 22
def small_5548310_right_count : Nat := 315
def small_5548310_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E9090000000408A912F712073D0008A912F900000009120700F8000000050000000100000000120701000000000008A912F900000008120700F800000005000000011152250908A912F712073D0008A912F912073CF80000000108A913091207010800000004050000FA135D810505000106135D44FD0CFD9BF70F350D000CFD9BF9000000090F34D0F80000000900000001000000000F34D100000000000CFD9BF90F350CF80000000104548A09000000081386AD0800000008000000040F34D0F8000000060000000100000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000CFD9BF9000000080000000A00000002135D45050000000205000106135D44FD0CFD9BF70F350D000CFD9BF9000000090F34D0F80000000900000001000000000F34D100000000000CFD9BF9000000080000000800000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000000000812073D08050000FA135D810505000106135D44FD0CFD9BF7000000090F34D100000000000CFD9BF9000000090F34D0F80000000500000001000000030000000900000002135D45050000000205000106135D44FD0CFD9BF7000000090F34D100000000000CFD9BF90000000800000008000000030000000900000004120700F808A913091207010800000004050000FA135D810505000106135D44FD0CFD9BF70F350D0000000005000000000000000500000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000000000600000002135D45050000000205000106135D44FD0CFD9BF70F350D0000000009000000000000000800000003135D80FD000000030CFD9BF7000000090000000812073D08050000FA00000005135D450500000002050001060000000500000009000000040000000100000000120701000000000008A912F912073CF80000000108A913091207010800000004050000FA135D8105050001060000000800000008000000020000000812073D08050000FA135D8105050001060000000800000008000000020000000800000004120700F808A913090000000812073D080000000800000004000000010000000400000003115224FD000000030A0001081151E90900000004000000091152250908A912F712073D0008A912F912073CF80000000108A912FD12073D0608A913091207010800000004050000FA135D81050CFD9BF7000000090F34D100000000000000000A00000002135D4505000000020CFD9BF7000000090F34D10000000000000000080000000900000003120701060000000300000009120700F808A912FD12073D0608A913091207010800000004050000FA135D81050CFD9BF7000000090000000800000002135D4505000000020CFD9BF7000000090000000800000009000000031207010600000003000000090000000100000000120701000000000008A912F912073CF80000000108A912FD12073D0608A913090000000812073D0800000008000000040000000300000008120700F808A912FD12073D0608A913090000000812073D08050000FA135D8105045489F7000000091386710000000000045489F9000000080000000A00000002135D450500000002045489F700000008000000080000000400000003120701060000000308A9130900000008000000090000000100000004"
theorem small_5548310_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5548310_right_root small_5548310_right_fuel small_5548310_right_count small_5548310_right_encoded = true := by
  decide +kernel
theorem small_5548310_right_covered : CoveredBy scale carrier boxes small_5548310_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5548310_right_root small_5548310_right_fuel small_5548310_right_count small_5548310_right_encoded small_5548310_right_checked

theorem cover_5548310 : CoveredBy scale carrier boxes root_5548310 := by
  apply coveredBy_split_literal root_5548310 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2078.root small_5548310_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2078.covered
  · exact small_5548310_right_covered
#print axioms cover_5548310

def root_5548304 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548304_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548304_left_fuel : Nat := 1
def small_5548304_left_count : Nat := 1
def small_5548304_left_encoded : String := "00000001"
theorem small_5548304_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5548304_left_root small_5548304_left_fuel small_5548304_left_count small_5548304_left_encoded = true := by
  decide +kernel
theorem small_5548304_left_covered : CoveredBy scale carrier boxes small_5548304_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5548304_left_root small_5548304_left_fuel small_5548304_left_count small_5548304_left_encoded small_5548304_left_checked

theorem cover_5548304 : CoveredBy scale carrier boxes root_5548304 := by
  apply coveredBy_split_literal root_5548304 small_5548304_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5548310 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5548304_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5548310
#print axioms cover_5548304

def root_5548303 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5548303 : CoveredBy scale carrier boxes root_5548303 := by
  apply coveredBy_split_literal root_5548303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5548304 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2079.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5548304
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2079.covered
#print axioms cover_5548303

def root_5548297 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548297_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5548297_left_fuel : Nat := 1
def small_5548297_left_count : Nat := 1
def small_5548297_left_encoded : String := "00000000"
theorem small_5548297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5548297_left_root small_5548297_left_fuel small_5548297_left_count small_5548297_left_encoded = true := by
  decide +kernel
theorem small_5548297_left_covered : CoveredBy scale carrier boxes small_5548297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5548297_left_root small_5548297_left_fuel small_5548297_left_count small_5548297_left_encoded small_5548297_left_checked

theorem cover_5548297 : CoveredBy scale carrier boxes root_5548297 := by
  apply coveredBy_split_literal root_5548297 small_5548297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5548303 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5548297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5548303
#print axioms cover_5548297

def root_5547767 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5547767_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5547767_left_fuel : Nat := 26
def small_5547767_left_count : Nat := 249
def small_5547767_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000091152250908A912F912073CF80000000108A91305120700FA08A91309120701080000000405000100135D44F705000106135D44FD0CFD9BF90000000900000007000000030000000700000000135D80F70000000005000106135D44FD0CFD9BF90F350CF80000000104548A05138670FA04548A09000000070000000900000002000000090F34D0F8000000070000000100000003135D80FD000000030CFD9BF90000000900000007000000090000000212073CFA0000000208A91309120701080000000405000100135D44F70000000900000000135D80F70000000005000106135D44FD0CFD9BF9000000090F34D0F80000000900000001000000030000000900000009120700F808A91305120700FA08A9130900000007000000050000000212073CFA0000000208A9130912070108000000040500010000000005135D80F7000000000500010600000005135D80FD00000003045489F9000000090000000500000005000000010000000400000003115224FD000000030A0001081151E90900000004000000091152250908A912F912073CF80000000108A91305120700FA000000090000000200000009120700F808A91305120700FA08A912FD12073D0608A9130912070108000000040500010000000007135D80F700000000045489F90000000900000007000000090000000312070106000000030000000900000002000000090000000100000004000000021151E905000000020A0001061151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A9130912070108000000040000000900000009120700F808A9130912070108000000040000000900000005000000010000000400000003000000091151E8F90A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000091152250908A91305120700FA08A91309120701080000000405000100135D44F7050000F800000009135D44F9000000090000000100000000135D80F700000000050000F8135D80F90000000105000106135D44FD04548A05138670FA04548A09138671080000000407800100128A40F70000000900000000128A7CF7000000000000000A0000000900000002000000090000000300000009135D44F905000106135D44FD0000000A000000030000000900000001000000090000000212073CFA0000000208A9130912070108000000040500010000000009135D80F700000000050000F8000000090000000A00000009000000040000000300000009000000021151E90500000002000000090000000100000000"
theorem small_5547767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5547767_left_root small_5547767_left_fuel small_5547767_left_count small_5547767_left_encoded = true := by
  decide +kernel
theorem small_5547767_left_covered : CoveredBy scale carrier boxes small_5547767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5547767_left_root small_5547767_left_fuel small_5547767_left_count small_5547767_left_encoded small_5547767_left_checked

theorem cover_5547767 : CoveredBy scale carrier boxes root_5547767 := by
  apply coveredBy_split_literal root_5547767 small_5547767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5548297 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5547767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5548297
#print axioms cover_5547767

def root_5544687 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5544687 : CoveredBy scale carrier boxes root_5544687 := by
  apply coveredBy_split_literal root_5544687 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2077.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5547767 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2077.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5547767
#print axioms cover_5544687

def root_5542871 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5542871 : CoveredBy scale carrier boxes root_5542871 := by
  apply coveredBy_split_literal root_5542871 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2076.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5544687 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2076.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5544687
#print axioms cover_5542871

def root_5555053 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5555053_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5555053_left_fuel : Nat := 22
def small_5555053_left_count : Nat := 477
def small_5555053_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115225050A0001061151E907000000030A0001081151E8FF08A912F912073CF80000000108A91305120700FA0000000500000002000000050000000500000004115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF12073D080000000500000004000000050000000212073CFA0000000208A912FF12073D08000000050000000400000005120700F80000000500000001115225070A0001081151E8FF08A912F912073CF80000000108A91305120700FA000000080000000212073CFA0000000208A9130712070106000000030000000812073D0605000100135D44F70500010800000005135D80FF000000040CFD9BF9000000090000000500000000135D80F70000000005000108135D44FF0CFD9BF9000000090000000500000004135D80FF000000040CFD9BF90F350CF800000001000000080000000800000003120700F808A91305120700FA0000000800000002000000080000000100000004115224FF0000000408A912F912073CF80000000108A91305120700FA000000080000000212073CFA0000000208A9130712070106000000030000000812073D0608A912FF12073D0805000100135D44F70CFD9BF9000000090F34D0F8000000050000000100000000135D80F7000000000CFD9BF90F350CF8000000010000000800000008000000040000000800000003120700F8000000080000000100000003000000021151E905000000020A0001061151E907000000030A00010800000005115224FF0000000408A912F912073CF80000000108A912FF12073D080500010000000005135D80F700000000050000FA00000005135D4505000000020000000700000004120701080000000400000006120700F80000000500000001115225070A0001081151E8FF08A912F912073CF80000000108A9130712070106000000030000000912073D0605000100135D44F70000000900000000135D80F700000000050000FA135D81050500010800000005135D80FF000000040CFD9BF9000000090F34D0F8000000050000000100000002135D4505000000020000000700000003120700F808A91307120701060000000300000008000000050000000100000004115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000912073D0608A912FF12073D0805000100135D44F7050000FA00000009135D4505000000020000000900000000135D80F700000000050000FA135D81050CFD9BF9000000090F34D0F8000000080000000100000002135D4505000000020CFD9BF9000000090F34D0F80000000700000001000000040000000900000003120700F808A9130712070106000000030000000812073D0608A912FF12073D0805000100000000050000000700000004000000080000000300000001000000031151E8F90A0000FA115225050A0001061151E907000000030A0001081151E8FF08A91305120700FA0500010000000009000000090000000212073CFA000000020500010000000005135D80F700000000050000F8000000050000000900000004115224FF0000000408A91305120700FA08A912FF12073D0805000100135D44F7050000F8135D80F9000000010500010600000005000000060000000600000000135D80F700000000050000F8135D80F900000001000000080000000600000004000000060000000212073CFA0000000208A912FF12073D0805000100135D44F70000000600000000135D80F700000000050000F8135D80F9000000010500010600000005135D81070CFD9C050F34D0FA00000005000000020F350CFA000000020000000600000003000000060000000400000006115225070A0001081151E8FF08A91305120700FA08A9130700000008000000090000000212073CFA0000000208A9130712070106000000030000000912073D060500010000000009000000090000000300000004115224FF0000000408A91305120700FA08A9130712070106000000030000000812073D0608A912FF12073D0805000100135D44F70000000800000000000000080000000400000008000000030000000212073CFA0000000208A9130712070106000000030000000912073D0608A912FF12073D0805000100135D44F7050000F8000000090000000900000000135D80F700000000050000F8135D80F9000000010CFD9C050000000800000009135D44F90CFD9C050F34D0FA0000000800000002000000090000000100000004000000090000000300000003000000021151E905000000020A0001061151E907000000030A0001081151E8FF0500010000000006135D80F700000000050000F800000006000000060000000400000006115225070A0001081151E8FF08A9130712070106000000030000000912073D060500010000000009000000090000000300000004115224FF0000000408A9130712070106000000030000000912073D0608A912FF12073D0805000100135D44F70000000900000000135D80F700000000050000F8135D80F900000001050000FA00000009135D45050000000200000006135D44F90000000600000001000000040000000600000003000000030000000100000000"
theorem small_5555053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5555053_left_root small_5555053_left_fuel small_5555053_left_count small_5555053_left_encoded = true := by
  decide +kernel
theorem small_5555053_left_covered : CoveredBy scale carrier boxes small_5555053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5555053_left_root small_5555053_left_fuel small_5555053_left_count small_5555053_left_encoded small_5555053_left_checked

theorem cover_5555053 : CoveredBy scale carrier boxes root_5555053 := by
  apply coveredBy_split_literal root_5555053 small_5555053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2081.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5555053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2081.covered
#print axioms cover_5555053

def root_5555052 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5555052 : CoveredBy scale carrier boxes root_5555052 := by
  apply coveredBy_split_literal root_5555052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5555053 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2082.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5555053
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2082.covered
#print axioms cover_5555052

def root_5553228 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5553228 : CoveredBy scale carrier boxes root_5553228 := by
  apply coveredBy_split_literal root_5553228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2080.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5555052 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2080.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5555052
#print axioms cover_5553228

def root_5542870 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5542870 : CoveredBy scale carrier boxes root_5542870 := by
  apply coveredBy_split_literal root_5542870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5542871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5553228 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5542871
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5553228
#print axioms cover_5542870

def root_5400062 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5400062 : CoveredBy scale carrier boxes root_5400062 := by
  apply coveredBy_split_literal root_5400062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5400063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5542870 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5400063
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5542870
#print axioms cover_5400062

def root_5076040 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076040 : CoveredBy scale carrier boxes root_5076040 := by
  apply coveredBy_split_literal root_5076040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5076041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5400062 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5076041
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5400062
#print axioms cover_5076040

def root_5561894 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561894 : CoveredBy scale carrier boxes root_5561894 := by
  apply coveredBy_split_literal root_5561894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2083.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2084.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2083.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2084.covered
#print axioms cover_5561894

def root_5561893 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561893 : CoveredBy scale carrier boxes root_5561893 := by
  apply coveredBy_split_literal root_5561893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5561894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2085.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5561894
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2085.covered
#print axioms cover_5561893

def root_5561892 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561892 : CoveredBy scale carrier boxes root_5561892 := by
  apply coveredBy_split_literal root_5561892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5561893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2086.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5561893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2086.covered
#print axioms cover_5561892

def root_5570198 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5570198 : CoveredBy scale carrier boxes root_5570198 := by
  apply coveredBy_split_literal root_5570198 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2087.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2088.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2087.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2088.covered
#print axioms cover_5570198

def root_5574882 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5574882_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5574882_left_fuel : Nat := 21
def small_5574882_left_count : Nat := 255
def small_5574882_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF08A912F912073CF80000000108A913070000000500000006120700F808A91307000000070000000A0000000100000004115224FF0000000408A912F912073CF80000000108A9130700000009000000060000000A000000031151E907000000030A000108000000060000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A912F912073CF80000000108A912FB12073D0408A913070000000912073CFC000000030500010000000006135D80F70000000005000108135D44FF0CFD9BF90000000600000009000000040000000600000002120701040000000200000009120700F8000000090000000100000004115224FF0000000408A912F912073CF80000000108A912FB12073D0408A913070000000912073CFC000000030000000600000002120701040000000208A91307120700FC000000090000000300000009120700F808A912FB12073D040000000900000002120701040000000208A91307120700FC0000000A000000030000000900000001000000031151E907000000030A0001081151E8FF08A912F900000006120700F808A912FB00000006000000090000000100000004115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FF000000061207010800000004000000060000000200000006120700F800000006000000011151E8F90A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000400000006000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A912FF0000000612070108000000040000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073D0408A91307000000050000000600000002120701040000000208A91307000000090000000800000004115224FF0000000408A912FB12073D0408A91307120700FC000000060000000312073CFC0000000308A912FF0000000612070108000000040000000900000002120701040000000208A913070000000912073CFC0000000308A912FF0000000600000009000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A912FB12073D0408A912FF12073D0805000100135D44F7050000F800000006135D44F90000000600000001000000000000000600000004120701080000000405000100135D44F70000000A00000000135D80F700000000050000F800000006135D44F9050000FC00000006000000050000000100000002120701040000000208A912FF0000000612070108000000040500010000000009000000060000000100000000"
theorem small_5574882_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5574882_left_root small_5574882_left_fuel small_5574882_left_count small_5574882_left_encoded = true := by
  decide +kernel
theorem small_5574882_left_covered : CoveredBy scale carrier boxes small_5574882_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5574882_left_root small_5574882_left_fuel small_5574882_left_count small_5574882_left_encoded small_5574882_left_checked

theorem cover_5574882 : CoveredBy scale carrier boxes root_5574882 := by
  apply coveredBy_split_literal root_5574882 small_5574882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2089.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5574882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2089.covered
#print axioms cover_5574882

def root_5574881 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5574881 : CoveredBy scale carrier boxes root_5574881 := by
  apply coveredBy_split_literal root_5574881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5574882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2090.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5574882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2090.covered
#print axioms cover_5574881

def root_5570197 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5570197 : CoveredBy scale carrier boxes root_5570197 := by
  apply coveredBy_split_literal root_5570197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5570198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5574881 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5570198
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5574881
#print axioms cover_5570197

def root_5561891 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561891 : CoveredBy scale carrier boxes root_5561891 := by
  apply coveredBy_split_literal root_5561891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5561892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5570197 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5561892
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5570197
#print axioms cover_5561891

def root_5580504 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580504 : CoveredBy scale carrier boxes root_5580504 := by
  apply coveredBy_split_literal root_5580504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2091.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2092.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2091.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2092.covered
#print axioms cover_5580504

def root_5580498 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580498_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580498_left_fuel : Nat := 1
def small_5580498_left_count : Nat := 1
def small_5580498_left_encoded : String := "00000002"
theorem small_5580498_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580498_left_root small_5580498_left_fuel small_5580498_left_count small_5580498_left_encoded = true := by
  decide +kernel
theorem small_5580498_left_covered : CoveredBy scale carrier boxes small_5580498_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580498_left_root small_5580498_left_fuel small_5580498_left_count small_5580498_left_encoded small_5580498_left_checked

theorem cover_5580498 : CoveredBy scale carrier boxes root_5580498 := by
  apply coveredBy_split_literal root_5580498 small_5580498_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5580504 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5580498_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5580504
#print axioms cover_5580498

def root_5580188 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580188_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580188_left_fuel : Nat := 22
def small_5580188_left_count : Nat := 149
def small_5580188_left_encoded : String := "1151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FD00000005120701060000000308A912FF0000000500000006120700F808A912FD12073D0608A912FF00000005120700FE05000100135D44F705000104135D44FB045489F900000005138670F80CFD9BFD00000005000000060000000100000002135D80FB00000002045489F9000000050000000600000000135D80F70000000005000104135D44FB045489F900000005138670F80CFD9BFD000000050F34D10600000003045489FF00000005000000060000000100000002135D80FB00000002045489F91386ACF8000000010CFD9BFD0000000500000006138670F80CFD9BFD0F350D06045489FF0000000500000006000000030F34D1060000000300000006000000010000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F705000104135D44FB045489F900000005138670F8045489FD00000005000000060000000100000002135D80FB00000002045489F9000000050000000600000000135D80F70000000005000104135D44FB045489F900000005138670F8045489FD0000000513867106000000030CFD9BFF00000005000000060000000100000002135D80FB00000002045489F91386ACF800000001045489FD0000000500000006138670F8045489FD1386AD060CFD9BFF000000050F34D0FE00000006000000040000000313867106000000030000000600000001120700FE0000000600000004000000011151E8FF000000050000000400000002"
theorem small_5580188_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580188_left_root small_5580188_left_fuel small_5580188_left_count small_5580188_left_encoded = true := by
  decide +kernel
theorem small_5580188_left_covered : CoveredBy scale carrier boxes small_5580188_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580188_left_root small_5580188_left_fuel small_5580188_left_count small_5580188_left_encoded small_5580188_left_checked

theorem cover_5580188 : CoveredBy scale carrier boxes root_5580188 := by
  apply coveredBy_split_literal root_5580188 small_5580188_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5580498 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5580188_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5580498
#print axioms cover_5580188

def root_5580182 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580182_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580182_left_fuel : Nat := 1
def small_5580182_left_count : Nat := 1
def small_5580182_left_encoded : String := "00000001"
theorem small_5580182_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580182_left_root small_5580182_left_fuel small_5580182_left_count small_5580182_left_encoded = true := by
  decide +kernel
theorem small_5580182_left_covered : CoveredBy scale carrier boxes small_5580182_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580182_left_root small_5580182_left_fuel small_5580182_left_count small_5580182_left_encoded small_5580182_left_checked

theorem cover_5580182 : CoveredBy scale carrier boxes root_5580182 := by
  apply coveredBy_split_literal root_5580182 small_5580182_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5580188 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5580182_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5580188
#print axioms cover_5580182

def root_5580181 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580181_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580181_right_fuel : Nat := 15
def small_5580181_right_count : Nat := 41
def small_5580181_right_encoded : String := "1151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD000000050000000600000002120701040000000208A912FD12073D0608A912FF00000005120700FE05000100000000060000000500000004000000031207010600000003000000061151E8FF000000050000000400000001"
theorem small_5580181_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580181_right_root small_5580181_right_fuel small_5580181_right_count small_5580181_right_encoded = true := by
  decide +kernel
theorem small_5580181_right_covered : CoveredBy scale carrier boxes small_5580181_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580181_right_root small_5580181_right_fuel small_5580181_right_count small_5580181_right_encoded small_5580181_right_checked

theorem cover_5580181 : CoveredBy scale carrier boxes root_5580181 := by
  apply coveredBy_split_literal root_5580181 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5580182 small_5580181_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5580182
  · exact small_5580181_right_covered
#print axioms cover_5580181

def root_5580176 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580176_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580176_right_fuel : Nat := 1
def small_5580176_right_count : Nat := 1
def small_5580176_right_encoded : String := "00000000"
theorem small_5580176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580176_right_root small_5580176_right_fuel small_5580176_right_count small_5580176_right_encoded = true := by
  decide +kernel
theorem small_5580176_right_covered : CoveredBy scale carrier boxes small_5580176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580176_right_root small_5580176_right_fuel small_5580176_right_count small_5580176_right_encoded small_5580176_right_checked

theorem cover_5580176 : CoveredBy scale carrier boxes root_5580176 := by
  apply coveredBy_split_literal root_5580176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5580181 small_5580176_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5580181
  · exact small_5580176_right_covered
#print axioms cover_5580176

def root_5597076 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5597076_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5597076_right_fuel : Nat := 1
def small_5597076_right_count : Nat := 1
def small_5597076_right_encoded : String := "00000004"
theorem small_5597076_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5597076_right_root small_5597076_right_fuel small_5597076_right_count small_5597076_right_encoded = true := by
  decide +kernel
theorem small_5597076_right_covered : CoveredBy scale carrier boxes small_5597076_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5597076_right_root small_5597076_right_fuel small_5597076_right_count small_5597076_right_encoded small_5597076_right_checked

theorem cover_5597076 : CoveredBy scale carrier boxes root_5597076 := by
  apply coveredBy_split_literal root_5597076 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2098.root small_5597076_right_root coord4 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2098.covered
  · exact small_5597076_right_covered
#print axioms cover_5597076

def root_5596590 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596590_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596590_left_fuel : Nat := 19
def small_5596590_left_count : Nat := 229
def small_5596590_left_encoded : String := "12EA94FE000000040DE7CA000E5FD8F70DE7CA060E5FD8FD0569AC39134110F8000000010115233B0000000513F85904000000020793F0BF00000005128220FE0D4128800EFA10F7000000050000000000000005000000041340D4F80115233B13F895040793F0BF00000005128220FE0D4128800EFA10F7000000050000000000000009000000040000000213F85904000000020793F0BF12825CFE000000040D4128800EFA10F7000000050000000000000005128220FE0D4128800EFA10F70D4128860EFA10FD00000008000000030EFA4CFD0000000300000007000000000EFA4CF7000000000D412886000000090EFA4CFD0000000304DF1B191365F0F80000000100000005000000090000000400000001000000030E6014FD000000030569AC39134110F8000000010115233B0000000513F85904000000020793F0BF00000005128220FE0DAED87D0E9661060D4128800EFA10F7000000050000000000000005000000030E962506000000030D4128800000000A00000005000000041340D4F80115233B13F895040793F0BF00000005128220FE0DAED87D0E9661060D4128800000000700000005000000030E9625060000000300000007000000040000000213F85904000000020793F0BF0000000A128220FE0DAED87D0E9661060D412880000000070EFA4CF70000000004DF1B191365F0F800000001008A921B000000050000000A00000007000000030E96250600000003000000070000000400000001000000000E6014F7000000000DE7CA060E5FD8FD0569AC39134110F8000000010115233B0000000513F85904000000020793F0BF00000005128220FE0DAED8770E9661000D412886000000090000000500000000000000090000000400000009000000030E6014FD000000030569AC39134110F8000000010115233B13F895040793F0BF00000005128220FE0DAED8770000000500000009000000040000000213F85904000000020793F0BF12825CFE0000000400000005128220FE0DAED8770E9661000DAED87D000000050E9625060000000300000005000000000E962500000000000DAED87D000000050E9625060000000305F43D590000000500000009000000041340D4F80115233B0000000913F85904000000020793F0BF00000009128220FE0DAED8770E9661000DAED87D0E96610604DF1B191365F0F8000000010000000900000009000000030E962506000000030000000A000000000E96250000000000000000090000000400000001"
theorem small_5596590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5596590_left_root small_5596590_left_fuel small_5596590_left_count small_5596590_left_encoded = true := by
  decide +kernel
theorem small_5596590_left_covered : CoveredBy scale carrier boxes small_5596590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5596590_left_root small_5596590_left_fuel small_5596590_left_count small_5596590_left_encoded small_5596590_left_checked

theorem cover_5596590 : CoveredBy scale carrier boxes root_5596590 := by
  apply coveredBy_split_literal root_5596590 small_5596590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5597076 coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_5596590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5597076
#print axioms cover_5596590

def root_5596584 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596584_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596584_left_fuel : Nat := 1
def small_5596584_left_count : Nat := 1
def small_5596584_left_encoded : String := "00000002"
theorem small_5596584_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5596584_left_root small_5596584_left_fuel small_5596584_left_count small_5596584_left_encoded = true := by
  decide +kernel
theorem small_5596584_left_covered : CoveredBy scale carrier boxes small_5596584_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5596584_left_root small_5596584_left_fuel small_5596584_left_count small_5596584_left_encoded small_5596584_left_checked

theorem cover_5596584 : CoveredBy scale carrier boxes root_5596584 := by
  apply coveredBy_split_literal root_5596584 small_5596584_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5596590 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5596584_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5596590
#print axioms cover_5596584

def root_5595908 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5595908_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5595908_left_fuel : Nat := 28
def small_5595908_left_count : Nat := 319
def small_5595908_left_encoded : String := "13E20104067ECE7F12EA94FE000000040DE7CA000E5FD8F70DE7CA060E5FD8FD00000005000000030E6014FD000000030569AC39000000051340D4F8033F67BB0000000513BBF504000000020000000500000001000000000E6014F7000000000DE7CA06000000090E6014FD000000030000000912EA58FE0DE7CA000E5FD8F70DE7CA060E5FD8FD0569AC39134110F800000001033F67BB0000000513BBF504000000020569AC3F000000051340D4FE0D412880000000060EFA4CF7000000000D4128860EFA10FD000000050000000300000005000000041340D4F8033F67BB13BC31040569AC3F000000051340D4FE0D4128800EFA10F70D4128860EFA10FD000000050000000300000006000000000EFA4CF70000000000000009000000040000000213BBF504000000020569AC3F134110FE000000040D4128800EFA10F70D4128860000000900000005000000000EFA4CF700000000000000091340D4FE0D4128800EFA10F70D4128860EFA10FD04DF1B191365F0F80000000102B4D69B0000000513D0D1040000000204DF1B1F00000005000000061365B4F802B4D69B13D10D0404DF1B1F00000005000000060000000213D0D1040000000204DF1B1F000000091365B4FE0CEDD7C00F422CF700000007000000000F4268F7000000000CEDD7C6000000090F4268FD00000003000000060000000400000001000000030EFA4CFD0000000304DF1B19000000061365B4F802B4D69B0000000613D0D1040000000204DF1B1F000000070000000600000001000000000EFA4CF7000000000D4128860EFA10FD04DF1B191365F0F80000000102B4D69B0000000513D0D104000000020000000900000009000000030EFA4CFD0000000304DF1B191365F0F80000000102B4D69B0000000613D0D1040000000204DF1B1F00000005000000061365B4F802B4D69B0000000913D0D1040000000204DF1B1F000000091365B4FE0D947940000000060000000900000004000000010000000400000001000000030E6014FD000000030569AC39134110F800000001000000061340D4F8033F67BB0000000613BBF504000000020569AC3F134110FE000000040DAED87D0E9661060D412880000000060EFA4CF70000000004DF1B190000000500000009000000030E96250600000003000000060000000600000001000000000E6014F7000000000DE7CA060E5FD8FD0569AC39134110F800000001033F67BB0000000913BBF504000000020569AC3F000000091340D4FE0DAED8770E9661000D412886000000090EFA4CFD0000000305F43D59000000051317BCF802B4D69B0000000513D0D104000000020000000900000001000000000E9625000000000000000009000000041340D4F8033F67BB0000000913BBF504000000020569AC3F000000091340D4FE000000090000000400000001000000030E6014FD000000030569AC39134110F800000001033F67BB0000000613BBF504000000020569AC3F134110FE000000040DAED877000000050E9625000000000000000005000000061340D4F8033F67BB13BC31040569AC3F000000091340D4FE0DAED8770E966100000000060000000000000008000000040000000213BBF504000000020569AC3F134110FE00000004000000091340D4FE0DAED8770E9661000DAED87D0E96610604DF1B1900000006000000090000000300000006000000000E962500000000000DAED87D0E96610600000008000000030000000800000004000000010000000400000002"
theorem small_5595908_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5595908_left_root small_5595908_left_fuel small_5595908_left_count small_5595908_left_encoded = true := by
  decide +kernel
theorem small_5595908_left_covered : CoveredBy scale carrier boxes small_5595908_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5595908_left_root small_5595908_left_fuel small_5595908_left_count small_5595908_left_encoded small_5595908_left_checked

theorem cover_5595908 : CoveredBy scale carrier boxes root_5595908 := by
  apply coveredBy_split_literal root_5595908 small_5595908_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5596584 coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_5595908_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5596584
#print axioms cover_5595908

def root_5595903 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5595903_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5595903_right_fuel : Nat := 1
def small_5595903_right_count : Nat := 1
def small_5595903_right_encoded : String := "00000001"
theorem small_5595903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5595903_right_root small_5595903_right_fuel small_5595903_right_count small_5595903_right_encoded = true := by
  decide +kernel
theorem small_5595903_right_covered : CoveredBy scale carrier boxes small_5595903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5595903_right_root small_5595903_right_fuel small_5595903_right_count small_5595903_right_encoded small_5595903_right_checked

theorem cover_5595903 : CoveredBy scale carrier boxes root_5595903 := by
  apply coveredBy_split_literal root_5595903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5595908 small_5595903_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5595908
  · exact small_5595903_right_covered
#print axioms cover_5595903

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137

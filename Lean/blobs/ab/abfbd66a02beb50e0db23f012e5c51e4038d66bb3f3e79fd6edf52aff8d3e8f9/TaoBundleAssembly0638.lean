import TaoBundleAssembly0626
import TaoBundleAssembly0631
import TaoBundleAssembly0633
import TaoBundleAssembly0636
import TaoBundleAssembly0637
import TaoBundleChunkBatch0875
import TaoBundleChunkBatch0876
import TaoBundleChunkBatch0877
import TaoBundleChunkBatch0878
import TaoBundleChunkBatch0879
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638
def root_9315197 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315197_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315197_right_fuel : Nat := 24
def small_9315197_right_count : Nat := 317
def small_9315197_right_encoded : String := "120701080000000405000100135D450100000000050000FA135D80FB0000000205000106135D4507000000030CFD9BF90F350D02045489FF1386AD080C9A87020F8750F900000009000000010F878CF900000001028001000000000913D7ED01078000FA128A7CFB0000000202800106000000070000000900000009000000000000000400000009000000010F34D10200000001045489FF1386AD080280010013D7B10100000000078000FA128A7CFB000000020280010613D7B107000000030AD35779000000070000000813D7ED070000000800000003128A40FB0280010613D7B107000000030AD3577910D13D02000000090000000110D1010200000001067ECE7F12EA95080140010000000009000000080000000400000007000000090000000213D7ED01078000FA128A7CFB00000002028001060000000800000008128A40FB0280010613D7B107000000030AD3577910D13D02067ECE7F12EA950803C00100000000070000000500000004000000070000000110D101020000000100000005000000050000000200000000000000041386710800000004028001000000000800000008135D81070CFD9BF90F350D0200000009000000010F34D10200000001045489FF1386AD08028001000000000900000005000000040000000800000003135D44FB05000106135D4507000000030CFD9BF90F350D02045489FF1386AD080C9A8702000000090F878CF900000001028001000000000913D7ED01028000FA0000000900000005000000000000000400000009000000010F34D10200000001045489FF1386AD080280010013D7B10100000000028000FA13D7ECFB000000020280010613D7B107000000030AD357790000000910D10102000000010000000500000005000000050000000500000004138671080000000400000005135D81070CFD9BF90F350D0200000009000000010F34D10200000001000000050000000300000002135D8101050000FA135D80FB0000000205000106135D4507000000030CFD9BF90F350D02045489FF1386AD080C9A87020F8750F907800100128A410100000000078000FA128A7CFB000000020000000700000009128A7D01078000FA000000070000000A00000000000000010F878CF90000000107800100128A410100000000078000FA128A7CFB00000002028001060000000713D7ED07067ECE7F12EA95080DE7CA020E5FD8F9000000070000000100000005000000040000000700000003128A40FB0280010613D7B10700000003067ECE7F12EA95080000000700000004000000070000000500000002128A7D01078000FA128A7CFB0000000202800106000000070000000500000005000000000000000413867108000000040C9A87020F8750F900000007000000010F878CF900000001078001000000000700000005000000010F34D10200000001045489FF1386AD0807800100128A410100000000078000FA0000000800000005000000050000000400000008135D81070CFD9BF90F350D02045489FF1386AD080C9A87020F8750F9078001000000000900000005000000010000000500000004138671080000000400000005000000010F34D102000000010000000500000003135D44FB05000106135D4507000000030CFD9BF90F350D02045489FF1386AD080C9A87020F8750F90000000A000000010000000500000004138671080000000400000005000000010F34D1020000000100000005000000050000000200000000"
theorem small_9315197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315197_right_root small_9315197_right_fuel small_9315197_right_count small_9315197_right_encoded = true := by
  decide +kernel
theorem small_9315197_right_covered : CoveredBy scale carrier boxes small_9315197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315197_right_root small_9315197_right_fuel small_9315197_right_count small_9315197_right_encoded small_9315197_right_checked

theorem cover_9315197 : CoveredBy scale carrier boxes root_9315197 := by
  apply coveredBy_split_literal root_9315197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315198 small_9315197_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315198
  · exact small_9315197_right_covered
#print axioms cover_9315197

def root_9315192 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315192_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315192_right_fuel : Nat := 1
def small_9315192_right_count : Nat := 1
def small_9315192_right_encoded : String := "00000001"
theorem small_9315192_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315192_right_root small_9315192_right_fuel small_9315192_right_count small_9315192_right_encoded = true := by
  decide +kernel
theorem small_9315192_right_covered : CoveredBy scale carrier boxes small_9315192_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315192_right_root small_9315192_right_fuel small_9315192_right_count small_9315192_right_encoded small_9315192_right_checked

theorem cover_9315192 : CoveredBy scale carrier boxes root_9315192 := by
  apply coveredBy_split_literal root_9315192 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9315197 small_9315192_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9315197
  · exact small_9315192_right_covered
#print axioms cover_9315192

def root_9315191 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315191_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315191_right_fuel : Nat := 26
def small_9315191_right_count : Nat := 379
def small_9315191_right_encoded : String := "120701020000000108A912FF12073D0805000100135D450100000000050000FA135D80FB0000000205000106135D450700000003045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF00000006000000040F878CFF000000040280010013D7B10100000000078000FA128A7CFB000000020000000A128A40FB028001060000000613D7ED0700000006000000030000000213D7ED01078000FA000000060000000600000000000000040F34D108000000040280010013D7B10100000000078000FA128A7CFB000000020280010613D7B10700000003067ECE7912EA95020AD3577F0000000A0000000800000001000000060000000A128A40FB0280010613D7B10700000003067ECE7912EA95020AD3577F10D13D08000000060000000410D1010800000004014001000000000A00000006000000010000000613D7ED07067ECE7912EA95020AD3577F10D13D08014001000000000A000000050000000410D101080000000400000005000000010000000A000000030000000213D7ED01078000FA128A7CFB00000002028001060000000800000008128A40FB02800106000000060000000500000002000000000000000113867102000000010CFD9BFF0F350D0800000006000000040F34D10800000004028001000000000800000006135D8107045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF0280010013D7B10100000000078000FA0000000A128A40FB07800106128A41070000000300000006000000070000000213D7ED01078000FA128A7CFB0000000207800106000000060000000A128A40FB0780010600000006000000050000000200000000000000040F878CFF000000040280010013D7B10100000000078000FA0000000A128A40FB07800106128A410700000003067ECE7912EA95020000000A000000010000000A000000050000000213D7ED01078000FA128A7CFB0000000207800106128A410700000003067ECE7912EA95020DE7CA080E5FD8FF0000000600000004000000050000000100000006000000050000000500000000000000040F34D108000000040280010013D7B10100000000078000FA0000000800000005000000050000000113867102000000010CFD9BFF0F350D080C9A87080F8750FF00000006000000040F878CFF00000004028001000000000A00000005000000040F34D108000000040000000500000003135D44FB05000106135D450700000003045489F91386AD020CFD9BFF0F350D080C9A8708000000060F878CFF000000040280010013D7B10100000000028000FA000000060000000600000006000000040F34D108000000040280010013D7B10100000000028000FA13D7ECFB000000020280010613D7B10700000003067ECE7912EA95020AD3577F0000000610D10108000000040000000500000001000000060000000500000005000000050000000113867102000000010CFD9BFF0000000600000006135D8107045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF000000070000000400000005000000040F34D1080000000400000005000000011386710200000001000000050000000300000002135D8101050000FA135D80FB0000000205000106135D450700000003045489F91386AD020CFD9BFF0F350D0800000006000000040F34D1080000000407800100128A410100000000078000FA00000008000000050000000500000001138671020000000100000006135D8107045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF07800100128A410100000000078000FA128A7CFB0000000207800106000000060000000500000005000000050000000400000005000000040F34D10800000004000000050000000113867102000000010000000500000003135D44FB05000106135D450700000003045489F91386AD020CFD9BFF0F350D0800000006000000040F34D1080000000400000005000000010000000600000005000000020000000000000004120701080000000405000100135D450100000000050000FA135D80FB0000000205000106135D450700000003045489F90000000800000008000000050000000500000005"
theorem small_9315191_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315191_right_root small_9315191_right_fuel small_9315191_right_count small_9315191_right_encoded = true := by
  decide +kernel
theorem small_9315191_right_covered : CoveredBy scale carrier boxes small_9315191_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315191_right_root small_9315191_right_fuel small_9315191_right_count small_9315191_right_encoded small_9315191_right_checked

theorem cover_9315191 : CoveredBy scale carrier boxes root_9315191 := by
  apply coveredBy_split_literal root_9315191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9315192 small_9315191_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9315192
  · exact small_9315191_right_covered
#print axioms cover_9315191

def root_9315185 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315185_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315185_left_fuel : Nat := 1
def small_9315185_left_count : Nat := 1
def small_9315185_left_encoded : String := "00000004"
theorem small_9315185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315185_left_root small_9315185_left_fuel small_9315185_left_count small_9315185_left_encoded = true := by
  decide +kernel
theorem small_9315185_left_covered : CoveredBy scale carrier boxes small_9315185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315185_left_root small_9315185_left_fuel small_9315185_left_count small_9315185_left_encoded small_9315185_left_checked

theorem cover_9315185 : CoveredBy scale carrier boxes root_9315185 := by
  apply coveredBy_split_literal root_9315185 small_9315185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9315191 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9315185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9315191
#print axioms cover_9315185

def root_9314341 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9314341_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9314341_left_fuel : Nat := 26
def small_9314341_left_count : Nat := 399
def small_9314341_left_encoded : String := "1151E8FF08A912F912073D0205000100135D450100000000050000FA135D80FB0000000205000106135D4507000000030500010800000008135D80FF000000040CFD9BF9000000080F34D102000000010280010013D7B10100000000078000FA128A7CFB00000002028001060000000513D7ED070780010800000005128A7CFF000000040AD357790000000800000005000000030000000613D7ED01078000FA128A7CFB00000002000000060000000600000000135D810705000108135D44FF0CFD9BF9000000080F34D102000000010280010013D7B10100000000078000FA128A7CFB000000020780010600000005000000070000000713D7ED01078000FA128A7CFB0000000200000006000000060000000000000004135D80FF000000040CFD9BF90F350D020C9A8702000000080F878CF900000001028001000000000813D7ED01078000FA128A7CFB000000020780010600000008000000070000000800000000000000010F34D102000000010280010013D7B10100000000078000FA128A7CFB0000000207800106128A41070000000307800108128A40FF0000000700000004128A7CFF000000040AD3577910D13D02000000070000000100000007128A7D070000000700000003128A40FB07800106128A41070000000300000007000000070000000213D7ED01078000FA128A7CFB0000000207800106128A4107000000030780010800000006128A7CFF000000040AD3577910D13D02000000070000000100000006128A7D0707800108000000070000000700000003128A40FB07800106128A4107000000030000000700000007000000020000000000000003135D44FB0500010600000008135D81070500010800000008135D80FF000000040CFD9BF900000008000000070000000300000002135D8101050000FA135D80FB0000000205000106135D45070000000305000108135D44FF0CFD9BF9000000080000000600000004135D80FF000000040CFD9BF90F350D020C9A8702000000080F878CF9000000010780010000000008128A7D010000000900000000000000010F34D1020000000100000006135D810705000108135D44FF0CFD9BF90F350D020C9A8702000000080F878CF900000001078001000000000700000009000000010F34D102000000010000000600000004135D80FF000000040CFD9BF90F350D020C9A87020F8750F907800100128A41010000000000000008128A7D01078000FA128A7CFB0000000207800106128A41070000000300000008000000070000000800000000000000010F878CF90000000107800100128A410100000000078000FA128A7CFB0000000207800106128A4107000000030780010800000008128A7CFF000000040DE7CA02000000070E6014F9000000010000000700000007128A40FB07800106000000080000000700000002128A7D01078000FA128A7CFB0000000207800106128A4107000000030000000900000007128A40FB000000070000000200000000000000010F34D1020000000107800100128A410100000000078000FA128A7CFB0000000207800106128A4107000000030780010800000006128A7CFF000000040AD357790000000900000006128A7D070000000700000003128A40FB07800106128A410700000003000000060000000700000002128A7D01078000FA128A7CFB00000002078001060000000600000007128A40FB078001060000000600000007000000020000000000000003135D44FB05000106135D4507000000030500010800000006135D80FF000000040CFD9BF9000000080F34D1020000000100000006135D810705000108135D44FF0000000700000004135D80FF000000040CFD9BF90F350D020C9A8702000000070F878CF90000000100000007000000010000000700000003000000020000000000000001120701020000000105000100135D450100000000050000FA135D80FB000000020500010600000006135D81070500010800000006135D80FF00000004045489F91386AD020280010013D7B10100000000078000FA0000000A0000000713D7ED01078000FA128A7CFB00000002000000060000000600000000000000010000000600000003135D44FB0500010600000006135D81070500010800000006000000070000000300000002135D8101050000FA135D80FB0000000200000006000000060000000000000004"
theorem small_9314341_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9314341_left_root small_9314341_left_fuel small_9314341_left_count small_9314341_left_encoded = true := by
  decide +kernel
theorem small_9314341_left_covered : CoveredBy scale carrier boxes small_9314341_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9314341_left_root small_9314341_left_fuel small_9314341_left_count small_9314341_left_encoded small_9314341_left_checked

theorem cover_9314341 : CoveredBy scale carrier boxes root_9314341 := by
  apply coveredBy_split_literal root_9314341 small_9314341_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9315185 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9314341_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9315185
#print axioms cover_9314341

def root_9314335 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9314335_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9314335_left_fuel : Nat := 1
def small_9314335_left_count : Nat := 1
def small_9314335_left_encoded : String := "00000003"
theorem small_9314335_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9314335_left_root small_9314335_left_fuel small_9314335_left_count small_9314335_left_encoded = true := by
  decide +kernel
theorem small_9314335_left_covered : CoveredBy scale carrier boxes small_9314335_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9314335_left_root small_9314335_left_fuel small_9314335_left_count small_9314335_left_encoded small_9314335_left_checked

theorem cover_9314335 : CoveredBy scale carrier boxes root_9314335 := by
  apply coveredBy_split_literal root_9314335 small_9314335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9314341 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9314335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9314341
#print axioms cover_9314335

def root_9314334 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9314334 : CoveredBy scale carrier boxes root_9314334 := by
  apply coveredBy_split_literal root_9314334 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9314335 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3497.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9314335
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3497.covered
#print axioms cover_9314334

def root_9314329 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9314329_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9314329_right_fuel : Nat := 1
def small_9314329_right_count : Nat := 1
def small_9314329_right_encoded : String := "00000002"
theorem small_9314329_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9314329_right_root small_9314329_right_fuel small_9314329_right_count small_9314329_right_encoded = true := by
  decide +kernel
theorem small_9314329_right_covered : CoveredBy scale carrier boxes small_9314329_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9314329_right_root small_9314329_right_fuel small_9314329_right_count small_9314329_right_encoded small_9314329_right_checked

theorem cover_9314329 : CoveredBy scale carrier boxes root_9314329 := by
  apply coveredBy_split_literal root_9314329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9314334 small_9314329_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9314334
  · exact small_9314329_right_covered
#print axioms cover_9314329

def root_9278471 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9278471 : CoveredBy scale carrier boxes root_9278471 := by
  apply coveredBy_split_literal root_9278471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0636.root_9278472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9314329 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0636.cover_9278472
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9314329
#print axioms cover_9278471

def root_9278465 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9278465_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9278465_left_fuel : Nat := 1
def small_9278465_left_count : Nat := 1
def small_9278465_left_encoded : String := "00000001"
theorem small_9278465_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9278465_left_root small_9278465_left_fuel small_9278465_left_count small_9278465_left_encoded = true := by
  decide +kernel
theorem small_9278465_left_covered : CoveredBy scale carrier boxes small_9278465_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9278465_left_root small_9278465_left_fuel small_9278465_left_count small_9278465_left_encoded small_9278465_left_checked

theorem cover_9278465 : CoveredBy scale carrier boxes root_9278465 := by
  apply coveredBy_split_literal root_9278465 small_9278465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9278471 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9278465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9278471
#print axioms cover_9278465

def root_9274083 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274083 : CoveredBy scale carrier boxes root_9274083 := by
  apply coveredBy_split_literal root_9274083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0633.root_9274084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9278465 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0633.cover_9274084
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9278465
#print axioms cover_9274083

def root_9274077 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9274077_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9274077_left_fuel : Nat := 1
def small_9274077_left_count : Nat := 1
def small_9274077_left_encoded : String := "00000000"
theorem small_9274077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9274077_left_root small_9274077_left_fuel small_9274077_left_count small_9274077_left_encoded = true := by
  decide +kernel
theorem small_9274077_left_covered : CoveredBy scale carrier boxes small_9274077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9274077_left_root small_9274077_left_fuel small_9274077_left_count small_9274077_left_encoded small_9274077_left_checked

theorem cover_9274077 : CoveredBy scale carrier boxes root_9274077 := by
  apply coveredBy_split_literal root_9274077 small_9274077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9274083 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9274077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9274083
#print axioms cover_9274077

def root_9346639 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346639_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346639_left_fuel : Nat := 24
def small_9346639_left_count : Nat := 255
def small_9346639_left_encoded : String := "1151E8FF08A91301120701000000000008A912FB00000009120700FA000000090000000212073D0008A912FB12073CFA0000000205000102135D44F905000106135D45070000000305000108135D44FF0CFD9C01000000090F350D00000000050000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BFB000000090000000A0F350D000CFD9BFB0F350CFA000000020C9A87000F87510100000000000000050000000A0F34D0FA000000050000000200000000135D810705000108135D44FF0CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350CFA000000020C9A870000000008000000080F34D0FA00000005000000020000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0F34D0FA00000009000000020F350D000CFD9BFB0F350CFA000000020C9A87000F875101000000000C9A86FA0F878CFB0000000202800102000000050000000A000000080F878D010000000A000000000F34D0FA0C9A8700000000050F878D010280010200000005000000090000000000000002000000000000000300000001135D80F90000000105000106135D4507000000030500010800000009135D80FF000000040CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350CFA000000020C9A87000F875101000000000C9A86FA000000090F8750FB0000000800000002000000090F34D0FA000000090000000200000000135D810705000108135D44FF0CFD9C01000000090F350D000CFD9BFB000000090F34D0FA00000009000000020000000000000004135D80FF000000040CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350CFA000000020C9A87000F875101000000000C9A86FA0F878CFB0000000207800102128A40F9078001060000000A128A7D070000000A0000000300000001000000090F8750FB078001020000000A128A7CF9000000010780010600000009128A7D070000000A00000003000000020F878D010C9A86FA000000090F8750FB0000000900000002000000000F34D0FA0C9A87000F8751010000000007800102000000050000000900000009000000020000000000000003120700FA05000102135D44F90500010600000005135D81070500010800000005135D80FF000000040CFD9C010F34D1000000000000000009000000050000000300000001135D80F90000000105000106135D4507000000030500010800000005135D80FF000000040CFD9C010000000900000005135D81070500010800000009135D80FF000000040CFD9C010F34D10000000000000000090F350D00045489FB1386ACFA000000020C9A87000000000500000009000000050000000000000003000000020000000000000004"
theorem small_9346639_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9346639_left_root small_9346639_left_fuel small_9346639_left_count small_9346639_left_encoded = true := by
  decide +kernel
theorem small_9346639_left_covered : CoveredBy scale carrier boxes small_9346639_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9346639_left_root small_9346639_left_fuel small_9346639_left_count small_9346639_left_encoded small_9346639_left_checked

theorem cover_9346639 : CoveredBy scale carrier boxes root_9346639 := by
  apply coveredBy_split_literal root_9346639 small_9346639_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3498.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9346639_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3498.covered
#print axioms cover_9346639

def root_9346633 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346633_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346633_left_fuel : Nat := 1
def small_9346633_left_count : Nat := 1
def small_9346633_left_encoded : String := "00000003"
theorem small_9346633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9346633_left_root small_9346633_left_fuel small_9346633_left_count small_9346633_left_encoded = true := by
  decide +kernel
theorem small_9346633_left_covered : CoveredBy scale carrier boxes small_9346633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9346633_left_root small_9346633_left_fuel small_9346633_left_count small_9346633_left_encoded small_9346633_left_checked

theorem cover_9346633 : CoveredBy scale carrier boxes root_9346633 := by
  apply coveredBy_split_literal root_9346633 small_9346633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346639 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9346633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346639
#print axioms cover_9346633

def root_9346632 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9346632 : CoveredBy scale carrier boxes root_9346632 := by
  apply coveredBy_split_literal root_9346632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346633 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3499.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346633
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3499.covered
#print axioms cover_9346632

def root_9346626 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346626_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346626_left_fuel : Nat := 1
def small_9346626_left_count : Nat := 1
def small_9346626_left_encoded : String := "00000002"
theorem small_9346626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9346626_left_root small_9346626_left_fuel small_9346626_left_count small_9346626_left_encoded = true := by
  decide +kernel
theorem small_9346626_left_covered : CoveredBy scale carrier boxes small_9346626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9346626_left_root small_9346626_left_fuel small_9346626_left_count small_9346626_left_encoded small_9346626_left_checked

theorem cover_9346626 : CoveredBy scale carrier boxes root_9346626 := by
  apply coveredBy_split_literal root_9346626 small_9346626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346632 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9346626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346632
#print axioms cover_9346626

def root_9346625 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9346625 : CoveredBy scale carrier boxes root_9346625 := by
  apply coveredBy_split_literal root_9346625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346626 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3500.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3500.covered
#print axioms cover_9346625

def root_9346620 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346620_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346620_right_fuel : Nat := 1
def small_9346620_right_count : Nat := 1
def small_9346620_right_encoded : String := "00000001"
theorem small_9346620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9346620_right_root small_9346620_right_fuel small_9346620_right_count small_9346620_right_encoded = true := by
  decide +kernel
theorem small_9346620_right_covered : CoveredBy scale carrier boxes small_9346620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9346620_right_root small_9346620_right_fuel small_9346620_right_count small_9346620_right_encoded small_9346620_right_checked

theorem cover_9346620 : CoveredBy scale carrier boxes root_9346620 := by
  apply coveredBy_split_literal root_9346620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346625 small_9346620_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346625
  · exact small_9346620_right_covered
#print axioms cover_9346620

def root_9354460 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9354460 : CoveredBy scale carrier boxes root_9354460 := by
  apply coveredBy_split_literal root_9354460 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3501.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3502.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3501.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3502.covered
#print axioms cover_9354460

def root_9354454 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9354454_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9354454_left_fuel : Nat := 1
def small_9354454_left_count : Nat := 1
def small_9354454_left_encoded : String := "00000002"
theorem small_9354454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9354454_left_root small_9354454_left_fuel small_9354454_left_count small_9354454_left_encoded = true := by
  decide +kernel
theorem small_9354454_left_covered : CoveredBy scale carrier boxes small_9354454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9354454_left_root small_9354454_left_fuel small_9354454_left_count small_9354454_left_encoded small_9354454_left_checked

theorem cover_9354454 : CoveredBy scale carrier boxes root_9354454 := by
  apply coveredBy_split_literal root_9354454 small_9354454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9354460 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9354454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9354460
#print axioms cover_9354454

def root_9354453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9354453 : CoveredBy scale carrier boxes root_9354453 := by
  apply coveredBy_split_literal root_9354453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9354454 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3503.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9354454
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3503.covered
#print axioms cover_9354453

def root_9354447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9354447_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9354447_left_fuel : Nat := 1
def small_9354447_left_count : Nat := 1
def small_9354447_left_encoded : String := "00000001"
theorem small_9354447_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9354447_left_root small_9354447_left_fuel small_9354447_left_count small_9354447_left_encoded = true := by
  decide +kernel
theorem small_9354447_left_covered : CoveredBy scale carrier boxes small_9354447_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9354447_left_root small_9354447_left_fuel small_9354447_left_count small_9354447_left_encoded small_9354447_left_checked

theorem cover_9354447 : CoveredBy scale carrier boxes root_9354447 := by
  apply coveredBy_split_literal root_9354447 small_9354447_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9354453 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9354447_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9354453
#print axioms cover_9354447

def root_9346619 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9346619 : CoveredBy scale carrier boxes root_9346619 := by
  apply coveredBy_split_literal root_9346619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9354447 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346620
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9354447
#print axioms cover_9346619

def root_9346614 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346614_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9346614_right_fuel : Nat := 1
def small_9346614_right_count : Nat := 1
def small_9346614_right_encoded : String := "00000000"
theorem small_9346614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9346614_right_root small_9346614_right_fuel small_9346614_right_count small_9346614_right_encoded = true := by
  decide +kernel
theorem small_9346614_right_covered : CoveredBy scale carrier boxes small_9346614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9346614_right_root small_9346614_right_fuel small_9346614_right_count small_9346614_right_encoded small_9346614_right_checked

theorem cover_9346614 : CoveredBy scale carrier boxes root_9346614 := by
  apply coveredBy_split_literal root_9346614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346619 small_9346614_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346619
  · exact small_9346614_right_covered
#print axioms cover_9346614

def root_9274076 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274076 : CoveredBy scale carrier boxes root_9274076 := by
  apply coveredBy_split_literal root_9274076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9274077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9346614 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9274077
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9346614
#print axioms cover_9274076

def root_9362504 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9362504 : CoveredBy scale carrier boxes root_9362504 := by
  apply coveredBy_split_literal root_9362504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3505.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3506.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3505.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3506.covered
#print axioms cover_9362504

def root_9362499 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9362499_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9362499_right_fuel : Nat := 1
def small_9362499_right_count : Nat := 1
def small_9362499_right_encoded : String := "00000000"
theorem small_9362499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9362499_right_root small_9362499_right_fuel small_9362499_right_count small_9362499_right_encoded = true := by
  decide +kernel
theorem small_9362499_right_covered : CoveredBy scale carrier boxes small_9362499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9362499_right_root small_9362499_right_fuel small_9362499_right_count small_9362499_right_encoded small_9362499_right_checked

theorem cover_9362499 : CoveredBy scale carrier boxes root_9362499 := by
  apply coveredBy_split_literal root_9362499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9362504 small_9362499_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9362504
  · exact small_9362499_right_covered
#print axioms cover_9362499

def root_9360717 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9360717 : CoveredBy scale carrier boxes root_9360717 := by
  apply coveredBy_split_literal root_9360717 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3504.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9362499 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3504.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9362499
#print axioms cover_9360717

def root_9274075 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274075 : CoveredBy scale carrier boxes root_9274075 := by
  apply coveredBy_split_literal root_9274075 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9274076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9360717 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9274076
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9360717
#print axioms cover_9274075

def root_9241769 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9241769 : CoveredBy scale carrier boxes root_9241769 := by
  apply coveredBy_split_literal root_9241769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0633.root_9241770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9274075 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0633.cover_9241770
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9274075
#print axioms cover_9241769

def root_9179615 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179615 : CoveredBy scale carrier boxes root_9179615 := by
  apply coveredBy_split_literal root_9179615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9179616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9241769 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9179616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9241769
#print axioms cover_9179615

def root_9151629 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151629 : CoveredBy scale carrier boxes root_9151629 := by
  apply coveredBy_split_literal root_9151629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9151630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9179615 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9151630
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9179615
#print axioms cover_9151629

def root_9369508 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9369508 : CoveredBy scale carrier boxes root_9369508 := by
  apply coveredBy_split_literal root_9369508 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3508.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3509.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3508.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3509.covered
#print axioms cover_9369508

def root_9366626 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9366626 : CoveredBy scale carrier boxes root_9366626 := by
  apply coveredBy_split_literal root_9366626 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3507.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9369508 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3507.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9369508
#print axioms cover_9366626

def root_9376564 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9376564_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9376564_right_fuel : Nat := 20
def small_9376564_right_count : Nat := 89
def small_9376564_right_encoded : String := "1151E8FF08A912F912073D0208A913050000000512073CFA000000020500010000000005135D8101000000050000000000000001120701020000000108A91305120700FA000000050000000212073CFA0000000205000100135D450100000000050000FC135D8107050000FE00000005135D44FF0000000500000004000000030000000A135D8101050000FC135D8107050000FE135D80FF00000004045489F90000000513867102000000010CFD9C05000000050F350CFA000000020C9A86FA000000050F875105000000020780010000000005128A7D010000000500000000135D44FF045489F90000000513867102000000010CFD9C05000000050000000A0000000400000003135D450700000003050000FE135D80FF00000004045489F91386AD020CFD9C05000000050000000A000000010000000A135D44FF045489F91386AD020CFD9C05000000050000000A000000010000000A000000040000000000000004"
theorem small_9376564_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9376564_right_root small_9376564_right_fuel small_9376564_right_count small_9376564_right_encoded = true := by
  decide +kernel
theorem small_9376564_right_covered : CoveredBy scale carrier boxes small_9376564_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9376564_right_root small_9376564_right_fuel small_9376564_right_count small_9376564_right_encoded small_9376564_right_checked

theorem cover_9376564 : CoveredBy scale carrier boxes root_9376564 := by
  apply coveredBy_split_literal root_9376564 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3511.root small_9376564_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3511.covered
  · exact small_9376564_right_covered
#print axioms cover_9376564

def root_9376558 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9376558_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9376558_left_fuel : Nat := 1
def small_9376558_left_count : Nat := 1
def small_9376558_left_encoded : String := "00000003"
theorem small_9376558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9376558_left_root small_9376558_left_fuel small_9376558_left_count small_9376558_left_encoded = true := by
  decide +kernel
theorem small_9376558_left_covered : CoveredBy scale carrier boxes small_9376558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9376558_left_root small_9376558_left_fuel small_9376558_left_count small_9376558_left_encoded small_9376558_left_checked

theorem cover_9376558 : CoveredBy scale carrier boxes root_9376558 := by
  apply coveredBy_split_literal root_9376558 small_9376558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9376564 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9376558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9376564
#print axioms cover_9376558

def root_9374038 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9374038 : CoveredBy scale carrier boxes root_9374038 := by
  apply coveredBy_split_literal root_9374038 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3510.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9376558 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3510.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9376558
#print axioms cover_9374038

def root_9374033 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9374033_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9374033_right_fuel : Nat := 1
def small_9374033_right_count : Nat := 1
def small_9374033_right_encoded : String := "00000002"
theorem small_9374033_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9374033_right_root small_9374033_right_fuel small_9374033_right_count small_9374033_right_encoded = true := by
  decide +kernel
theorem small_9374033_right_covered : CoveredBy scale carrier boxes small_9374033_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9374033_right_root small_9374033_right_fuel small_9374033_right_count small_9374033_right_encoded small_9374033_right_checked

theorem cover_9374033 : CoveredBy scale carrier boxes root_9374033 := by
  apply coveredBy_split_literal root_9374033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9374038 small_9374033_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9374038
  · exact small_9374033_right_covered
#print axioms cover_9374033

def root_9383029 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9383029 : CoveredBy scale carrier boxes root_9383029 := by
  apply coveredBy_split_literal root_9383029 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3513.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3514.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3513.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3514.covered
#print axioms cover_9383029

def root_9383023 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9383023_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9383023_left_fuel : Nat := 1
def small_9383023_left_count : Nat := 1
def small_9383023_left_encoded : String := "00000003"
theorem small_9383023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9383023_left_root small_9383023_left_fuel small_9383023_left_count small_9383023_left_encoded = true := by
  decide +kernel
theorem small_9383023_left_covered : CoveredBy scale carrier boxes small_9383023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9383023_left_root small_9383023_left_fuel small_9383023_left_count small_9383023_left_encoded small_9383023_left_checked

theorem cover_9383023 : CoveredBy scale carrier boxes root_9383023 := by
  apply coveredBy_split_literal root_9383023 small_9383023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9383029 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9383023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9383029
#print axioms cover_9383023

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638

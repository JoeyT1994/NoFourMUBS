import TaoBundleAssembly0219
import TaoBundleAssembly0221
import TaoBundleAssembly0222
import TaoBundleAssembly0223
import TaoBundleChunkBatch0875
import TaoBundleChunkBatch0876
import TaoBundleChunkBatch0877
import TaoBundleChunkBatch0878
import TaoBundleChunkBatch0879
import TaoBundleChunkBatch0880
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224
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
  apply coveredBy_split_literal root_9315191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0223.root_9315192 small_9315191_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0223.cover_9315192
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
  apply coveredBy_split_literal root_9315185 small_9315185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9315191 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9315185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9315191
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
  apply coveredBy_split_literal root_9314341 small_9314341_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9315185 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9314341_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9315185
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
  apply coveredBy_split_literal root_9314335 small_9314335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9314341 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9314335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9314341
#print axioms cover_9314335

def root_9314334 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9314334 : CoveredBy scale carrier boxes root_9314334 := by
  apply coveredBy_split_literal root_9314334 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9314335 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3497.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9314335
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
  apply coveredBy_split_literal root_9314329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9314334 small_9314329_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9314334
  · exact small_9314329_right_covered
#print axioms cover_9314329

def root_9278471 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9278471 : CoveredBy scale carrier boxes root_9278471 := by
  apply coveredBy_split_literal root_9278471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0223.root_9278472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9314329 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0223.cover_9278472
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9314329
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
  apply coveredBy_split_literal root_9278465 small_9278465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9278471 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9278465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9278471
#print axioms cover_9278465

def root_9274083 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274083 : CoveredBy scale carrier boxes root_9274083 := by
  apply coveredBy_split_literal root_9274083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9274084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9278465 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9274084
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9278465
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
  apply coveredBy_split_literal root_9274077 small_9274077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9274083 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9274077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9274083
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
  apply coveredBy_split_literal root_9346633 small_9346633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346639 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9346633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346639
#print axioms cover_9346633

def root_9346632 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9346632 : CoveredBy scale carrier boxes root_9346632 := by
  apply coveredBy_split_literal root_9346632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346633 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3499.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346633
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
  apply coveredBy_split_literal root_9346626 small_9346626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346632 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9346626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346632
#print axioms cover_9346626

def root_9346625 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9346625 : CoveredBy scale carrier boxes root_9346625 := by
  apply coveredBy_split_literal root_9346625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346626 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3500.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346626
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
  apply coveredBy_split_literal root_9346620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346625 small_9346620_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346625
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
  apply coveredBy_split_literal root_9354454 small_9354454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9354460 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9354454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9354460
#print axioms cover_9354454

def root_9354453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9354453 : CoveredBy scale carrier boxes root_9354453 := by
  apply coveredBy_split_literal root_9354453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9354454 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3503.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9354454
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
  apply coveredBy_split_literal root_9354447 small_9354447_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9354453 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9354447_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9354453
#print axioms cover_9354447

def root_9346619 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9346619 : CoveredBy scale carrier boxes root_9346619 := by
  apply coveredBy_split_literal root_9346619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9354447 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346620
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9354447
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
  apply coveredBy_split_literal root_9346614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346619 small_9346614_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346619
  · exact small_9346614_right_covered
#print axioms cover_9346614

def root_9274076 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274076 : CoveredBy scale carrier boxes root_9274076 := by
  apply coveredBy_split_literal root_9274076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9274077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9346614 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9274077
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9346614
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
  apply coveredBy_split_literal root_9362499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9362504 small_9362499_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9362504
  · exact small_9362499_right_covered
#print axioms cover_9362499

def root_9360717 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9360717 : CoveredBy scale carrier boxes root_9360717 := by
  apply coveredBy_split_literal root_9360717 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3504.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9362499 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3504.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9362499
#print axioms cover_9360717

def root_9274075 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9274075 : CoveredBy scale carrier boxes root_9274075 := by
  apply coveredBy_split_literal root_9274075 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9274076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9360717 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9274076
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9360717
#print axioms cover_9274075

def root_9241769 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9241769 : CoveredBy scale carrier boxes root_9241769 := by
  apply coveredBy_split_literal root_9241769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.root_9241770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9274075 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0222.cover_9241770
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9274075
#print axioms cover_9241769

def root_9179615 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179615 : CoveredBy scale carrier boxes root_9179615 := by
  apply coveredBy_split_literal root_9179615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.root_9179616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9241769 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0221.cover_9179616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9241769
#print axioms cover_9179615

def root_9151629 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151629 : CoveredBy scale carrier boxes root_9151629 := by
  apply coveredBy_split_literal root_9151629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9151630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9179615 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9151630
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9179615
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
  apply coveredBy_split_literal root_9366626 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3507.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9369508 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3507.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9369508
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
  apply coveredBy_split_literal root_9376558 small_9376558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9376564 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9376558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9376564
#print axioms cover_9376558

def root_9374038 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9374038 : CoveredBy scale carrier boxes root_9374038 := by
  apply coveredBy_split_literal root_9374038 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3510.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9376558 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3510.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9376558
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
  apply coveredBy_split_literal root_9374033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9374038 small_9374033_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9374038
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
  apply coveredBy_split_literal root_9383023 small_9383023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9383029 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9383023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9383029
#print axioms cover_9383023

def root_9382989 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382989_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382989_left_fuel : Nat := 7
def small_9382989_left_count : Nat := 17
def small_9382989_left_encoded : String := "0F34D0FC045489FF00000005138670FE07800100128A410100000000078000FA0000000700000009128A7D01078000FA0000000A0000000A000000000000000400000003"
theorem small_9382989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382989_left_root small_9382989_left_fuel small_9382989_left_count small_9382989_left_encoded = true := by
  decide +kernel
theorem small_9382989_left_covered : CoveredBy scale carrier boxes small_9382989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382989_left_root small_9382989_left_fuel small_9382989_left_count small_9382989_left_encoded small_9382989_left_checked

theorem cover_9382989 : CoveredBy scale carrier boxes root_9382989 := by
  apply coveredBy_split_literal root_9382989 small_9382989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9383023 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9382989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9383023
#print axioms cover_9382989

def root_9382983 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382983_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382983_left_fuel : Nat := 1
def small_9382983_left_count : Nat := 1
def small_9382983_left_encoded : String := "00000001"
theorem small_9382983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382983_left_root small_9382983_left_fuel small_9382983_left_count small_9382983_left_encoded = true := by
  decide +kernel
theorem small_9382983_left_covered : CoveredBy scale carrier boxes small_9382983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382983_left_root small_9382983_left_fuel small_9382983_left_count small_9382983_left_encoded small_9382983_left_checked

theorem cover_9382983 : CoveredBy scale carrier boxes root_9382983 := by
  apply coveredBy_split_literal root_9382983 small_9382983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9382989 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9382983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9382989
#print axioms cover_9382983

def root_9382563 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382563_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382563_left_fuel : Nat := 23
def small_9382563_left_count : Nat := 203
def small_9382563_left_encoded : String := "1386AD020CFD9C070F34D0FC00000005000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D0700000005000000030F8751070000000307800100128A410100000000078000FA0000000500000008128A7D01078000FA00000005128A410500000002067ECE790000000512EA590200000001067ECE7F0000000512EA58FE0B4D43FC000000051080110700000003000000080000000400000000138670FE0C9A86FC0F878D0707800100128A410100000000078000FA128A7D05067ECE790000000512EA590200000001022A457F000000050000000700000002128A410500000002067ECE790000000512EA590200000001022A457F000000050000000A128A7D01078000FA128A7D05067ECE79000000050000000A00000002128A410500000002067ECE79000000050000000A00000000000000030F8751070000000307800100128A410100000000078000FA128A7D05067ECE7912EA9502022A457F0000000513E1C4FE00000007000000040000000112EA590200000001022A457F13E200FE000000040B4D43FC10804D07000000050000000310801107000000030640010012FF71010000000008C000FA11FC250500000005000000020000000812FFAD0108C000FA11FC2505000000050000000211FBE905000000020569AC39000000050000000A0000000013E1C4FE0B4D43FC0000000710801107000000030640010000000007000000070000000400000002128A410500000002067ECE790000000812EA590200000001022A457F0000000813E1C4FE0B4D43FC0000000A1080110700000003064001000000000A0000000A00000004128A7D01078000FA128A7D05067ECE7912EA9502022A457F000000050000000A0000000112EA590200000001022A457F13E200FE000000040B4D43FC0000000A108011070000000308C0010011FBE9010000000008C000FA000000050000000A0000000A0000000A00000002128A410500000002067ECE7912EA9502022A457F000000050000000A0000000112EA590200000001022A457F13E200FE000000040B4D43FC0000000A108011070000000308C001000000000A0000000A0000000A000000000000000400000001"
theorem small_9382563_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382563_left_root small_9382563_left_fuel small_9382563_left_count small_9382563_left_encoded = true := by
  decide +kernel
theorem small_9382563_left_covered : CoveredBy scale carrier boxes small_9382563_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382563_left_root small_9382563_left_fuel small_9382563_left_count small_9382563_left_encoded small_9382563_left_checked

theorem cover_9382563 : CoveredBy scale carrier boxes root_9382563 := by
  apply coveredBy_split_literal root_9382563 small_9382563_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9382983 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9382563_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9382983
#print axioms cover_9382563

def root_9382558 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382558_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382558_right_fuel : Nat := 1
def small_9382558_right_count : Nat := 1
def small_9382558_right_encoded : String := "00000002"
theorem small_9382558_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382558_right_root small_9382558_right_fuel small_9382558_right_count small_9382558_right_encoded = true := by
  decide +kernel
theorem small_9382558_right_covered : CoveredBy scale carrier boxes small_9382558_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382558_right_root small_9382558_right_fuel small_9382558_right_count small_9382558_right_encoded small_9382558_right_checked

theorem cover_9382558 : CoveredBy scale carrier boxes root_9382558 := by
  apply coveredBy_split_literal root_9382558 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9382563 small_9382558_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9382563
  · exact small_9382558_right_covered
#print axioms cover_9382558

def root_9382557 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382557_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382557_right_fuel : Nat := 20
def small_9382557_right_count : Nat := 215
def small_9382557_right_encoded : String := "135D450500000002045489F91386AD020CFD9C070F34D0FC045489FF00000005138670FE0780010000000009128A7D01028000FA00000005000000090000000000000004000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC000000080F8751070000000300000008138670FE0C9A86FC0F878D0707800100128A41010000000000000008128A7D01028000FA13D7ED05067ECE790000000A0000000A000000020000000800000000000000030F8751070000000307800100128A41010000000000000008128A7D01028000FA13D7ED05067ECE790000000812EA590200000001022A457F000000080000000A000000020000000800000000000000040000000113867102000000010CFD9C070F34D0FC045489FF1386ACFE0000000407800100000000090000000600000009000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D0707800100128A41010000000000000009128A7D01028000FA13D7ED05022A457913E20102067ECE7F000000050000000A00000001000000060000000213D7B105000000020000000600000000000000030F8751070000000307800100128A410100000000028000FA13D7ED05022A45790000000813E1C50200000001067ECE7F00000008000000090000000200000008128A7D01028000FA13D7ED05022A457913E20102067ECE7F0000000812EA58FE0B4D43FC00000008108011070000000300000008000000040000000113E1C50200000001067ECE7F0000000612EA58FE00000006000000040000000213D7B10500000002022A45790000000813E1C50200000001067ECE7F000000060000000600000000138670FE0C9A86FC0F878D070780010000000009128A7D01028000FA0000000A0000000900000000000000030F8751070000000307800100128A410100000000028000FA13D7ED05022A457913E20102022A457F0000000813E1C4FE0B4D43FC0000000910801107000000030000000A0000000400000001000000090000000200000009128A7D01028000FA13D7ED05022A457913E20102022A457F13E200FE000000040B4D43FC0000000A10801107000000030000000A0000000A0000000113E1C50200000001022A457F000000060000000A0000000213D7B10500000002022A45790000000A000000090000000000000004"
theorem small_9382557_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382557_right_root small_9382557_right_fuel small_9382557_right_count small_9382557_right_encoded = true := by
  decide +kernel
theorem small_9382557_right_covered : CoveredBy scale carrier boxes small_9382557_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382557_right_root small_9382557_right_fuel small_9382557_right_count small_9382557_right_encoded small_9382557_right_checked

theorem cover_9382557 : CoveredBy scale carrier boxes root_9382557 := by
  apply coveredBy_split_literal root_9382557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9382558 small_9382557_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9382558
  · exact small_9382557_right_covered
#print axioms cover_9382557

def root_9382552 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382552_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9382552_right_fuel : Nat := 1
def small_9382552_right_count : Nat := 1
def small_9382552_right_encoded : String := "00000000"
theorem small_9382552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9382552_right_root small_9382552_right_fuel small_9382552_right_count small_9382552_right_encoded = true := by
  decide +kernel
theorem small_9382552_right_covered : CoveredBy scale carrier boxes small_9382552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9382552_right_root small_9382552_right_fuel small_9382552_right_count small_9382552_right_encoded small_9382552_right_checked

theorem cover_9382552 : CoveredBy scale carrier boxes root_9382552 := by
  apply coveredBy_split_literal root_9382552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9382557 small_9382552_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9382557
  · exact small_9382552_right_covered
#print axioms cover_9382552

def root_9380360 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9380360 : CoveredBy scale carrier boxes root_9380360 := by
  apply coveredBy_split_literal root_9380360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3512.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9382552 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3512.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9382552
#print axioms cover_9380360

def root_9380355 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9380355_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9380355_right_fuel : Nat := 1
def small_9380355_right_count : Nat := 1
def small_9380355_right_encoded : String := "00000004"
theorem small_9380355_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9380355_right_root small_9380355_right_fuel small_9380355_right_count small_9380355_right_encoded = true := by
  decide +kernel
theorem small_9380355_right_covered : CoveredBy scale carrier boxes small_9380355_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9380355_right_root small_9380355_right_fuel small_9380355_right_count small_9380355_right_encoded small_9380355_right_checked

theorem cover_9380355 : CoveredBy scale carrier boxes root_9380355 := by
  apply coveredBy_split_literal root_9380355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9380360 small_9380355_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9380360
  · exact small_9380355_right_covered
#print axioms cover_9380355

def root_9379963 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379963_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379963_left_fuel : Nat := 24
def small_9379963_left_count : Nat := 179
def small_9379963_left_encoded : String := "12073CFE0000000405000100135D450100000000050000FA135D8105045489F90000000513867102000000010CFD9C07000000050F350CFC000000030CFD9BFF000000050F34D0FE0C9A86FC0F878D0700000005000000030F87510700000003028001000000000813D7ED01078000FA128A7D05000000050000000200000008000000000000000400000002135D450500000002045489F90000000813867102000000010CFD9C070F34D0FC000000050000000300000008135D8101050000FA135D8105045489F91386AD020CFD9C07000000050F350CFC000000030CFD9BFF000000050F34D0FE00000005000000040000000113867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC000000050F875107000000030C9A86FE000000050F8750FF00000005000000040F34D0FE0C9A86FC0F878D0700000005000000030F8751070000000307800100128A410100000000078000FA128A7D050000000500000002128A41050000000200000008128A7D01078000FA128A7D050000000500000002128A410500000002022A45790000000513E1C502000000010AD3577F0000000510D100FE0B4D43FC10804D07000000050000000310801107000000030000000700000004000000000000000400000002135D450500000002045489F91386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF000000080F34D0FE00000008000000040000000113867102000000010CFD9C070F34D0FC0CFD9BFF000000050F34D0FE0000000500000004000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC000000080F87510700000003000000080F34D0FE0C9A86FC0F878D070780010000000008128A7D01028000FA13D7ED05022A45790000000500000006000000020000000800000000000000030F87510700000003000000080000000400000000"
theorem small_9379963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379963_left_root small_9379963_left_fuel small_9379963_left_count small_9379963_left_encoded = true := by
  decide +kernel
theorem small_9379963_left_covered : CoveredBy scale carrier boxes small_9379963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379963_left_root small_9379963_left_fuel small_9379963_left_count small_9379963_left_encoded small_9379963_left_checked

theorem cover_9379963 : CoveredBy scale carrier boxes root_9379963 := by
  apply coveredBy_split_literal root_9379963 small_9379963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9380355 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9379963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9380355
#print axioms cover_9379963

def root_9379957 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379957_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379957_left_fuel : Nat := 1
def small_9379957_left_count : Nat := 1
def small_9379957_left_encoded : String := "00000003"
theorem small_9379957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379957_left_root small_9379957_left_fuel small_9379957_left_count small_9379957_left_encoded = true := by
  decide +kernel
theorem small_9379957_left_covered : CoveredBy scale carrier boxes small_9379957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379957_left_root small_9379957_left_fuel small_9379957_left_count small_9379957_left_encoded small_9379957_left_checked

theorem cover_9379957 : CoveredBy scale carrier boxes root_9379957 := by
  apply coveredBy_split_literal root_9379957 small_9379957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379963 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9379957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379963
#print axioms cover_9379957

def root_9379909 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379909_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379909_left_fuel : Nat := 9
def small_9379909_left_count : Nat := 23
def small_9379909_left_encoded : String := "120700FC08A912FF00000005120700FE05000100135D450100000000050000FA135D8105045489F900000005000000090000000200000009135D8101050000FA00000005135D45050000000200000009000000000000000400000003"
theorem small_9379909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379909_left_root small_9379909_left_fuel small_9379909_left_count small_9379909_left_encoded = true := by
  decide +kernel
theorem small_9379909_left_covered : CoveredBy scale carrier boxes small_9379909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379909_left_root small_9379909_left_fuel small_9379909_left_count small_9379909_left_encoded small_9379909_left_checked

theorem cover_9379909 : CoveredBy scale carrier boxes root_9379909 := by
  apply coveredBy_split_literal root_9379909 small_9379909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379957 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9379909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379957
#print axioms cover_9379909

def root_9379903 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379903_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379903_left_fuel : Nat := 1
def small_9379903_left_count : Nat := 1
def small_9379903_left_encoded : String := "00000001"
theorem small_9379903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379903_left_root small_9379903_left_fuel small_9379903_left_count small_9379903_left_encoded = true := by
  decide +kernel
theorem small_9379903_left_covered : CoveredBy scale carrier boxes small_9379903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379903_left_root small_9379903_left_fuel small_9379903_left_count small_9379903_left_encoded small_9379903_left_checked

theorem cover_9379903 : CoveredBy scale carrier boxes root_9379903 := by
  apply coveredBy_split_literal root_9379903 small_9379903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379909 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9379903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379909
#print axioms cover_9379903

def root_9379753 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379753_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379753_left_fuel : Nat := 20
def small_9379753_left_count : Nat := 73
def small_9379753_left_encoded : String := "12073D0208A913070000000512073CFC0000000308A912FF00000005120700FE05000100135D450100000000050000FA135D81050CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC00000003045489FF00000005138670FE0C9A86FC0000000800000005000000040000000200000008135D8101050000FA135D81050CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC00000003045489FF00000005138670FE0C9A86FC000000050F875107000000030780010000000005128A7D0100000005000000000000000400000002135D4505000000020CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC00000003045489FF00000005138670FE0000000800000004000000000000000400000001"
theorem small_9379753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379753_left_root small_9379753_left_fuel small_9379753_left_count small_9379753_left_encoded = true := by
  decide +kernel
theorem small_9379753_left_covered : CoveredBy scale carrier boxes small_9379753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379753_left_root small_9379753_left_fuel small_9379753_left_count small_9379753_left_encoded small_9379753_left_checked

theorem cover_9379753 : CoveredBy scale carrier boxes root_9379753 := by
  apply coveredBy_split_literal root_9379753 small_9379753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379903 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9379753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379903
#print axioms cover_9379753

def root_9379747 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379747_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379747_left_fuel : Nat := 1
def small_9379747_left_count : Nat := 1
def small_9379747_left_encoded : String := "00000004"
theorem small_9379747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379747_left_root small_9379747_left_fuel small_9379747_left_count small_9379747_left_encoded = true := by
  decide +kernel
theorem small_9379747_left_covered : CoveredBy scale carrier boxes small_9379747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379747_left_root small_9379747_left_fuel small_9379747_left_count small_9379747_left_encoded small_9379747_left_checked

theorem cover_9379747 : CoveredBy scale carrier boxes root_9379747 := by
  apply coveredBy_split_literal root_9379747 small_9379747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379753 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9379747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379753
#print axioms cover_9379747

def root_9379746 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379746_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379746_right_fuel : Nat := 20
def small_9379746_right_count : Nat := 89
def small_9379746_right_encoded : String := "1151E8FF08A912F912073D0208A913070000000512073CFC000000030500010000000005135D8101000000050000000000000001120701020000000108A91307120700FC000000050000000312073CFC0000000305000100135D450100000000050000FA135D8105050000FE00000005135D44FF00000005000000040000000200000008135D8101050000FA135D8105050000FE135D80FF00000004045489F90000000513867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000050F875107000000030780010000000005128A7D010000000500000000135D44FF045489F90000000513867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000050F87510700000003000000080000000400000002135D450500000002050000FE135D80FF00000004045489F90000000813867102000000010CFD9C070000000800000008135D44FF00000008000000040000000000000004"
theorem small_9379746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379746_right_root small_9379746_right_fuel small_9379746_right_count small_9379746_right_encoded = true := by
  decide +kernel
theorem small_9379746_right_covered : CoveredBy scale carrier boxes small_9379746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379746_right_root small_9379746_right_fuel small_9379746_right_count small_9379746_right_encoded small_9379746_right_checked

theorem cover_9379746 : CoveredBy scale carrier boxes root_9379746 := by
  apply coveredBy_split_literal root_9379746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379747 small_9379746_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379747
  · exact small_9379746_right_covered
#print axioms cover_9379746

def root_9379741 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379741_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379741_right_fuel : Nat := 1
def small_9379741_right_count : Nat := 1
def small_9379741_right_encoded : String := "00000003"
theorem small_9379741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379741_right_root small_9379741_right_fuel small_9379741_right_count small_9379741_right_encoded = true := by
  decide +kernel
theorem small_9379741_right_covered : CoveredBy scale carrier boxes small_9379741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379741_right_root small_9379741_right_fuel small_9379741_right_count small_9379741_right_encoded small_9379741_right_checked

theorem cover_9379741 : CoveredBy scale carrier boxes root_9379741 := by
  apply coveredBy_split_literal root_9379741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379746 small_9379741_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379746
  · exact small_9379741_right_covered
#print axioms cover_9379741

def root_9391441 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391441_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391441_right_fuel : Nat := 23
def small_9391441_right_count : Nat := 101
def small_9391441_right_encoded : String := "128A410500000002078000FC128A7D07022A457913E20102067ECE7F0000000812EA58FE064001000000000812FFAD01064000FA12FFAD0508C000FC0000000811FBE9070000000300000008000000020000000800000000000000040000000113E1C50200000001067ECE7F12EA94FE0000000406400100000000070000000712EA58FE0640010012FF710100000000064000FA12FFAD0508C000FC11FC2507011523390000000813F85902000000010569AC3F00000007000000050000000300000007000000020000000812FFAD01064000FA12FFAD0508C000FC11FC25070115233913F895020569AC3F000000071340D4FE06E001000000000812C8210106E000FA12C82105096000FC0000000800000007000000020000000700000000000000040000000113F85902000000010569AC3F000000071340D4FE000000070000000400000003000000070000000200000007000000000000000400000003128A410700000003022A457913E20102067ECE7F0000000712EA58FE064001000000000700000007000000040000000100000007"
theorem small_9391441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391441_right_root small_9391441_right_fuel small_9391441_right_count small_9391441_right_encoded = true := by
  decide +kernel
theorem small_9391441_right_covered : CoveredBy scale carrier boxes small_9391441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391441_right_root small_9391441_right_fuel small_9391441_right_count small_9391441_right_encoded small_9391441_right_checked

theorem cover_9391441 : CoveredBy scale carrier boxes root_9391441 := by
  apply coveredBy_split_literal root_9391441 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3516.root small_9391441_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3516.covered
  · exact small_9391441_right_covered
#print axioms cover_9391441

def root_9391435 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391435_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391435_left_fuel : Nat := 1
def small_9391435_left_count : Nat := 1
def small_9391435_left_encoded : String := "00000000"
theorem small_9391435_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391435_left_root small_9391435_left_fuel small_9391435_left_count small_9391435_left_encoded = true := by
  decide +kernel
theorem small_9391435_left_covered : CoveredBy scale carrier boxes small_9391435_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391435_left_root small_9391435_left_fuel small_9391435_left_count small_9391435_left_encoded small_9391435_left_checked

theorem cover_9391435 : CoveredBy scale carrier boxes root_9391435 := by
  apply coveredBy_split_literal root_9391435 small_9391435_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9391441 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9391435_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9391441
#print axioms cover_9391435

def root_9391434 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391434_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391434_right_fuel : Nat := 26
def small_9391434_right_count : Nat := 363
def small_9391434_right_encoded : String := "128A7D01078000FA128A7D05078000FC128A7D07022A457913E20102067ECE7F12EA94FE0000000408C0010011FBE9010000000008C000FA0000000911FBE9050000000208C000FC11FC2507000000050000000311FBE90700000003000000090000000912EA58FE08C0010011FBE9010000000008C000FA0000000911FBE9050000000208C000FC11FC2507033F67B90000000913BBF502000000010569AC3F000000091340D4FE00000009000000040000000311FBE907000000030000000900000009000000040000000113E1C50200000001067ECE7F12EA94FE0000000408C0010011FBE9010000000008C000FA11FC2505000000090000000211FBE9050000000208C000FC11FC25070115233913F895020793F0BF00000005128220FE00000007000000040000000100000007000000030000000711FC2501000000090000000012EA58FE08C0010011FBE9010000000008C000FA11FC250508C000FC11FC2507011523390000000913F85902000000010000000900000003000000090000000211FBE9050000000208C000FC11FC25070115233913F895020569AC3F134110FE000000040820010012465D0100000000082000FA0000000900000007000000091340D4FE0820010012465D0100000000082000FA0000000912465D0500000002096000FC0000000A11AA8107000000030000000700000009000000040000000113F85902000000010569AC3F134110FE000000040820010000000007000000071340D4FE0820010012465D0100000000082000FA12469905096000FC0000000611AA810700000003000000070000000212465D050000000200000007124699010000000600000000000000040000000311FBE907000000030115233913F895020569AC3F0000000700000009000000010000000711FC250108C000FA0000000911FBE9050000000208C000FC11FC25070115233900000009000000060000000300000009000000000000000400000003128A410700000003022A457913E20102067ECE7F00000009000000090000000113E1C50200000001067ECE7F0000000912EA58FE08C0010011FBE9010000000008C000FA0000000900000007000000090000000400000002128A410500000002078000FC128A7D07022A457913E20102067ECE7F12EA94FE0000000408C0010011FBE901000000000000000811FC2501064000FA12FFAD0508C000FC11FC2507033F67B90000000500000007000000030000000700000002000000070000000012EA58FE08C0010011FBE90100000000064000FA12FFAD0508C000FC11FC2507033F67B90000000813BBF502000000010569AC3F000000081340D4FE0820010012465D010000000000000008124699010000000A00000000000000040000000311FBE90700000003033F67B900000008000000070000000212FF71050000000208C000FC000000080000000711FC2501064000FA12FFAD0508C000FC11FC2507033F67B90000000913BBF502000000010569AC3F000000090000000A0000000311FBE90700000003000000090000000212FF71050000000208C000FC11FC2507033F67B90000000800000007000000030000000700000000000000040000000113E1C50200000001067ECE7F12EA94FE000000040000000712EA58FE08C0010011FBE90100000000064000FA12FFAD0508C000FC11FC25070115233913F895020569AC3F000000071340D4FE0820010012465D010000000006E000FA12C821050000000700000002000000071246990100000007000000000000000400000001000000070000000300000007000000020000000711FC2501064000FA12FFAD0508C000FC11FC25070115233913F895020569AC3F0000000600000006000000010000000600000003000000070000000200000007000000000000000400000003128A410700000003022A457913E20102067ECE7F0000000712EA58FE08C00100000000070000000700000004000000010000000700000000"
theorem small_9391434_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391434_right_root small_9391434_right_fuel small_9391434_right_count small_9391434_right_encoded = true := by
  decide +kernel
theorem small_9391434_right_covered : CoveredBy scale carrier boxes small_9391434_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391434_right_root small_9391434_right_fuel small_9391434_right_count small_9391434_right_encoded small_9391434_right_checked

theorem cover_9391434 : CoveredBy scale carrier boxes root_9391434 := by
  apply coveredBy_split_literal root_9391434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9391435 small_9391434_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9391435
  · exact small_9391434_right_covered
#print axioms cover_9391434

def root_9391428 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391428_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391428_left_fuel : Nat := 1
def small_9391428_left_count : Nat := 1
def small_9391428_left_encoded : String := "00000004"
theorem small_9391428_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391428_left_root small_9391428_left_fuel small_9391428_left_count small_9391428_left_encoded = true := by
  decide +kernel
theorem small_9391428_left_covered : CoveredBy scale carrier boxes small_9391428_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391428_left_root small_9391428_left_fuel small_9391428_left_count small_9391428_left_encoded small_9391428_left_checked

theorem cover_9391428 : CoveredBy scale carrier boxes root_9391428 := by
  apply coveredBy_split_literal root_9391428 small_9391428_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9391434 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9391428_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9391434
#print axioms cover_9391428

def root_9395516 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9395516_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9395516_right_fuel : Nat := 23
def small_9395516_right_count : Nat := 333
def small_9395516_right_encoded : String := "128A7D01078000FA128A7D05078000FC128A7D07022A457913E20102022A457F13E200FE0000000408C0010011FBE9010000000008C000FA0000000911FBE9050000000208C000FC11FC2507033F67B913BC31020000000A000000010000000A0000000311FBE90700000003000000090000000913E1C4FE08C0010011FBE9010000000008C000FA11FC2505000000090000000211FBE9050000000208C000FC0000000A11FBE907000000030000000A11FC25010000000900000000000000040000000113E1C50200000001022A457F13E200FE0000000408C0010011FBE9010000000008C000FA11FC250508C000FC11FC2507011523390000000913F8590200000001033F67BF00000009000000080000000311FBE90700000003000000090000000211FBE9050000000208C000FC11FC25070115233913F89502033F67BF13BC30FE000000040000000A0000000A0000000113F8590200000001033F67BF13BC30FE00000004082001000000000A0000000A000000050000000311FBE907000000030115233913F89502033F67BF0000000900000005000000010000000511FC250108C000FA0000000911FBE9050000000208C000FC0000000A11FBE90700000003000000090000000013E1C4FE08C0010011FBE9010000000008C000FA000000080000000511FC250100000008000000000000000400000003128A410700000003022A457913E20102022A457F0000000913E1C4FE00000009000000040000000113E1C50200000001022A457F13E200FE0000000408C0010011FBE9010000000008C000FA0000000911FBE9050000000200000005000000090000000500000002128A410500000002078000FC128A7D07022A457913E20102022A457F13E200FE0000000408C0010011FBE90100000000064000FA12FFAD0508C000FC11FC2507033F67B90000000A0000000A0000000311FBE90700000003033F67B913BC3102033F67BF0000000913BBF4FE082001000000000A00000009000000040000000113BBF50200000001033F67BF13BC30FE000000040820010012465D010000000006E000FA000000090000000700000009000000050000000212FF71050000000208C000FC11FC2507033F67B90000000A0000000A0000000311FBE90700000003033F67B913BC3102033F67BF000000070000000A0000000113BBF50200000001033F67BF000000070000000511FC2501064000FA12FFAD0508C000FC0000000A11FBE90700000003000000090000000212FF71050000000208C000FC0000000A11FBE90700000003033F67B90000000A0000000A0000000013E1C4FE08C0010011FBE90100000000064000FA12FFAD0508C000FC0000000A11FBE9070000000300000005000000020000000A11FC25010000000A00000000000000040000000113E1C50200000001022A457F13E200FE0000000408C0010011FBE90100000000064000FA12FFAD0508C000FC11FC2507011523390000000A000000050000000311FBE90700000003000000050000000212FF7105000000020000000511FC2501064000FA12FFAD0508C000FC0000000A11FBE90700000003011523390000000A000000050000000212FF71050000000208C000FC0000000A00000005000000000000000500000003128A410700000003022A457913E20102022A457F13E200FE0000000408C0010011FBE90100000000064000FA12FFAD05064000FC12FFAD07033F67B900000009000000050000000312FF710700000003000000070000000212FF7105000000020000000711FC2501064000FA00000009000000070000000000000005000000010000000500000000"
theorem small_9395516_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9395516_right_root small_9395516_right_fuel small_9395516_right_count small_9395516_right_encoded = true := by
  decide +kernel
theorem small_9395516_right_covered : CoveredBy scale carrier boxes small_9395516_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9395516_right_root small_9395516_right_fuel small_9395516_right_count small_9395516_right_encoded small_9395516_right_checked

theorem cover_9395516 : CoveredBy scale carrier boxes root_9395516 := by
  apply coveredBy_split_literal root_9395516 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3517.root small_9395516_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3517.covered
  · exact small_9395516_right_covered
#print axioms cover_9395516

def root_9395511 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9395511_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9395511_right_fuel : Nat := 1
def small_9395511_right_count : Nat := 1
def small_9395511_right_encoded : String := "00000004"
theorem small_9395511_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9395511_right_root small_9395511_right_fuel small_9395511_right_count small_9395511_right_encoded = true := by
  decide +kernel
theorem small_9395511_right_covered : CoveredBy scale carrier boxes small_9395511_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9395511_right_root small_9395511_right_fuel small_9395511_right_count small_9395511_right_encoded small_9395511_right_checked

theorem cover_9395511 : CoveredBy scale carrier boxes root_9395511 := by
  apply coveredBy_split_literal root_9395511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9395516 small_9395511_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9395516
  · exact small_9395511_right_covered
#print axioms cover_9395511

def root_9391427 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9391427 : CoveredBy scale carrier boxes root_9391427 := by
  apply coveredBy_split_literal root_9391427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9391428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9395511 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9391428
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9395511
#print axioms cover_9391427

def root_9391421 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391421_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9391421_left_fuel : Nat := 1
def small_9391421_left_count : Nat := 1
def small_9391421_left_encoded : String := "00000001"
theorem small_9391421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9391421_left_root small_9391421_left_fuel small_9391421_left_count small_9391421_left_encoded = true := by
  decide +kernel
theorem small_9391421_left_covered : CoveredBy scale carrier boxes small_9391421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9391421_left_root small_9391421_left_fuel small_9391421_left_count small_9391421_left_encoded small_9391421_left_checked

theorem cover_9391421 : CoveredBy scale carrier boxes root_9391421 := by
  apply coveredBy_split_literal root_9391421 small_9391421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9391427 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9391421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9391427
#print axioms cover_9391421

def root_9390511 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390511_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390511_left_fuel : Nat := 23
def small_9390511_left_count : Nat := 437
def small_9390511_left_encoded : String := "1386AD02045489FF1386ACFE0000000407800100128A410100000000078000FA128A7D05078000FC128A7D07067ECE790000000512EA590200000001067ECE7F0000000512EA58FE0640010012FF7101000000000000000812FFAD0108C000FA0000000500000008000000000000000400000003128A410700000003067ECE790000000612EA590200000001067ECE7F00000008000000060000000200000008128A7D01078000FA128A7D05078000FC128A7D07067ECE790000000512EA590200000001067ECE7F0000000512EA58FE000000090000000400000003128A410700000003067ECE790000000912EA5902000000010000000900000002128A410500000002078000FC128A7D07067ECE790000000812EA590200000001067ECE7F0000000812EA58FE08C001000000000811FC2501064000FA0000000900000008000000000000000400000003128A410700000003067ECE790000000812EA590200000001067ECE7F0000000812EA58FE08C0010011FBE9010000000000000008000000090000000400000000138670FE07800100128A410100000000078000FA128A7D05078000FC128A7D07067ECE7912EA9502022A457F13E200FE00000004064001000000000512FFAD010000000500000000000000060000000112EA590200000001022A457F13E200FE000000040640010012FF71010000000008C000FA11FC2505000000060000000211FBE905000000020000000812FFAD0108C000FA11FC2505000000090000000211FBE9050000000208C000FC11FC25070569AC39000000081340D50200000001033F67BF000000080000000A0000000311FBE907000000030569AC39000000061340D50200000001000000060000000013E1C4FE0640010012FF71010000000008C000FA000000060000000612FFAD0108C000FA11FC250508C000FC00000007000000060000000211FBE9050000000208C000FC0000000A00000006000000000000000400000003128A410700000003067ECE790000000612EA590200000001022A457F000000060000000600000002128A410500000002078000FC128A7D07067ECE790000000812EA590200000001022A457F0000000813E1C4FE0640010012FF710100000000064000FA12FFAD0508C000FC0000000800000006000000020000000812FFAD01064000FA12FFAD0508C000FC0000000A11FBE907000000030569AC39000000061340D502000000010115233F00000006000000050000000212FF71050000000208C000FC0000000811FBE9070000000300000008000000000000000400000003128A410700000003067ECE790000000612EA590200000001022A457F13E200FE00000004064001000000000612FFAD01064000FA00000006000000080000000013E1C4FE064001000000000612FFAD01064000FA00000006000000060000000000000004128A7D01078000FA128A7D05078000FC128A7D07067ECE7912EA9502022A457F0000000913E1C4FE00000009000000040000000112EA590200000001022A457F13E200FE0000000408C00100000000090000000913E1C4FE08C0010011FBE9010000000008C000FA0000000911FBE9050000000208C000FC0000000A00000009000000090000000400000003128A410700000003067ECE790000000912EA5902000000010000000900000002128A410500000002078000FC128A7D07067ECE7912EA9502022A457F0000000813E1C4FE08C0010011FBE90100000000064000FA12FFAD050000000A000000020000000811FC25010000000A00000000000000040000000112EA590200000001022A457F13E200FE0000000408C0010011FBE90100000000064000FA12FFAD0508C000FC11FC25070569AC39000000080000000A0000000311FBE907000000030569AC39000000081340D50200000001033F67BF0000000800000009000000020000000811FC2501064000FA12FFAD05000000090000000212FF71050000000208C000FC0000000A11FBE907000000030569AC39000000080000000A0000000013E1C4FE08C0010011FBE90100000000064000FA12FFAD0508C000FC0000000A11FBE907000000030000000A000000020000000A11FC25010000000A000000000000000400000003128A410700000003067ECE7912EA9502022A457F13E200FE0000000408C00100000000080000000913E1C4FE08C001000000000600000009000000040000000112EA590200000001022A457F13E200FE0000000408C0010011FBE90100000000064000FA00000009000000080000000913E1C4FE08C0010011FBE90100000000064000FA0000000912FF710500000002064000FC12FFAD070569AC390000000600000005000000030000000611FC2501000000090000000000000004000000000000000400000001"
theorem small_9390511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9390511_left_root small_9390511_left_fuel small_9390511_left_count small_9390511_left_encoded = true := by
  decide +kernel
theorem small_9390511_left_covered : CoveredBy scale carrier boxes small_9390511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9390511_left_root small_9390511_left_fuel small_9390511_left_count small_9390511_left_encoded small_9390511_left_checked

theorem cover_9390511 : CoveredBy scale carrier boxes root_9390511 := by
  apply coveredBy_split_literal root_9390511 small_9390511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9391421 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9390511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9391421
#print axioms cover_9390511

def root_9390506 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390506_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390506_right_fuel : Nat := 1
def small_9390506_right_count : Nat := 1
def small_9390506_right_encoded : String := "00000003"
theorem small_9390506_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9390506_right_root small_9390506_right_fuel small_9390506_right_count small_9390506_right_encoded = true := by
  decide +kernel
theorem small_9390506_right_covered : CoveredBy scale carrier boxes small_9390506_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9390506_right_root small_9390506_right_fuel small_9390506_right_count small_9390506_right_encoded small_9390506_right_checked

theorem cover_9390506 : CoveredBy scale carrier boxes root_9390506 := by
  apply coveredBy_split_literal root_9390506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9390511 small_9390506_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9390511
  · exact small_9390506_right_covered
#print axioms cover_9390506

def root_9390505 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390505_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390505_right_fuel : Nat := 15
def small_9390505_right_count : Nat := 135
def small_9390505_right_encoded : String := "135D450700000003045489F91386AD02045489FF1386ACFE0000000407800100128A410100000000078000FA00000006128A410500000002028000FC0000000800000006128A7D01078000FA00000009128A410500000002028000FC13D7ED07067ECE790000000800000007000000030000000700000000138670FE07800100128A41010000000000000006128A7D01078000FA00000009128A410500000002028000FC13D7ED07067ECE790000000612EA590200000001022A457F000000090000000600000003000000060000000000000004000000011386710200000001045489FF1386ACFE0000000407800100128A410100000000078000FA128A7D05028000FC13D7ED07022A457913E20102067ECE7F0000000600000006000000010000000700000003000000070000000200000007128A7D01078000FA128A7D05028000FC13D7ED07022A457900000009000000070000000300000007000000020000000700000000138670FE07800100128A410100000000078000FA128A7D05028000FC13D7ED07022A45790000000600000005000000030000000600000002128A41050000000200000005128A7D01078000FA128A7D05028000FC13D7ED07022A457900000009000000050000000313D7B107000000030000000900000002128A410500000002028000FC13D7ED07022A457913E20102022A457F0000000700000005000000010000000500000003000000050000000000000004"
theorem small_9390505_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9390505_right_root small_9390505_right_fuel small_9390505_right_count small_9390505_right_encoded = true := by
  decide +kernel
theorem small_9390505_right_covered : CoveredBy scale carrier boxes small_9390505_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9390505_right_root small_9390505_right_fuel small_9390505_right_count small_9390505_right_encoded small_9390505_right_checked

theorem cover_9390505 : CoveredBy scale carrier boxes root_9390505 := by
  apply coveredBy_split_literal root_9390505 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9390506 small_9390505_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9390506
  · exact small_9390505_right_covered
#print axioms cover_9390505

def root_9390500 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390500_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390500_right_fuel : Nat := 1
def small_9390500_right_count : Nat := 1
def small_9390500_right_encoded : String := "00000002"
theorem small_9390500_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9390500_right_root small_9390500_right_fuel small_9390500_right_count small_9390500_right_encoded = true := by
  decide +kernel
theorem small_9390500_right_covered : CoveredBy scale carrier boxes small_9390500_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9390500_right_root small_9390500_right_fuel small_9390500_right_count small_9390500_right_encoded small_9390500_right_checked

theorem cover_9390500 : CoveredBy scale carrier boxes root_9390500 := by
  apply coveredBy_split_literal root_9390500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9390505 small_9390500_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9390505
  · exact small_9390500_right_covered
#print axioms cover_9390500

def root_9390499 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390499_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390499_right_fuel : Nat := 24
def small_9390499_right_count : Nat := 259
def small_9390499_right_encoded : String := "135D450500000002050000FC135D8107045489F91386AD02045489FF00000008138670FE07800100128A410100000000028000FA13D7ED05078000FC00000008128A410700000003000000080000000200000008128A7D01028000FA13D7ED05078000FC128A7D07067ECE790000000812EA590200000001022A457F0000000813E1C4FE08C0010011FBE9010000000003C000FA0000000A0000000811FC25010000000A000000000000000400000003128A410700000003067ECE790000000812EA590200000001022A457F0000000813E1C4FE08C0010011FBE901000000000000000511FC250103C000FA13A54D05064000FC0000000A00000005000000020000000500000000000000040000000213D7B10500000002078000FC00000008128A410700000003000000080000000000000004000000011386710200000001045489FF1386ACFE0000000407800100128A410100000000028000FA13D7ED05078000FC128A7D07022A4579000000080000000700000003000000070000000200000007128A7D01028000FA13D7ED05078000FC128A7D07022A457913E20102067ECE7F0000000712EA58FE08C0010000000007000000070000000400000001000000070000000300000007000000020000000700000000138670FE07800100128A410100000000028000FA13D7ED05078000FC128A7D07022A457913E20102022A457F0000000800000005000000010000000500000003128A410700000003000000050000000213D7B10500000002078000FC128A7D07022A457900000008000000050000000300000005128A7D01028000FA13D7ED05078000FC128A7D07022A457913E20102022A457F13E200FE0000000408C0010011FBE9010000000003C000FA13A54D0508C000FC0000000811FBE9070000000300000007000000020000000811FC250103C000FA13A54D0508C000FC0000000A000000070000000213A5110500000002000000070000000000000005000000010000000500000003128A410700000003022A457913E20102022A457F000000070000000500000001000000050000000213D7B10500000002078000FC128A7D07022A457913E20102022A457F000000070000000500000001000000050000000300000007000000000000000400000003135D450700000003045489F91386AD02045489FF1386ACFE00000004078001000000000700000007138670FE07800100128A410100000000028000FA13D7ED05028000FC00000008000000060000000200000007128A7D01028000FA13D7ED05028000FC13D7ED07067ECE7912EA9502022A457F00000006000000060000000112EA590200000001022A457F0000000700000005000000030000000700000002000000070000000000000004000000011386710200000001045489FF0000000700000005"
theorem small_9390499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9390499_right_root small_9390499_right_fuel small_9390499_right_count small_9390499_right_encoded = true := by
  decide +kernel
theorem small_9390499_right_covered : CoveredBy scale carrier boxes small_9390499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9390499_right_root small_9390499_right_fuel small_9390499_right_count small_9390499_right_encoded small_9390499_right_checked

theorem cover_9390499 : CoveredBy scale carrier boxes root_9390499 := by
  apply coveredBy_split_literal root_9390499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9390500 small_9390499_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9390500
  · exact small_9390499_right_covered
#print axioms cover_9390499

def root_9390494 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390494_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9390494_right_fuel : Nat := 1
def small_9390494_right_count : Nat := 1
def small_9390494_right_encoded : String := "00000000"
theorem small_9390494_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9390494_right_root small_9390494_right_fuel small_9390494_right_count small_9390494_right_encoded = true := by
  decide +kernel
theorem small_9390494_right_covered : CoveredBy scale carrier boxes small_9390494_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9390494_right_root small_9390494_right_fuel small_9390494_right_count small_9390494_right_encoded small_9390494_right_checked

theorem cover_9390494 : CoveredBy scale carrier boxes root_9390494 := by
  apply coveredBy_split_literal root_9390494 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9390499 small_9390494_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9390499
  · exact small_9390494_right_covered
#print axioms cover_9390494

def root_9388358 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9388358 : CoveredBy scale carrier boxes root_9388358 := by
  apply coveredBy_split_literal root_9388358 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3515.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9390494 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3515.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9390494
#print axioms cover_9388358

def root_9388353 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9388353_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9388353_right_fuel : Nat := 1
def small_9388353_right_count : Nat := 1
def small_9388353_right_encoded : String := "00000004"
theorem small_9388353_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9388353_right_root small_9388353_right_fuel small_9388353_right_count small_9388353_right_encoded = true := by
  decide +kernel
theorem small_9388353_right_covered : CoveredBy scale carrier boxes small_9388353_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9388353_right_root small_9388353_right_fuel small_9388353_right_count small_9388353_right_encoded small_9388353_right_checked

theorem cover_9388353 : CoveredBy scale carrier boxes root_9388353 := by
  apply coveredBy_split_literal root_9388353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9388358 small_9388353_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9388358
  · exact small_9388353_right_covered
#print axioms cover_9388353

def root_9387631 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387631_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387631_left_fuel : Nat := 27
def small_9387631_left_count : Nat := 345
def small_9387631_left_encoded : String := "12073CFE0000000405000100135D450100000000050000FA135D8105050000FC135D8107045489F91386AD020CFD9BFF000000050F34D0FE00000008000000040000000113867102000000010CFD9BFF0F350CFE000000040C9A86FE00000008000000080F34D0FE0280010013D7B10100000000078000FA128A7D05078000FC000000080000000A000000020000000813D7ED01078000FA128A7D05078000FC128A7D07022A45790000000513E1C502000000010AD3577F0000000510D100FE000000080000000400000003128A410700000003022A457900000008000000070000000200000008000000000000000400000003135D450700000003045489F91386AD020CFD9BFF00000008000000060000000113867102000000010CFD9BFF000000070F34D0FE000000070000000400000002135D450500000002050000FC00000008135D450700000003045489F90000000800000007135D8101050000FA135D8105050000FC135D8107045489F91386AD020CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000005000000040F34D0FE07800100128A410100000000078000FA128A7D05000000050000000200000008128A7D01078000FA128A7D0500000005000000020000000800000000000000040000000113867102000000010CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800100128A410100000000078000FA128A7D05078000FC00000005000000070000000200000007128A7D01078000FA128A7D05078000FC00000005000000070000000200000007000000000F8750FF0780010000000007128A7D01078000FA128A7D05078000FC0000000500000007000000020000000700000000000000040F34D0FE07800100128A410100000000078000FA128A7D05078000FC128A7D07022A45790000000513E1C502000000010AD3577F0000000510D100FE0640010012FF71010000000008C000FA11FC250508C000FC0000000500000007000000020000000712FFAD0108C000FA11FC250508C000FC00000005000000070000000200000007000000000000000400000003128A410700000003022A457913E201020AD3577F0000000510D100FE0000000700000004000000010000000700000002128A410500000002078000FC128A7D07022A457900000008000000070000000300000007128A7D01078000FA128A7D05078000FC128A7D07022A45790000000513E1C502000000010AD3577F0000000510D100FE08C0010011FBE9010000000008C000FA11FC250500000005000000020000000711FC250100000009000000000000000400000003128A410700000003022A457913E201020AD3577F0000000510D100FE0000000700000004000000010000000700000002128A410500000002078000FC128A7D07022A457913E201020AD3577F0000000510D100FE000000070000000400000001000000070000000300000007000000000000000400000003135D450700000003045489F91386AD020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040780010000000007000000070F8750FF00000007000000040F34D0FE07800100128A410100000000078000FA128A7D05000000060000000200000007128A7D01078000FA128A7D0500000009000000020000000700000000000000040000000113867102000000010CFD9BFF000000070F34D0FE0780010000000007000000070000000400000002135D450500000002050000FC135D8107045489F91386AD02000000080000000113867102000000010CFD9BFF000000070F34D0FE0780010000000007000000070000000400000003135D450700000003045489F91386AD020CFD9BFF000000070F34D0FE0000000700000004000000010000000700000000"
theorem small_9387631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387631_left_root small_9387631_left_fuel small_9387631_left_count small_9387631_left_encoded = true := by
  decide +kernel
theorem small_9387631_left_covered : CoveredBy scale carrier boxes small_9387631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387631_left_root small_9387631_left_fuel small_9387631_left_count small_9387631_left_encoded small_9387631_left_checked

theorem cover_9387631 : CoveredBy scale carrier boxes root_9387631 := by
  apply coveredBy_split_literal root_9387631 small_9387631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9388353 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9387631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9388353
#print axioms cover_9387631

def root_9387625 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387625_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387625_left_fuel : Nat := 1
def small_9387625_left_count : Nat := 1
def small_9387625_left_encoded : String := "00000001"
theorem small_9387625_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387625_left_root small_9387625_left_fuel small_9387625_left_count small_9387625_left_encoded = true := by
  decide +kernel
theorem small_9387625_left_covered : CoveredBy scale carrier boxes small_9387625_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387625_left_root small_9387625_left_fuel small_9387625_left_count small_9387625_left_encoded small_9387625_left_checked

theorem cover_9387625 : CoveredBy scale carrier boxes root_9387625 := by
  apply coveredBy_split_literal root_9387625 small_9387625_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9387631 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9387625_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9387631
#print axioms cover_9387625

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224

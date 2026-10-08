import TaoBundleAssembly0564
import TaoBundleAssembly0565
import TaoBundleAssembly0569
import TaoBundleAssembly0570
import TaoBundleChunkBatch0769
import TaoBundleChunkBatch0772
import TaoBundleChunkBatch0775
import TaoBundleChunkBatch0776
import TaoBundleChunkBatch0777
import TaoBundleChunkBatch0778
import TaoBundleChunkBatch0779
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571
def root_8247352 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247352_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247352_right_fuel : Nat := 30
def small_8247352_right_count : Nat := 369
def small_8247352_right_encoded : String := "1152250908A912FB12073D0408A912FD12073D0608A91309120701080000000405000100135D450100000000050000F8135D80F9000000010CFD9BFB000000050000000A000000050000000512073D0805000100135D450100000000050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D108000000040C9A8704000000060F878CFB000000020C9A87060F8750FD0000000500000003000000050F350D080C9A87040F8750FB0C9A87060F8750FD0C9A87080F8751090000000402800100000000080000000800000006000000030F878CFD000000030C9A87080F87510900000004028001000000000613D7ED01078000F800000006000000060000000000000006000000020F878CFB000000020C9A87060F8750FD0C9A87080F875109000000040280010000000008000000080F878D090000000800000004000000030F878CFD000000030C9A87080F875109000000040280010013D7B10100000000078000F8128A7CF9000000010000000A0000000A13D7ED01078000F8128A7CF9000000010DE7CA040E5FD8FB00000006000000020000000500000005000000000F878D09028001000000000A000000050000000400000004000000030F34D106000000030CFD9C090000000A0F350D080C9A87040000000A0F878CFB000000020C9A87080F87510900000004028001000000000A000000050000000500000004000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F8750FD0C9A87080F875109000000040280010013D7B10100000000078000F8128A7CF900000001000000080000000813D7ED01078000F8128A7CF9000000010000000800000005000000000F878D0902800100000000080000000500000004000000030F878CFD000000030C9A87080F875109000000040280010013D7B10100000000078000F8128A7CF9000000010AD3577B10D13D040DE7CA060E5FD8FD0000000800000003000000050000000210D10104000000020000000500000005000000050000000500000004000000030F34D1060000000300000005135D44F90CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D10800000004000000050F350D080C9A87040F8750FB0C9A87060000000800000008000000020F878CFB000000020C9A87060F8750FD00000008000000030000000500000004000000030F34D1060000000300000005000000020F34D104000000020000000500000001135D8101050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D10800000004000000050F350D080C9A87040F8750FB0C9A87060F8750FD0C9A87080F875109000000040780010000000008128A7D01000000050000000000000005000000030F878CFD000000030C9A87080F8751090000000407800100128A410100000000078000F800000006000000050000000500000005000000020F878CFB000000020C9A87060F8750FD0C9A87080F8751090000000407800100000000080000000500000005000000030000000500000004000000030F34D1060000000300000005000000020F34D104000000020000000500000005000000000000000400000003120701060000000308A9130912070108000000040000000512073D0805000100135D450100000000050000F8135D80F9000000010CFD9BFB0000000A0000000A00000005000000050000000400000002120701040000000208A912FD12073D0608A9130912070108000000040000000512073D0805000100135D450100000000050000F8135D80F900000001045489FB1386AD040CFD9BFD0F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F8750FD0C9A87080F8751090000000402800100000000080000000500000005000000030000000500000004000000030F34D1060000000300000005000000021386710400000002000000050000000500000005000000040000000312070106000000030000000500000004"
theorem small_8247352_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247352_right_root small_8247352_right_fuel small_8247352_right_count small_8247352_right_encoded = true := by
  decide +kernel
theorem small_8247352_right_covered : CoveredBy scale carrier boxes small_8247352_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247352_right_root small_8247352_right_fuel small_8247352_right_count small_8247352_right_encoded small_8247352_right_checked

theorem cover_8247352 : CoveredBy scale carrier boxes root_8247352 := by
  apply coveredBy_split_literal root_8247352 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0570.root_8247353 small_8247352_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0570.cover_8247353
  · exact small_8247352_right_covered
#print axioms cover_8247352

def root_8247346 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247346_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247346_left_fuel : Nat := 1
def small_8247346_left_count : Nat := 1
def small_8247346_left_encoded : String := "00000003"
theorem small_8247346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247346_left_root small_8247346_left_fuel small_8247346_left_count small_8247346_left_encoded = true := by
  decide +kernel
theorem small_8247346_left_covered : CoveredBy scale carrier boxes small_8247346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247346_left_root small_8247346_left_fuel small_8247346_left_count small_8247346_left_encoded small_8247346_left_checked

theorem cover_8247346 : CoveredBy scale carrier boxes root_8247346 := by
  apply coveredBy_split_literal root_8247346 small_8247346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8247352 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8247346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8247352
#print axioms cover_8247346

def root_8245564 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8245564 : CoveredBy scale carrier boxes root_8245564 := by
  apply coveredBy_split_literal root_8245564 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3088.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8247346 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3088.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8247346
#print axioms cover_8245564

def root_8245558 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8245558_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8245558_left_fuel : Nat := 1
def small_8245558_left_count : Nat := 1
def small_8245558_left_encoded : String := "00000002"
theorem small_8245558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8245558_left_root small_8245558_left_fuel small_8245558_left_count small_8245558_left_encoded = true := by
  decide +kernel
theorem small_8245558_left_covered : CoveredBy scale carrier boxes small_8245558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8245558_left_root small_8245558_left_fuel small_8245558_left_count small_8245558_left_encoded small_8245558_left_checked

theorem cover_8245558 : CoveredBy scale carrier boxes root_8245558 := by
  apply coveredBy_split_literal root_8245558 small_8245558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8245564 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8245558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8245564
#print axioms cover_8245558

def root_8244302 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8244302 : CoveredBy scale carrier boxes root_8244302 := by
  apply coveredBy_split_literal root_8244302 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3087.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8245558 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3087.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8245558
#print axioms cover_8244302

def root_8244297 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8244297_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8244297_right_fuel : Nat := 1
def small_8244297_right_count : Nat := 1
def small_8244297_right_encoded : String := "00000001"
theorem small_8244297_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8244297_right_root small_8244297_right_fuel small_8244297_right_count small_8244297_right_encoded = true := by
  decide +kernel
theorem small_8244297_right_covered : CoveredBy scale carrier boxes small_8244297_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8244297_right_root small_8244297_right_fuel small_8244297_right_count small_8244297_right_encoded small_8244297_right_checked

theorem cover_8244297 : CoveredBy scale carrier boxes root_8244297 := by
  apply coveredBy_split_literal root_8244297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8244302 small_8244297_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8244302
  · exact small_8244297_right_covered
#print axioms cover_8244297

def root_8205209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8205209 : CoveredBy scale carrier boxes root_8205209 := by
  apply coveredBy_split_literal root_8205209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8205210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8244297 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8205210
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8244297
#print axioms cover_8205209

def root_8205203 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8205203_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8205203_left_fuel : Nat := 1
def small_8205203_left_count : Nat := 1
def small_8205203_left_encoded : String := "00000000"
theorem small_8205203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8205203_left_root small_8205203_left_fuel small_8205203_left_count small_8205203_left_encoded = true := by
  decide +kernel
theorem small_8205203_left_covered : CoveredBy scale carrier boxes small_8205203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8205203_left_root small_8205203_left_fuel small_8205203_left_count small_8205203_left_encoded small_8205203_left_checked

theorem cover_8205203 : CoveredBy scale carrier boxes root_8205203 := by
  apply coveredBy_split_literal root_8205203 small_8205203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8205209 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8205203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8205209
#print axioms cover_8205203

def root_8279936 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8279936 : CoveredBy scale carrier boxes root_8279936 := by
  apply coveredBy_split_literal root_8279936 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3100.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3101.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3100.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3101.covered
#print axioms cover_8279936

def root_8279930 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8279930_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8279930_left_fuel : Nat := 1
def small_8279930_left_count : Nat := 1
def small_8279930_left_encoded : String := "00000003"
theorem small_8279930_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8279930_left_root small_8279930_left_fuel small_8279930_left_count small_8279930_left_encoded = true := by
  decide +kernel
theorem small_8279930_left_covered : CoveredBy scale carrier boxes small_8279930_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8279930_left_root small_8279930_left_fuel small_8279930_left_count small_8279930_left_encoded small_8279930_left_checked

theorem cover_8279930 : CoveredBy scale carrier boxes root_8279930 := by
  apply coveredBy_split_literal root_8279930 small_8279930_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8279936 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8279930_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8279936
#print axioms cover_8279930

def root_8277830 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8277830 : CoveredBy scale carrier boxes root_8277830 := by
  apply coveredBy_split_literal root_8277830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3099.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8279930 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3099.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8279930
#print axioms cover_8277830

def root_8277825 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8277825_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8277825_right_fuel : Nat := 1
def small_8277825_right_count : Nat := 1
def small_8277825_right_encoded : String := "00000002"
theorem small_8277825_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8277825_right_root small_8277825_right_fuel small_8277825_right_count small_8277825_right_encoded = true := by
  decide +kernel
theorem small_8277825_right_covered : CoveredBy scale carrier boxes small_8277825_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8277825_right_root small_8277825_right_fuel small_8277825_right_count small_8277825_right_encoded small_8277825_right_checked

theorem cover_8277825 : CoveredBy scale carrier boxes root_8277825 := by
  apply coveredBy_split_literal root_8277825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8277830 small_8277825_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8277830
  · exact small_8277825_right_covered
#print axioms cover_8277825

def root_8284236 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8284236 : CoveredBy scale carrier boxes root_8284236 := by
  apply coveredBy_split_literal root_8284236 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3102.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3103.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3102.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3103.covered
#print axioms cover_8284236

def root_8284230 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8284230_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8284230_left_fuel : Nat := 1
def small_8284230_left_count : Nat := 1
def small_8284230_left_encoded : String := "00000002"
theorem small_8284230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8284230_left_root small_8284230_left_fuel small_8284230_left_count small_8284230_left_encoded = true := by
  decide +kernel
theorem small_8284230_left_covered : CoveredBy scale carrier boxes small_8284230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8284230_left_root small_8284230_left_fuel small_8284230_left_count small_8284230_left_encoded small_8284230_left_checked

theorem cover_8284230 : CoveredBy scale carrier boxes root_8284230 := by
  apply coveredBy_split_literal root_8284230 small_8284230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8284236 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8284230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8284236
#print axioms cover_8284230

def root_8277824 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8277824 : CoveredBy scale carrier boxes root_8277824 := by
  apply coveredBy_split_literal root_8277824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8277825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8284230 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8277825
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8284230
#print axioms cover_8277824

def root_8277818 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8277818_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8277818_left_fuel : Nat := 1
def small_8277818_left_count : Nat := 1
def small_8277818_left_encoded : String := "00000001"
theorem small_8277818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8277818_left_root small_8277818_left_fuel small_8277818_left_count small_8277818_left_encoded = true := by
  decide +kernel
theorem small_8277818_left_covered : CoveredBy scale carrier boxes small_8277818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8277818_left_root small_8277818_left_fuel small_8277818_left_count small_8277818_left_encoded small_8277818_left_checked

theorem cover_8277818 : CoveredBy scale carrier boxes root_8277818 := by
  apply coveredBy_split_literal root_8277818 small_8277818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8277824 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8277818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8277824
#print axioms cover_8277818

def root_8277817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8277817 : CoveredBy scale carrier boxes root_8277817 := by
  apply coveredBy_split_literal root_8277817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8277818 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3104.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8277818
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3104.covered
#print axioms cover_8277817

def root_8277812 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8277812_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8277812_right_fuel : Nat := 1
def small_8277812_right_count : Nat := 1
def small_8277812_right_encoded : String := "00000000"
theorem small_8277812_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8277812_right_root small_8277812_right_fuel small_8277812_right_count small_8277812_right_encoded = true := by
  decide +kernel
theorem small_8277812_right_covered : CoveredBy scale carrier boxes small_8277812_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8277812_right_root small_8277812_right_fuel small_8277812_right_count small_8277812_right_encoded small_8277812_right_checked

theorem cover_8277812 : CoveredBy scale carrier boxes root_8277812 := by
  apply coveredBy_split_literal root_8277812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8277817 small_8277812_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8277817
  · exact small_8277812_right_covered
#print axioms cover_8277812

def root_8205202 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8205202 : CoveredBy scale carrier boxes root_8205202 := by
  apply coveredBy_split_literal root_8205202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8205203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8277812 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8205203
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8277812
#print axioms cover_8205202

def root_8203554 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8203554 : CoveredBy scale carrier boxes root_8203554 := by
  apply coveredBy_split_literal root_8203554 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3074.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8205202 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3074.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8205202
#print axioms cover_8203554

def root_8185212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8185212 : CoveredBy scale carrier boxes root_8185212 := by
  apply coveredBy_split_literal root_8185212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.root_8185213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8203554 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0565.cover_8185213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8203554
#print axioms cover_8185212

def root_8298400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8298400 : CoveredBy scale carrier boxes root_8298400 := by
  apply coveredBy_split_literal root_8298400 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3108.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3109.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3108.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3109.covered
#print axioms cover_8298400

def root_8298395 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8298395_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8298395_right_fuel : Nat := 1
def small_8298395_right_count : Nat := 1
def small_8298395_right_encoded : String := "00000000"
theorem small_8298395_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8298395_right_root small_8298395_right_fuel small_8298395_right_count small_8298395_right_encoded = true := by
  decide +kernel
theorem small_8298395_right_covered : CoveredBy scale carrier boxes small_8298395_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8298395_right_root small_8298395_right_fuel small_8298395_right_count small_8298395_right_encoded small_8298395_right_checked

theorem cover_8298395 : CoveredBy scale carrier boxes root_8298395 := by
  apply coveredBy_split_literal root_8298395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8298400 small_8298395_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8298400
  · exact small_8298395_right_covered
#print axioms cover_8298395

def root_8296595 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8296595 : CoveredBy scale carrier boxes root_8296595 := by
  apply coveredBy_split_literal root_8296595 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3107.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8298395 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3107.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8298395
#print axioms cover_8296595

def root_8294705 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8294705 : CoveredBy scale carrier boxes root_8294705 := by
  apply coveredBy_split_literal root_8294705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3106.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8296595 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3106.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8296595
#print axioms cover_8294705

def root_8291857 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8291857 : CoveredBy scale carrier boxes root_8291857 := by
  apply coveredBy_split_literal root_8291857 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3105.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8294705 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3105.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8294705
#print axioms cover_8291857

def root_8185211 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8185211 : CoveredBy scale carrier boxes root_8185211 := by
  apply coveredBy_split_literal root_8185211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8185212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8291857 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8185212
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8291857
#print axioms cover_8185211

def root_8087877 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087877 : CoveredBy scale carrier boxes root_8087877 := by
  apply coveredBy_split_literal root_8087877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.root_8087878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8185211 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0564.cover_8087878
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8185211
#print axioms cover_8087877

def root_8313278 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8313278 : CoveredBy scale carrier boxes root_8313278 := by
  apply coveredBy_split_literal root_8313278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3114.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3115.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3114.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3115.covered
#print axioms cover_8313278

def root_8313273 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8313273_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8313273_right_fuel : Nat := 1
def small_8313273_right_count : Nat := 1
def small_8313273_right_encoded : String := "00000001"
theorem small_8313273_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8313273_right_root small_8313273_right_fuel small_8313273_right_count small_8313273_right_encoded = true := by
  decide +kernel
theorem small_8313273_right_covered : CoveredBy scale carrier boxes small_8313273_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8313273_right_root small_8313273_right_fuel small_8313273_right_count small_8313273_right_encoded small_8313273_right_checked

theorem cover_8313273 : CoveredBy scale carrier boxes root_8313273 := by
  apply coveredBy_split_literal root_8313273 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8313278 small_8313273_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8313278
  · exact small_8313273_right_covered
#print axioms cover_8313273

def root_8311095 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8311095 : CoveredBy scale carrier boxes root_8311095 := by
  apply coveredBy_split_literal root_8311095 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3113.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8313273 coord1 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3113.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8313273
#print axioms cover_8311095

def root_8311090 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8311090_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8311090_right_fuel : Nat := 1
def small_8311090_right_count : Nat := 1
def small_8311090_right_encoded : String := "00000002"
theorem small_8311090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8311090_right_root small_8311090_right_fuel small_8311090_right_count small_8311090_right_encoded = true := by
  decide +kernel
theorem small_8311090_right_covered : CoveredBy scale carrier boxes small_8311090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8311090_right_root small_8311090_right_fuel small_8311090_right_count small_8311090_right_encoded small_8311090_right_checked

theorem cover_8311090 : CoveredBy scale carrier boxes root_8311090 := by
  apply coveredBy_split_literal root_8311090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8311095 small_8311090_right_root coord2 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8311095
  · exact small_8311090_right_covered
#print axioms cover_8311090

def root_8310382 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8310382_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8310382_left_fuel : Nat := 23
def small_8310382_left_count : Nat := 339
def small_8310382_left_encoded : String := "13D7B10500000002067ECE7912EA94F800000001067ECE7D12EA94FC000000030B4D43FE10804D0903C0010013A51101000000000140010413F5D905000000020793F0B912825CF8000000010793F0BD0000000700000007128220F80793F0BD12825CFC000000030000000A0000000A0000000113F615050793F0B912825CF8000000010793F0BD00000005128220FC0BF3E57E10092909032001000000000A00000007000000041008ED09000000040000000700000003128220F80793F0BD12825CFC000000030BF3E57E10092909032001000000000A00000006000000041008ED09000000040320010013C10901000000000000000A13C1450101E00104000000060000000500000000128220FC0BF3E57E100929090000000A000000040000000A00000003000000010000000213A54D010140010413F5D905000000020793F0B912825CF80000000100000007128220F8000000060000000113F615050793F0B912825CF80000000100000005128220F80793F0BD00000006128220FC0BF3E57E1009290900000006000000041008ED0900000004046001001383DD010000000001E001040000000713E9950507095F99000000050000000600000002000000060000000300000001000000020000000000000004108011090000000403C0010013A5110100000000014001040000000713F615050793F0B912825CF8000000010793F0BD0000000500000007128220F80793F0BD12825CFC0000000300000008128220FC0AA6A27E000000070000000700000003000000010000000213A54D01014001040000000713F615050793F0B912825CF80000000100000005128220F80793F0BD00000008128220FC0AA6A27E00000007000000070000000300000001000000020000000012EA58FC0B4D43FE10804D0903C0010013A5110100000000014001040000000A13F615050793F0B912825CF8000000010569AC3D134110FC000000030BF3E57E100929090000000A00000004000000070000000A0000000A0000000213A54D010140010413F5D905000000020793F0B9000000070000000A13F615050793F0B912825CF8000000010569AC3D134110FC000000030BF3E57E00000007000000071340D4FC0000000700000003128220F80569AC3D134110FC000000030BF3E57E10092909046001000000000A00000006000000041008ED0900000004046001000000000A000000071340D4FC0000000A0000000300000001000000020000000000000004108011090000000403C0010013A5110100000000014001040000000713F615050793F0B9000000070000000A0000000213A54D01014001040000000713F615050793F0B900000007128220F80569AC3D00000007000000070000000100000002000000000000000312EA58F8067ECE7D12EA94FC000000030B4D43FE10804D0903C0010013A5110100000000014001040000000A13F615050569AC39134110F8000000010793F0BD000000060000000A00000006000000020000000600000004108011090000000403C0010013A5110100000000014001040000000813F615050569AC39134110F8000000010793F0BD000000080000000A000000080000000213A54D01000000080000000012EA58FC0B4D43FE10804D0903C001000000000A13A54D01014001040000000A13F615050569AC39134110F8000000010569AC3D000000060000000A00000006000000020000000000000004108011090000000403C001000000000A13A54D01014001040000000A13F615050569AC39134110F8000000010569AC3D134110FC000000030AA6A27E10EDAD090000000A000000040000000A0000000A0000000A00000002000000000000000300000001"
theorem small_8310382_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8310382_left_root small_8310382_left_fuel small_8310382_left_count small_8310382_left_encoded = true := by
  decide +kernel
theorem small_8310382_left_covered : CoveredBy scale carrier boxes small_8310382_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8310382_left_root small_8310382_left_fuel small_8310382_left_count small_8310382_left_encoded small_8310382_left_checked

theorem cover_8310382 : CoveredBy scale carrier boxes root_8310382 := by
  apply coveredBy_split_literal root_8310382 small_8310382_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8311090 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8310382_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8311090
#print axioms cover_8310382

def root_8310377 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8310377_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8310377_right_fuel : Nat := 1
def small_8310377_right_count : Nat := 1
def small_8310377_right_encoded : String := "00000000"
theorem small_8310377_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8310377_right_root small_8310377_right_fuel small_8310377_right_count small_8310377_right_encoded = true := by
  decide +kernel
theorem small_8310377_right_covered : CoveredBy scale carrier boxes small_8310377_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8310377_right_root small_8310377_right_fuel small_8310377_right_count small_8310377_right_encoded small_8310377_right_checked

theorem cover_8310377 : CoveredBy scale carrier boxes root_8310377 := by
  apply coveredBy_split_literal root_8310377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8310382 small_8310377_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8310382
  · exact small_8310377_right_covered
#print axioms cover_8310377

def root_8309487 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8309487_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8309487_left_fuel : Nat := 25
def small_8309487_left_count : Nat := 425
def small_8309487_left_encoded : String := "13D7B101000000000280010413D7B10500000002067ECE7912EA94F800000001067ECE7D12EA94FC000000030B4D43FE10804D09014001000000000A13F61501014001040000000A13F615050793F0B912825CF8000000010793F0BD12825CFC000000030BF3E57E1009290901E001000000000A00000005000000041008ED0900000004000000070000000A128220F80793F0BD12825CFC000000030000000A0000000A000000010000000200000000000000041080110900000004014001000000000A13F61501014001040000000A13F615050793F0B912825CF8000000010793F0BD0000000700000007128220F80793F0BD000000090000000A00000001000000020000000012EA58FC0B4D43FE10804D090000000A000000040000000A0000000312EA58F8067ECE7D12EA94FC000000030B4D43FE10804D090000000A000000040000000A0000000A0000000113D7ED05067ECE7912EA94F800000001067ECE7D12EA94FC000000030B4D43FE10804D090140010013F5D9010000000003C0010413A51105000000020793F0B912825CF8000000010793F0BD000000090000000A128220F80793F0BD000000090000000A0000000113A54D050793F0B912825CF8000000010793F0BD0000000500000006128220F80793F0BD0000000900000008000000010000000213F6150103C0010413A51105000000020793F0B912825CF8000000010793F0BD00000005128220FC0BF3E57E1009290901E001000000000813E995010000000500000000000000041008ED090000000401E001000000000613E995010320010400000007000000050000000000000003128220F80793F0BD12825CFC000000030BF3E57E1009290901E001000000000913E995010000000500000000000000041008ED090000000400000009128220FC0BF3E57E100929090000000A000000040000000A000000030000000113A54D050793F0B912825CF80000000100000005128220F80793F0BD12825CFC0000000300000005128220FC0BF3E57E1009290900000008000000041008ED090000000401E001000000000913E99501046001041383DD050000000207095F9900000005000000090000000800000000000000030000000100000002000000000000000410801109000000040140010013F5D9010000000003C0010413A5110500000002000000090000000913F6150103C0010413A51105000000020793F0B912825CF8000000010793F0BD0000000500000006128220F80793F0BD00000009128220FC0AA6A27E0000000900000009000000030000000113A54D050793F0B912825CF80000000100000005128220F80793F0BD00000009128220FC0AA6A27E00000009000000060000000300000001000000020000000012EA58FC0B4D43FE10804D090140010013F5D901000000000000000813F6150103C0010413A51105000000020793F0B9000000080000000A0000000800000000000000041080110900000004014001000000000613F6150103C0010413A51105000000020793F0B9000000060000000A13A54D050000000600000002000000000000000312EA58F8067ECE7D12EA94FC000000030B4D43FE10804D090140010013F5D9010000000003C001040000000A13A54D050569AC39000000090000000A0000000213F6150103C0010413A51105000000020569AC39134110F8000000010793F0BD12825CFC000000030BF3E57E100929090000000A00000004000000090000000A0000000A13A54D050569AC39134110F8000000010793F0BD12825CFC000000030BF3E57E0000000900000009128220FC0BF3E57E1009290901E001000000000A13E99501046001040000000A0000000800000000000000041008ED090000000401E001000000000913E99501046001040000000A0000000900000000000000031340D4F80793F0BD12825CFC0000000300000009128220FC0000000A000000030000000100000002000000000000000410801109000000040140010013F5D901000000000000000913F6150103C0010413A51105000000020569AC39134110F8000000010793F0BD000000090000000A0000000A13A54D050569AC390000000900000009000000020000000012EA58FC0B4D43FE10804D09014001000000000A13F6150103C001040000000A13A54D050569AC39000000080000000A0000000200000000000000041080110900000004014001000000000A13F6150103C001040000000A13A54D050569AC39134110F8000000010569AC3D134110FC000000030AA6A27E10EDAD090000000A000000040000000A0000000A0000000A0000000200000000000000030000000100000002"
theorem small_8309487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8309487_left_root small_8309487_left_fuel small_8309487_left_count small_8309487_left_encoded = true := by
  decide +kernel
theorem small_8309487_left_covered : CoveredBy scale carrier boxes small_8309487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8309487_left_root small_8309487_left_fuel small_8309487_left_count small_8309487_left_encoded small_8309487_left_checked

theorem cover_8309487 : CoveredBy scale carrier boxes root_8309487 := by
  apply coveredBy_split_literal root_8309487 small_8309487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8310377 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8309487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8310377
#print axioms cover_8309487

def root_8309481 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8309481_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8309481_left_fuel : Nat := 1
def small_8309481_left_count : Nat := 1
def small_8309481_left_encoded : String := "00000004"
theorem small_8309481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8309481_left_root small_8309481_left_fuel small_8309481_left_count small_8309481_left_encoded = true := by
  decide +kernel
theorem small_8309481_left_covered : CoveredBy scale carrier boxes small_8309481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8309481_left_root small_8309481_left_fuel small_8309481_left_count small_8309481_left_encoded small_8309481_left_checked

theorem cover_8309481 : CoveredBy scale carrier boxes root_8309481 := by
  apply coveredBy_split_literal root_8309481 small_8309481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8309487 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_8309481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8309487
#print axioms cover_8309481

def root_8308135 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8308135 : CoveredBy scale carrier boxes root_8308135 := by
  apply coveredBy_split_literal root_8308135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3112.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8309481 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3112.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8309481
#print axioms cover_8308135

def root_8308129 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308129_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308129_left_fuel : Nat := 1
def small_8308129_left_count : Nat := 1
def small_8308129_left_encoded : String := "00000004"
theorem small_8308129_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308129_left_root small_8308129_left_fuel small_8308129_left_count small_8308129_left_encoded = true := by
  decide +kernel
theorem small_8308129_left_covered : CoveredBy scale carrier boxes small_8308129_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308129_left_root small_8308129_left_fuel small_8308129_left_count small_8308129_left_encoded small_8308129_left_checked

theorem cover_8308129 : CoveredBy scale carrier boxes root_8308129 := by
  apply coveredBy_split_literal root_8308129 small_8308129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8308135 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8308129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8308135
#print axioms cover_8308129

def root_8308049 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308049_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308049_left_fuel : Nat := 13
def small_8308049_left_count : Nat := 39
def small_8308049_left_encoded : String := "0F34D0FE0280010013D7B101000000000280010413D7B10500000002067ECE7912EA94F800000001067ECE7D12EA94FC000000030AD357890000000610D13CFE000000040140010000000008000000060000000812EA58F8067ECE7D000000060000000A000000010000000813D7ED010280010413D7B105000000020000000613D7ED05067ECE790000000800000006000000020000000000000004"
theorem small_8308049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308049_left_root small_8308049_left_fuel small_8308049_left_count small_8308049_left_encoded = true := by
  decide +kernel
theorem small_8308049_left_covered : CoveredBy scale carrier boxes small_8308049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308049_left_root small_8308049_left_fuel small_8308049_left_count small_8308049_left_encoded small_8308049_left_checked

theorem cover_8308049 : CoveredBy scale carrier boxes root_8308049 := by
  apply coveredBy_split_literal root_8308049 small_8308049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8308129 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8308049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8308129
#print axioms cover_8308049

def root_8308043 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308043_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308043_left_fuel : Nat := 1
def small_8308043_left_count : Nat := 1
def small_8308043_left_encoded : String := "00000003"
theorem small_8308043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308043_left_root small_8308043_left_fuel small_8308043_left_count small_8308043_left_encoded = true := by
  decide +kernel
theorem small_8308043_left_covered : CoveredBy scale carrier boxes small_8308043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308043_left_root small_8308043_left_fuel small_8308043_left_count small_8308043_left_encoded small_8308043_left_checked

theorem cover_8308043 : CoveredBy scale carrier boxes root_8308043 := by
  apply coveredBy_split_literal root_8308043 small_8308043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8308049 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8308043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8308049
#print axioms cover_8308043

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571

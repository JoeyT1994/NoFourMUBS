import TaoBundleAssembly0098
import TaoBundleAssembly0100
import TaoBundleChunkBatch0373
import TaoBundleChunkBatch0374
import TaoBundleChunkBatch0375
import TaoBundleChunkBatch0376
import TaoBundleChunkBatch0377
import TaoBundleChunkBatch0378
import TaoBundleChunkBatch0379
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101
def root_3971296 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971296_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971296_left_fuel : Nat := 27
def small_3971296_left_count : Nat := 325
def small_3971296_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E9070000000300000005115225070A0000FE115224FF00000004000000051151E8FF08A912FB12073CFA0000000208A913071207010600000003050000F6135D810105000102135D44F9050000FE000000050000000600000001135D80F900000001050000FE135D80FF000000040CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000050F8750FB078000F600000005128A41010000000000000005000000020000000500000005135D44FF0CFD9BFB000000060F34D0FA00000005000000020000000400000000135D45010000000005000102135D44F9050000FE000000050000000600000001135D80F900000001050000FE135D80FF000000040CFD9BFB0F350CFA0000000204548A071386710600000003000000060000000500000005135D44FF0CFD9BFB000000060F34D0FA00000005000000020000000412073D06050000F600000005135D4501000000000000000500000003120700FA000000050000000200000004000000031151E8FB0A0001061151E9070000000300000005115225070A0000FE115224FF0000000408A91307120701060000000308A912FF12073CFE00000004050000F6135D810105000102135D44F9050000FA000000050000000800000001135D80F900000001050000FA135D80FB0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F60000000500000008000000040000000500000005135D44FB04548A0713867106000000030CFD9BFF0000000800000008000000080000000200000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D80FB0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000008000000040000000500000005135D44FB0000000800000002120700FE000000050000000412073D0608A912FF12073CFE00000004050000F600000005135D4501000000000000000500000005000000031151E8FF08A913071207010600000003050000F6135D810105000102135D44F9050000FA135D80FB00000002050000FE00000008000000060000000800000001135D80F900000001050000FA135D80FB00000002050000FE135D80FF0000000404548A071386710600000003078000F6128A7D010780010200000008128A7CF900000001078000FA128A7CFB00000002000000090000000800000000128A4101000000000780010200000008128A7CF900000001078000FA128A7CFB00000002078000FE00000005000000060000000800000008135D44FF04548A07000000061386AD06078000F600000008000000070000000300000004135D44FB050000FE00000008000000090000000200000000135D45010000000005000102135D44F9050000FA135D80FB00000002050000FE00000008000000060000000800000001135D80F900000001050000FA135D80FB00000002050000FE135D80FF0000000404548A071386710600000003028000F613D7ED010780010200000006128A7CF900000001078000FA00000006000000080000000013D7B101000000000780010200000006128A7CF900000001078000FA000000060000000800000008135D44FF04548A07000000060000000600000004135D44FB050000FE00000008000000090000000212073D06050000F600000008135D450100000000000000080000000300000004000000030000000200000001"
theorem small_3971296_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3971296_left_root small_3971296_left_fuel small_3971296_left_count small_3971296_left_encoded = true := by
  decide +kernel
theorem small_3971296_left_covered : CoveredBy scale carrier boxes small_3971296_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3971296_left_root small_3971296_left_fuel small_3971296_left_count small_3971296_left_encoded small_3971296_left_checked

theorem cover_3971296 : CoveredBy scale carrier boxes root_3971296 := by
  apply coveredBy_split_literal root_3971296 small_3971296_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0100.root_3971978 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3971296_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0100.cover_3971978
#print axioms cover_3971296

def root_3971290 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971290_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3971290_left_fuel : Nat := 1
def small_3971290_left_count : Nat := 1
def small_3971290_left_encoded : String := "00000000"
theorem small_3971290_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3971290_left_root small_3971290_left_fuel small_3971290_left_count small_3971290_left_encoded = true := by
  decide +kernel
theorem small_3971290_left_covered : CoveredBy scale carrier boxes small_3971290_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3971290_left_root small_3971290_left_fuel small_3971290_left_count small_3971290_left_encoded small_3971290_left_checked

theorem cover_3971290 : CoveredBy scale carrier boxes root_3971290 := by
  apply coveredBy_split_literal root_3971290 small_3971290_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3971296 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3971290_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3971296
#print axioms cover_3971290

def root_3942642 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942642 : CoveredBy scale carrier boxes root_3942642 := by
  apply coveredBy_split_literal root_3942642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0100.root_3942643 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3971290 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0100.cover_3942643
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3971290
#print axioms cover_3942642

def root_3942641 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942641 : CoveredBy scale carrier boxes root_3942641 := by
  apply coveredBy_split_literal root_3942641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3942642 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1491.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3942642
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1491.covered
#print axioms cover_3942641

def root_3979559 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3979559 : CoveredBy scale carrier boxes root_3979559 := by
  apply coveredBy_split_literal root_3979559 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1493.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1494.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1493.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1494.covered
#print axioms cover_3979559

def root_3979553 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3979553_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3979553_left_fuel : Nat := 1
def small_3979553_left_count : Nat := 1
def small_3979553_left_encoded : String := "00000001"
theorem small_3979553_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3979553_left_root small_3979553_left_fuel small_3979553_left_count small_3979553_left_encoded = true := by
  decide +kernel
theorem small_3979553_left_covered : CoveredBy scale carrier boxes small_3979553_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3979553_left_root small_3979553_left_fuel small_3979553_left_count small_3979553_left_encoded small_3979553_left_checked

theorem cover_3979553 : CoveredBy scale carrier boxes root_3979553 := by
  apply coveredBy_split_literal root_3979553 small_3979553_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3979559 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3979553_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3979559
#print axioms cover_3979553

def root_3977691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3977691 : CoveredBy scale carrier boxes root_3977691 := by
  apply coveredBy_split_literal root_3977691 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1492.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3979553 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1492.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3979553
#print axioms cover_3977691

def root_3977686 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3977686_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3977686_right_fuel : Nat := 1
def small_3977686_right_count : Nat := 1
def small_3977686_right_encoded : String := "00000000"
theorem small_3977686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3977686_right_root small_3977686_right_fuel small_3977686_right_count small_3977686_right_encoded = true := by
  decide +kernel
theorem small_3977686_right_covered : CoveredBy scale carrier boxes small_3977686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3977686_right_root small_3977686_right_fuel small_3977686_right_count small_3977686_right_encoded small_3977686_right_checked

theorem cover_3977686 : CoveredBy scale carrier boxes root_3977686 := by
  apply coveredBy_split_literal root_3977686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3977691 small_3977686_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3977691
  · exact small_3977686_right_covered
#print axioms cover_3977686

def root_3987003 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3987003_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3987003_right_fuel : Nat := 27
def small_3987003_right_count : Nat := 499
def small_3987003_right_encoded : String := "120701020000000108A912FF12073D08050000F6135D8101050000FA135D80FB0000000205000106135D450700000003045489F91386AD020CFD9BFF0000000A0F34D108000000040000000A000000010000000A135D8107045489F91386AD020CFD9BFF0000000A0F34D108000000040000000A000000010000000A00000003135D44FB05000106135D450700000003045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF00000004078000F60000000A128A4101000000000000000A000000040F34D10800000004078000F60000000A128A410100000000028000FA0000000A13D7B0FB028001060000000A00000009000000020000000113867102000000010CFD9BFF0000000A0F34D108000000040000000A135D8107045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF00000007000000040F878CFF00000004078000F600000009128A4101000000000000000A000000040F34D10800000004000000090000000113867102000000010CFD9BFF0000000A0F34D108000000040000000A000000030000000200000000135D450100000000050000FA135D80FB0000000205000106135D450700000003045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF00000004028000F60000000A13D7B10100000000078000FA0000000A128A40FB0000000A00000002000000040F34D10800000004028000F60000000A13D7B10100000000078000FA0000000A128A40FB0280010613D7B107000000030000000A0000000A000000020000000113867102000000010CFD9BFF0000000A0F34D108000000040000000A135D8107045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF00000004028000F60000000A13D7B101000000000000000A000000040F34D10800000004028000F60000000A13D7B10100000000078000FA0000000A128A40FB07800106128A4107000000030000000A00000005000000020000000113867102000000010CFD9BFF0000000A0F34D108000000040000000800000003135D44FB05000106135D450700000003045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF028000F613D7ED01028000FA00000006000000060000000000000006000000040F878CFF00000004028000F613D7ED01028000FA0000000A13D7B0FB028001060000000600000007000000020000000013D7B10100000000028000FA13D7ECFB00000002028001060000000613D7ED07067ECE7912EA95020000000A00000001000000060000000313D7B0FB02800106000000060000000700000002000000040F34D10800000004028000F613D7ED01028000FA13D7ECFB00000002028001060000000A0000000A13D7B0FB0280010613D7B10700000003067ECE7912EA95020AD3577F0000000A00000009000000010000000A13D7ED07067ECE7912EA950200000009000000010000000A00000003000000020000000013D7B10100000000028000FA13D7ECFB000000020280010613D7B10700000003067ECE7912EA95020AD3577F10D13D08014000F60000000A000000060000000410D1010800000004014000F60000000A13F5D9010000000003C000FA0000000A00000005000000010000000A13D7ED07067ECE7912EA95020AD3577F0000000A10D101080000000400000005000000010000000A0000000313D7B0FB0280010613D7B10700000003067ECE7912EA95020AD3577F10D13D08000000060000000410D1010800000004000000050000000112EA5902000000010000000500000005000000020000000113867102000000010CFD9BFF0F350D0800000006000000040F34D10800000004028000F60000000A13D7B10100000000028000FA0000000A00000005135D8107045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF00000007000000040F878CFF00000004028000F613D7ED01028000FA0000000A000000070000000013D7B10100000000028000FA13D7ECFB0000000207800106128A410700000003000000070000000500000005000000040F34D10800000004028000F613D7ED01028000FA13D7ECFB0000000207800106128A4107000000030000000A000000050000000500000000000000050000000113867102000000010CFD9BFF0F350D080C9A87080F8750FF00000007000000040000000A000000040F34D10800000004000000050000000300000002000000041207010800000004050000F6135D8101050000FA135D80FB0000000205000106135D450700000003045489F9000000090000000A00000009135D44FB05000106135D450700000003045489F90000000913867102000000010000000A000000090000000200000000135D450100000000050000FA135D80FB0000000205000106135D450700000003045489F91386AD02045489FF1386AD08028000F613D7ED01078000FA0000000800000009000000000000000800000004000000080000000100000008135D81070000000800000003135D44FB05000106135D450700000003045489F91386AD02045489FF1386AD08028000F60000000913D7B10100000000028000FA13D7ECFB000000020280010613D7B10700000003067ECE79000000090000000800000005000000050000000400000009000000011386710200000001045489FF1386AD08028000F60000000A0000000500000004000000080000000500000002"
theorem small_3987003_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3987003_right_root small_3987003_right_fuel small_3987003_right_count small_3987003_right_encoded = true := by
  decide +kernel
theorem small_3987003_right_covered : CoveredBy scale carrier boxes small_3987003_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3987003_right_root small_3987003_right_fuel small_3987003_right_count small_3987003_right_encoded small_3987003_right_checked

theorem cover_3987003 : CoveredBy scale carrier boxes root_3987003 := by
  apply coveredBy_split_literal root_3987003 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1496.root small_3987003_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1496.covered
  · exact small_3987003_right_covered
#print axioms cover_3987003

def root_3986997 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986997_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986997_left_fuel : Nat := 1
def small_3986997_left_count : Nat := 1
def small_3986997_left_encoded : String := "00000004"
theorem small_3986997_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3986997_left_root small_3986997_left_fuel small_3986997_left_count small_3986997_left_encoded = true := by
  decide +kernel
theorem small_3986997_left_covered : CoveredBy scale carrier boxes small_3986997_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3986997_left_root small_3986997_left_fuel small_3986997_left_count small_3986997_left_encoded small_3986997_left_checked

theorem cover_3986997 : CoveredBy scale carrier boxes root_3986997 := by
  apply coveredBy_split_literal root_3986997 small_3986997_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3987003 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3986997_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3987003
#print axioms cover_3986997

def root_3986717 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986717_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986717_left_fuel : Nat := 21
def small_3986717_left_count : Nat := 135
def small_3986717_left_encoded : String := "1151E8FF08A912F912073D02050000F6135D8101050000FA135D80FB000000020500010600000005135D81070500010800000005135D80FF000000040CFD9BF9000000080F34D10200000001078000F600000005128A410100000000078000FA0000000500000008000000030000000800000000135D450100000000050000FA135D80FB0000000205000106135D45070000000300000008135D810705000108135D44FF0000000800000004135D80FF000000040CFD9BF9000000080F34D10200000001028000F613D7ED01078000FA128A7CFB000000020000000A000000080000000013D7B10100000000078000FA128A7CFB0000000207800106128A41070000000307800108000000050000000A00000007128A40FB078001060000000800000007000000020000000300000008000000011207010200000001050000F6135D8101050000FA135D80FB0000000205000106000000050000000A135D44FB05000106135D4507000000030500010800000005135D80FF00000004045489F90000000800000006135D810705000108135D44FF0000000600000004135D80FF00000004045489F9000000070000000A000000030000000200000000135D450100000000050000FA135D80FB0000000205000106135D45070000000300000006135D810705000108000000060000000A00000003135D44FB0500010600000006135D8107050001080000000600000007000000030000000200000004"
theorem small_3986717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3986717_left_root small_3986717_left_fuel small_3986717_left_count small_3986717_left_encoded = true := by
  decide +kernel
theorem small_3986717_left_covered : CoveredBy scale carrier boxes small_3986717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3986717_left_root small_3986717_left_fuel small_3986717_left_count small_3986717_left_encoded small_3986717_left_checked

theorem cover_3986717 : CoveredBy scale carrier boxes root_3986717 := by
  apply coveredBy_split_literal root_3986717 small_3986717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3986997 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3986717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3986997
#print axioms cover_3986717

def root_3986711 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986711_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986711_left_fuel : Nat := 1
def small_3986711_left_count : Nat := 1
def small_3986711_left_encoded : String := "00000003"
theorem small_3986711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3986711_left_root small_3986711_left_fuel small_3986711_left_count small_3986711_left_encoded = true := by
  decide +kernel
theorem small_3986711_left_covered : CoveredBy scale carrier boxes small_3986711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3986711_left_root small_3986711_left_fuel small_3986711_left_count small_3986711_left_encoded small_3986711_left_checked

theorem cover_3986711 : CoveredBy scale carrier boxes root_3986711 := by
  apply coveredBy_split_literal root_3986711 small_3986711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3986717 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3986711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3986717
#print axioms cover_3986711

def root_3986710 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3986710 : CoveredBy scale carrier boxes root_3986710 := by
  apply coveredBy_split_literal root_3986710 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3986711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1497.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3986711
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1497.covered
#print axioms cover_3986710

def root_3986705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986705_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3986705_right_fuel : Nat := 1
def small_3986705_right_count : Nat := 1
def small_3986705_right_encoded : String := "00000002"
theorem small_3986705_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3986705_right_root small_3986705_right_fuel small_3986705_right_count small_3986705_right_encoded = true := by
  decide +kernel
theorem small_3986705_right_covered : CoveredBy scale carrier boxes small_3986705_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3986705_right_root small_3986705_right_fuel small_3986705_right_count small_3986705_right_encoded small_3986705_right_checked

theorem cover_3986705 : CoveredBy scale carrier boxes root_3986705 := by
  apply coveredBy_split_literal root_3986705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3986710 small_3986705_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3986710
  · exact small_3986705_right_covered
#print axioms cover_3986705

def root_3984013 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3984013 : CoveredBy scale carrier boxes root_3984013 := by
  apply coveredBy_split_literal root_3984013 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1495.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3986705 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1495.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3986705
#print axioms cover_3984013

def root_3984007 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3984007_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3984007_left_fuel : Nat := 1
def small_3984007_left_count : Nat := 1
def small_3984007_left_encoded : String := "00000001"
theorem small_3984007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3984007_left_root small_3984007_left_fuel small_3984007_left_count small_3984007_left_encoded = true := by
  decide +kernel
theorem small_3984007_left_covered : CoveredBy scale carrier boxes small_3984007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3984007_left_root small_3984007_left_fuel small_3984007_left_count small_3984007_left_encoded small_3984007_left_checked

theorem cover_3984007 : CoveredBy scale carrier boxes root_3984007 := by
  apply coveredBy_split_literal root_3984007 small_3984007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3984013 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3984007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3984013
#print axioms cover_3984007

def root_3983143 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3983143_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3983143_left_fuel : Nat := 24
def small_3983143_left_count : Nat := 399
def small_3983143_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E907000000030A00010800000005115224FF0000000408A912FB12073CFA0000000208A912FF12073D08050000F600000005135D4501000000000500010200000005135D80F9000000010500010600000005135D81070CFD9BFB0F350CFA000000020CFD9BFF0F350D0800000005000000040F34D10800000004000000060F34D0FA000000050000000200000003000000041207010800000004050000F600000005135D450100000000050001020000000500000009120700FA0000000500000002115225070A0001081151E8FF08A912FB12073CFA0000000208A9130712070106000000030000000612073D06050000F6135D810105000102135D44F90500010800000005135D80FF000000040000000500000001135D80F9000000010500010800000005135D80FF000000040CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D0600000005000000030F34D0FA000000050000000200000000135D45010000000005000102135D44F905000108000000050000000600000001135D80F90000000105000108135D44FF0CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D0600000005000000030F34D0FA000000050000000200000004135D80FF000000040CFD9BFB0F350CFA000000020CFD9C07000000060F350D060C9A86FA000000050F8750FB0000000600000002000000030F34D0FA000000050000000200000003120700FA08A91307120701060000000300000006000000050000000200000004115224FF0000000408A912FB12073CFA0000000208A9130712070106000000030000000612073D0608A912FF12073D08050000F6135D810105000102135D44F90CFD9BFB000000060F34D0FA000000050000000200000001135D80F9000000010CFD9BFB0F350CFA000000020CFD9C07000000090F350D060CFD9BFF0000000600000009000000030F34D0FA0CFD9C07000000060F350D0600000005000000030000000200000000135D4501000000000500010200000006135D80F9000000010CFD9BFB0F350CFA000000020CFD9C07000000060F350D060CFD9BFF000000060F34D1080000000400000006000000030F34D0FA0000000600000002000000041207010800000004050000F6135D81010500010200000006135D80F9000000010CFD9BFB000000060000000900000000135D45010000000005000102000000060000000600000003120700FA08A9130712070106000000030000000612073D0608A912FF12073D08050000F600000005135D4501000000000500010200000005135D80F900000001045489FB00000006138670FA0000000500000002000000041207010800000004050000F6135D81010500010200000005135D80F900000001045489FB00000005138670FA000000050000000200000000135D450100000000000000060000000300000002000000031151E8FB0A0001061151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912FF12073D08050000F6135D81010500010200000009135D80F900000001050000FA135D80FB000000020500010600000005000000090000000800000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D80FB0000000205000106135D45070000000300000008135D81070CFD9BFF0000000800000009000000030000000800000004120701080000000400000009115225070A0001081151E8FF08A913071207010600000003050000F600000009135D45010000000005000102000000060000000912073D06050000F6135D81010500010200000007135D80F900000001050000FA135D80FB0000000205000108135D44FF0000000700000004000000090000000700000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D80FB0000000205000108135D44FF0000000700000004135D80FF000000040CFD9C070000000900000007000000080000000300000004115224FF0000000408A91307120701060000000308A912FF000000060000000912073D0608A912FF12073D08050000F600000009135D450100000000000000090000000412070108000000040000000900000003000000030000000200000001"
theorem small_3983143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3983143_left_root small_3983143_left_fuel small_3983143_left_count small_3983143_left_encoded = true := by
  decide +kernel
theorem small_3983143_left_covered : CoveredBy scale carrier boxes small_3983143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3983143_left_root small_3983143_left_fuel small_3983143_left_count small_3983143_left_encoded small_3983143_left_checked

theorem cover_3983143 : CoveredBy scale carrier boxes root_3983143 := by
  apply coveredBy_split_literal root_3983143 small_3983143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3984007 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3983143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3984007
#print axioms cover_3983143

def root_3983137 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3983137_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3983137_left_fuel : Nat := 1
def small_3983137_left_count : Nat := 1
def small_3983137_left_encoded : String := "00000000"
theorem small_3983137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3983137_left_root small_3983137_left_fuel small_3983137_left_count small_3983137_left_encoded = true := by
  decide +kernel
theorem small_3983137_left_covered : CoveredBy scale carrier boxes small_3983137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3983137_left_root small_3983137_left_fuel small_3983137_left_count small_3983137_left_encoded small_3983137_left_checked

theorem cover_3983137 : CoveredBy scale carrier boxes root_3983137 := by
  apply coveredBy_split_literal root_3983137 small_3983137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3983143 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3983137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3983143
#print axioms cover_3983137

def root_3977685 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3977685 : CoveredBy scale carrier boxes root_3977685 := by
  apply coveredBy_split_literal root_3977685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3977686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3983137 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3977686
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3983137
#print axioms cover_3977685

def root_3992146 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3992146 : CoveredBy scale carrier boxes root_3992146 := by
  apply coveredBy_split_literal root_3992146 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1498.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1499.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1498.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1499.covered
#print axioms cover_3992146

def root_3977684 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3977684 : CoveredBy scale carrier boxes root_3977684 := by
  apply coveredBy_split_literal root_3977684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3977685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3992146 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3977685
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3992146
#print axioms cover_3977684

def root_3942640 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3942640 : CoveredBy scale carrier boxes root_3942640 := by
  apply coveredBy_split_literal root_3942640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3942641 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3977684 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3942641
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3977684
#print axioms cover_3942640

def root_3894934 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894934 : CoveredBy scale carrier boxes root_3894934 := by
  apply coveredBy_split_literal root_3894934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0100.root_3894935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3942640 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0100.cover_3894935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3942640
#print axioms cover_3894934

def root_3880870 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880870 : CoveredBy scale carrier boxes root_3880870 := by
  apply coveredBy_split_literal root_3880870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.root_3880871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3894934 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0098.cover_3880871
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3894934
#print axioms cover_3880870

def root_3997837 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3997837 : CoveredBy scale carrier boxes root_3997837 := by
  apply coveredBy_split_literal root_3997837 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1501.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1502.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1501.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1502.covered
#print axioms cover_3997837

def root_3997831 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3997831_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3997831_left_fuel : Nat := 1
def small_3997831_left_count : Nat := 1
def small_3997831_left_encoded : String := "00000004"
theorem small_3997831_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3997831_left_root small_3997831_left_fuel small_3997831_left_count small_3997831_left_encoded = true := by
  decide +kernel
theorem small_3997831_left_covered : CoveredBy scale carrier boxes small_3997831_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3997831_left_root small_3997831_left_fuel small_3997831_left_count small_3997831_left_encoded small_3997831_left_checked

theorem cover_3997831 : CoveredBy scale carrier boxes root_3997831 := by
  apply coveredBy_split_literal root_3997831 small_3997831_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3997837 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3997831_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3997837
#print axioms cover_3997831

def root_3997830 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3997830_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3997830_right_fuel : Nat := 24
def small_3997830_right_count : Nat := 311
def small_3997830_right_encoded : String := "1151E8FF08A91301120700F608A91305120700FA05000102135D44F9050000FC135D80FD00000003050000FE135D80FF0000000404548A010000000A000000090000000A135D44FD050000FE135D80FF0000000404548A01138670F604548A05000000051386ACFA00000002028001020000000A13D7ECF900000001028000FC0000000813D7B0FD0000000A00000003000000001386ACF60000000004548A05000000091386ACFA000000020280010213D7B0F9028000FC0000000913D7B0FD078000FE128A7CFF00000004067ECE810000000A12EA94F600000000000000090000000A000000030000000113D7ECF900000001028000FC0000000913D7B0FD078000FE128A7CFF00000004067ECE8112EA58F60000000800000000000000090000000900000003135D44FF04548A010000000A00000009000000040000000300000001135D80F900000001050000FC135D80FD00000003050000FE135D80FF0000000404548A01138670F604548A050000000900000008000000000000000900000009135D44FD050000FE135D80FF0000000404548A01138670F604548A05138670FA07800102128A40F90000000500000001128A7CF900000001028000FC0000000913D7B0FD078000FE128A7CFF00000004000000090000000900000003000000021386ACFA0000000207800102128A40F9028000FC0000000813D7B0FD078000FE128A7CFF00000004022A45810000000800000008000000080000000300000001128A7CF900000001028000FC0000000813D7B0FD078000FE000000080000000800000003000000001386ACF60000000004548A05000000091386ACFA0000000207800102128A40F9028000FC0000000813D7B0FD00000009000000030000000100000009135D44FF04548A01138670F604548A050000000900000008000000000000000900000004000000030000000212073CFA0000000205000102135D44F9050000FC00000008135D44FD050000FE135D80FF0000000404548A01138670F600000008000000001386ACF6000000000CFD9C050F34D0FA0280010200000008000000080000000200000008000000080000000300000001135D80F900000001050000FC00000008135D44FD050000FE135D80FF0000000404548A01000000080000000800000008000000030000000012073CF60000000008A91305120700FA05000102135D44F9050000FC00000009135D44FD050000FE135D80FF000000040CFD9C010F34D0F6000000090000000000000009000000090000000300000001135D80F900000001050000FC00000009135D44FD00000009000000030000000212073CFA0000000205000102135D44F9050000FC135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F6000000080000000000000009135D44FF0CFD9C01000000080000000500000004135D44FD050000FE135D80FF000000040CFD9C010F34D0F60CFD9C050F34D0FA0280010213D7B0F9028000FC0000000813D7B0FD078000FE0000000800000008000000030000000113D7ECF9000000010000000900000002000000050000000000000005135D44FF0CFD9C010F34D0F6000000080000000000000005000000040000000300000001135D80F900000001050000FC135D80FD00000003050000FE0000000900000005135D44FD050000FE135D80FF0000000400000005000000050000000300000004"
theorem small_3997830_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3997830_right_root small_3997830_right_fuel small_3997830_right_count small_3997830_right_encoded = true := by
  decide +kernel
theorem small_3997830_right_covered : CoveredBy scale carrier boxes small_3997830_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3997830_right_root small_3997830_right_fuel small_3997830_right_count small_3997830_right_encoded small_3997830_right_checked

theorem cover_3997830 : CoveredBy scale carrier boxes root_3997830 := by
  apply coveredBy_split_literal root_3997830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3997831 small_3997830_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3997831
  · exact small_3997830_right_covered
#print axioms cover_3997830

def root_3997825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3997825_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3997825_right_fuel : Nat := 1
def small_3997825_right_count : Nat := 1
def small_3997825_right_encoded : String := "00000003"
theorem small_3997825_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3997825_right_root small_3997825_right_fuel small_3997825_right_count small_3997825_right_encoded = true := by
  decide +kernel
theorem small_3997825_right_covered : CoveredBy scale carrier boxes small_3997825_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3997825_right_root small_3997825_right_fuel small_3997825_right_count small_3997825_right_encoded small_3997825_right_checked

theorem cover_3997825 : CoveredBy scale carrier boxes root_3997825 := by
  apply coveredBy_split_literal root_3997825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3997830 small_3997825_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3997830
  · exact small_3997825_right_covered
#print axioms cover_3997825

def root_3996269 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996269 : CoveredBy scale carrier boxes root_3996269 := by
  apply coveredBy_split_literal root_3996269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1500.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3997825 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1500.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3997825
#print axioms cover_3996269

def root_3996264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996264_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996264_right_fuel : Nat := 1
def small_3996264_right_count : Nat := 1
def small_3996264_right_encoded : String := "00000002"
theorem small_3996264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3996264_right_root small_3996264_right_fuel small_3996264_right_count small_3996264_right_encoded = true := by
  decide +kernel
theorem small_3996264_right_covered : CoveredBy scale carrier boxes small_3996264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3996264_right_root small_3996264_right_fuel small_3996264_right_count small_3996264_right_encoded small_3996264_right_checked

theorem cover_3996264 : CoveredBy scale carrier boxes root_3996264 := by
  apply coveredBy_split_literal root_3996264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996269 small_3996264_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996269
  · exact small_3996264_right_covered
#print axioms cover_3996264

def root_3996263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996263_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996263_right_fuel : Nat := 19
def small_3996263_right_count : Nat := 165
def small_3996263_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120700F608A912FD12073CFC0000000308A912FF12073CFE0000000400000008120700FE05000102135D44F9050000FA135D810504548A010000000A00000008000000020000000800000001135D80F900000001050000FA135D810504548A01138670F600000008000000001386ACF60000000000000005000000020000000500000004120700FC00000008000000030000000012073CF60000000008A912FD12073CFC0000000308A912FF12073CFE0000000405000102135D44F9050000FA135D81050CFD9C01000000080000000800000002000000050000000100000005120700FE05000102135D44F9050000FA135D81050CFD9C010F34D0F60CFD9BFD000000080000000500000000000000050000000200000005000000010000000500000004120700FC08A912FF00000008120700FE0000000800000004000000031151E8FF08A913010000000800000008000000041151E8FD0A0000FE115224FF0000000408A91301120700F608A912FF12073CFE0000000405000102135D44F9050000FA135D8105050000FC00000008135D44FD04548A01138670F60000000800000000000000050000000300000002135D4505000000020000000800000001135D80F900000001050000FA135D8105050000FC00000008000000050000000200000005120700FE05000102135D44F9050000FA135D8105050000FC135D80FD0000000304548A01138670F60000000600000000000000050000000500000002000000050000000100000005000000040000000012073CF60000000008A912FF12073CFE0000000400000005000000051151E8FF08A91301120700F60000000800000000000000050000000400000003"
theorem small_3996263_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3996263_right_root small_3996263_right_fuel small_3996263_right_count small_3996263_right_encoded = true := by
  decide +kernel
theorem small_3996263_right_covered : CoveredBy scale carrier boxes small_3996263_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3996263_right_root small_3996263_right_fuel small_3996263_right_count small_3996263_right_encoded small_3996263_right_checked

theorem cover_3996263 : CoveredBy scale carrier boxes root_3996263 := by
  apply coveredBy_split_literal root_3996263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996264 small_3996263_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996264
  · exact small_3996263_right_covered
#print axioms cover_3996263

def root_3996258 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996258_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996258_right_fuel : Nat := 1
def small_3996258_right_count : Nat := 1
def small_3996258_right_encoded : String := "00000001"
theorem small_3996258_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3996258_right_root small_3996258_right_fuel small_3996258_right_count small_3996258_right_encoded = true := by
  decide +kernel
theorem small_3996258_right_covered : CoveredBy scale carrier boxes small_3996258_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3996258_right_root small_3996258_right_fuel small_3996258_right_count small_3996258_right_encoded small_3996258_right_checked

theorem cover_3996258 : CoveredBy scale carrier boxes root_3996258 := by
  apply coveredBy_split_literal root_3996258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996263 small_3996258_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996263
  · exact small_3996258_right_covered
#print axioms cover_3996258

def root_3996257 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996257 : CoveredBy scale carrier boxes root_3996257 := by
  apply coveredBy_split_literal root_3996257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996258 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1503.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996258
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1503.covered
#print axioms cover_3996257

def root_3996252 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996252_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996252_right_fuel : Nat := 1
def small_3996252_right_count : Nat := 1
def small_3996252_right_encoded : String := "00000000"
theorem small_3996252_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3996252_right_root small_3996252_right_fuel small_3996252_right_count small_3996252_right_encoded = true := by
  decide +kernel
theorem small_3996252_right_covered : CoveredBy scale carrier boxes small_3996252_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3996252_right_root small_3996252_right_fuel small_3996252_right_count small_3996252_right_encoded small_3996252_right_checked

theorem cover_3996252 : CoveredBy scale carrier boxes root_3996252 := by
  apply coveredBy_split_literal root_3996252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996257 small_3996252_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996257
  · exact small_3996252_right_covered
#print axioms cover_3996252

def root_3996251 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996251_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3996251_right_fuel : Nat := 22
def small_3996251_right_count : Nat := 273
def small_3996251_right_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91305120700FA08A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D810105000102135D44F904548A05000000090000000900000001135D80F90000000104548A05000000071386ACFA000000020000000900000000135D45010000000005000102135D44F904548A05000000090000000900000001135D80F90000000104548A050000000700000005120700FE0000000700000004120700FC08A912FF12073CFE00000004050000F6135D8101050001020000000A135D80F90000000104548A05000000071386ACFA000000020000000500000000135D450100000000050001020000000A00000005120700FE0000000700000004000000030000000212073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D810105000102135D44F90CFD9C05000000090F350CFA000000020000000500000001000000050000000000000005120700FE050000F6135D810105000102135D44F90CFD9C050F34D0FA0000000700000002000000050000000100000005000000000000000500000004120700FC08A912FF12073CFE00000004050000F6135D810105000102135D44F90000000800000001000000050000000000000005120700FE050000F6135D810105000102135D44F90CFD9C050000000A0F350CFA00000002000000050000000100000005000000000000000500000004000000031151E8FF08A91305120700FA08A912FD00000009120700FC00000009000000030000000212073CFA0000000208A912FD0000000900000005000000041151E8FD0A0000FE115224FF0000000408A91305120700FA08A912FF12073CFE00000004050000F6135D810105000102135D44F9050000FC00000009135D44FD04548A05000000070000000500000003000000010000000700000000135D45010000000005000102135D44F9050000FC00000009000000050000000100000005000000070000000212073CFA0000000208A912FF12073CFE0000000400000005000000051151E8FF08A9130500000009000000050000000400000003000000021151E905000000020000000500000001115224F9000000010A0000FA115225050A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A91305120700FA08A912FD00000007000000050000000212073CFA000000020000000500000001120701020000000108A913050000000512073CFA0000000200000005000000051151E8FD0A0000FE115224FF00000004000000051151E8FF08A912F912073D020000000500000001000000050000000400000003000000021151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F9000000051207010200000001000000051151E8FF00000005000000041151E8FD0000000500000003"
theorem small_3996251_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3996251_right_root small_3996251_right_fuel small_3996251_right_count small_3996251_right_encoded = true := by
  decide +kernel
theorem small_3996251_right_covered : CoveredBy scale carrier boxes small_3996251_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3996251_right_root small_3996251_right_fuel small_3996251_right_count small_3996251_right_encoded small_3996251_right_checked

theorem cover_3996251 : CoveredBy scale carrier boxes root_3996251 := by
  apply coveredBy_split_literal root_3996251 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996252 small_3996251_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996252
  · exact small_3996251_right_covered
#print axioms cover_3996251

def root_3996250 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996250 : CoveredBy scale carrier boxes root_3996250 := by
  apply coveredBy_split_literal root_3996250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996251 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1504.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996251
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1504.covered
#print axioms cover_3996250

def root_3996249 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3996249 : CoveredBy scale carrier boxes root_3996249 := by
  apply coveredBy_split_literal root_3996249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_3996250 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1505.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_3996250
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1505.covered
#print axioms cover_3996249

def root_4010782 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010782_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010782_right_fuel : Nat := 28
def small_4010782_right_count : Nat := 497
def small_4010782_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F608A912F912073D0208A91307120700FC08A912FF00000005120700FE00000008000000040000000312073CFC0000000308A912FF00000005120700FE050000FA135D810504548A01138670F60CFD9BF9000000050F34D1020000000100000005000000000000000800000002000000080000000400000001120701020000000108A91307120700FC08A912FF00000005120700FE050000FA135D8105000000050000000200000005000000040000000312073CFC0000000308A912FF00000005120700FE050000FA135D810504548A01138670F6045489F90000000513867102000000010CFD9C07000000050F350CFC0000000300000005000000001386ACF600000000045489F91386AD020CFD9C0700000005000000080000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF00000005138670FE0C9A86FC000000080F87510700000003000000080000000400000002135D45050000000204548A01000000051386ACF600000000045489F900000005138671020000000100000008000000040000000012073CF60000000008A912F912073D0208A91307120700FC08A912FF00000005120700FE050000FA135D81050CFD9C010F34D0F60000000800000000000000080000000200000008000000040000000312073CFC0000000308A912FF00000008120700FE050000FA135D81050CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BF9000000080F34D102000000010000000800000002000000080000000400000001120701020000000108A91307120700FC08A912FF00000005120700FE050000FA135D81050CFD9C010F34D0F60000000900000000000000090000000200000009000000040000000312073CFC0000000308A912FF12073CFE00000004050000FA135D81050CFD9C01000000050F350CF600000000045489F90000000513867102000000010CFD9C07000000050000000800000002135D4505000000020CFD9C010000000500000008120700FE050000FA135D81050CFD9C010F34D0F6045489F91386AD020CFD9C070F34D0FC0000000800000003000000080000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF00000008138670FE0C9A86FC000000080F875107000000030000000800000004000000000F350CF600000000045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF00000008138670FE00000008000000040000000113867102000000010CFD9C070F34D0FC00000009000000030F350CFC00000003045489FF00000008138670FE0C9A86F60F878D010C9A86FC000000080F8751070000000300000008000000000F875101000000000C9A86FC000000080F87510700000003000000080000000400000002135D4505000000020CFD9C010F34D0F6045489F90000000813867102000000010CFD9C070000000800000008000000000F350CF600000000045489F90000000800000009000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F608A912F912073D0208A912FF00000005120700FE050000FA135D8105050000FC135D810704548A010000000500000008000000030000000500000002000000050000000400000001120701020000000108A912FF00000005120700FE050000FA135D8105050000FC135D810704548A01000000051386ACF600000000045489F9000000051386710200000001045489FF00000005138670FE0000000700000004000000030000000700000002135D45050000000200000007000000040000000012073CF60000000008A912F912073D0208A912FF00000005120700FE050000FA135D8105050000FC135D81070CFD9C010F34D0F6000000060000000000000006000000030000000600000002000000080000000400000001120701020000000108A912FF12073CFE00000004050000FA135D8105050000FC135D81070CFD9C010000000500000008000000030000000A00000002135D450500000002050000FC0000000800000007120700FE050000FA135D8105050000FC135D81070CFD9C010F34D0F6045489F9000000081386710200000001045489FF00000008138670FE078000FA128A7D05078000FC128A7D070AD3578110D100F6000000080000000000000006000000030000000600000002128A410500000002078000FC000000080000000700000004000000000F350CF600000000045489F91386AD02045489FF0000000600000006000000011386710200000001045489FF1386ACFE000000040C9A86F6000000080F8751010000000000000008138670FE0C9A86F60F878D01078000FA128A7D05000000060000000200000008000000000F87510100000000078000FA00000006000000080000000400000003135D4507000000030CFD9C010F34D0F6045489F90000000600000007000000000000000600000002135D450500000002050000FC135D81070CFD9C010F34D0F600000008000000000000000800000003135D4507000000030CFD9C01000000070F350CF600000000045489F90000000600000007000000041151E8FF08A913010000000512073CF60000000008A912F90000000512070102000000010000000A00000004"
theorem small_4010782_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010782_right_root small_4010782_right_fuel small_4010782_right_count small_4010782_right_encoded = true := by
  decide +kernel
theorem small_4010782_right_covered : CoveredBy scale carrier boxes small_4010782_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010782_right_root small_4010782_right_fuel small_4010782_right_count small_4010782_right_encoded small_4010782_right_checked

theorem cover_4010782 : CoveredBy scale carrier boxes root_4010782 := by
  apply coveredBy_split_literal root_4010782 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1506.root small_4010782_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1506.covered
  · exact small_4010782_right_covered
#print axioms cover_4010782

def root_4010776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010776_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010776_left_fuel : Nat := 1
def small_4010776_left_count : Nat := 1
def small_4010776_left_encoded : String := "00000001"
theorem small_4010776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010776_left_root small_4010776_left_fuel small_4010776_left_count small_4010776_left_encoded = true := by
  decide +kernel
theorem small_4010776_left_covered : CoveredBy scale carrier boxes small_4010776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010776_left_root small_4010776_left_fuel small_4010776_left_count small_4010776_left_encoded small_4010776_left_checked

theorem cover_4010776 : CoveredBy scale carrier boxes root_4010776 := by
  apply coveredBy_split_literal root_4010776 small_4010776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4010782 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4010776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4010782
#print axioms cover_4010776

def root_4010346 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010346_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010346_left_fuel : Nat := 21
def small_4010346_left_count : Nat := 201
def small_4010346_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91301120700F608A91305120700FA08A9130700000006000000060000000212073CFA0000000208A91307120700FC08A912FF00000008120700FE0000000A000000040000000312073CFC0000000308A912FF12073CFE0000000400000008120700FE0500010200000006135D80F90000000104548A01138670F60CFD9C0500000006000000080000000000000006000000040000000012073CF60000000008A91305120700FA08A91307120700FC08A912FF12073CFE0000000405000102135D44F90000000800000001135D80F9000000010CFD9C010000000600000008000000060000000312073CFC0000000308A912FF12073CFE00000004050001020000000800000006000000060000000212073CFA0000000208A91307120700FC08A912FF12073CFE0000000400000008120700FE05000102135D44F90CFD9C010000000A0000000800000001135D80F9000000010CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C050000000600000008000000040000000312073CFC0000000308A912FF00000008120700FE050001020000000600000006000000041151E8FF08A91301120700F608A91305120700FA08A91307120700FC0000000600000003000000060000000212073CFA00000002000000080000000012073CF60000000008A91305120700FA08A91307120700FC0000000800000003000000080000000212073CFA0000000208A91307000000080000000800000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F6000000060000000012073CF60000000008A9130500000006000000061151E8FF0000000500000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F608A91307120700FC0000000800000003000000080000000012073CF60000000008A91307120700FC0000000800000003000000081151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F60000000800000000000000080000000600000001"
theorem small_4010346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010346_left_root small_4010346_left_fuel small_4010346_left_count small_4010346_left_encoded = true := by
  decide +kernel
theorem small_4010346_left_covered : CoveredBy scale carrier boxes small_4010346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010346_left_root small_4010346_left_fuel small_4010346_left_count small_4010346_left_encoded small_4010346_left_checked

theorem cover_4010346 : CoveredBy scale carrier boxes root_4010346 := by
  apply coveredBy_split_literal root_4010346 small_4010346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4010776 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4010346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4010776
#print axioms cover_4010346

def root_4010341 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010341_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010341_right_fuel : Nat := 1
def small_4010341_right_count : Nat := 1
def small_4010341_right_encoded : String := "00000000"
theorem small_4010341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010341_right_root small_4010341_right_fuel small_4010341_right_count small_4010341_right_encoded = true := by
  decide +kernel
theorem small_4010341_right_covered : CoveredBy scale carrier boxes small_4010341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010341_right_root small_4010341_right_fuel small_4010341_right_count small_4010341_right_encoded small_4010341_right_checked

theorem cover_4010341 : CoveredBy scale carrier boxes root_4010341 := by
  apply coveredBy_split_literal root_4010341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4010346 small_4010341_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4010346
  · exact small_4010341_right_covered
#print axioms cover_4010341

def root_4010340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4010340 : CoveredBy scale carrier boxes root_4010340 := by
  apply coveredBy_split_literal root_4010340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4010341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1507.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4010341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1507.covered
#print axioms cover_4010340

def root_4021895 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4021895 : CoveredBy scale carrier boxes root_4021895 := by
  apply coveredBy_split_literal root_4021895 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1509.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1510.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1509.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1510.covered
#print axioms cover_4021895

def root_4021889 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021889_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021889_left_fuel : Nat := 1
def small_4021889_left_count : Nat := 1
def small_4021889_left_encoded : String := "00000003"
theorem small_4021889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021889_left_root small_4021889_left_fuel small_4021889_left_count small_4021889_left_encoded = true := by
  decide +kernel
theorem small_4021889_left_covered : CoveredBy scale carrier boxes small_4021889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021889_left_root small_4021889_left_fuel small_4021889_left_count small_4021889_left_encoded small_4021889_left_checked

theorem cover_4021889 : CoveredBy scale carrier boxes root_4021889 := by
  apply coveredBy_split_literal root_4021889 small_4021889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021895 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4021889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021895
#print axioms cover_4021889

def root_4021849 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021849_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021849_left_fuel : Nat := 10
def small_4021849_left_count : Nat := 19
def small_4021849_left_encoded : String := "0F34D0FC04548A09138670FE0C9A86FA000000070F87510500000002067ECE8112EA58F6022A45790000000713E1C50200000001000000070000000000000007000000040000000700000003"
theorem small_4021849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021849_left_root small_4021849_left_fuel small_4021849_left_count small_4021849_left_encoded = true := by
  decide +kernel
theorem small_4021849_left_covered : CoveredBy scale carrier boxes small_4021849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021849_left_root small_4021849_left_fuel small_4021849_left_count small_4021849_left_encoded small_4021849_left_checked

theorem cover_4021849 : CoveredBy scale carrier boxes root_4021849 := by
  apply coveredBy_split_literal root_4021849 small_4021849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021889 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4021849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021889
#print axioms cover_4021849

def root_4021843 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021843_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021843_left_fuel : Nat := 1
def small_4021843_left_count : Nat := 1
def small_4021843_left_encoded : String := "00000002"
theorem small_4021843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021843_left_root small_4021843_left_fuel small_4021843_left_count small_4021843_left_encoded = true := by
  decide +kernel
theorem small_4021843_left_covered : CoveredBy scale carrier boxes small_4021843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021843_left_root small_4021843_left_fuel small_4021843_left_count small_4021843_left_encoded small_4021843_left_checked

theorem cover_4021843 : CoveredBy scale carrier boxes root_4021843 := by
  apply coveredBy_split_literal root_4021843 small_4021843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021849 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4021843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021849
#print axioms cover_4021843

def root_4021817 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021817_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021817_left_fuel : Nat := 7
def small_4021817_left_count : Nat := 13
def small_4021817_left_encoded : String := "0F34D0FA0CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FC0000000700000006000000040000000700000002"
theorem small_4021817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021817_left_root small_4021817_left_fuel small_4021817_left_count small_4021817_left_encoded = true := by
  decide +kernel
theorem small_4021817_left_covered : CoveredBy scale carrier boxes small_4021817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021817_left_root small_4021817_left_fuel small_4021817_left_count small_4021817_left_encoded small_4021817_left_checked

theorem cover_4021817 : CoveredBy scale carrier boxes root_4021817 := by
  apply coveredBy_split_literal root_4021817 small_4021817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021843 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4021817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021843
#print axioms cover_4021817

def root_4021811 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021811_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021811_left_fuel : Nat := 1
def small_4021811_left_count : Nat := 1
def small_4021811_left_encoded : String := "00000001"
theorem small_4021811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021811_left_root small_4021811_left_fuel small_4021811_left_count small_4021811_left_encoded = true := by
  decide +kernel
theorem small_4021811_left_covered : CoveredBy scale carrier boxes small_4021811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021811_left_root small_4021811_left_fuel small_4021811_left_count small_4021811_left_encoded small_4021811_left_checked

theorem cover_4021811 : CoveredBy scale carrier boxes root_4021811 := by
  apply coveredBy_split_literal root_4021811 small_4021811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021817 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4021811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021817
#print axioms cover_4021811

def root_4021499 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021499_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021499_left_fuel : Nat := 22
def small_4021499_left_count : Nat := 147
def small_4021499_left_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC0000000304548A090000000600000006000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D0500000007000000020F87510500000002067ECE8100000005000000070000000400000007000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07067ECE8112EA58F6067ECE790000000512EA5902000000010000000500000000000000060000000300000006000000020F875105000000020C9A86FC0F878D07067ECE8112EA58F6067ECE790000000512EA590200000001000000050000000012EA94F600000000067ECE790000000512EA59020000000100000008000000030F87510700000003067ECE8112EA58F6067ECE790000000512EA590200000001000000050000000012EA94F600000000067ECE790000000512EA590200000001022A45890000000500000006000000041386ACFE000000040C9A86FA0F878D050C9A86FC0F878D0700000007000000030F8751070000000300000006000000020F875105000000020C9A86FC0F878D070000000A000000030F87510700000003067ECE8112EA58F6067ECE7912EA9502067ECE89000000050000000A0000000112EA590200000001067ECE8912EA58FE0B4D43FA10804D050B4D43FC10804D070000000500000003000000050000000210801105000000020B4D43FC0000000A00000005000000040000000A0000000012EA94F600000000067ECE790000000612EA590200000001067ECE89000000060000000700000001"
theorem small_4021499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021499_left_root small_4021499_left_fuel small_4021499_left_count small_4021499_left_encoded = true := by
  decide +kernel
theorem small_4021499_left_covered : CoveredBy scale carrier boxes small_4021499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021499_left_root small_4021499_left_fuel small_4021499_left_count small_4021499_left_encoded small_4021499_left_checked

theorem cover_4021499 : CoveredBy scale carrier boxes root_4021499 := by
  apply coveredBy_split_literal root_4021499 small_4021499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021811 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4021499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021811
#print axioms cover_4021499

def root_4021493 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021493_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021493_left_fuel : Nat := 1
def small_4021493_left_count : Nat := 1
def small_4021493_left_encoded : String := "00000000"
theorem small_4021493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021493_left_root small_4021493_left_fuel small_4021493_left_count small_4021493_left_encoded = true := by
  decide +kernel
theorem small_4021493_left_covered : CoveredBy scale carrier boxes small_4021493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021493_left_root small_4021493_left_fuel small_4021493_left_count small_4021493_left_encoded small_4021493_left_checked

theorem cover_4021493 : CoveredBy scale carrier boxes root_4021493 := by
  apply coveredBy_split_literal root_4021493 small_4021493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021499 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4021493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021499
#print axioms cover_4021493

def root_4019337 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4019337 : CoveredBy scale carrier boxes root_4019337 := by
  apply coveredBy_split_literal root_4019337 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1508.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4021493 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1508.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4021493
#print axioms cover_4019337

def root_4019332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019332_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019332_right_fuel : Nat := 1
def small_4019332_right_count : Nat := 1
def small_4019332_right_encoded : String := "00000004"
theorem small_4019332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019332_right_root small_4019332_right_fuel small_4019332_right_count small_4019332_right_encoded = true := by
  decide +kernel
theorem small_4019332_right_covered : CoveredBy scale carrier boxes small_4019332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019332_right_root small_4019332_right_fuel small_4019332_right_count small_4019332_right_encoded small_4019332_right_checked

theorem cover_4019332 : CoveredBy scale carrier boxes root_4019332 := by
  apply coveredBy_split_literal root_4019332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019337 small_4019332_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019337
  · exact small_4019332_right_covered
#print axioms cover_4019332

def root_4019331 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019331_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019331_right_fuel : Nat := 26
def small_4019331_right_count : Nat := 269
def small_4019331_right_encoded : String := "12073CFE0000000404548A01138670F6045489F91386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC000000030CFD9C090F34D0FE000000070000000400000007000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0000000A0F87510700000003022A458113E1C4F6067ECE790000000912EA590200000001000000090000000013E200F600000000067ECE790000000712EA59020000000100000007000000020F875105000000020000000A000000040F350CFE000000040C9A86FA0F878D050C9A86FC000000070000000A000000020000000A0000000113867102000000010CFD9C050F34D0FA0CFD9C07000000070F350CFC000000030CFD9C090F34D0FE000000070000000400000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0F878D0700000007000000030F87510700000003022A458113E1C4F6022A457913E201020AD3578910D100FE0000000900000004000000070000000113E1C502000000010AD3578910D100FE0DE7C9FA000000070E5FD905000000020B4D43FC000000070000000800000004000000070000000000000007000000020F875105000000020C9A86FC0F878D070000000A000000030F87510700000003022A458113E1C4F6022A45790000000A13E1C502000000010AD3578910D100FE0B4D43FA10804D050B4D43FC0000000A108011070000000300000009000000020000000A000000040000000A0000000013E200F600000000022A457913E201020000000A0000000113E1C502000000010AD3578910D100FE0B4D43FA10804D0500000007000000020000000A000000040000000A000000040F350CFE000000040C9A86FA0F878D0500000007000000020F875105000000020C9A86FC0000000A0F875107000000030C9A86FE0000000A0F8751090000000400000007000000001386ACF600000000045489F91386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D0500000007000000020F875105000000020000000A000000040F350CFE000000040C9A86FA000000070000000A0000000113867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003067ECE8112EA58F6022A457913E201020AD3578910D100FE0000000700000004000000070000000113E1C502000000010AD3578910D100FE0000000700000004000000070000000000000007000000040F350CFE0000000400000007"
theorem small_4019331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019331_right_root small_4019331_right_fuel small_4019331_right_count small_4019331_right_encoded = true := by
  decide +kernel
theorem small_4019331_right_covered : CoveredBy scale carrier boxes small_4019331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019331_right_root small_4019331_right_fuel small_4019331_right_count small_4019331_right_encoded small_4019331_right_checked

theorem cover_4019331 : CoveredBy scale carrier boxes root_4019331 := by
  apply coveredBy_split_literal root_4019331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019332 small_4019331_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019332
  · exact small_4019331_right_covered
#print axioms cover_4019331

def root_4019325 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019325_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019325_left_fuel : Nat := 1
def small_4019325_left_count : Nat := 1
def small_4019325_left_encoded : String := "00000003"
theorem small_4019325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019325_left_root small_4019325_left_fuel small_4019325_left_count small_4019325_left_encoded = true := by
  decide +kernel
theorem small_4019325_left_covered : CoveredBy scale carrier boxes small_4019325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019325_left_root small_4019325_left_fuel small_4019325_left_count small_4019325_left_encoded small_4019325_left_checked

theorem cover_4019325 : CoveredBy scale carrier boxes root_4019325 := by
  apply coveredBy_split_literal root_4019325 small_4019325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019331 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4019325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019331
#print axioms cover_4019325

def root_4019279 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019279_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019279_left_fuel : Nat := 10
def small_4019279_left_count : Nat := 21
def small_4019279_left_encoded : String := "120700FC08A91309120700FE04548A01138670F6045489F91386AD020CFD9C05000000070F350CFA000000020000000A000000011386710200000001000000070000000000000007000000040000000700000003"
theorem small_4019279_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019279_left_root small_4019279_left_fuel small_4019279_left_count small_4019279_left_encoded = true := by
  decide +kernel
theorem small_4019279_left_covered : CoveredBy scale carrier boxes small_4019279_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019279_left_root small_4019279_left_fuel small_4019279_left_count small_4019279_left_encoded small_4019279_left_checked

theorem cover_4019279 : CoveredBy scale carrier boxes root_4019279 := by
  apply coveredBy_split_literal root_4019279 small_4019279_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019325 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4019279_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019325
#print axioms cover_4019279

def root_4019273 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019273_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019273_left_fuel : Nat := 1
def small_4019273_left_count : Nat := 1
def small_4019273_left_encoded : String := "00000002"
theorem small_4019273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019273_left_root small_4019273_left_fuel small_4019273_left_count small_4019273_left_encoded = true := by
  decide +kernel
theorem small_4019273_left_covered : CoveredBy scale carrier boxes small_4019273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019273_left_root small_4019273_left_fuel small_4019273_left_count small_4019273_left_encoded small_4019273_left_checked

theorem cover_4019273 : CoveredBy scale carrier boxes root_4019273 := by
  apply coveredBy_split_literal root_4019273 small_4019273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019279 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4019273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019279
#print axioms cover_4019273

def root_4019211 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019211_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019211_left_fuel : Nat := 14
def small_4019211_left_count : Nat := 29
def small_4019211_left_encoded : String := "120700FA08A913070000000712073CFC0000000308A91309120700FE04548A01138670F6045489F91386AD0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC0000000300000006000000011386710200000001000000070000000000000007000000040000000700000002"
theorem small_4019211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019211_left_root small_4019211_left_fuel small_4019211_left_count small_4019211_left_encoded = true := by
  decide +kernel
theorem small_4019211_left_covered : CoveredBy scale carrier boxes small_4019211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019211_left_root small_4019211_left_fuel small_4019211_left_count small_4019211_left_encoded small_4019211_left_checked

theorem cover_4019211 : CoveredBy scale carrier boxes root_4019211 := by
  apply coveredBy_split_literal root_4019211 small_4019211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019273 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4019211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019273
#print axioms cover_4019211

def root_4019205 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019205_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019205_left_fuel : Nat := 1
def small_4019205_left_count : Nat := 1
def small_4019205_left_encoded : String := "00000001"
theorem small_4019205_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019205_left_root small_4019205_left_fuel small_4019205_left_count small_4019205_left_encoded = true := by
  decide +kernel
theorem small_4019205_left_covered : CoveredBy scale carrier boxes small_4019205_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019205_left_root small_4019205_left_fuel small_4019205_left_count small_4019205_left_encoded small_4019205_left_checked

theorem cover_4019205 : CoveredBy scale carrier boxes root_4019205 := by
  apply coveredBy_split_literal root_4019205 small_4019205_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019211 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4019205_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019211
#print axioms cover_4019205

def root_4018577 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018577_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018577_left_fuel : Nat := 21
def small_4018577_left_count : Nat := 295
def small_4018577_left_encoded : String := "12073D0208A91305120700FA08A91307120700FC08A91309120700FE0000000700000004000000070000000312073CFC0000000308A91309120700FE04548A01138670F60CFD9BF90F350D0200000006000000010F34D1020000000104548A05000000060000000600000000000000060000000412073CFE0000000404548A01138670F60CFD9BF90F350D0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC000000030CFD9C090000000600000007000000010F34D1020000000100000007000000001386ACF6000000000CFD9BF9000000070F34D10200000001000000070000000212073CFA0000000208A91307120700FC08A91309120700FE04548A010000000A1386ACF6000000000CFD9BF90F350D020000000A000000010F34D102000000010CFD9C050000000700000007000000040000000A0000000312073CFC0000000308A91309120700FE04548A01138670F60CFD9BF90F350D020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C070000000A0F350CFC0000000304548A09138670FE0C9A87020000000600000005000000040000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC04548A090000000500000007000000030F350CFC0000000304548A09000000051386ACFE000000040C9A86FC0F878D07000000060000000300000006000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D05000000050000000200000005000000041386ACFE000000040C9A86FA0F878D050C9A86FC0000000A00000009000000020000000A000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC0000000300000006000000010F34D102000000010CFD9C050F34D0FA0CFD9C070000000600000006000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D050000000A0000000200000008000000040000000A000000030F350CFC0000000304548A09138670FE0C9A86FA000000060F875105000000020C9A86FC0000000800000005000000041386ACFE000000040C9A86FA0F878D0500000006000000020F875105000000020C9A86FC0000000A000000060000000412073CFE0000000404548A01138670F60CFD9BF90F350D020CFD9C050F34D0FA0CFD9C070000000A0F350CFC000000030000000A000000020000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000070F87510700000003000000090000000400000007000000020F350CFA000000020CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE0000000A000000040000000A000000001386ACF6000000000CFD9BF90F350D020CFD9C050000000A0000000A000000010F34D102000000010CFD9C050F34D0FA0CFD9C070000000700000007000000020F350CFA000000020CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE0000000A000000040000000A00000001"
theorem small_4018577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018577_left_root small_4018577_left_fuel small_4018577_left_count small_4018577_left_encoded = true := by
  decide +kernel
theorem small_4018577_left_covered : CoveredBy scale carrier boxes small_4018577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018577_left_root small_4018577_left_fuel small_4018577_left_count small_4018577_left_encoded small_4018577_left_checked

theorem cover_4018577 : CoveredBy scale carrier boxes root_4018577 := by
  apply coveredBy_split_literal root_4018577 small_4018577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4019205 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4018577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4019205
#print axioms cover_4018577

def root_4018572 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018572_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018572_right_fuel : Nat := 1
def small_4018572_right_count : Nat := 1
def small_4018572_right_encoded : String := "00000000"
theorem small_4018572_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018572_right_root small_4018572_right_fuel small_4018572_right_count small_4018572_right_encoded = true := by
  decide +kernel
theorem small_4018572_right_covered : CoveredBy scale carrier boxes small_4018572_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018572_right_root small_4018572_right_fuel small_4018572_right_count small_4018572_right_encoded small_4018572_right_checked

theorem cover_4018572 : CoveredBy scale carrier boxes root_4018572 := by
  apply coveredBy_split_literal root_4018572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4018577 small_4018572_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4018577
  · exact small_4018572_right_covered
#print axioms cover_4018572

def root_4018571 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4018571 : CoveredBy scale carrier boxes root_4018571 := by
  apply coveredBy_split_literal root_4018571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4018572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1511.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4018572
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1511.covered
#print axioms cover_4018571

def root_4018566 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018566_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018566_right_fuel : Nat := 1
def small_4018566_right_count : Nat := 1
def small_4018566_right_encoded : String := "00000004"
theorem small_4018566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018566_right_root small_4018566_right_fuel small_4018566_right_count small_4018566_right_encoded = true := by
  decide +kernel
theorem small_4018566_right_covered : CoveredBy scale carrier boxes small_4018566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018566_right_root small_4018566_right_fuel small_4018566_right_count small_4018566_right_encoded small_4018566_right_checked

theorem cover_4018566 : CoveredBy scale carrier boxes root_4018566 := by
  apply coveredBy_split_literal root_4018566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4018571 small_4018566_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4018571
  · exact small_4018566_right_covered
#print axioms cover_4018566

def root_4018565 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018565_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018565_right_fuel : Nat := 23
def small_4018565_right_count : Nat := 187
def small_4018565_right_encoded : String := "1151E9090000000408A91301120700F608A912F912073D0208A91305120700FA08A9130700000007000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC00000003050000FE135D810904548A01138670F60CFD9BF90F350D020000000A000000010F34D102000000010CFD9C05000000070F350CFA000000020000000A000000001386ACF6000000000CFD9BF90000000A0F34D102000000010000000700000004135D45090000000404548A01138670F60CFD9BF90F350D020CFD9C050000000A0000000A000000010F34D102000000010CFD9C05000000070F350CFA000000020000000A000000001386ACF6000000000CFD9BF9000000070F34D102000000010000000700000001120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC00000003050000FE135D810904548A01138670F6045489F91386AD020CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070000000A0000000113867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070000000A000000000000000700000004135D45090000000404548A01138670F6045489F91386AD020CFD9C0500000007000000070000000113867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070000000700000000000000070000000012073CF60000000008A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A913070000000A12073CFC00000003050000FE135D81090CFD9C010F34D0F60CFD9BF9000000070F34D1020000000100000007000000000000000700000004135D4509000000040CFD9C010F34D0F600000007000000000000000700000001120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC00000003050000FE0000000700000007"
theorem small_4018565_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018565_right_root small_4018565_right_fuel small_4018565_right_count small_4018565_right_encoded = true := by
  decide +kernel
theorem small_4018565_right_covered : CoveredBy scale carrier boxes small_4018565_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018565_right_root small_4018565_right_fuel small_4018565_right_count small_4018565_right_encoded small_4018565_right_checked

theorem cover_4018565 : CoveredBy scale carrier boxes root_4018565 := by
  apply coveredBy_split_literal root_4018565 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4018566 small_4018565_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4018566
  · exact small_4018565_right_covered
#print axioms cover_4018565

def root_4018560 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018560_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018560_right_fuel : Nat := 1
def small_4018560_right_count : Nat := 1
def small_4018560_right_encoded : String := "00000003"
theorem small_4018560_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018560_right_root small_4018560_right_fuel small_4018560_right_count small_4018560_right_encoded = true := by
  decide +kernel
theorem small_4018560_right_covered : CoveredBy scale carrier boxes small_4018560_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018560_right_root small_4018560_right_fuel small_4018560_right_count small_4018560_right_encoded small_4018560_right_checked

theorem cover_4018560 : CoveredBy scale carrier boxes root_4018560 := by
  apply coveredBy_split_literal root_4018560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4018565 small_4018560_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4018565
  · exact small_4018560_right_covered
#print axioms cover_4018560

def root_4027951 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4027951 : CoveredBy scale carrier boxes root_4027951 := by
  apply coveredBy_split_literal root_4027951 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1512.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1513.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1512.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1513.covered
#print axioms cover_4027951

def root_4027945 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027945_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027945_left_fuel : Nat := 1
def small_4027945_left_count : Nat := 1
def small_4027945_left_encoded : String := "00000002"
theorem small_4027945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027945_left_root small_4027945_left_fuel small_4027945_left_count small_4027945_left_encoded = true := by
  decide +kernel
theorem small_4027945_left_covered : CoveredBy scale carrier boxes small_4027945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027945_left_root small_4027945_left_fuel small_4027945_left_count small_4027945_left_encoded small_4027945_left_checked

theorem cover_4027945 : CoveredBy scale carrier boxes root_4027945 := by
  apply coveredBy_split_literal root_4027945 small_4027945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4027951 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4027945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4027951
#print axioms cover_4027945

def root_4027849 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027849_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027849_left_fuel : Nat := 14
def small_4027849_left_count : Nat := 47
def small_4027849_left_encoded : String := "120700FA08A91309120700FE050000FC135D810704548A01138670F6045489F900000005138671020000000104548A050000000500000006000000000000000600000003000000060000000412073CFE00000004050000FC135D810704548A01138670F6045489F91386AD0204548A05000000071386ACFA000000020CFD9C090F34D0FE0000000700000004000000070000000100000008000000000000000700000003135D45070000000304548A01000000080000000800000002"
theorem small_4027849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027849_left_root small_4027849_left_fuel small_4027849_left_count small_4027849_left_encoded = true := by
  decide +kernel
theorem small_4027849_left_covered : CoveredBy scale carrier boxes small_4027849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027849_left_root small_4027849_left_fuel small_4027849_left_count small_4027849_left_encoded small_4027849_left_checked

theorem cover_4027849 : CoveredBy scale carrier boxes root_4027849 := by
  apply coveredBy_split_literal root_4027849 small_4027849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4027945 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4027849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4027945
#print axioms cover_4027849

def root_4027843 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027843_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4027843_left_fuel : Nat := 1
def small_4027843_left_count : Nat := 1
def small_4027843_left_encoded : String := "00000001"
theorem small_4027843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4027843_left_root small_4027843_left_fuel small_4027843_left_count small_4027843_left_encoded = true := by
  decide +kernel
theorem small_4027843_left_covered : CoveredBy scale carrier boxes small_4027843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4027843_left_root small_4027843_left_fuel small_4027843_left_count small_4027843_left_encoded small_4027843_left_checked

theorem cover_4027843 : CoveredBy scale carrier boxes root_4027843 := by
  apply coveredBy_split_literal root_4027843 small_4027843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.root_4027849 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4027843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101.cover_4027849
#print axioms cover_4027843

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0101

import TaoBundleAssembly0539
import TaoBundleAssembly0546
import TaoBundleAssembly0549
import TaoBundleAssembly0551
import TaoBundleAssembly0552
import TaoBundleChunkBatch0745
import TaoBundleChunkBatch0747
import TaoBundleChunkBatch0750
import TaoBundleChunkBatch0751
import TaoBundleChunkBatch0752
import TaoBundleChunkBatch0753
import TaoBundleChunkBatch0754
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553
def root_8002574 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002574_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002574_left_fuel : Nat := 1
def small_8002574_left_count : Nat := 1
def small_8002574_left_encoded : String := "00000000"
theorem small_8002574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002574_left_root small_8002574_left_fuel small_8002574_left_count small_8002574_left_encoded = true := by
  decide +kernel
theorem small_8002574_left_covered : CoveredBy scale carrier boxes small_8002574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002574_left_root small_8002574_left_fuel small_8002574_left_count small_8002574_left_encoded small_8002574_left_checked

theorem cover_8002574 : CoveredBy scale carrier boxes root_8002574 := by
  apply coveredBy_split_literal root_8002574 small_8002574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002580 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8002574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002580
#print axioms cover_8002574

def root_8002573 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002573_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002573_right_fuel : Nat := 27
def small_8002573_right_count : Nat := 315
def small_8002573_right_encoded : String := "12073D0008A91307120701060000000308A913091207010800000004050000F8000000060000000512073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D1000000000004548A070000000A0000000A00000006135D44FB0CFD9C010F34D1000000000004548A07000000091386AD060CFD9C090000000900000009000000030000000900000002135D44F9050000FA0000000A0000000A000000010000000412073D0608A913091207010800000004050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000090F350D0600000009000000030000000600000009135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000090000000A0000000A000000090000000112073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C070F34D106000000030CFD9C090000000A0F350D080C9A87080000000A0F878D090000000A00000004000000040F350D060CFD9C090F34D108000000040C9A8706000000090F878D0700000009000000030F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB000000020AD3578110D10100000000000B4D440600000005000000080000000900000009128A40F9078000FA0000000A128A40FB0AD3578110D1010000000000000000090000000900000002000000010F878D09078000F800000009128A40F9078000FA128A7CFB00000002000000070000000900000001000000040F878D070C9A87080F87510900000004078000F8128A7CF900000001078000FA0000000A128A40FB00000008000000020000000A0F878D09078000F8128A7CF900000001000000090000000A000000040000000300000004000000030F350D000CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D10800000004000000090F350D080C9A87000F87510100000000000000090F878D010C9A87060F875107000000030C9A87080000000A000000090000000A00000000000000040000000300000000135D44FB0CFD9C010F34D100000000000CFD9C070F34D106000000030CFD9C09000000090F350D080C9A87080F875109000000040000000900000009000000040F350D060CFD9C09000000090F350D080C9A8706000000090F878D07000000090000000300000004000000030F350D000CFD9C07000000090F350D0600000009000000030000000000000002135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A87060F875107000000030000000A0000000A0F350D080C9A87060F875107000000030C9A87080000000A0F878D090000000A000000040000000A00000004000000030F350D000CFD9C070000000A0000000A00000000135D44FB0CFD9C010F34D100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F80000000900000009000000090F878D070000000A0000000300000004000000030F350D000CFD9C07000000090F350D060CFD9C09000000090000000900000003000000000000000200000001000000040000000300000000"
theorem small_8002573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002573_right_root small_8002573_right_fuel small_8002573_right_count small_8002573_right_encoded = true := by
  decide +kernel
theorem small_8002573_right_covered : CoveredBy scale carrier boxes small_8002573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002573_right_root small_8002573_right_fuel small_8002573_right_count small_8002573_right_encoded small_8002573_right_checked

theorem cover_8002573 : CoveredBy scale carrier boxes root_8002573 := by
  apply coveredBy_split_literal root_8002573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8002574 small_8002573_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8002574
  · exact small_8002573_right_covered
#print axioms cover_8002573

def root_8002568 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002568_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002568_right_fuel : Nat := 1
def small_8002568_right_count : Nat := 1
def small_8002568_right_encoded : String := "00000004"
theorem small_8002568_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002568_right_root small_8002568_right_fuel small_8002568_right_count small_8002568_right_encoded = true := by
  decide +kernel
theorem small_8002568_right_covered : CoveredBy scale carrier boxes small_8002568_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002568_right_root small_8002568_right_fuel small_8002568_right_count small_8002568_right_encoded small_8002568_right_checked

theorem cover_8002568 : CoveredBy scale carrier boxes root_8002568 := by
  apply coveredBy_split_literal root_8002568 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8002573 small_8002568_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8002573
  · exact small_8002568_right_covered
#print axioms cover_8002568

def root_8000398 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8000398 : CoveredBy scale carrier boxes root_8000398 := by
  apply coveredBy_split_literal root_8000398 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2999.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8002568 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2999.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8002568
#print axioms cover_8000398

def root_8000393 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8000393_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8000393_right_fuel : Nat := 1
def small_8000393_right_count : Nat := 1
def small_8000393_right_encoded : String := "00000003"
theorem small_8000393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8000393_right_root small_8000393_right_fuel small_8000393_right_count small_8000393_right_encoded = true := by
  decide +kernel
theorem small_8000393_right_covered : CoveredBy scale carrier boxes small_8000393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8000393_right_root small_8000393_right_fuel small_8000393_right_count small_8000393_right_encoded small_8000393_right_checked

theorem cover_8000393 : CoveredBy scale carrier boxes root_8000393 := by
  apply coveredBy_split_literal root_8000393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8000398 small_8000393_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8000398
  · exact small_8000393_right_covered
#print axioms cover_8000393

def root_7997015 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7997015 : CoveredBy scale carrier boxes root_7997015 := by
  apply coveredBy_split_literal root_7997015 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_7997016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8000393 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_7997016
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8000393
#print axioms cover_7997015

def root_7997010 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997010_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997010_right_fuel : Nat := 1
def small_7997010_right_count : Nat := 1
def small_7997010_right_encoded : String := "00000002"
theorem small_7997010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7997010_right_root small_7997010_right_fuel small_7997010_right_count small_7997010_right_encoded = true := by
  decide +kernel
theorem small_7997010_right_covered : CoveredBy scale carrier boxes small_7997010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7997010_right_root small_7997010_right_fuel small_7997010_right_count small_7997010_right_encoded small_7997010_right_checked

theorem cover_7997010 : CoveredBy scale carrier boxes root_7997010 := by
  apply coveredBy_split_literal root_7997010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7997015 small_7997010_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7997015
  · exact small_7997010_right_covered
#print axioms cover_7997010

def root_7991368 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7991368 : CoveredBy scale carrier boxes root_7991368 := by
  apply coveredBy_split_literal root_7991368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_7991369 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7997010 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_7991369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7997010
#print axioms cover_7991368

def root_7991363 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991363_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991363_right_fuel : Nat := 1
def small_7991363_right_count : Nat := 1
def small_7991363_right_encoded : String := "00000001"
theorem small_7991363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991363_right_root small_7991363_right_fuel small_7991363_right_count small_7991363_right_encoded = true := by
  decide +kernel
theorem small_7991363_right_covered : CoveredBy scale carrier boxes small_7991363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991363_right_root small_7991363_right_fuel small_7991363_right_count small_7991363_right_encoded small_7991363_right_checked

theorem cover_7991363 : CoveredBy scale carrier boxes root_7991363 := by
  apply coveredBy_split_literal root_7991363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7991368 small_7991363_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7991368
  · exact small_7991363_right_covered
#print axioms cover_7991363

def root_7970399 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7970399 : CoveredBy scale carrier boxes root_7970399 := by
  apply coveredBy_split_literal root_7970399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7970400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7991363 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7970400
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7991363
#print axioms cover_7970399

def root_7970394 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970394_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970394_right_fuel : Nat := 1
def small_7970394_right_count : Nat := 1
def small_7970394_right_encoded : String := "00000000"
theorem small_7970394_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7970394_right_root small_7970394_right_fuel small_7970394_right_count small_7970394_right_encoded = true := by
  decide +kernel
theorem small_7970394_right_covered : CoveredBy scale carrier boxes small_7970394_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7970394_right_root small_7970394_right_fuel small_7970394_right_count small_7970394_right_encoded small_7970394_right_checked

theorem cover_7970394 : CoveredBy scale carrier boxes root_7970394 := by
  apply coveredBy_split_literal root_7970394 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7970399 small_7970394_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7970399
  · exact small_7970394_right_covered
#print axioms cover_7970394

def root_7967472 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7967472 : CoveredBy scale carrier boxes root_7967472 := by
  apply coveredBy_split_literal root_7967472 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2988.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7970394 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2988.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7970394
#print axioms cover_7967472

def root_7937766 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7937766 : CoveredBy scale carrier boxes root_7937766 := by
  apply coveredBy_split_literal root_7937766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0549.root_7937767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7967472 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0549.cover_7937767
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7967472
#print axioms cover_7937766

def root_7934718 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7934718 : CoveredBy scale carrier boxes root_7934718 := by
  apply coveredBy_split_literal root_7934718 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2978.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7937766 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2978.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7937766
#print axioms cover_7934718

def root_7862136 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7862136 : CoveredBy scale carrier boxes root_7862136 := by
  apply coveredBy_split_literal root_7862136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.root_7862137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7934718 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0546.cover_7862137
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7934718
#print axioms cover_7862136

def root_7759102 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759102 : CoveredBy scale carrier boxes root_7759102 := by
  apply coveredBy_split_literal root_7759102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7759103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_7862136 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7759103
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_7862136
#print axioms cover_7759102

def root_8017391 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8017391 : CoveredBy scale carrier boxes root_8017391 := by
  apply coveredBy_split_literal root_8017391 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3006.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3007.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3006.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3007.covered
#print axioms cover_8017391

def root_8017386 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017386_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017386_right_fuel : Nat := 1
def small_8017386_right_count : Nat := 1
def small_8017386_right_encoded : String := "00000004"
theorem small_8017386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017386_right_root small_8017386_right_fuel small_8017386_right_count small_8017386_right_encoded = true := by
  decide +kernel
theorem small_8017386_right_covered : CoveredBy scale carrier boxes small_8017386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017386_right_root small_8017386_right_fuel small_8017386_right_count small_8017386_right_encoded small_8017386_right_checked

theorem cover_8017386 : CoveredBy scale carrier boxes root_8017386 := by
  apply coveredBy_split_literal root_8017386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8017391 small_8017386_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8017391
  · exact small_8017386_right_covered
#print axioms cover_8017386

def root_8017385 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017385_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017385_right_fuel : Nat := 24
def small_8017385_right_count : Nat := 319
def small_8017385_right_encoded : String := "1151E9090000000408A912F912073CF80000000108A912FD12073CFC0000000305000100135D450100000000050000FA135D8105050000FE135D81090CFD9BF90F350CF800000001000000070000000800000004135D4509000000040CFD9BF9000000050000000800000002135D450500000002050000FE135D81090CFD9BF9000000050F34D0F80CFD9BFD000000050F34D0FC0280010013D7B10100000000028000FA0000000713D7B10500000002078000FE000000070000000713D7ED010000000800000000000000030000000100000004135D4509000000040CFD9BF9000000050F34D0F80000000800000001135D8101050000FA135D8105050000FE000000080000000500000002135D450500000002050000FE135D810900000005000000040000000500000000120700FC05000100135D450100000000050000FA00000007135D450500000002050000FE135D81090CFD9BF9000000070F34D0F8045489FD1386ACFC00000003028001000000000700000007138670FC0000000700000003000000010000000400000007135D8101050000FA00000007135D450500000002050000FE135D81090CFD9BF9000000070F34D0F8045489FD00000007000000070000000100000004000000070000000000000003120700F808A912FD12073CFC0000000305000100135D450100000000050000FA00000008135D450500000002050000FE135D8109045489F900000008000000080000000400000008135D8101050000FA00000008135D4505000000020000000800000000120700FC05000100135D450100000000050000FA135D8105050000FE135D8109045489F91386ACF8000000010000000A0000000A000000040000000A00000002135D450500000002050000FE135D8109045489F91386ACF800000001045489FD1386ACFC000000030280010013D7B10100000000028000FA0000000813D7B10500000002078000FE128A7D09067ECE7912EA94F8000000010000000A0000000A000000040000000A13D7ED01028000FA0000000813D7B10500000002078000FE128A7D09067ECE790000000700000008000000040000000800000000138670FC028001000000000A13D7ED01028000FA0000000713D7B105000000020000000A0000000000000003138670F8045489FD1386ACFC0000000300000008000000050000000100000004135D450900000004045489F91386ACF800000001045489FD000000080000000A00000008135D8101050000FA135D8105050000FE135D8109045489F91386ACF800000001045489FD000000070000000700000008000000040000000800000002135D450500000002050000FE135D8109045489F91386ACF800000001045489FD1386ACFC0000000307800100128A410100000000028000FA0000000713D7B105000000020000000800000008138670FC07800100128A410100000000028000FA0000000713D7B10500000002078000FE128A7D09067ECE790000000712EA58F80000000A000000010000000400000007128A7D01028000FA0000000713D7B10500000002078000FE00000007000000070000000000000003138670F8045489FD00000008138670FC07800100128A41010000000000000005128A7D01028000FA0000000813D7B10500000002078000FE128A7D0900000008000000040000000800000000000000030000000100000004135D450900000004045489F91386ACF8000000010000000800000008000000000000000300000001"
theorem small_8017385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017385_right_root small_8017385_right_fuel small_8017385_right_count small_8017385_right_encoded = true := by
  decide +kernel
theorem small_8017385_right_covered : CoveredBy scale carrier boxes small_8017385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017385_right_root small_8017385_right_fuel small_8017385_right_count small_8017385_right_encoded small_8017385_right_checked

theorem cover_8017385 : CoveredBy scale carrier boxes root_8017385 := by
  apply coveredBy_split_literal root_8017385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8017386 small_8017385_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8017386
  · exact small_8017385_right_covered
#print axioms cover_8017385

def root_8017379 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017379_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017379_left_fuel : Nat := 1
def small_8017379_left_count : Nat := 1
def small_8017379_left_encoded : String := "00000003"
theorem small_8017379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017379_left_root small_8017379_left_fuel small_8017379_left_count small_8017379_left_encoded = true := by
  decide +kernel
theorem small_8017379_left_covered : CoveredBy scale carrier boxes small_8017379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017379_left_root small_8017379_left_fuel small_8017379_left_count small_8017379_left_encoded small_8017379_left_checked

theorem cover_8017379 : CoveredBy scale carrier boxes root_8017379 := by
  apply coveredBy_split_literal root_8017379 small_8017379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8017385 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8017379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8017385
#print axioms cover_8017379

def root_8017378 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017378_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017378_right_fuel : Nat := 15
def small_8017378_right_count : Nat := 49
def small_8017378_right_encoded : String := "1151E8FD0A0000FE1152250908A912F912073CF80000000108A913090000000512073CFE0000000400000005120700F808A913090000000612073CFE0000000405000100135D450100000000050000FA135D8105050000FC00000008135D44FD000000080000000300000002135D450500000002050000FC135D80FD00000003045489F9000000050000000600000005135D8101050000FA00000006000000050000000000000001000000041151E9090000000408A912F9000000050000000800000003"
theorem small_8017378_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017378_right_root small_8017378_right_fuel small_8017378_right_count small_8017378_right_encoded = true := by
  decide +kernel
theorem small_8017378_right_covered : CoveredBy scale carrier boxes small_8017378_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017378_right_root small_8017378_right_fuel small_8017378_right_count small_8017378_right_encoded small_8017378_right_checked

theorem cover_8017378 : CoveredBy scale carrier boxes root_8017378 := by
  apply coveredBy_split_literal root_8017378 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8017379 small_8017378_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8017379
  · exact small_8017378_right_covered
#print axioms cover_8017378

def root_8017372 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017372_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017372_left_fuel : Nat := 1
def small_8017372_left_count : Nat := 1
def small_8017372_left_encoded : String := "00000002"
theorem small_8017372_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017372_left_root small_8017372_left_fuel small_8017372_left_count small_8017372_left_encoded = true := by
  decide +kernel
theorem small_8017372_left_covered : CoveredBy scale carrier boxes small_8017372_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017372_left_root small_8017372_left_fuel small_8017372_left_count small_8017372_left_encoded small_8017372_left_checked

theorem cover_8017372 : CoveredBy scale carrier boxes root_8017372 := by
  apply coveredBy_split_literal root_8017372 small_8017372_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8017378 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8017372_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8017378
#print axioms cover_8017372

def root_8015530 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8015530 : CoveredBy scale carrier boxes root_8015530 := by
  apply coveredBy_split_literal root_8015530 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3005.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8017372 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3005.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8017372
#print axioms cover_8015530

def root_8015524 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015524_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015524_left_fuel : Nat := 1
def small_8015524_left_count : Nat := 1
def small_8015524_left_encoded : String := "00000001"
theorem small_8015524_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8015524_left_root small_8015524_left_fuel small_8015524_left_count small_8015524_left_encoded = true := by
  decide +kernel
theorem small_8015524_left_covered : CoveredBy scale carrier boxes small_8015524_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8015524_left_root small_8015524_left_fuel small_8015524_left_count small_8015524_left_encoded small_8015524_left_checked

theorem cover_8015524 : CoveredBy scale carrier boxes root_8015524 := by
  apply coveredBy_split_literal root_8015524 small_8015524_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8015530 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8015524_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8015530
#print axioms cover_8015524

def root_8015523 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015523_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015523_right_fuel : Nat := 21
def small_8015523_right_count : Nat := 181
def small_8015523_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A91305120700FA08A912FD12073CFC0000000308A91309120700FE000000070000000400000007120700FC00000007000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE05000100135D450100000000050000F8135D80F9000000010CFD9C05000000050F350CFA000000020000000500000005000000050000000412073CFE0000000405000100135D450100000000050000F8135D80F9000000010CFD9C0500000007000000070000000500000005120700FC08A91309120700FE05000100135D450100000000050000F8135D80F9000000010CFD9C05000000070F350CFA00000002045489FD000000070000000700000007135D8101050000F8135D80F9000000010CFD9C050F34D0FA00000007000000020F350CFA00000002045489FD000000050000000700000005000000000000000412073CFE000000040000000700000003000000041151E9090000000408A9130500000007000000071151E8FD0000000500000003000000021151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC0000000308A913090000000512073CFE0000000400000005120700FC08A91309120700FE05000100135D450100000000050000F8135D80F900000001050000FA135D8105045489FD00000005138670FC0000000800000003000000020000000500000005000000050000000412073CFE0000000405000100135D450100000000050000F8135D80F900000001050000FA00000007135D450500000002045489FD00000005138670FC0000000700000003135D44F90000000700000001135D8101050000F8135D80F900000001050000FA0000000700000005000000050000000000000003000000041151E9090000000408A912FD00000005120700FC00000007000000031151E8FD000000050000000300000001"
theorem small_8015523_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8015523_right_root small_8015523_right_fuel small_8015523_right_count small_8015523_right_encoded = true := by
  decide +kernel
theorem small_8015523_right_covered : CoveredBy scale carrier boxes small_8015523_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8015523_right_root small_8015523_right_fuel small_8015523_right_count small_8015523_right_encoded small_8015523_right_checked

theorem cover_8015523 : CoveredBy scale carrier boxes root_8015523 := by
  apply coveredBy_split_literal root_8015523 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8015524 small_8015523_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8015524
  · exact small_8015523_right_covered
#print axioms cover_8015523

def root_8015517 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015517_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015517_left_fuel : Nat := 1
def small_8015517_left_count : Nat := 1
def small_8015517_left_encoded : String := "00000000"
theorem small_8015517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8015517_left_root small_8015517_left_fuel small_8015517_left_count small_8015517_left_encoded = true := by
  decide +kernel
theorem small_8015517_left_covered : CoveredBy scale carrier boxes small_8015517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8015517_left_root small_8015517_left_fuel small_8015517_left_count small_8015517_left_encoded small_8015517_left_checked

theorem cover_8015517 : CoveredBy scale carrier boxes root_8015517 := by
  apply coveredBy_split_literal root_8015517 small_8015517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8015523 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8015517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8015523
#print axioms cover_8015517

def root_8015516 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8015516 : CoveredBy scale carrier boxes root_8015516 := by
  apply coveredBy_split_literal root_8015516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8015517 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3008.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8015517
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3008.covered
#print axioms cover_8015516

def root_8013996 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013996 : CoveredBy scale carrier boxes root_8013996 := by
  apply coveredBy_split_literal root_8013996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3004.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8015516 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3004.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8015516
#print axioms cover_8013996

def root_8013995 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013995 : CoveredBy scale carrier boxes root_8013995 := by
  apply coveredBy_split_literal root_8013995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8013996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3009.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8013996
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3009.covered
#print axioms cover_8013995

def root_8031564 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031564_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031564_left_fuel : Nat := 20
def small_8031564_left_count : Nat := 283
def small_8031564_left_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC08A913090000000512073CFE0000000404548A01000000051386AD000CFD9BF9000000050F34D0F804548A05000000050000000700000001000000000000000312073CFC0000000308A91309120700FE04548A01000000051386AD000CFD9BF9000000050000000A000000000000000412073CFE0000000404548A0113867100000000000CFD9BF9000000050F34D0F804548A05000000051386ACFA000000020CFD9C07000000050F350CFC000000030CFD9C090000000500000007000000011386AD000CFD9BF90F350CF80000000104548A0500000005000000070F34D0F804548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000500000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A0000000700000001000000000000000212073CFA0000000208A91307120700FC08A91309120700FE04548A01000000051386AD000CFD9BF9000000050F34D0F80000000600000001000000000000000412073CFE0000000404548A0113867100000000000CFD9BF9000000050F34D0F80CFD9C05000000050F350CFA0000000204548A07000000051386ACFC000000030CFD9C090000000500000007000000011386AD000CFD9BF90F350CF8000000010CFD9C0500000005000000070F34D0F80CFD9C050F34D0FA04548A070000000700000007000000020F350CFA0000000204548A07138670FC0CFD9C090000000500000007000000031386ACFC000000030CFD9C090F34D0FE0C9A86FA000000060F8751050000000200000006000000040000000700000001000000000000000312073CFC0000000308A91309120700FE04548A0113867100000000000CFD9BF9000000050F34D0F80CFD9C05000000050000000A000000011386AD000CFD9BF90F350CF8000000010CFD9C05000000050000000A0000000A000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C07000000050F350CFC000000030CFD9C0900000005000000070F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A00000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE0C9A86FA00000007000000050000000400000007000000030F350CFC000000030CFD9C090000000A0F350CFE0000000400000007000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC0000000700000003000000070F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A00000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090000000A00000007000000030F350CFC000000030CFD9C090000000A0F350CFE00000004000000070000000100000000"
theorem small_8031564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031564_left_root small_8031564_left_fuel small_8031564_left_count small_8031564_left_encoded = true := by
  decide +kernel
theorem small_8031564_left_covered : CoveredBy scale carrier boxes small_8031564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031564_left_root small_8031564_left_fuel small_8031564_left_count small_8031564_left_encoded small_8031564_left_checked

theorem cover_8031564 : CoveredBy scale carrier boxes root_8031564 := by
  apply coveredBy_split_literal root_8031564 small_8031564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3012.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8031564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3012.covered
#print axioms cover_8031564

def root_8031558 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031558_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031558_left_fuel : Nat := 1
def small_8031558_left_count : Nat := 1
def small_8031558_left_encoded : String := "00000000"
theorem small_8031558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031558_left_root small_8031558_left_fuel small_8031558_left_count small_8031558_left_encoded = true := by
  decide +kernel
theorem small_8031558_left_covered : CoveredBy scale carrier boxes small_8031558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031558_left_root small_8031558_left_fuel small_8031558_left_count small_8031558_left_encoded small_8031558_left_checked

theorem cover_8031558 : CoveredBy scale carrier boxes root_8031558 := by
  apply coveredBy_split_literal root_8031558 small_8031558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8031564 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8031558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8031564
#print axioms cover_8031558

def root_8031557 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031557 : CoveredBy scale carrier boxes root_8031557 := by
  apply coveredBy_split_literal root_8031557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8031558 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3013.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8031558
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3013.covered
#print axioms cover_8031557

def root_8031552 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031552_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031552_right_fuel : Nat := 1
def small_8031552_right_count : Nat := 1
def small_8031552_right_encoded : String := "00000004"
theorem small_8031552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031552_right_root small_8031552_right_fuel small_8031552_right_count small_8031552_right_encoded = true := by
  decide +kernel
theorem small_8031552_right_covered : CoveredBy scale carrier boxes small_8031552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031552_right_root small_8031552_right_fuel small_8031552_right_count small_8031552_right_encoded small_8031552_right_checked

theorem cover_8031552 : CoveredBy scale carrier boxes root_8031552 := by
  apply coveredBy_split_literal root_8031552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.root_8031557 small_8031552_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553.cover_8031557
  · exact small_8031552_right_covered
#print axioms cover_8031552

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0553

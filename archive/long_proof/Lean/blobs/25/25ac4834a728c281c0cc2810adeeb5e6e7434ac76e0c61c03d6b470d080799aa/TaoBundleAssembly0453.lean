import TaoBundleAssembly0452
import TaoBundleChunkBatch0620
import TaoBundleChunkBatch0621
import TaoBundleChunkBatch0622
import TaoBundleChunkBatch0623
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453
def root_6581215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581215_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581215_left_fuel : Nat := 20
def small_6581215_left_count : Nat := 275
def small_6581215_left_encoded : String := "115225070A0001081151E8FF08A912F912073D0208A91307120700FC000000080000000312073CFC0000000305000100135D44F7050000FA135D810505000108000000050000000800000002135D4505000000020000000800000000135D80F700000000050000FA135D81050500010800000005135D80FF000000040CFD9BF90F350D020CFD9C070000000800000005000000010F34D102000000010CFD9C07000000080000000500000002135D450500000002050001080000000A135D80FF000000040CFD9BF9000000080F34D102000000010000000800000001120701020000000108A91307120700FC000000080000000312073CFC0000000305000100135D44F7050000FA00000005135D4505000000020000000800000000135D80F700000000050000FA135D81050500010800000005135D80FF00000004045489F91386AD020CFD9C070000000800000005000000010000000500000002135D45050000000205000108135D44FF045489F91386AD0200000005000000010000000500000004135D80FF00000004045489F90000000813867102000000010000000800000004115224FF0000000408A912F912073D0208A91307120700FC000000080000000312073CFC0000000308A912FF12073D0805000100135D44F7050000FA135D81050CFD9BF9000000080F34D102000000010000000800000002135D4505000000020000000800000000135D80F700000000050000FA135D81050CFD9BF90F350D020CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF0F350D0800000008000000040F34D1080000000400000008000000010F34D102000000010CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D108000000040000000800000002135D4505000000020CFD9BF90F350D020CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D1080000000400000008000000010F34D10200000001000000080000000412070108000000040500010000000008135D80F700000000050000FA135D81050CFD9BF90F350D020CFD9C07000000080F350CFC0000000300000006000000010F34D102000000010000000800000002135D4505000000020CFD9BF9000000080F34D102000000010000000800000001120701020000000108A91307120700FC000000080000000312073CFC0000000308A912FF12073D080500010000000008135D80F700000000050000FA135D8105045489F91386AD020CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D10800000004000000080000000113867102000000010CFD9C07000000080F350CFC000000030CFD9BFF000000080F34D108000000040000000800000002135D450500000002045489F9000000081386710200000001000000080000000412070108000000040500010000000008135D80F700000000050000FA135D8105045489F90000000813867102000000010000000800000002135D4505000000020000000800000003"
theorem small_6581215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6581215_left_root small_6581215_left_fuel small_6581215_left_count small_6581215_left_encoded = true := by
  decide +kernel
theorem small_6581215_left_covered : CoveredBy scale carrier boxes small_6581215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6581215_left_root small_6581215_left_fuel small_6581215_left_count small_6581215_left_encoded small_6581215_left_checked

theorem cover_6581215 : CoveredBy scale carrier boxes root_6581215 := by
  apply coveredBy_split_literal root_6581215 small_6581215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0452.root_6581815 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6581215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0452.cover_6581815
#print axioms cover_6581215

def root_6581209 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581209_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6581209_left_fuel : Nat := 1
def small_6581209_left_count : Nat := 1
def small_6581209_left_encoded : String := "00000002"
theorem small_6581209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6581209_left_root small_6581209_left_fuel small_6581209_left_count small_6581209_left_encoded = true := by
  decide +kernel
theorem small_6581209_left_covered : CoveredBy scale carrier boxes small_6581209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6581209_left_root small_6581209_left_fuel small_6581209_left_count small_6581209_left_encoded small_6581209_left_checked

theorem cover_6581209 : CoveredBy scale carrier boxes root_6581209 := by
  apply coveredBy_split_literal root_6581209 small_6581209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6581215 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6581209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6581215
#print axioms cover_6581209

def root_6577469 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6577469 : CoveredBy scale carrier boxes root_6577469 := by
  apply coveredBy_split_literal root_6577469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0452.root_6577470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6581209 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0452.cover_6577470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6581209
#print axioms cover_6577469

def root_6577463 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577463_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6577463_left_fuel : Nat := 1
def small_6577463_left_count : Nat := 1
def small_6577463_left_encoded : String := "00000001"
theorem small_6577463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6577463_left_root small_6577463_left_fuel small_6577463_left_count small_6577463_left_encoded = true := by
  decide +kernel
theorem small_6577463_left_covered : CoveredBy scale carrier boxes small_6577463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6577463_left_root small_6577463_left_fuel small_6577463_left_count small_6577463_left_encoded small_6577463_left_checked

theorem cover_6577463 : CoveredBy scale carrier boxes root_6577463 := by
  apply coveredBy_split_literal root_6577463 small_6577463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6577469 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6577463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6577469
#print axioms cover_6577463

def root_6575987 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6575987 : CoveredBy scale carrier boxes root_6575987 := by
  apply coveredBy_split_literal root_6575987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2477.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6577463 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2477.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6577463
#print axioms cover_6575987

def root_6575982 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6575982_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6575982_right_fuel : Nat := 1
def small_6575982_right_count : Nat := 1
def small_6575982_right_encoded : String := "00000000"
theorem small_6575982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6575982_right_root small_6575982_right_fuel small_6575982_right_count small_6575982_right_encoded = true := by
  decide +kernel
theorem small_6575982_right_covered : CoveredBy scale carrier boxes small_6575982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6575982_right_root small_6575982_right_fuel small_6575982_right_count small_6575982_right_encoded small_6575982_right_checked

theorem cover_6575982 : CoveredBy scale carrier boxes root_6575982 := by
  apply coveredBy_split_literal root_6575982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6575987 small_6575982_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6575987
  · exact small_6575982_right_covered
#print axioms cover_6575982

def root_6592083 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6592083 : CoveredBy scale carrier boxes root_6592083 := by
  apply coveredBy_split_literal root_6592083 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2485.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2486.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2485.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2486.covered
#print axioms cover_6592083

def root_6592077 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592077_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592077_left_fuel : Nat := 1
def small_6592077_left_count : Nat := 1
def small_6592077_left_encoded : String := "00000003"
theorem small_6592077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6592077_left_root small_6592077_left_fuel small_6592077_left_count small_6592077_left_encoded = true := by
  decide +kernel
theorem small_6592077_left_covered : CoveredBy scale carrier boxes small_6592077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6592077_left_root small_6592077_left_fuel small_6592077_left_count small_6592077_left_encoded small_6592077_left_checked

theorem cover_6592077 : CoveredBy scale carrier boxes root_6592077 := by
  apply coveredBy_split_literal root_6592077 small_6592077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6592083 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6592077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6592083
#print axioms cover_6592077

def root_6592039 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592039_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592039_left_fuel : Nat := 8
def small_6592039_left_count : Nat := 17
def small_6592039_left_encoded : String := "0F34D0FC0CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FA000000050F875105000000020000000500000003"
theorem small_6592039_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6592039_left_root small_6592039_left_fuel small_6592039_left_count small_6592039_left_encoded = true := by
  decide +kernel
theorem small_6592039_left_covered : CoveredBy scale carrier boxes small_6592039_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6592039_left_root small_6592039_left_fuel small_6592039_left_count small_6592039_left_encoded small_6592039_left_checked

theorem cover_6592039 : CoveredBy scale carrier boxes root_6592039 := by
  apply coveredBy_split_literal root_6592039 small_6592039_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6592077 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6592039_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6592077
#print axioms cover_6592039

def root_6592033 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592033_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6592033_left_fuel : Nat := 1
def small_6592033_left_count : Nat := 1
def small_6592033_left_encoded : String := "00000002"
theorem small_6592033_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6592033_left_root small_6592033_left_fuel small_6592033_left_count small_6592033_left_encoded = true := by
  decide +kernel
theorem small_6592033_left_covered : CoveredBy scale carrier boxes small_6592033_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6592033_left_root small_6592033_left_fuel small_6592033_left_count small_6592033_left_encoded small_6592033_left_checked

theorem cover_6592033 : CoveredBy scale carrier boxes root_6592033 := by
  apply coveredBy_split_literal root_6592033 small_6592033_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6592039 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6592033_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6592039
#print axioms cover_6592033

def root_6591981 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591981_left_fuel : Nat := 10
def small_6591981_left_count : Nat := 23
def small_6591981_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FC000000050F875107000000030000000500000002"
theorem small_6591981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591981_left_root small_6591981_left_fuel small_6591981_left_count small_6591981_left_encoded = true := by
  decide +kernel
theorem small_6591981_left_covered : CoveredBy scale carrier boxes small_6591981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591981_left_root small_6591981_left_fuel small_6591981_left_count small_6591981_left_encoded small_6591981_left_checked

theorem cover_6591981 : CoveredBy scale carrier boxes root_6591981 := by
  apply coveredBy_split_literal root_6591981 small_6591981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6592033 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6591981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6592033
#print axioms cover_6591981

def root_6591975 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591975_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591975_left_fuel : Nat := 1
def small_6591975_left_count : Nat := 1
def small_6591975_left_encoded : String := "00000001"
theorem small_6591975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591975_left_root small_6591975_left_fuel small_6591975_left_count small_6591975_left_encoded = true := by
  decide +kernel
theorem small_6591975_left_covered : CoveredBy scale carrier boxes small_6591975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591975_left_root small_6591975_left_fuel small_6591975_left_count small_6591975_left_encoded small_6591975_left_checked

theorem cover_6591975 : CoveredBy scale carrier boxes root_6591975 := by
  apply coveredBy_split_literal root_6591975 small_6591975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591981 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6591975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591981
#print axioms cover_6591975

def root_6591523 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591523_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591523_left_fuel : Nat := 25
def small_6591523_left_count : Nat := 215
def small_6591523_left_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC0CFD9BFF0F350D08000000050000000400000005000000030F350CFC000000030CFD9BFF0F350D080C9A8700000000050F878CF70000000000000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FC0000000500000006000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A8700000000050F878CF70000000000000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FA000000050F8751050000000200000008000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FA000000050F875105000000020C9A86FC000000050F8751070000000300000005000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000050F875107000000030C9A8708000000050F878CFF0000000400000005000000020F875105000000020C9A86FC0F878D070C9A8708000000050F878CFF0000000400000005000000030F875107000000030C9A8708000000050F878CFF00000004067ECE7912EA95020DE7CA00000000050E6014F7000000000B4D43FA000000050000000A0000000112EA5902000000010DE7CA000E5FD8F70B4D43FA00000005108011050000000200000005000000000E6014F7000000000B4D43FA0000000510801105000000020B4D43FC0000000510801107000000030DE7CA080000000500000007000000040F34D108000000040C9A87000F8750F70C9A86FA0F878D050C9A86FC000000050F8751070000000300000005000000020F875105000000020C9A86FC000000050F87510700000003067ECE790000000612EA5902000000010AD3577F0000000810D101080000000400000006000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000050F87510700000003067ECE790000000612EA5902000000010AD3577F0000000600000006000000020F875105000000020C9A86FC0F878D07067ECE790000000712EA5902000000010AD3577F0000000800000007000000030F87510700000003067ECE790000000712EA5902000000010AD3577F10D13D080DE7CA000E5FD8F70B4D43FA0000000610801105000000020B4D43FC000000070000000600000000000000070000000410D10108000000040000000600000001"
theorem small_6591523_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591523_left_root small_6591523_left_fuel small_6591523_left_count small_6591523_left_encoded = true := by
  decide +kernel
theorem small_6591523_left_covered : CoveredBy scale carrier boxes small_6591523_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591523_left_root small_6591523_left_fuel small_6591523_left_count small_6591523_left_encoded small_6591523_left_checked

theorem cover_6591523 : CoveredBy scale carrier boxes root_6591523 := by
  apply coveredBy_split_literal root_6591523 small_6591523_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591975 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6591523_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591975
#print axioms cover_6591523

def root_6591518 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591518_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591518_right_fuel : Nat := 1
def small_6591518_right_count : Nat := 1
def small_6591518_right_encoded : String := "00000000"
theorem small_6591518_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591518_right_root small_6591518_right_fuel small_6591518_right_count small_6591518_right_encoded = true := by
  decide +kernel
theorem small_6591518_right_covered : CoveredBy scale carrier boxes small_6591518_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591518_right_root small_6591518_right_fuel small_6591518_right_count small_6591518_right_encoded small_6591518_right_checked

theorem cover_6591518 : CoveredBy scale carrier boxes root_6591518 := by
  apply coveredBy_split_literal root_6591518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591523 small_6591518_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591523
  · exact small_6591518_right_covered
#print axioms cover_6591518

def root_6591517 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6591517 : CoveredBy scale carrier boxes root_6591517 := by
  apply coveredBy_split_literal root_6591517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2487.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591518
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2487.covered
#print axioms cover_6591517

def root_6591512 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591512_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591512_right_fuel : Nat := 1
def small_6591512_right_count : Nat := 1
def small_6591512_right_encoded : String := "00000004"
theorem small_6591512_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591512_right_root small_6591512_right_fuel small_6591512_right_count small_6591512_right_encoded = true := by
  decide +kernel
theorem small_6591512_right_covered : CoveredBy scale carrier boxes small_6591512_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591512_right_root small_6591512_right_fuel small_6591512_right_count small_6591512_right_encoded small_6591512_right_checked

theorem cover_6591512 : CoveredBy scale carrier boxes root_6591512 := by
  apply coveredBy_split_literal root_6591512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591517 small_6591512_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591517
  · exact small_6591512_right_covered
#print axioms cover_6591512

def root_6591511 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591511_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591511_right_fuel : Nat := 25
def small_6591511_right_count : Nat := 251
def small_6591511_right_encoded : String := "12070108000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC00000003045489FF0000000600000006000000020F350CFA000000020CFD9C070F34D0FC045489FF1386AD080C9A870000000005000000070000000400000007000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FA0F878D0500000006000000020F875105000000020C9A86FC0000000700000006000000000F878CF70000000000000007000000041386710800000004000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC00000003045489FF1386AD080C9A8700000000050F878CF7000000000C9A86FC000000050000000600000004138671080000000400000006000000020F350CFA000000020CFD9C070F34D0FC045489FF1386AD080C9A8700000000050F878CF7000000000C9A86FA00000005000000090000000413867108000000040C9A87000000000800000007000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FA0F878D050C9A86FC000000050F8751070000000300000006000000020F875105000000020C9A86FC000000080F87510700000003022A45790000000613E1C50200000001067ECE7F12EA95080B4D44000000000810804CF7000000000B4D43FA00000006000000060000000412EA59080000000400000006000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000070F87510700000003022A45790000000613E1C50200000001067ECE7F0000000600000006000000020F875105000000020C9A86FC0F878D07022A45790000000713E1C50200000001067ECE7F0000000900000007000000030F87510700000003022A45790000000713E1C50200000001067ECE7F12EA95080DE7CA000E5FD8F70B4D43FA0000000600000009000000000E6014F700000000000000070000000412EA590800000004000000070000000413867108000000040C9A87000F8750F70C9A86FA0F878D050C9A86FC0000000700000006000000020F875105000000020C9A86FC0F878D0700000008000000030F8751070000000300000006000000000F878CF7000000000C9A86FA000000070F8751050000000200000007000000000F34D10000000000045489F91386AD020CFD9C050F34D0FA0000000700000002000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003045489FF1386AD080C9A86FA000000070F87510500000002000000070000000400000007"
theorem small_6591511_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591511_right_root small_6591511_right_fuel small_6591511_right_count small_6591511_right_encoded = true := by
  decide +kernel
theorem small_6591511_right_covered : CoveredBy scale carrier boxes small_6591511_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591511_right_root small_6591511_right_fuel small_6591511_right_count small_6591511_right_encoded small_6591511_right_checked

theorem cover_6591511 : CoveredBy scale carrier boxes root_6591511 := by
  apply coveredBy_split_literal root_6591511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591512 small_6591511_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591512
  · exact small_6591511_right_covered
#print axioms cover_6591511

def root_6591505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591505_left_fuel : Nat := 1
def small_6591505_left_count : Nat := 1
def small_6591505_left_encoded : String := "00000003"
theorem small_6591505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591505_left_root small_6591505_left_fuel small_6591505_left_count small_6591505_left_encoded = true := by
  decide +kernel
theorem small_6591505_left_covered : CoveredBy scale carrier boxes small_6591505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591505_left_root small_6591505_left_fuel small_6591505_left_count small_6591505_left_encoded small_6591505_left_checked

theorem cover_6591505 : CoveredBy scale carrier boxes root_6591505 := by
  apply coveredBy_split_literal root_6591505 small_6591505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591511 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6591505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591511
#print axioms cover_6591505

def root_6591163 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591163_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591163_left_fuel : Nat := 16
def small_6591163_left_count : Nat := 157
def small_6591163_left_encoded : String := "120700FC08A912FF12073D080CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA04548A07138670FC0CFD9BFF0000000800000005000000031386ACFC000000030CFD9BFF0F350D08000000050000000400000005000000020F350CFA0000000204548A07000000081386ACFC000000030CFD9BFF000000080F34D10800000004000000080000000113867102000000010CFD9C050F34D0FA04548A07138670FC0CFD9BFF0F350D080000000500000004000000050000000300000005000000020F350CFA0000000204548A07000000081386ACFC000000030CFD9BFF0000000800000005000000000F34D10000000000045489F91386AD020CFD9C050F34D0FA04548A07138670FC0CFD9BFF0F350D08000000050000000400000005000000031386ACFC000000030CFD9BFF0F350D08000000050000000400000005000000020F350CFA0000000204548A070000000A1386ACFC000000030CFD9BFF0F350D080000000A000000040000000A0000000113867102000000010CFD9C050F34D0FA04548A07138670FC000000050000000300000005000000020F350CFA0000000204548A07138670FC0000000A000000031386ACFC000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A86FA000000050F87510500000002000000080000000412070108000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA0000000500000002000000080000000113867102000000010CFD9C050F34D0FA000000050000000200000008000000000F34D10000000000045489F90000000713867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020000000900000003"
theorem small_6591163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591163_left_root small_6591163_left_fuel small_6591163_left_count small_6591163_left_encoded = true := by
  decide +kernel
theorem small_6591163_left_covered : CoveredBy scale carrier boxes small_6591163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591163_left_root small_6591163_left_fuel small_6591163_left_count small_6591163_left_encoded small_6591163_left_checked

theorem cover_6591163 : CoveredBy scale carrier boxes root_6591163 := by
  apply coveredBy_split_literal root_6591163 small_6591163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591505 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6591163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591505
#print axioms cover_6591163

def root_6591157 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6591157_left_fuel : Nat := 1
def small_6591157_left_count : Nat := 1
def small_6591157_left_encoded : String := "00000002"
theorem small_6591157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6591157_left_root small_6591157_left_fuel small_6591157_left_count small_6591157_left_encoded = true := by
  decide +kernel
theorem small_6591157_left_covered : CoveredBy scale carrier boxes small_6591157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6591157_left_root small_6591157_left_fuel small_6591157_left_count small_6591157_left_encoded small_6591157_left_checked

theorem cover_6591157 : CoveredBy scale carrier boxes root_6591157 := by
  apply coveredBy_split_literal root_6591157 small_6591157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591163 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6591157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591163
#print axioms cover_6591157

def root_6590083 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6590083 : CoveredBy scale carrier boxes root_6590083 := by
  apply coveredBy_split_literal root_6590083 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2484.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6591157 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2484.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6591157
#print axioms cover_6590083

def root_6590077 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6590077_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6590077_left_fuel : Nat := 1
def small_6590077_left_count : Nat := 1
def small_6590077_left_encoded : String := "00000001"
theorem small_6590077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6590077_left_root small_6590077_left_fuel small_6590077_left_count small_6590077_left_encoded = true := by
  decide +kernel
theorem small_6590077_left_covered : CoveredBy scale carrier boxes small_6590077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6590077_left_root small_6590077_left_fuel small_6590077_left_count small_6590077_left_encoded small_6590077_left_checked

theorem cover_6590077 : CoveredBy scale carrier boxes root_6590077 := by
  apply coveredBy_split_literal root_6590077 small_6590077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6590083 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6590077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6590083
#print axioms cover_6590077

def root_6588367 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6588367 : CoveredBy scale carrier boxes root_6588367 := by
  apply coveredBy_split_literal root_6588367 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2483.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6590077 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2483.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6590077
#print axioms cover_6588367

def root_6588362 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588362_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588362_right_fuel : Nat := 1
def small_6588362_right_count : Nat := 1
def small_6588362_right_encoded : String := "00000000"
theorem small_6588362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6588362_right_root small_6588362_right_fuel small_6588362_right_count small_6588362_right_encoded = true := by
  decide +kernel
theorem small_6588362_right_covered : CoveredBy scale carrier boxes small_6588362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6588362_right_root small_6588362_right_fuel small_6588362_right_count small_6588362_right_encoded small_6588362_right_checked

theorem cover_6588362 : CoveredBy scale carrier boxes root_6588362 := by
  apply coveredBy_split_literal root_6588362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6588367 small_6588362_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6588367
  · exact small_6588362_right_covered
#print axioms cover_6588362

def root_6588361 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6588361 : CoveredBy scale carrier boxes root_6588361 := by
  apply coveredBy_split_literal root_6588361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6588362 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2488.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6588362
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2488.covered
#print axioms cover_6588361

def root_6588355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588355_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6588355_left_fuel : Nat := 1
def small_6588355_left_count : Nat := 1
def small_6588355_left_encoded : String := "00000004"
theorem small_6588355_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6588355_left_root small_6588355_left_fuel small_6588355_left_count small_6588355_left_encoded = true := by
  decide +kernel
theorem small_6588355_left_covered : CoveredBy scale carrier boxes small_6588355_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6588355_left_root small_6588355_left_fuel small_6588355_left_count small_6588355_left_encoded small_6588355_left_checked

theorem cover_6588355 : CoveredBy scale carrier boxes root_6588355 := by
  apply coveredBy_split_literal root_6588355 small_6588355_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6588361 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6588355_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6588361
#print axioms cover_6588355

def root_6586701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6586701 : CoveredBy scale carrier boxes root_6586701 := by
  apply coveredBy_split_literal root_6586701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2482.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6588355 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2482.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6588355
#print axioms cover_6586701

def root_6586696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586696_right_fuel : Nat := 1
def small_6586696_right_count : Nat := 1
def small_6586696_right_encoded : String := "00000003"
theorem small_6586696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6586696_right_root small_6586696_right_fuel small_6586696_right_count small_6586696_right_encoded = true := by
  decide +kernel
theorem small_6586696_right_covered : CoveredBy scale carrier boxes small_6586696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6586696_right_root small_6586696_right_fuel small_6586696_right_count small_6586696_right_encoded small_6586696_right_checked

theorem cover_6586696 : CoveredBy scale carrier boxes root_6586696 := by
  apply coveredBy_split_literal root_6586696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6586701 small_6586696_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6586701
  · exact small_6586696_right_covered
#print axioms cover_6586696

def root_6600979 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600979_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600979_right_fuel : Nat := 40
def small_6600979_right_count : Nat := 405
def small_6600979_right_encoded : String := "0F34D10000000000045489F91386AD020CFD9C050F34D0FA0CFD9BFF000000090F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000009000000020F875105000000020C9A87080F8750FF00000009000000040F878CFF00000004078000FC128A7D070AD3577710D13D00067ECE790000000612EA5902000000010B4D43FA0000000910801105000000020DE7CA0800000009000000060000000010D10100000000000000000700000003128A4107000000030AD3577710D13D00000000060000000000000006000000040F34D108000000040C9A86FA0F878D0500000006000000020F87510500000002078000FC00000007000000060000000113867102000000010CFD9C050F34D0FA0CFD9BFF000000090F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A8708000000090F878CFF00000004078000FC128A7D070AD357770000000910D10100000000000000000800000003128A41070000000300000008000000020F875105000000020C9A87080F8750FF078000FC128A7D070AD357770000000910D10100000000000000000900000003128A41070000000300000009000000040F878CFF00000004078000FC128A7D070AD3577710D13D00022A457913E201020B4D43FA10804D050DE7CA08000000090E6014FF0000000408C000FC00000007000000060000000210801105000000020DE7CA080E5FD8FF00000009000000040E6014FF0000000408C000FC11FC25070BE879B700000007000000070000000311FBE90700000003000000060000000113E1C502000000010B4D43FA10804D050DE7CA08000000090E6014FF0000000408C000FC11FC25070BE879B71011AD000115233900000009000000080000000010117100000000000000000800000003000000080000000210801105000000020DE7CA080E5FD8FF08C000FC11FC25070BE879B71011AD00011523390000000913F85902000000010AA6A27A0000000910ED7105000000020D412888000000080EFA4CFF00000004096000FC11AABD070C730AD700000008000000080000000300000008000000001011710000000000000000090000000311FBE907000000030BE879B70000000800000008000000040E6014FF0000000408C000FC11FC25070BE879B71011AD000115233913F895020DAED87F0E9661080AA6A27A0000000910ED710500000002096000FC0000000700000005000000040E96250800000004000000070000000113F85902000000010DAED87F0E9661080AA6A27A10EDAD05000000080000000210ED710500000002096000FC11AABD070C730AD70FA74500008A921913FE35020E0776BF0E413908000000080000000400000007000000010000000800000000000000080000000300000005000000040E962508000000040AA6A27A10EDAD0500000008000000020000000500000000101171000000000001152339000000070000000800000003000000050000000010D1010000000000022A457913E201020B4D43FA10804D05000000090000000210801105000000020DE7CA080E5FD8FF0000000900000004000000050000000113E1C502000000010B4D43FA10804D05000000080000000210801105000000020DE7CA08000000080000000500000003128A4107000000030AD3577710D13D00022A457913E201020B4D43FA0000000910801105000000020DE7CA08000000090000000500000001000000080000000010D101000000000000000008000000040F34D108000000040C9A86FA0F878D05078000FC128A7D070AD3577710D13D00022A45790000000613E1C502000000010AD3577F10D13D080000000800000004000000060000000010D1010000000000022A4579000000060000000800000003128A41070000000300000006000000020F87510500000002078000FC128A7D070AD3577710D13D00022A457913E201020AD3577F10D13D080B4D43FA000000060000000600000004000000060000000113E1C502000000010AD3577F10D13D080B4D43FA10804D0508C000FC11FC25070BE879B71011AD00011523390000000613F85902000000010BE879BF000000060000000600000000101171000000000000000007000000030000000500000002000000050000000410D1010800000004000000050000000010D1010000000000000000050000000300000005"
theorem small_6600979_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600979_right_root small_6600979_right_fuel small_6600979_right_count small_6600979_right_encoded = true := by
  decide +kernel
theorem small_6600979_right_covered : CoveredBy scale carrier boxes small_6600979_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600979_right_root small_6600979_right_fuel small_6600979_right_count small_6600979_right_encoded small_6600979_right_checked

theorem cover_6600979 : CoveredBy scale carrier boxes root_6600979 := by
  apply coveredBy_split_literal root_6600979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2489.root small_6600979_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2489.covered
  · exact small_6600979_right_covered
#print axioms cover_6600979

def root_6600974 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600974_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600974_right_fuel : Nat := 1
def small_6600974_right_count : Nat := 1
def small_6600974_right_encoded : String := "00000003"
theorem small_6600974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600974_right_root small_6600974_right_fuel small_6600974_right_count small_6600974_right_encoded = true := by
  decide +kernel
theorem small_6600974_right_covered : CoveredBy scale carrier boxes small_6600974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600974_right_root small_6600974_right_fuel small_6600974_right_count small_6600974_right_encoded small_6600974_right_checked

theorem cover_6600974 : CoveredBy scale carrier boxes root_6600974 := by
  apply coveredBy_split_literal root_6600974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6600979 small_6600974_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6600979
  · exact small_6600974_right_covered
#print axioms cover_6600974

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453

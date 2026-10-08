import TaoBundleAssembly0052
import TaoBundleChunkBatch0212
import TaoBundleChunkBatch0213
import TaoBundleChunkBatch0214
import TaoBundleChunkBatch0215
import TaoBundleChunkBatch0216
import TaoBundleChunkBatch0217
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053
def root_2199224 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199224_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199224_right_fuel : Nat := 25
def small_2199224_right_count : Nat := 289
def small_2199224_right_encoded : String := "135D44F705000106135D450700000003050000FE135D80FF0000000404548A0313867102000000010CFD9BFB0F350D040C9A87040F8750FB00000009000000020F878CFB00000002028000F613D7ECF7000000000280010613D7B10700000003078000FE128A7CFF00000004022A458300000007000000080000000713D7ED07078000FE128A7CFF00000004022A45830000000900000008000000050000000313D7B0F702800106000000070000000500000000000000020F34D10400000002028000F613D7ECF7000000000280010613D7B10700000003078000FE128A7CFF00000004022A458313E1C502000000010AD3577B10D13D0400000007000000020000000600000006128A40FF022A45830000000713E201020AD3577B10D13D04000000070000000210D101040000000200000005000000010000000413D7ED07078000FE128A7CFF00000004022A458313E1C502000000010AD3577B0000000510D10104000000020000000513E201020AD3577B10D13D0403C000F613A54CF70000000003C0010613A51107000000030000000800000005000000050000000210D10104000000020000000600000001000000050000000313D7B0F70280010613D7B10700000003078000FE128A7CFF00000004022A458300000007000000060000000500000005000000001386AD020CFD9BFB0F350D0400000008000000020F34D10400000002028000F613D7ECF7000000000280010613D7B10700000003078000FE128A7CFF00000004067ECE8312EA5902000000010000000600000006128A40FF067ECE8312EA5902000000010AD3577B10D13D0403C000F613A54CF7000000000140010613F5D90700000003064000FE000000060000000700000008000000080000000210D10104000000020000000612EA95020AD3577B0000000810D101040000000200000006000000010000000413D7ED07078000FE128A7CFF00000004067ECE8312EA5902000000010000000800000008128A40FF067ECE8312EA5902000000010AD3577B0000000510D10104000000020000000500000008000000040000000313D7B0F70280010613D7B10700000003078000FE128A7CFF0000000400000006128A40FF067ECE8312EA590200000001000000080000000800000004000000080000000000000001135D44FF04548A0313867102000000010CFD9BFB0F350D040C9A87040000000700000005000000020F34D10400000002000000051386AD020CFD9BFB0F350D0400000008000000020F34D10400000002028000F613D7ECF7000000000280010613D7B10700000003028000FE13D7ECFF00000004067ECE8312EA5902000000010AD3577B0000000510D10104000000020000000512EA95020AD3577B0000000810D101040000000200000009000000010000000500000005000000050000000100000004135D8107050000FE135D80FF0000000404548A0313867102000000010CFD9BFB0F350D0400000008000000020F34D10400000002000000051386AD020CFD9BFB0F350D0400000008000000020000000800000001135D44FF04548A030000000500000008000000040000000300000000"
theorem small_2199224_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199224_right_root small_2199224_right_fuel small_2199224_right_count small_2199224_right_encoded = true := by
  decide +kernel
theorem small_2199224_right_covered : CoveredBy scale carrier boxes small_2199224_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199224_right_root small_2199224_right_fuel small_2199224_right_count small_2199224_right_encoded small_2199224_right_checked

theorem cover_2199224 : CoveredBy scale carrier boxes root_2199224 := by
  apply coveredBy_split_literal root_2199224 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199225 small_2199224_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199225
  · exact small_2199224_right_covered
#print axioms cover_2199224

def root_2199219 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199219_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199219_right_fuel : Nat := 1
def small_2199219_right_count : Nat := 1
def small_2199219_right_encoded : String := "00000002"
theorem small_2199219_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199219_right_root small_2199219_right_fuel small_2199219_right_count small_2199219_right_encoded = true := by
  decide +kernel
theorem small_2199219_right_covered : CoveredBy scale carrier boxes small_2199219_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199219_right_root small_2199219_right_fuel small_2199219_right_count small_2199219_right_encoded small_2199219_right_checked

theorem cover_2199219 : CoveredBy scale carrier boxes root_2199219 := by
  apply coveredBy_split_literal root_2199219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2199224 small_2199219_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2199224
  · exact small_2199219_right_covered
#print axioms cover_2199219

def root_2199218 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199218_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199218_right_fuel : Nat := 21
def small_2199218_right_count : Nat := 233
def small_2199218_right_encoded : String := "1207010400000002050000F6135D80F70000000005000106135D450700000003050000FE135D80FF0000000404548A031386710200000001045489FB1386AD04078000F6128A7CF700000000028001060000000913D7ED070000000900000003128A40F70280010613D7B107000000030000000613D7ED07078000FE128A7CFF0000000400000006000000090000000300000000000000021386710400000002078000F600000009000000091386AD02045489FB00000009000000090000000100000009135D8107050000FE135D80FF0000000404548A031386710200000001045489FB1386AD04078000F6128A7CF70000000007800106128A410700000003078000FE128A7CFF000000040000000900000009128A7D07078000FE128A7CFF00000004000000090000000500000003128A40F707800106128A410700000003078000FE128A7CFF00000004022A458313E1C502000000010000000513E20102067ECE7B000000090000000900000001000000050000000500000000000000021386710400000002078000F600000009128A40F707800106128A410700000003078000FE000000060000000500000005000000001386AD02045489FB1386AD04078000F60000000900000009000000020000000900000001135D44FF04548A03138671020000000100000005000000090000000400000003135D44F705000106135D450700000003050000FE135D80FF0000000404548A031386710200000001045489FB1386AD04028000F613D7ECF700000000028001060000000613D7ED07078000FE00000006000000050000000313D7B0F70280010600000006000000050000000000000002000000061386AD02045489FB1386AD04028000F613D7ECF700000000028001060000000613D7ED07078000FE00000006000000090000000313D7B0F7028001060000000613D7ED07078000FE00000006000000050000000300000000000000020000000600000001135D44FF04548A031386710200000001000000051386AD02045489FB1386AD04028000F6000000090000000500000002000000090000000100000004135D8107050000FE135D80FF0000000404548A031386710200000001000000051386AD02045489FB1386AD04028000F613D7ECF70000000007800106128A410700000003078000FE128A7CFF00000004067ECE8312EA5902000000010000000500000006000000050000000500000005000000021386710400000002028000F6000000090000000500000001000000050000000300000000"
theorem small_2199218_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199218_right_root small_2199218_right_fuel small_2199218_right_count small_2199218_right_encoded = true := by
  decide +kernel
theorem small_2199218_right_covered : CoveredBy scale carrier boxes small_2199218_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199218_right_root small_2199218_right_fuel small_2199218_right_count small_2199218_right_encoded small_2199218_right_checked

theorem cover_2199218 : CoveredBy scale carrier boxes root_2199218 := by
  apply coveredBy_split_literal root_2199218 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2199219 small_2199218_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2199219
  · exact small_2199218_right_covered
#print axioms cover_2199218

def root_2199212 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199212_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199212_left_fuel : Nat := 1
def small_2199212_left_count : Nat := 1
def small_2199212_left_encoded : String := "00000001"
theorem small_2199212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199212_left_root small_2199212_left_fuel small_2199212_left_count small_2199212_left_encoded = true := by
  decide +kernel
theorem small_2199212_left_covered : CoveredBy scale carrier boxes small_2199212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199212_left_root small_2199212_left_fuel small_2199212_left_count small_2199212_left_encoded small_2199212_left_checked

theorem cover_2199212 : CoveredBy scale carrier boxes root_2199212 := by
  apply coveredBy_split_literal root_2199212 small_2199212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2199218 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2199212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2199218
#print axioms cover_2199212

def root_2199211 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199211_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199211_right_fuel : Nat := 22
def small_2199211_right_count : Nat := 235
def small_2199211_right_encoded : String := "12073D0208A912FB12073D04050000F6135D80F70000000005000106135D450700000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D040C9A8704000000080F878CFB00000002078000F60000000A128A40F70000000800000000000000020F34D10400000002078000F600000009128A40F70280010613D7B10700000003078000FE128A7CFF000000040AD3578310D101020000000100000006000000080000000913D7ED07078000FE128A7CFF00000004000000080000000800000003000000000F350D020CFD9BFB0000000A0F34D104000000020000000900000001135D44FF0CFD9C030F34D102000000010CFD9BFB0000000A0F34D10400000002000000090000000A00000004135D8107050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D0400000008000000020F34D10400000002078000F600000009128A40F700000008000000000F350D020CFD9BFB0F350D040C9A87020000000A00000008000000020F34D104000000020000000700000001135D44FF0CFD9C030F34D102000000010CFD9BFB000000080F34D10400000002000000090F350D020CFD9BFB0000000A00000008000000010000000400000003135D44F705000106135D450700000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D0400000008000000020F34D10400000002028000F613D7ECF7000000000280010613D7B10700000003078000FE000000080000000800000008000000080F350D020CFD9BFB0F350D0400000008000000020F34D104000000020C9A87020F87510300000001000000080000000800000001135D44FF0CFD9C030F34D10200000001000000080000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350D0400000008000000020000000800000001135D44FF0CFD9C030000000800000008000000040000000300000000000000021207010400000002050000F6135D80F70000000000000009135D44F705000106135D450700000003050000FE135D80FF000000040CFD9C030F34D10200000001045489FB1386AD04028000F60000000913D7B0F70280010600000006000000080000000000000002000000060F350D020000000900000001135D44FF0CFD9C03000000090000000900000004135D8107050000FE135D80FF000000040CFD9C030F34D10200000001045489FB00000008000000090000000800000009000000030000000000000001"
theorem small_2199211_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199211_right_root small_2199211_right_fuel small_2199211_right_count small_2199211_right_encoded = true := by
  decide +kernel
theorem small_2199211_right_covered : CoveredBy scale carrier boxes small_2199211_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199211_right_root small_2199211_right_fuel small_2199211_right_count small_2199211_right_encoded small_2199211_right_checked

theorem cover_2199211 : CoveredBy scale carrier boxes root_2199211 := by
  apply coveredBy_split_literal root_2199211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2199212 small_2199211_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2199212
  · exact small_2199211_right_covered
#print axioms cover_2199211

def root_2199206 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199206_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199206_right_fuel : Nat := 1
def small_2199206_right_count : Nat := 1
def small_2199206_right_encoded : String := "00000004"
theorem small_2199206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199206_right_root small_2199206_right_fuel small_2199206_right_count small_2199206_right_encoded = true := by
  decide +kernel
theorem small_2199206_right_covered : CoveredBy scale carrier boxes small_2199206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199206_right_root small_2199206_right_fuel small_2199206_right_count small_2199206_right_encoded small_2199206_right_checked

theorem cover_2199206 : CoveredBy scale carrier boxes root_2199206 := by
  apply coveredBy_split_literal root_2199206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2199211 small_2199206_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2199211
  · exact small_2199206_right_covered
#print axioms cover_2199206

def root_2192770 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2192770 : CoveredBy scale carrier boxes root_2192770 := by
  apply coveredBy_split_literal root_2192770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2199206 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192771
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2199206
#print axioms cover_2192770

def root_2192764 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192764_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192764_left_fuel : Nat := 1
def small_2192764_left_count : Nat := 1
def small_2192764_left_encoded : String := "00000003"
theorem small_2192764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192764_left_root small_2192764_left_fuel small_2192764_left_count small_2192764_left_encoded = true := by
  decide +kernel
theorem small_2192764_left_covered : CoveredBy scale carrier boxes small_2192764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192764_left_root small_2192764_left_fuel small_2192764_left_count small_2192764_left_encoded small_2192764_left_checked

theorem cover_2192764 : CoveredBy scale carrier boxes root_2192764 := by
  apply coveredBy_split_literal root_2192764 small_2192764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2192770 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2192764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2192770
#print axioms cover_2192764

def root_2192763 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2192763 : CoveredBy scale carrier boxes root_2192763 := by
  apply coveredBy_split_literal root_2192763 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2192764 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0851.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2192764
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0851.covered
#print axioms cover_2192763

def root_2192757 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192757_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192757_left_fuel : Nat := 1
def small_2192757_left_count : Nat := 1
def small_2192757_left_encoded : String := "00000002"
theorem small_2192757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192757_left_root small_2192757_left_fuel small_2192757_left_count small_2192757_left_encoded = true := by
  decide +kernel
theorem small_2192757_left_covered : CoveredBy scale carrier boxes small_2192757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192757_left_root small_2192757_left_fuel small_2192757_left_count small_2192757_left_encoded small_2192757_left_checked

theorem cover_2192757 : CoveredBy scale carrier boxes root_2192757 := by
  apply coveredBy_split_literal root_2192757 small_2192757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2192763 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2192757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2192763
#print axioms cover_2192757

def root_2191519 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2191519 : CoveredBy scale carrier boxes root_2191519 := by
  apply coveredBy_split_literal root_2191519 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0845.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2192757 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0845.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2192757
#print axioms cover_2191519

def root_2191514 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2191514_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2191514_right_fuel : Nat := 1
def small_2191514_right_count : Nat := 1
def small_2191514_right_encoded : String := "00000001"
theorem small_2191514_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2191514_right_root small_2191514_right_fuel small_2191514_right_count small_2191514_right_encoded = true := by
  decide +kernel
theorem small_2191514_right_covered : CoveredBy scale carrier boxes small_2191514_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2191514_right_root small_2191514_right_fuel small_2191514_right_count small_2191514_right_encoded small_2191514_right_checked

theorem cover_2191514 : CoveredBy scale carrier boxes root_2191514 := by
  apply coveredBy_split_literal root_2191514 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2191519 small_2191514_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2191519
  · exact small_2191514_right_covered
#print axioms cover_2191514

def root_2191100 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2191100_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2191100_left_fuel : Nat := 20
def small_2191100_left_count : Nat := 193
def small_2191100_left_encoded : String := "1151E903000000010A0001041151E8FB0A0001061151E907000000030A0000FE000000050000000A115225070A0000FE115224FF0000000408A9130712070106000000030000000712073D0608A912FF12073CFE00000004050000F600000007135D44F705000102135D45030000000100000007135D810305000104135D44FB0000000700000002000000070000000100000000120700FE0000000500000004000000031151E8FF08A9130712070106000000030000000612073D06050000F600000006135D44F70500010200000006000000060000000000000003000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912FB12073D0408A912FF12073CFE00000004050000F600000005135D44F70500010200000005135D81030500010600000005135D81070CFD9BFB000000070F34D1040000000200000007000000030000000100000000120700FE000000050000000400000002120701040000000208A912FF12073CFE00000004050000F600000005135D44F70500010200000005135D81030500010600000005000000070000000100000000120700FE00000005000000041151E8FF08A912FB12073D04050000F6135D80F7000000000500010200000009135D8103050001060000000A0000000900000001135D44F705000102135D4503000000010000000A135D810305000106135D4507000000030000000A135D8107050000FE135D80FF000000040CFD9BFB0000000700000009000000080000000300000001000000000000000212070104000000020000000900000004115225070A0000FE115224FF0000000408A912FB12073D0408A913070000000712073D0608A912FF00000007120700FE000000070000000400000003000000021207010400000002000000071151E8FF08A912FB12073D0408A913070000000712073D06050000F600000007135D44F70500010200000009135D8103050000FE0000000700000008000000010000000000000003000000021207010400000002000000070000000400000003"
theorem small_2191100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2191100_left_root small_2191100_left_fuel small_2191100_left_count small_2191100_left_encoded = true := by
  decide +kernel
theorem small_2191100_left_covered : CoveredBy scale carrier boxes small_2191100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2191100_left_root small_2191100_left_fuel small_2191100_left_count small_2191100_left_encoded small_2191100_left_checked

theorem cover_2191100 : CoveredBy scale carrier boxes root_2191100 := by
  apply coveredBy_split_literal root_2191100 small_2191100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2191514 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2191100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2191514
#print axioms cover_2191100

def root_2191095 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2191095_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2191095_right_fuel : Nat := 1
def small_2191095_right_count : Nat := 1
def small_2191095_right_encoded : String := "00000000"
theorem small_2191095_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2191095_right_root small_2191095_right_fuel small_2191095_right_count small_2191095_right_encoded = true := by
  decide +kernel
theorem small_2191095_right_covered : CoveredBy scale carrier boxes small_2191095_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2191095_right_root small_2191095_right_fuel small_2191095_right_count small_2191095_right_encoded small_2191095_right_checked

theorem cover_2191095 : CoveredBy scale carrier boxes root_2191095 := by
  apply coveredBy_split_literal root_2191095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2191100 small_2191095_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2191100
  · exact small_2191095_right_covered
#print axioms cover_2191095

def root_2181263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2181263 : CoveredBy scale carrier boxes root_2181263 := by
  apply coveredBy_split_literal root_2181263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2181264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2191095 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2181264
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2191095
#print axioms cover_2181263

def root_2213776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2213776_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2213776_left_fuel : Nat := 24
def small_2213776_left_count : Nat := 373
def small_2213776_left_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A912F712073CF60000000008A913030000000512073D020000000500000001120700F608A913030000000512073D02000000050000000100000000000000041151E9090000000408A912F712073CF60000000008A9130312070102000000010000000812073D0205000104135D44FB0500010600000005135D8107000000080000000300000002135D80FB000000020500010600000008135D8107050000FE135D81090000000800000004000000080000000300000001120700F608A9130312070102000000010000000812073D0205000104135D44FB0500010600000005135D8107050000FE00000005000000080000000300000002000000090000000100000000115225070A0000FE1152250908A912F712073CF60000000008A91303120701020000000108A91307120701060000000308A91309120700FE000000070000000412073CFE0000000405000104135D44FB00000007000000020000000712073D0608A91309120700FE0500010400000005135D80FB00000002000000050000000412073CFE000000040500010400000005135D80FB000000020CFD9BF70F350CF60000000004548A0300000008000000080F34D0F600000005000000000000000312073D0208A91307120701060000000308A913090000000712073CFE0000000405000104000000050000000712073D0608A91309120700FE000000050000000412073CFE000000040500010400000005135D80FB000000020CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9C07000000050F350D0600000005000000030F350D0200000005000000010F34D0F600000005000000000000000300000001120700F608A91303120701020000000108A9130712070106000000030000000712073D06000000050000000312073D0208A913070000000512073D0608A913090000000512073CFE000000040500010400000005135D80FB00000002045489F70000000500000007000000030000000100000000000000041151E9090000000408A912F712073CF60000000008A91303120701020000000108A91307120701060000000305000104135D44FB050000FE000000070000000800000002000000080000000812073D0208A91307120701060000000305000104135D44FB050000FE00000007135D4509000000040CFD9BF70F350CF6000000000CFD9C030F34D1020000000100000007000000070000000700000002135D80FB00000002050000FE00000007135D4509000000040CFD9BF70F350CF6000000000CFD9C030F34D1020000000100000007000000070F34D0F6000000070000000012073D0605000104135D44FB050000FE135D81090CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000080F350D0200000005000000010F34D0F6000000050000000000000004135D4509000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000080F350D020CFD9C070F34D106000000030C9A86F60F878CF700000000000000070F8750F70000000A000000000000000A000000010F34D0F6000000080000000000000002135D80FB00000002050000FE135D81090CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000080F350D020CFD9C070F34D10600000003000000070F350D060000000800000003000000010F34D0F6000000080000000000000004135D4509000000040CFD9BF70F350CF6000000000CFD9C03000000080F350D020CFD9C070000000800000008000000010F34D0F600000008000000000000000300000001120700F608A9130312070102000000010000000812073D0208A9130712070106000000030000000712073D0605000104135D44FB050000FE135D8109045489F70000000500000007000000040000000800000002135D80FB00000002050000FE135D8109045489F71386ACF6000000000CFD9C0300000008000000070000000700000004135D450900000004000000080000000300000001000000000000000300000002"
theorem small_2213776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2213776_left_root small_2213776_left_fuel small_2213776_left_count small_2213776_left_encoded = true := by
  decide +kernel
theorem small_2213776_left_covered : CoveredBy scale carrier boxes small_2213776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2213776_left_root small_2213776_left_fuel small_2213776_left_count small_2213776_left_encoded small_2213776_left_checked

theorem cover_2213776 : CoveredBy scale carrier boxes root_2213776 := by
  apply coveredBy_split_literal root_2213776 small_2213776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0853.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2213776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0853.covered
#print axioms cover_2213776

def root_2213771 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2213771_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2213771_right_fuel : Nat := 1
def small_2213771_right_count : Nat := 1
def small_2213771_right_encoded : String := "00000001"
theorem small_2213771_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2213771_right_root small_2213771_right_fuel small_2213771_right_count small_2213771_right_encoded = true := by
  decide +kernel
theorem small_2213771_right_covered : CoveredBy scale carrier boxes small_2213771_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2213771_right_root small_2213771_right_fuel small_2213771_right_count small_2213771_right_encoded small_2213771_right_checked

theorem cover_2213771 : CoveredBy scale carrier boxes root_2213771 := by
  apply coveredBy_split_literal root_2213771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2213776 small_2213771_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2213776
  · exact small_2213771_right_covered
#print axioms cover_2213771

def root_2211667 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2211667 : CoveredBy scale carrier boxes root_2211667 := by
  apply coveredBy_split_literal root_2211667 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0852.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2213771 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0852.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2213771
#print axioms cover_2211667

def root_2211661 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2211661_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2211661_left_fuel : Nat := 1
def small_2211661_left_count : Nat := 1
def small_2211661_left_encoded : String := "00000000"
theorem small_2211661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2211661_left_root small_2211661_left_fuel small_2211661_left_count small_2211661_left_encoded = true := by
  decide +kernel
theorem small_2211661_left_covered : CoveredBy scale carrier boxes small_2211661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2211661_left_root small_2211661_left_fuel small_2211661_left_count small_2211661_left_encoded small_2211661_left_checked

theorem cover_2211661 : CoveredBy scale carrier boxes root_2211661 := by
  apply coveredBy_split_literal root_2211661 small_2211661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2211667 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2211661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2211667
#print axioms cover_2211661

def root_2221168 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2221168_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2221168_left_fuel : Nat := 25
def small_2221168_left_count : Nat := 395
def small_2221168_left_encoded : String := "1207010600000003050000F6135D80F70000000005000104135D44FB050000FE135D81090CFD9C030F34D10200000001000000070000000700000004135D4509000000040CFD9C030F34D1020000000104548A07000000071386AD06078000F600000007128A40F70280010413D7B0FB00000007000000020000000700000000000000030F350D0204548A07000000071386AD060C9A87020F87510300000001000000070F878D03078000F600000007128A40F7000000070000000000000001000000030000000100000002135D80FB00000002050000FE135D81090CFD9C030F34D10200000001000000070000000700000004135D4509000000040CFD9C030F34D1020000000104548A0700000007000000080F350D0204548A07000000071386AD060C9A87020F87510300000001000000070F878D03078000F600000007128A40F70000000700000000000000010000000300000001135D44F705000104135D44FB050000FE135D81090CFD9C030F34D1020000000104548A07000000071386AD06028000F60000000713D7B0F70280010413D7B0FB078000FE00000007128A410900000004000000070000000213D7ECFB00000002078000FE00000007128A4109000000040000000700000000000000030F350D0204548A07000000071386AD060C9A87020F87510300000001000000070F878D03028000F60000000713D7B0F70280010400000007000000070000000000000001000000030000000100000004135D4509000000040CFD9C030F34D1020000000104548A071386710600000003028000F60000000713D7B0F7028001040000000600000005000000001386AD06028000F613D7ECF7000000000280010413D7B0FB028000FE0000000713D7B109000000040AD3578310D1010200000001067ECE87000000070000000810D13D02067ECE870000000612EA95060000000700000003000000010000000213D7ECFB00000002028000FE0000000713D7B109000000040AD35783000000080000000713D7B0F70280010413D7B0FB028000FE13D7ED090AD3578310D1010200000001067ECE870000000612EA9506014000F60000000713F5D8F7014001040000000600000005000000000000000310D13D02067ECE870000000612EA9506014000F6000000070000000600000003000000010000000413D7B109000000040AD3578310D10102000000010000000510D13D0200000006000000010000000213D7ECFB00000002028000FE13D7ED090AD3578310D10102000000010000000510D13D02067ECE870000000712EA9506000000070000000300000001000000040000000500000000000000030F350D0204548A071386710600000003000000061386AD060C9A87020F87510300000001028000F613D7ECF700000000028001040000000600000007000000060F878D03028000F613D7ECF7000000000280010413D7B0FB028000FE00000007000000060000000213D7ECFB00000002028000FE000000070000000913D7B0F7028001040000000613D7ECFB00000002028000FE13D7ED09067ECE870000000612EA9506000000070000000300000004000000090000000000000001000000030000000100000002135D80FB00000002050000FE135D81090CFD9C030F34D1020000000104548A07000000071386AD06028000F60000000713D7B0F707800104128A40FB078000FE00000007128A4109000000040000000700000002128A7CFB00000002078000FE000000070000000500000000000000030F350D0204548A07000000071386AD060C9A87020F87510300000001000000070F878D03028000F60000000713D7B0F7000000070000000000000001000000030000000100000004135D4509000000040CFD9C030F34D1020000000104548A071386710600000003000000051386AD06028000F613D7ECF70000000007800104128A40FB028000FE0000000700000005000000020000000500000005000000030F350D0204548A0713867106000000030C9A87020F8751030000000100000007000000071386AD060C9A87020F87510300000001000000090F878D03028000F613D7ECF70000000007800104128A40FB00000009000000020000000913D7B0F707800104128A40FB0000000900000002000000050000000000000001000000030000000100000000"
theorem small_2221168_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2221168_left_root small_2221168_left_fuel small_2221168_left_count small_2221168_left_encoded = true := by
  decide +kernel
theorem small_2221168_left_covered : CoveredBy scale carrier boxes small_2221168_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2221168_left_root small_2221168_left_fuel small_2221168_left_count small_2221168_left_encoded small_2221168_left_checked

theorem cover_2221168 : CoveredBy scale carrier boxes root_2221168 := by
  apply coveredBy_split_literal root_2221168 small_2221168_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0855.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2221168_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0855.covered
#print axioms cover_2221168

def root_2221163 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2221163_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2221163_right_fuel : Nat := 1
def small_2221163_right_count : Nat := 1
def small_2221163_right_encoded : String := "00000001"
theorem small_2221163_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2221163_right_root small_2221163_right_fuel small_2221163_right_count small_2221163_right_encoded = true := by
  decide +kernel
theorem small_2221163_right_covered : CoveredBy scale carrier boxes small_2221163_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2221163_right_root small_2221163_right_fuel small_2221163_right_count small_2221163_right_encoded small_2221163_right_checked

theorem cover_2221163 : CoveredBy scale carrier boxes root_2221163 := by
  apply coveredBy_split_literal root_2221163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2221168 small_2221163_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2221168
  · exact small_2221163_right_covered
#print axioms cover_2221163

def root_2220853 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2220853_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2220853_left_fuel : Nat := 23
def small_2220853_left_count : Nat := 153
def small_2220853_left_encoded : String := "120701020000000108A913071207010600000003050000F6135D80F70000000005000104135D44FB050000FE135D810904548A03000000080000000700000004135D45090000000404548A03000000081386AD0204548A0700000007000000080000000100000002135D80FB00000002050000FE0000000800000008135D44F705000104135D44FB050000FE135D810904548A030000000A1386AD0204548A07000000071386AD06028000F613D7ECF7000000000280010400000007000000070000000A000000030000000100000004135D45090000000404548A03138671020000000104548A0700000008000000081386AD0204548A071386710600000003028000F600000007000000051386AD06028000F60000000813D7B0F70280010413D7B0FB028000FE13D7ED09067ECE830000000812EA9502067ECE870000000700000008000000010000000400000005000000020000000500000000000000030000000100000002135D80FB00000002050000FE135D81090000000A00000004000000050000000012073D06050000F6135D80F70000000005000104135D44FB050000FE00000008000000080000000200000008135D44F705000104135D44FB050000FE135D810904548A03000000081386AD020CFD9C070F34D10600000003028000F60000000813D7B0F70280010413D7B0FB078000FE00000008000000080000000200000008000000000F350D0600000008000000030000000100000004135D45090000000404548A03000000081386AD020CFD9C0700000008000000080000000100000002135D80FB00000002050000FE00000008000000080000000000000003"
theorem small_2220853_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2220853_left_root small_2220853_left_fuel small_2220853_left_count small_2220853_left_encoded = true := by
  decide +kernel
theorem small_2220853_left_covered : CoveredBy scale carrier boxes small_2220853_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2220853_left_root small_2220853_left_fuel small_2220853_left_count small_2220853_left_encoded small_2220853_left_checked

theorem cover_2220853 : CoveredBy scale carrier boxes root_2220853 := by
  apply coveredBy_split_literal root_2220853 small_2220853_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2221163 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2220853_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2221163
#print axioms cover_2220853

def root_2220847 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2220847_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2220847_left_fuel : Nat := 1
def small_2220847_left_count : Nat := 1
def small_2220847_left_encoded : String := "00000004"
theorem small_2220847_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2220847_left_root small_2220847_left_fuel small_2220847_left_count small_2220847_left_encoded = true := by
  decide +kernel
theorem small_2220847_left_covered : CoveredBy scale carrier boxes small_2220847_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2220847_left_root small_2220847_left_fuel small_2220847_left_count small_2220847_left_encoded small_2220847_left_checked

theorem cover_2220847 : CoveredBy scale carrier boxes root_2220847 := by
  apply coveredBy_split_literal root_2220847 small_2220847_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2220853 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2220847_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2220853
#print axioms cover_2220847

def root_2219803 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219803_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219803_left_fuel : Nat := 31
def small_2219803_left_count : Nat := 491
def small_2219803_left_encoded : String := "1152250908A91303120701020000000108A91307120701060000000308A91309120700FE050000F6000000070000000A0000000412073CFE00000004050000F6135D80F70000000005000104135D44FB04548A030000000800000007000000020000000A135D44F70000000A0000000012073D0608A91309120700FE050000F6135D80F70000000005000104135D44FB04548A03000000080000000500000002135D80FB0000000204548A031386710200000001000000081386AD020CFD9C07000000070F350D06000000050000000300000001135D44F705000104135D44FB04548A03000000080000000800000002135D80FB0000000204548A030000000A1386AD020CFD9C07000000080F350D06000000080000000300000001000000000000000412073CFE00000004050000F6135D80F70000000005000104135D44FB04548A03000000081386AD020CFD9C0700000008000000080000000100000002135D80FB0000000204548A030000000800000008135D44F705000104135D44FB04548A0313867102000000010CFD9C0700000008000000081386AD020CFD9C070F34D106000000030CFD9C09000000080F350CFE000000040C9A86FE0F878D090000000800000004000000080F350D060CFD9C09000000080F350CFE0000000400000008000000030000000100000002135D80FB0000000204548A03000000081386AD020CFD9C070F34D106000000030CFD9C09000000080000000A0F350D06000000080000000300000001000000000000000312073D0208A91307120701060000000308A91309120700FE000000070000000412073CFE00000004050000F6135D80F70000000005000104135D44FB000000070000000200000007135D44F705000104135D44FB0CFD9C030F34D1020000000104548A07000000071386AD060CFD9C090000000700000007000000030F350D0204548A07000000071386AD060CFD9C090000000700000007000000030000000100000002135D80FB000000020CFD9C030F34D1020000000104548A07000000071386AD060CFD9C09000000070000000700000003000000070000000012073D0608A91309120700FE050000F600000005135D44F70500010400000005135D80FB000000020CFD9C030F34D102000000010CFD9C070F34D10600000003000000070F350D0600000005000000030F350D020000000500000001000000000000000412073CFE00000004050000F6135D80F70000000005000104135D44FB0000000500000002135D80FB000000020CFD9C030F34D102000000010CFD9C070F34D106000000030CFD9C0900000007000000070F350D0600000008000000030F350D020CFD9C070F34D10600000003000000070F350D06000000050000000300000001135D44F705000104135D44FB0CFD9C030F34D102000000010CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D09028000F60000000513D7B0F702800104000000050000000700000000000000040F87510900000004028000F613D7ECF70000000002800104000000050000000713D7B0F70280010413D7B0FB0AD3578310D10102000000010AD357870000000700000005000000050000000213D7ECFB000000020AD3578310D10102000000010AD35787000000070000000800000007000000000F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8706000000050F878D070000000500000003000000030F350D020CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878D0300000005000000010F350D0600000005000000030000000100000002135D80FB000000020CFD9C030F34D102000000010CFD9C070F34D106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D09028000F6000000070000000A000000040F87510900000004028000F60000000813D7B0F707800104128A40FB0AD35783000000080000000700000002128A7CFB0000000200000008000000000F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8706000000080F878D070C9A86FE0F878D0900000008000000040000000800000003000000030F350D020CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A86FE000000070F87510900000004000000070F878D030C9A86FE000000070F87510900000004028000F60000000713D7B0F707800104000000070000000700000000000000010F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A8706000000050F878D070C9A86FE000000050F87510900000004028000F60000000513D7B0F70780010400000005128A7CFB000000020B4D44020000000510804D030DE7CA0600000005000000070000000100000000000000030F878D030C9A87060F875107000000030C9A86FE00000005000000080F878D070C9A86FE0F878D0900000005000000040F87510900000004028000F60000000813D7B0F707800104128A40FB0000000500000002128A7CFB000000020DE7CA020000000800000008000000000000000300000001000000030000000100000000000000030000000100000004"
theorem small_2219803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2219803_left_root small_2219803_left_fuel small_2219803_left_count small_2219803_left_encoded = true := by
  decide +kernel
theorem small_2219803_left_covered : CoveredBy scale carrier boxes small_2219803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2219803_left_root small_2219803_left_fuel small_2219803_left_count small_2219803_left_encoded small_2219803_left_checked

theorem cover_2219803 : CoveredBy scale carrier boxes root_2219803 := by
  apply coveredBy_split_literal root_2219803 small_2219803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2220847 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2219803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2220847
#print axioms cover_2219803

def root_2219798 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219798_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219798_right_fuel : Nat := 1
def small_2219798_right_count : Nat := 1
def small_2219798_right_encoded : String := "00000003"
theorem small_2219798_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2219798_right_root small_2219798_right_fuel small_2219798_right_count small_2219798_right_encoded = true := by
  decide +kernel
theorem small_2219798_right_covered : CoveredBy scale carrier boxes small_2219798_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2219798_right_root small_2219798_right_fuel small_2219798_right_count small_2219798_right_encoded small_2219798_right_checked

theorem cover_2219798 : CoveredBy scale carrier boxes root_2219798 := by
  apply coveredBy_split_literal root_2219798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2219803 small_2219798_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2219803
  · exact small_2219798_right_covered
#print axioms cover_2219798

def root_2219612 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219612_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219612_left_fuel : Nat := 16
def small_2219612_left_count : Nat := 85
def small_2219612_left_encoded : String := "1151E907000000030A0000FE1152250908A91303120701020000000108A91309120700FE000000050000000412073CFE00000004050000F600000005135D44F70500010400000005135D80FB00000002000000080000000012073D0208A91309120700FE000000050000000412073CFE00000004050000F600000005135D44F70500010400000005135D80FB000000020500010600000005135D81070CFD9C030F34D10200000001000000080F350D020000000500000001000000030000000000000001000000041151E9090000000408A9130312070102000000010000000812073D02050000F6135D80F70000000005000104135D44FB0000000A0000000200000008135D44F705000104135D44FB0000000A00000002135D80FB000000020500010600000008135D8107050000FE135D81090CFD9C03000000080000000A0000000400000008000000030000000000000001"
theorem small_2219612_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2219612_left_root small_2219612_left_fuel small_2219612_left_count small_2219612_left_encoded = true := by
  decide +kernel
theorem small_2219612_left_covered : CoveredBy scale carrier boxes small_2219612_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2219612_left_root small_2219612_left_fuel small_2219612_left_count small_2219612_left_encoded small_2219612_left_checked

theorem cover_2219612 : CoveredBy scale carrier boxes root_2219612 := by
  apply coveredBy_split_literal root_2219612 small_2219612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2219798 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2219612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2219798
#print axioms cover_2219612

def root_2219607 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219607_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219607_right_fuel : Nat := 1
def small_2219607_right_count : Nat := 1
def small_2219607_right_encoded : String := "00000002"
theorem small_2219607_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2219607_right_root small_2219607_right_fuel small_2219607_right_count small_2219607_right_encoded = true := by
  decide +kernel
theorem small_2219607_right_covered : CoveredBy scale carrier boxes small_2219607_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2219607_right_root small_2219607_right_fuel small_2219607_right_count small_2219607_right_encoded small_2219607_right_checked

theorem cover_2219607 : CoveredBy scale carrier boxes root_2219607 := by
  apply coveredBy_split_literal root_2219607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2219612 small_2219607_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2219612
  · exact small_2219607_right_covered
#print axioms cover_2219607

def root_2219606 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2219606 : CoveredBy scale carrier boxes root_2219606 := by
  apply coveredBy_split_literal root_2219606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2219607 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0856.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2219607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0856.covered
#print axioms cover_2219606

def root_2219601 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219601_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2219601_right_fuel : Nat := 1
def small_2219601_right_count : Nat := 1
def small_2219601_right_encoded : String := "00000001"
theorem small_2219601_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2219601_right_root small_2219601_right_fuel small_2219601_right_count small_2219601_right_encoded = true := by
  decide +kernel
theorem small_2219601_right_covered : CoveredBy scale carrier boxes small_2219601_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2219601_right_root small_2219601_right_fuel small_2219601_right_count small_2219601_right_encoded small_2219601_right_checked

theorem cover_2219601 : CoveredBy scale carrier boxes root_2219601 := by
  apply coveredBy_split_literal root_2219601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2219606 small_2219601_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2219606
  · exact small_2219601_right_covered
#print axioms cover_2219601

def root_2217269 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2217269 : CoveredBy scale carrier boxes root_2217269 := by
  apply coveredBy_split_literal root_2217269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0854.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2219601 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0854.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2219601
#print axioms cover_2217269

def root_2217264 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2217264_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2217264_right_fuel : Nat := 1
def small_2217264_right_count : Nat := 1
def small_2217264_right_encoded : String := "00000000"
theorem small_2217264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2217264_right_root small_2217264_right_fuel small_2217264_right_count small_2217264_right_encoded = true := by
  decide +kernel
theorem small_2217264_right_covered : CoveredBy scale carrier boxes small_2217264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2217264_right_root small_2217264_right_fuel small_2217264_right_count small_2217264_right_encoded small_2217264_right_checked

theorem cover_2217264 : CoveredBy scale carrier boxes root_2217264 := by
  apply coveredBy_split_literal root_2217264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2217269 small_2217264_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2217269
  · exact small_2217264_right_covered
#print axioms cover_2217264

def root_2211660 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2211660 : CoveredBy scale carrier boxes root_2211660 := by
  apply coveredBy_split_literal root_2211660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2211661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2217264 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2211661
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2217264
#print axioms cover_2211660

def root_2181262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2181262 : CoveredBy scale carrier boxes root_2181262 := by
  apply coveredBy_split_literal root_2181262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2181263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2211660 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2181263
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2211660
#print axioms cover_2181262

def root_2228181 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2228181 : CoveredBy scale carrier boxes root_2228181 := by
  apply coveredBy_split_literal root_2228181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0858.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0859.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0858.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0859.covered
#print axioms cover_2228181

def root_2226371 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2226371 : CoveredBy scale carrier boxes root_2226371 := by
  apply coveredBy_split_literal root_2226371 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0857.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2228181 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0857.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2228181
#print axioms cover_2226371

def root_2181261 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2181261 : CoveredBy scale carrier boxes root_2181261 := by
  apply coveredBy_split_literal root_2181261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2181262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2226371 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2181262
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2226371
#print axioms cover_2181261

def root_2170611 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2170611 : CoveredBy scale carrier boxes root_2170611 := by
  apply coveredBy_split_literal root_2170611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2170612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2181261 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2170612
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2181261
#print axioms cover_2170611

def root_2023935 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2023935 : CoveredBy scale carrier boxes root_2023935 := by
  apply coveredBy_split_literal root_2023935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2023936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2170611 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2023936
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2170611
#print axioms cover_2023935

def root_2234583 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234583_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234583_left_fuel : Nat := 29
def small_2234583_left_count : Nat := 163
def small_2234583_left_encoded : String := "1151E8FF08A912F712073CF60000000008A91305120701040000000208A912FD12073CFC0000000305000102135D4503000000010500010800000005135D80FF000000040CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F6000000050F8750F70C9A86FC000000050F8750FD028001020000000513D7ED030780010800000005128A7CFF0000000400000005000000010000000300000000000000050000000500000005135D810305000108135D44FF0CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000050000000A00000005000000050000000500000004135D80FF000000040CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC0F878CFD00000003000000050F8750FD07800102128A410300000001000000050000000A000000030F8750F70C9A86FC0F878CFD0000000307800102128A41030000000100000005128A7D030780010800000006128A7CFF00000004022A458513E1C504000000020B4D43F6000000090000000600000006000000010F8750FD07800102128A4103000000010780010800000006128A7CFF00000004022A458513E1C504000000020000000A000000060000000A00000003000000000F34D0FC00000005000000031386AD040CFD9BFD0F350CFC000000030C9A86F60F878CF700000000000000050F8750F70C9A86FC000000060F8750FD0000000A000000030000000000000005000000020F34D0F6000000050000000000000001120700FC000000050000000312073D040000000500000002120700F6000000050000000000000004"
theorem small_2234583_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2234583_left_root small_2234583_left_fuel small_2234583_left_count small_2234583_left_encoded = true := by
  decide +kernel
theorem small_2234583_left_covered : CoveredBy scale carrier boxes small_2234583_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2234583_left_root small_2234583_left_fuel small_2234583_left_count small_2234583_left_encoded small_2234583_left_checked

theorem cover_2234583 : CoveredBy scale carrier boxes root_2234583 := by
  apply coveredBy_split_literal root_2234583 small_2234583_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0861.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2234583_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0861.covered
#print axioms cover_2234583

def root_2234577 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234577_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234577_left_fuel : Nat := 1
def small_2234577_left_count : Nat := 1
def small_2234577_left_encoded : String := "00000003"
theorem small_2234577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2234577_left_root small_2234577_left_fuel small_2234577_left_count small_2234577_left_encoded = true := by
  decide +kernel
theorem small_2234577_left_covered : CoveredBy scale carrier boxes small_2234577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2234577_left_root small_2234577_left_fuel small_2234577_left_count small_2234577_left_encoded small_2234577_left_checked

theorem cover_2234577 : CoveredBy scale carrier boxes root_2234577 := by
  apply coveredBy_split_literal root_2234577 small_2234577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234583 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2234577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234583
#print axioms cover_2234577

def root_2238393 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2238393 : CoveredBy scale carrier boxes root_2238393 := by
  apply coveredBy_split_literal root_2238393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0862.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0863.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0862.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0863.covered
#print axioms cover_2238393

def root_2238388 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238388_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238388_right_fuel : Nat := 1
def small_2238388_right_count : Nat := 1
def small_2238388_right_encoded : String := "00000004"
theorem small_2238388_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238388_right_root small_2238388_right_fuel small_2238388_right_count small_2238388_right_encoded = true := by
  decide +kernel
theorem small_2238388_right_covered : CoveredBy scale carrier boxes small_2238388_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238388_right_root small_2238388_right_fuel small_2238388_right_count small_2238388_right_encoded small_2238388_right_checked

theorem cover_2238388 : CoveredBy scale carrier boxes root_2238388 := by
  apply coveredBy_split_literal root_2238388 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238393 small_2238388_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238393
  · exact small_2238388_right_covered
#print axioms cover_2238388

def root_2238387 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238387_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238387_right_fuel : Nat := 21
def small_2238387_right_count : Nat := 143
def small_2238387_right_encoded : String := "120701080000000405000102135D45030000000100000009135D8103050000FC135D80FD000000030CFD9BF70F350CF60000000004548A051386710400000002045489FF1386AD080C9A86F60F878CF7000000000780010200000009128A7D0300000006000000010F8750F707800102128A410300000001078000FC128A7CFD00000003022A458513E1C50400000002067ECE7F000000060000000600000009128A40FD0000000900000003128A7D03078000FC128A7CFD00000003022A458513E1C50400000002067ECE7F000000060000000613E20104067ECE7F000000080000000700000002128A40FD022A45850000000613E20104067ECE7F0000000600000006000000020000000300000001000000000000000413867108000000040C9A86F6000000090F8750F70780010200000009128A7D03078000FC128A7CFD00000003022A458500000006000000070000000600000001000000001386AD04045489FF1386AD080C9A86F60F878CF700000000000000090F8750F707800102128A41030000000100000009128A7D03078000FC00000007128A40FD0000000800000003000000010000000000000004138671080000000400000009000000020F34D0F60000000900000000135D44FD0CFD9BF70F350CF60000000004548A051386710400000002045489FF00000006000000061386AD04045489FF1386AD080C9A86F6000000090F8750F707800102000000090000000A000000000000000400000009000000020F34D0F600000006000000000000000300000001"
theorem small_2238387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238387_right_root small_2238387_right_fuel small_2238387_right_count small_2238387_right_encoded = true := by
  decide +kernel
theorem small_2238387_right_covered : CoveredBy scale carrier boxes small_2238387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238387_right_root small_2238387_right_fuel small_2238387_right_count small_2238387_right_encoded small_2238387_right_checked

theorem cover_2238387 : CoveredBy scale carrier boxes root_2238387 := by
  apply coveredBy_split_literal root_2238387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238388 small_2238387_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238388
  · exact small_2238387_right_covered
#print axioms cover_2238387

def root_2238381 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238381_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238381_left_fuel : Nat := 1
def small_2238381_left_count : Nat := 1
def small_2238381_left_encoded : String := "00000002"
theorem small_2238381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238381_left_root small_2238381_left_fuel small_2238381_left_count small_2238381_left_encoded = true := by
  decide +kernel
theorem small_2238381_left_covered : CoveredBy scale carrier boxes small_2238381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238381_left_root small_2238381_left_fuel small_2238381_left_count small_2238381_left_encoded small_2238381_left_checked

theorem cover_2238381 : CoveredBy scale carrier boxes root_2238381 := by
  apply coveredBy_split_literal root_2238381 small_2238381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238387 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2238381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238387
#print axioms cover_2238381

def root_2238380 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238380_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238380_right_fuel : Nat := 21
def small_2238380_right_count : Nat := 317
def small_2238380_right_encoded : String := "12073D0408A912FF12073D0805000102135D450300000001050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C050F34D104000000020CFD9BFF0F350D080C9A86F6000000050F8750F70C9A8708000000050F878CFF00000004028001020000000513D7ED03078000FC000000050000000A0000000100000000000000040F34D108000000040C9A86F6000000050F8750F7028001020000000513D7ED03078000FC00000005128A40FD0000000A0000000300000001000000000F350D0400000005000000020F34D0F60000000500000000135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D104000000020CFD9BFF0F350D080C9A86F60F878CF7000000000C9A87080000000A0F878CFF000000040000000A0000000A000000040F34D108000000040C9A86F6000000090F8750F702800102000000090000000A000000000F350D040CFD9BFF0F350D080C9A86F6000000050F8750F70C9A8704000000050000000A00000000000000040F34D108000000040C9A86F60F878CF700000000000000050F8750F70C9A87040F87510500000002000000050000000A00000000000000020F34D0F60CFD9C050F34D104000000020CFD9BFF0F350D080000000500000004000000090F350D0400000005000000020000000000000003135D8103050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C050F34D104000000020CFD9BFF0F350D080C9A86F60F878CF7000000000C9A87080000000A000000080F8750F70C9A87080000000A0000000800000000000000040F34D108000000040C9A86F6000000080F8750F700000008000000000F350D040CFD9BFF000000080F34D1080000000400000008000000020F34D0F60CFD9C050F34D104000000020CFD9BFF0F350D080C9A87080000000500000008000000040F34D10800000004000000080000000800000000135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D104000000020CFD9BFF0F350D080C9A86F60F878CF7000000000000000A0000000A000000040F34D108000000040C9A86F60F878CF700000000078001020000000A000000080000000A0F350D040CFD9BFF0F350D080C9A86F6000000080F8750F70C9A87040F87510500000002000000080000000A00000000000000040F34D1080000000400000008000000020F34D0F60CFD9C050F34D104000000020CFD9BFF0F350D080C9A87080000000A0F878CFF00000004078001020000000A00000008000000040F34D10800000004000000090F350D040CFD9BFF000000080F34D10800000004000000080000000200000000000000030000000100000004120701080000000405000102135D450300000001050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C050F34D10400000002000000090000000700000009135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D1040000000200000009000000090000000900000003135D8103050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C050F34D10400000002045489FF00000008138671080000000400000007000000080F34D0F60000000800000000135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D10400000002045489FF1386AD080C9A86F6000000090000000A00000004000000090F350D04045489FF00000008138671080000000400000007000000020F34D0F60000000900000000000000030000000100000002"
theorem small_2238380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238380_right_root small_2238380_right_fuel small_2238380_right_count small_2238380_right_encoded = true := by
  decide +kernel
theorem small_2238380_right_covered : CoveredBy scale carrier boxes small_2238380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238380_right_root small_2238380_right_fuel small_2238380_right_count small_2238380_right_encoded small_2238380_right_checked

theorem cover_2238380 : CoveredBy scale carrier boxes root_2238380 := by
  apply coveredBy_split_literal root_2238380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238381 small_2238380_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238381
  · exact small_2238380_right_covered
#print axioms cover_2238380

def root_2238374 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238374_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238374_left_fuel : Nat := 1
def small_2238374_left_count : Nat := 1
def small_2238374_left_encoded : String := "00000000"
theorem small_2238374_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238374_left_root small_2238374_left_fuel small_2238374_left_count small_2238374_left_encoded = true := by
  decide +kernel
theorem small_2238374_left_covered : CoveredBy scale carrier boxes small_2238374_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238374_left_root small_2238374_left_fuel small_2238374_left_count small_2238374_left_encoded small_2238374_left_checked

theorem cover_2238374 : CoveredBy scale carrier boxes root_2238374 := by
  apply coveredBy_split_literal root_2238374 small_2238374_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238380 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2238374_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238380
#print axioms cover_2238374

def root_2238373 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238373_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238373_right_fuel : Nat := 18
def small_2238373_right_count : Nat := 111
def small_2238373_right_encoded : String := "120700F608A91305120701040000000208A912FF12073D0805000102135D45030000000100000009135D8103050000FC135D80FD00000003045489F71386ACF60000000004548A0513867104000000020CFD9BFF0F350D080C9A8708000000050F878CFF0000000400000006000000040F34D10800000004000000061386AD040CFD9BFF0F350D0800000005000000040000000500000002138670F604548A051386710400000002000000090000000500000000135D44FD045489F71386ACF60000000004548A051386710400000002000000061386AD040CFD9BFF0F350D080C9A87080000000A00000009000000040000000900000002138670F6000000090000000000000003000000010000000412070108000000040000000912073D0408A912FF12073D080500010200000005135D8103050000FC00000005135D44FD045489F71386ACF6000000000CFD9C050F34D104000000020CFD9BFF0F350D080C9A8708000000050000000900000004000000090F350D040000000500000002138670F60CFD9C050F34D104000000020000000900000005000000000000000300000001000000041207010800000004000000090000000200000000"
theorem small_2238373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238373_right_root small_2238373_right_fuel small_2238373_right_count small_2238373_right_encoded = true := by
  decide +kernel
theorem small_2238373_right_covered : CoveredBy scale carrier boxes small_2238373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238373_right_root small_2238373_right_fuel small_2238373_right_count small_2238373_right_encoded small_2238373_right_checked

theorem cover_2238373 : CoveredBy scale carrier boxes root_2238373 := by
  apply coveredBy_split_literal root_2238373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238374 small_2238373_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238374
  · exact small_2238373_right_covered
#print axioms cover_2238373

def root_2238367 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238367_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2238367_left_fuel : Nat := 1
def small_2238367_left_count : Nat := 1
def small_2238367_left_encoded : String := "00000004"
theorem small_2238367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2238367_left_root small_2238367_left_fuel small_2238367_left_count small_2238367_left_encoded = true := by
  decide +kernel
theorem small_2238367_left_covered : CoveredBy scale carrier boxes small_2238367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2238367_left_root small_2238367_left_fuel small_2238367_left_count small_2238367_left_encoded small_2238367_left_checked

theorem cover_2238367 : CoveredBy scale carrier boxes root_2238367 := by
  apply coveredBy_split_literal root_2238367 small_2238367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238373 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2238367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238373
#print axioms cover_2238367

def root_2237955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2237955_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2237955_left_fuel : Nat := 19
def small_2237955_left_count : Nat := 191
def small_2237955_left_encoded : String := "1151E8FF08A912F712073CF60000000008A91305120701040000000205000102135D450300000001050000FC135D80FD0000000305000108135D44FF0CFD9BF7000000070000000500000004135D80FF000000040CFD9BF70F350CF60000000004548A051386710400000002000000071386AD040C9A86F60F878CF700000000000000050000000A000000020F34D0F60000000500000000135D44FD0500010800000007135D80FF000000040CFD9BF7000000070F34D0F6000000070000000000000003135D8103050000FC135D80FD0000000305000108135D44FF0CFD9BF7000000070000000A00000004135D80FF000000040CFD9BF70F350CF60000000004548A0513867104000000020C9A86F6000000070000000A0000000A0F34D0F604548A051386710400000002000000070000000A00000000135D44FD0500010800000007135D80FF000000040CFD9BF7000000070F34D0F60000000700000000000000030000000112073D0405000102135D450300000001050000FC00000005135D44FD0500010800000005135D80FF000000040CFD9BF70F350CF6000000000CFD9C050F34D104000000020000000A000000060F34D0F6000000050000000000000003135D8103050000FC135D80FD000000030500010800000005135D80FF000000040CFD9BF70F350CF6000000000CFD9C050F34D104000000020000000A0F350D0400000005000000020F34D0F60000000500000000135D44FD05000108135D44FF0CFD9BF70F350CF6000000000CFD9C050000000A000000060F34D0F6000000050000000000000004135D80FF000000040CFD9BF70F350CF6000000000CFD9C050F34D104000000020000000A0F350D040C9A86F60F878CF7000000000C9A8704000000050000000A00000006000000020F34D0F60CFD9C050F34D104000000020000000A0000000500000000000000030000000100000002120700F608A9130512070104000000020500010200000005135D8103050000FC00000005135D44FD000000070000000300000001000000050000000000000004"
theorem small_2237955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2237955_left_root small_2237955_left_fuel small_2237955_left_count small_2237955_left_encoded = true := by
  decide +kernel
theorem small_2237955_left_covered : CoveredBy scale carrier boxes small_2237955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2237955_left_root small_2237955_left_fuel small_2237955_left_count small_2237955_left_encoded small_2237955_left_checked

theorem cover_2237955 : CoveredBy scale carrier boxes root_2237955 := by
  apply coveredBy_split_literal root_2237955 small_2237955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2238367 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2237955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2238367
#print axioms cover_2237955

def root_2237950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2237950_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2237950_right_fuel : Nat := 1
def small_2237950_right_count : Nat := 1
def small_2237950_right_encoded : String := "00000003"
theorem small_2237950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2237950_right_root small_2237950_right_fuel small_2237950_right_count small_2237950_right_encoded = true := by
  decide +kernel
theorem small_2237950_right_covered : CoveredBy scale carrier boxes small_2237950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2237950_right_root small_2237950_right_fuel small_2237950_right_count small_2237950_right_encoded small_2237950_right_checked

theorem cover_2237950 : CoveredBy scale carrier boxes root_2237950 := by
  apply coveredBy_split_literal root_2237950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2237955 small_2237950_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2237955
  · exact small_2237950_right_covered
#print axioms cover_2237950

def root_2234576 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2234576 : CoveredBy scale carrier boxes root_2234576 := by
  apply coveredBy_split_literal root_2234576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2237950 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234577
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2237950
#print axioms cover_2234576

def root_2234571 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234571_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234571_right_fuel : Nat := 1
def small_2234571_right_count : Nat := 1
def small_2234571_right_encoded : String := "00000002"
theorem small_2234571_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2234571_right_root small_2234571_right_fuel small_2234571_right_count small_2234571_right_encoded = true := by
  decide +kernel
theorem small_2234571_right_covered : CoveredBy scale carrier boxes small_2234571_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2234571_right_root small_2234571_right_fuel small_2234571_right_count small_2234571_right_encoded small_2234571_right_checked

theorem cover_2234571 : CoveredBy scale carrier boxes root_2234571 := by
  apply coveredBy_split_literal root_2234571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234576 small_2234571_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234576
  · exact small_2234571_right_covered
#print axioms cover_2234571

def root_2234429 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234429_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234429_left_fuel : Nat := 18
def small_2234429_left_count : Nat := 65
def small_2234429_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912FD00000005120700FC0000000500000003120700F608A912FD00000005120700FC0000000500000003000000001151E8FD0A00010800000005115224FF0000000408A912F712073CF60000000008A912FF12073D080500010200000005135D81030500010400000005135D8105050000FC00000005135D44FD0CFD9BF7000000080F34D0F600000005000000000000000300000002000000010000000412070108000000040500010200000005135D81030000000800000001120700F6000000050000000000000003"
theorem small_2234429_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2234429_left_root small_2234429_left_fuel small_2234429_left_count small_2234429_left_encoded = true := by
  decide +kernel
theorem small_2234429_left_covered : CoveredBy scale carrier boxes small_2234429_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2234429_left_root small_2234429_left_fuel small_2234429_left_count small_2234429_left_encoded small_2234429_left_checked

theorem cover_2234429 : CoveredBy scale carrier boxes root_2234429 := by
  apply coveredBy_split_literal root_2234429 small_2234429_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234571 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2234429_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234571
#print axioms cover_2234429

def root_2234423 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234423_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234423_left_fuel : Nat := 1
def small_2234423_left_count : Nat := 1
def small_2234423_left_encoded : String := "00000001"
theorem small_2234423_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2234423_left_root small_2234423_left_fuel small_2234423_left_count small_2234423_left_encoded = true := by
  decide +kernel
theorem small_2234423_left_covered : CoveredBy scale carrier boxes small_2234423_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2234423_left_root small_2234423_left_fuel small_2234423_left_count small_2234423_left_encoded small_2234423_left_checked

theorem cover_2234423 : CoveredBy scale carrier boxes root_2234423 := by
  apply coveredBy_split_literal root_2234423 small_2234423_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234429 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2234423_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234429
#print axioms cover_2234423

def root_2244839 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2244839_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2244839_left_fuel : Nat := 16
def small_2244839_left_count : Nat := 83
def small_2244839_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A912F712073CF60000000008A913030000000812073D020000000500000001120700F6000000050000000000000004115224FF0000000408A912F712073CF60000000008A913030000000812073D0208A912FD00000008120700FC000000070000000300000001120700F600000008000000001151E8FD0A0001081151E8FF08A912F712073CF60000000008A913030000000812073D0205000104135D45050000000200000008135D8105050000FC00000008135D44FD05000108135D44FF000000080000000400000008000000030000000200000001120700F6000000080000000000000004115224FF0000000408A912F712073CF60000000008A913030000000812073D0208A912FF0000000812070108000000040000000800000001120700F6000000080000000000000003"
theorem small_2244839_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2244839_left_root small_2244839_left_fuel small_2244839_left_count small_2244839_left_encoded = true := by
  decide +kernel
theorem small_2244839_left_covered : CoveredBy scale carrier boxes small_2244839_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2244839_left_root small_2244839_left_fuel small_2244839_left_count small_2244839_left_encoded small_2244839_left_checked

theorem cover_2244839 : CoveredBy scale carrier boxes root_2244839 := by
  apply coveredBy_split_literal root_2244839 small_2244839_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0864.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2244839_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0864.covered
#print axioms cover_2244839

def root_2244834 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2244834_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2244834_right_fuel : Nat := 1
def small_2244834_right_count : Nat := 1
def small_2244834_right_encoded : String := "00000001"
theorem small_2244834_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2244834_right_root small_2244834_right_fuel small_2244834_right_count small_2244834_right_encoded = true := by
  decide +kernel
theorem small_2244834_right_covered : CoveredBy scale carrier boxes small_2244834_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2244834_right_root small_2244834_right_fuel small_2244834_right_count small_2244834_right_encoded small_2244834_right_checked

theorem cover_2244834 : CoveredBy scale carrier boxes root_2244834 := by
  apply coveredBy_split_literal root_2244834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2244839 small_2244834_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2244839
  · exact small_2244834_right_covered
#print axioms cover_2244834

def root_2234422 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2234422 : CoveredBy scale carrier boxes root_2234422 := by
  apply coveredBy_split_literal root_2234422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234423 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2244834 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234423
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2244834
#print axioms cover_2234422

def root_2234416 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234416_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2234416_left_fuel : Nat := 1
def small_2234416_left_count : Nat := 1
def small_2234416_left_encoded : String := "00000000"
theorem small_2234416_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2234416_left_root small_2234416_left_fuel small_2234416_left_count small_2234416_left_encoded = true := by
  decide +kernel
theorem small_2234416_left_covered : CoveredBy scale carrier boxes small_2234416_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2234416_left_root small_2234416_left_fuel small_2234416_left_count small_2234416_left_encoded small_2234416_left_checked

theorem cover_2234416 : CoveredBy scale carrier boxes root_2234416 := by
  apply coveredBy_split_literal root_2234416 small_2234416_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2234422 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2234416_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2234422
#print axioms cover_2234416

def root_2248721 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248721_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248721_right_fuel : Nat := 19
def small_2248721_right_count : Nat := 121
def small_2248721_right_encoded : String := "12073D0408A912FD12073CFC0000000308A912FF12073D08050000F6135D80F70000000005000102135D4503000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC000000050F8750FD0000000600000003000000040F34D10800000004000000070F34D0FC00000005000000030F350D040000000500000002135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC000000070F8750FD0C9A8708000000060000000700000003000000040F34D10800000004000000070F34D0FC00000007000000030F350D040CFD9BFD00000007000000070000000200000001135D44F705000102135D4503000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF00000006000000060F34D0FC00000006000000030F350D040CFD9BFD000000060000000600000002135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF00000006000000070F34D0FC00000006000000030F350D040000000700000002000000010000000000000004120701080000000400000007120700FC08A912FF12073D08050000F600000005135D44F70500010200000005000000070000000000000004000000070000000300000002"
theorem small_2248721_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2248721_right_root small_2248721_right_fuel small_2248721_right_count small_2248721_right_encoded = true := by
  decide +kernel
theorem small_2248721_right_covered : CoveredBy scale carrier boxes small_2248721_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2248721_right_root small_2248721_right_fuel small_2248721_right_count small_2248721_right_encoded small_2248721_right_checked

theorem cover_2248721 : CoveredBy scale carrier boxes root_2248721 := by
  apply coveredBy_split_literal root_2248721 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0865.root small_2248721_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0865.covered
  · exact small_2248721_right_covered
#print axioms cover_2248721

def root_2248715 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248715_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248715_left_fuel : Nat := 1
def small_2248715_left_count : Nat := 1
def small_2248715_left_encoded : String := "00000004"
theorem small_2248715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2248715_left_root small_2248715_left_fuel small_2248715_left_count small_2248715_left_encoded = true := by
  decide +kernel
theorem small_2248715_left_covered : CoveredBy scale carrier boxes small_2248715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2248715_left_root small_2248715_left_fuel small_2248715_left_count small_2248715_left_encoded small_2248715_left_checked

theorem cover_2248715 : CoveredBy scale carrier boxes root_2248715 := by
  apply coveredBy_split_literal root_2248715 small_2248715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2248721 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2248715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2248721
#print axioms cover_2248715

def root_2248437 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248437_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248437_left_fuel : Nat := 21
def small_2248437_left_count : Nat := 129
def small_2248437_left_encoded : String := "1151E8FF08A91305120701040000000208A912FD12073CFC00000003050000F6135D80F70000000005000102135D45030000000105000108135D44FF0000000600000004135D80FF0000000404548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD00000006000000030F34D0FC00000005000000031386AD040CFD9BFD000000060000000500000002135D810305000108135D44FF04548A05000000090000000600000004135D80FF0000000404548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000060F8750FD078000F6128A7CF70000000007800102000000060000000600000006000000030F34D0FC00000006000000031386AD040CFD9BFD000000060F34D0FC00000006000000030000000200000001135D44F705000102135D45030000000100000006135D81030500010800000006135D80FF0000000404548A0513867104000000020CFD9BFD0000000600000006000000060000000100000000120700FC050000F600000005135D44F700000006000000000000000312073D0408A912FD12073CFC00000003050000F6135D80F7000000000500010200000005135D81030500010800000005135D80FF000000040CFD9C050F34D1040000000200000006000000060000000100000006120700FC00000005000000030000000200000004"
theorem small_2248437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2248437_left_root small_2248437_left_fuel small_2248437_left_count small_2248437_left_encoded = true := by
  decide +kernel
theorem small_2248437_left_covered : CoveredBy scale carrier boxes small_2248437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2248437_left_root small_2248437_left_fuel small_2248437_left_count small_2248437_left_encoded small_2248437_left_checked

theorem cover_2248437 : CoveredBy scale carrier boxes root_2248437 := by
  apply coveredBy_split_literal root_2248437 small_2248437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2248715 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2248437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2248715
#print axioms cover_2248437

def root_2248431 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248431_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2248431_left_fuel : Nat := 1
def small_2248431_left_count : Nat := 1
def small_2248431_left_encoded : String := "00000003"
theorem small_2248431_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2248431_left_root small_2248431_left_fuel small_2248431_left_count small_2248431_left_encoded = true := by
  decide +kernel
theorem small_2248431_left_covered : CoveredBy scale carrier boxes small_2248431_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2248431_left_root small_2248431_left_fuel small_2248431_left_count small_2248431_left_encoded small_2248431_left_checked

theorem cover_2248431 : CoveredBy scale carrier boxes root_2248431 := by
  apply coveredBy_split_literal root_2248431 small_2248431_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.root_2248437 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2248431_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053.cover_2248437
#print axioms cover_2248431

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0053
